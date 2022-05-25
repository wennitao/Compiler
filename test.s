	.text

	.globl	__init
	.p2align	2
	.type	__init,@function
__init:
.__init_assemblyInit:
	li	t0, 16
	sub	sp, sp, t0
	add	t1, sp, t0
	sw	ra, -4(t1)
	sw	s0, -8(t1)
	mv	s0, t1
	j	.__init_entry
.__init_entry:
	j	.__init_return
.__init_return:
	li	t0, 16
	add	t1, sp, t0
	lw	ra, -4(t1)
	lw	s0, -8(t1)
	add	sp, sp, t0
	ret

	.globl	Edge
	.p2align	2
	.type	Edge,@function
Edge:
.Edge_assemblyInit:
	li	t0, 16
	sub	sp, sp, t0
	add	t1, sp, t0
	sw	ra, -4(t1)
	sw	s0, -8(t1)
	mv	s0, t1
	j	.Edge_entry
.Edge_entry:
	j	.Edge_return
.Edge_return:
	li	t0, 16
	add	t1, sp, t0
	lw	ra, -4(t1)
	lw	s0, -8(t1)
	add	sp, sp, t0
	ret

	.globl	EdgeList
	.p2align	2
	.type	EdgeList,@function
EdgeList:
.EdgeList_assemblyInit:
	li	t0, 16
	sub	sp, sp, t0
	add	t1, sp, t0
	sw	ra, -4(t1)
	sw	s0, -8(t1)
	mv	s0, t1
	j	.EdgeList_entry
.EdgeList_entry:
	j	.EdgeList_return
.EdgeList_return:
	li	t0, 16
	add	t1, sp, t0
	lw	ra, -4(t1)
	lw	s0, -8(t1)
	add	sp, sp, t0
	ret

	.globl	classEdgeList_init
	.p2align	2
	.type	classEdgeList_init,@function
classEdgeList_init:
.classEdgeList_init_assemblyInit:
	li	t0, 32
	sub	sp, sp, t0
	add	t1, sp, t0
	sw	ra, -4(t1)
	sw	s0, -8(t1)
	mv	s0, t1
	li	ra, -12
	add	ra, s0, ra
	sw	a0, 0(ra)
	li	ra, -16
	add	ra, s0, ra
	sw	a1, 0(ra)
	li	ra, -24
	add	ra, s0, ra
	sw	a2, 0(ra)
	li	ra, -20
	add	ra, s0, ra
	sw	s2, 0(ra)
	j	.classEdgeList_init_entry
.classEdgeList_init_entry:
	li	ra, -12
	add	ra, s0, ra
	lw	ra, 0(ra)
	addi	s2, ra, 0
	li	ra, -24
	add	ra, s0, ra
	lw	ra, 0(ra)
	li	t0, 12
	mul	ra, ra, t0
	li	t0, 4
	add	a0, ra, t0
	call	malloc
	li	ra, -24
	add	ra, s0, ra
	lw	ra, 0(ra)
	sw	ra, 0(a0)
	li	ra, 1
	li	t0, 4
	mul	ra, ra, t0
	add	ra, a0, ra
	sw	ra, 0(s2)
	li	ra, -12
	add	ra, s0, ra
	lw	ra, 0(ra)
	addi	s2, ra, 8
	li	ra, -24
	add	ra, s0, ra
	lw	ra, 0(ra)
	li	t0, 4
	mul	t0, ra, t0
	li	ra, 4
	add	a0, t0, ra
	call	malloc
	li	ra, -24
	add	ra, s0, ra
	lw	ra, 0(ra)
	sw	ra, 0(a0)
	li	ra, 1
	li	t0, 4
	mul	ra, ra, t0
	add	ra, a0, ra
	sw	ra, 0(s2)
	li	ra, -12
	add	ra, s0, ra
	lw	ra, 0(ra)
	addi	s2, ra, 16
	li	ra, -16
	add	ra, s0, ra
	lw	ra, 0(ra)
	li	t0, 4
	mul	t0, ra, t0
	li	ra, 4
	add	a0, t0, ra
	call	malloc
	li	ra, -16
	add	ra, s0, ra
	lw	ra, 0(ra)
	sw	ra, 0(a0)
	li	t0, 1
	li	ra, 4
	mul	ra, t0, ra
	add	ra, a0, ra
	sw	ra, 0(s2)
	li	ra, 0
	j	.classEdgeList_init_ID38_for_condition
.classEdgeList_init_ID38_for_condition:
	li	t0, -24
	add	t0, s0, t0
	lw	t0, 0(t0)
	slt	t0, ra, t0
	bnez	t0, .classEdgeList_init_ID38_for_suite
	j	.classEdgeList_init_ID38_for_out
.classEdgeList_init_ID38_for_suite:
	li	t0, -12
	add	t0, s0, t0
	lw	t0, 0(t0)
	addi	t0, t0, 8
	lw	t1, 0(t0)
	li	t0, 4
	mul	t0, ra, t0
	add	t1, t1, t0
	li	t0, -1
	sw	t0, 0(t1)
	j	.classEdgeList_init_ID38_for_incr
.classEdgeList_init_ID38_for_incr:
	li	t0, 1
	add	ra, ra, t0
	j	.classEdgeList_init_ID38_for_condition
.classEdgeList_init_ID38_for_out:
	li	ra, 0
	j	.classEdgeList_init_ID48_for_condition
.classEdgeList_init_ID48_for_condition:
	li	t0, -16
	add	t0, s0, t0
	lw	t0, 0(t0)
	slt	t0, ra, t0
	bnez	t0, .classEdgeList_init_ID48_for_suite
	j	.classEdgeList_init_ID48_for_out
.classEdgeList_init_ID48_for_suite:
	li	t0, -12
	add	t0, s0, t0
	lw	t0, 0(t0)
	addi	t0, t0, 16
	lw	t1, 0(t0)
	li	t0, 4
	mul	t0, ra, t0
	add	t0, t1, t0
	li	t1, -1
	sw	t1, 0(t0)
	j	.classEdgeList_init_ID48_for_incr
.classEdgeList_init_ID48_for_incr:
	li	t0, 1
	add	ra, ra, t0
	j	.classEdgeList_init_ID48_for_condition
.classEdgeList_init_ID48_for_out:
	li	ra, -12
	add	ra, s0, ra
	lw	ra, 0(ra)
	addi	ra, ra, 24
	li	t0, 0
	sw	t0, 0(ra)
	j	.classEdgeList_init_return
.classEdgeList_init_return:
	li	ra, -20
	add	ra, s0, ra
	lw	s2, 0(ra)
	li	t0, 32
	add	t1, sp, t0
	lw	ra, -4(t1)
	lw	s0, -8(t1)
	add	sp, sp, t0
	ret

	.globl	classEdgeList_addEdge
	.p2align	2
	.type	classEdgeList_addEdge,@function
classEdgeList_addEdge:
.classEdgeList_addEdge_assemblyInit:
	li	t0, 32
	sub	sp, sp, t0
	add	t1, sp, t0
	sw	ra, -4(t1)
	sw	s0, -8(t1)
	mv	s0, t1
	li	ra, -20
	add	ra, s0, ra
	sw	a0, 0(ra)
	li	ra, -16
	add	ra, s0, ra
	sw	a1, 0(ra)
	li	ra, -12
	add	ra, s0, ra
	sw	a2, 0(ra)
	li	ra, -24
	add	ra, s0, ra
	sw	a3, 0(ra)
	j	.classEdgeList_addEdge_entry
.classEdgeList_addEdge_entry:
	li	a0, 12
	call	malloc
	j	.classEdgeList_addEdge_call_Edge_0_out
.classEdgeList_addEdge_call_Edge_0_out:
	addi	ra, a0, 0
	li	t0, -16
	add	t0, s0, t0
	lw	t0, 0(t0)
	sw	t0, 0(ra)
	addi	t0, a0, 4
	li	ra, -12
	add	ra, s0, ra
	lw	ra, 0(ra)
	sw	ra, 0(t0)
	addi	ra, a0, 8
	li	t0, -24
	add	t0, s0, t0
	lw	t0, 0(t0)
	sw	t0, 0(ra)
	li	ra, -20
	add	ra, s0, ra
	lw	ra, 0(ra)
	addi	ra, ra, 0
	lw	t1, 0(ra)
	li	ra, -20
	add	ra, s0, ra
	lw	ra, 0(ra)
	addi	ra, ra, 24
	lw	t0, 0(ra)
	li	ra, 12
	mul	ra, t0, ra
	add	ra, t1, ra
	sw	a0, 0(ra)
	li	ra, -20
	add	ra, s0, ra
	lw	ra, 0(ra)
	addi	ra, ra, 8
	lw	ra, 0(ra)
	li	t0, -20
	add	t0, s0, t0
	lw	t0, 0(t0)
	addi	t0, t0, 24
	lw	t1, 0(t0)
	li	t0, 4
	mul	t0, t1, t0
	add	t2, ra, t0
	li	ra, -20
	add	ra, s0, ra
	lw	ra, 0(ra)
	addi	ra, ra, 16
	lw	t1, 0(ra)
	li	ra, 4
	li	t0, -16
	add	t0, s0, t0
	lw	t0, 0(t0)
	mul	ra, t0, ra
	add	ra, t1, ra
	lw	ra, 0(ra)
	sw	ra, 0(t2)
	li	ra, -20
	add	ra, s0, ra
	lw	ra, 0(ra)
	addi	ra, ra, 16
	lw	t1, 0(ra)
	li	t0, 4
	li	ra, -16
	add	ra, s0, ra
	lw	ra, 0(ra)
	mul	ra, ra, t0
	add	ra, t1, ra
	li	t0, -20
	add	t0, s0, t0
	lw	t0, 0(t0)
	addi	t0, t0, 24
	lw	t0, 0(t0)
	sw	t0, 0(ra)
	li	ra, -20
	add	ra, s0, ra
	lw	ra, 0(ra)
	addi	t0, ra, 24
	lw	ra, 0(t0)
	li	t1, 1
	add	ra, ra, t1
	sw	ra, 0(t0)
	j	.classEdgeList_addEdge_return
.classEdgeList_addEdge_return:
	li	t0, 32
	add	t1, sp, t0
	lw	ra, -4(t1)
	lw	s0, -8(t1)
	add	sp, sp, t0
	ret

	.globl	classEdgeList_nVertices
	.p2align	2
	.type	classEdgeList_nVertices,@function
classEdgeList_nVertices:
.classEdgeList_nVertices_assemblyInit:
	li	t0, 16
	sub	sp, sp, t0
	add	t1, sp, t0
	sw	ra, -4(t1)
	sw	s0, -8(t1)
	mv	s0, t1
	j	.classEdgeList_nVertices_entry
.classEdgeList_nVertices_entry:
	addi	ra, a0, 16
	lw	ra, 0(ra)
	li	t1, -1
	li	t0, 4
	mul	t0, t1, t0
	add	ra, ra, t0
	lw	a0, 0(ra)
	j	.classEdgeList_nVertices_return
.classEdgeList_nVertices_return:
	li	t0, 16
	add	t1, sp, t0
	lw	ra, -4(t1)
	lw	s0, -8(t1)
	add	sp, sp, t0
	ret

	.globl	classEdgeList_nEdges
	.p2align	2
	.type	classEdgeList_nEdges,@function
classEdgeList_nEdges:
.classEdgeList_nEdges_assemblyInit:
	li	t0, 16
	sub	sp, sp, t0
	add	t1, sp, t0
	sw	ra, -4(t1)
	sw	s0, -8(t1)
	mv	s0, t1
	j	.classEdgeList_nEdges_entry
.classEdgeList_nEdges_entry:
	addi	ra, a0, 0
	lw	ra, 0(ra)
	li	t1, -1
	li	t0, 4
	mul	t0, t1, t0
	add	ra, ra, t0
	lw	a0, 0(ra)
	j	.classEdgeList_nEdges_return
.classEdgeList_nEdges_return:
	li	t0, 16
	add	t1, sp, t0
	lw	ra, -4(t1)
	lw	s0, -8(t1)
	add	sp, sp, t0
	ret

	.globl	Array_Node
	.p2align	2
	.type	Array_Node,@function
Array_Node:
.Array_Node_assemblyInit:
	li	t0, 16
	sub	sp, sp, t0
	add	t1, sp, t0
	sw	ra, -4(t1)
	sw	s0, -8(t1)
	mv	s0, t1
	li	ra, -12
	add	ra, s0, ra
	sw	s7, 0(ra)
	j	.Array_Node_entry
.Array_Node_entry:
	addi	t0, a0, 8
	li	ra, 0
	sw	ra, 0(t0)
	addi	s7, a0, 0
	li	a0, 132
	call	malloc
	li	ra, 16
	sw	ra, 0(a0)
	li	ra, 1
	li	t0, 4
	mul	ra, ra, t0
	add	ra, a0, ra
	sw	ra, 0(s7)
	j	.Array_Node_return
.Array_Node_return:
	li	ra, -12
	add	ra, s0, ra
	lw	s7, 0(ra)
	li	t0, 16
	add	t1, sp, t0
	lw	ra, -4(t1)
	lw	s0, -8(t1)
	add	sp, sp, t0
	ret

	.globl	classArray_Node_push_back
	.p2align	2
	.type	classArray_Node_push_back,@function
classArray_Node_push_back:
.classArray_Node_push_back_assemblyInit:
	li	t0, 32
	sub	sp, sp, t0
	add	t1, sp, t0
	sw	ra, -4(t1)
	sw	s0, -8(t1)
	mv	s0, t1
	li	ra, -16
	add	ra, s0, ra
	sw	a0, 0(ra)
	li	ra, -12
	add	ra, s0, ra
	sw	a1, 0(ra)
	li	ra, -20
	add	ra, s0, ra
	sw	s1, 0(ra)
	li	ra, -24
	add	ra, s0, ra
	sw	s4, 0(ra)
	li	ra, -28
	add	ra, s0, ra
	sw	s5, 0(ra)
	li	ra, -32
	add	ra, s0, ra
	sw	s6, 0(ra)
	j	.classArray_Node_push_back_entry
.classArray_Node_push_back_entry:
	j	.classArray_Node_push_back_call_classArray_Node_size_1_classArray_Node_size_entry
.classArray_Node_push_back_call_classArray_Node_size_1_out:
	li	ra, -16
	add	ra, s0, ra
	lw	ra, 0(ra)
	addi	ra, ra, 0
	lw	ra, 0(ra)
	li	t0, -1
	li	t2, 4
	mul	t0, t0, t2
	add	ra, ra, t0
	lw	ra, 0(ra)
	xor	ra, t1, ra
	sltiu	ra, ra, 1
	bnez	ra, .classArray_Node_push_back_call_classArray_Node_doubleStorage_2_classArray_Node_doubleStorage_entry
	j	.classArray_Node_push_back_ID12_if_out
.classArray_Node_push_back_ID12_if_out:
	li	ra, -16
	add	ra, s0, ra
	lw	ra, 0(ra)
	addi	ra, ra, 0
	lw	t0, 0(ra)
	li	ra, -16
	add	ra, s0, ra
	lw	ra, 0(ra)
	addi	ra, ra, 8
	lw	t1, 0(ra)
	li	ra, 8
	mul	ra, t1, ra
	add	t0, t0, ra
	li	ra, -12
	add	ra, s0, ra
	lw	ra, 0(ra)
	sw	ra, 0(t0)
	li	ra, -16
	add	ra, s0, ra
	lw	ra, 0(ra)
	addi	ra, ra, 8
	lw	t0, 0(ra)
	li	t1, 1
	add	t0, t0, t1
	sw	t0, 0(ra)
	j	.classArray_Node_push_back_return
.classArray_Node_push_back_call_classArray_Node_size_1_classArray_Node_size_entry:
	li	ra, -16
	add	ra, s0, ra
	lw	ra, 0(ra)
	addi	ra, ra, 8
	lw	t1, 0(ra)
	j	.classArray_Node_push_back_call_classArray_Node_size_1_out
.classArray_Node_push_back_call_classArray_Node_doubleStorage_2_classArray_Node_doubleStorage_entry:
	li	ra, -16
	add	ra, s0, ra
	lw	ra, 0(ra)
	addi	ra, ra, 0
	lw	ra, 0(ra)
	mv	s6, ra
	li	ra, -16
	add	ra, s0, ra
	lw	ra, 0(ra)
	addi	ra, ra, 8
	lw	s1, 0(ra)
	li	ra, -16
	add	ra, s0, ra
	lw	ra, 0(ra)
	addi	s4, ra, 0
	mv	ra, s6
	li	t0, -1
	li	t1, 4
	mul	t0, t0, t1
	add	ra, ra, t0
	lw	t0, 0(ra)
	li	ra, 2
	mul	s5, t0, ra
	mv	ra, s5
	li	t0, 8
	mul	t0, ra, t0
	li	ra, 4
	add	a0, t0, ra
	call	malloc
	sw	s5, 0(a0)
	li	ra, 1
	li	t0, 4
	mul	ra, ra, t0
	add	ra, a0, ra
	sw	ra, 0(s4)
	li	ra, -16
	add	ra, s0, ra
	lw	ra, 0(ra)
	addi	t0, ra, 8
	li	ra, 0
	sw	ra, 0(t0)
	j	.classArray_Node_push_back_call_classArray_Node_doubleStorage_2_classArray_Node_doubleStorage_ID25_for_condition
.classArray_Node_push_back_call_classArray_Node_doubleStorage_2_classArray_Node_doubleStorage_ID25_for_condition:
	li	ra, -16
	add	ra, s0, ra
	lw	ra, 0(ra)
	addi	ra, ra, 8
	lw	ra, 0(ra)
	xor	ra, ra, s1
	sltiu	ra, ra, 1
	xori	ra, ra, 1
	bnez	ra, .classArray_Node_push_back_call_classArray_Node_doubleStorage_2_classArray_Node_doubleStorage_ID25_for_suite
	j	.classArray_Node_push_back_ID12_if_out
.classArray_Node_push_back_call_classArray_Node_doubleStorage_2_classArray_Node_doubleStorage_ID25_for_suite:
	li	ra, -16
	add	ra, s0, ra
	lw	ra, 0(ra)
	addi	ra, ra, 0
	lw	t0, 0(ra)
	li	ra, -16
	add	ra, s0, ra
	lw	ra, 0(ra)
	addi	ra, ra, 8
	lw	t1, 0(ra)
	li	ra, 8
	mul	ra, t1, ra
	add	t0, t0, ra
	li	ra, -16
	add	ra, s0, ra
	lw	ra, 0(ra)
	addi	ra, ra, 8
	lw	ra, 0(ra)
	li	t1, 8
	mul	ra, ra, t1
	add	ra, s6, ra
	lw	ra, 0(ra)
	sw	ra, 0(t0)
	j	.classArray_Node_push_back_call_classArray_Node_doubleStorage_2_classArray_Node_doubleStorage_ID25_for_incr
.classArray_Node_push_back_call_classArray_Node_doubleStorage_2_classArray_Node_doubleStorage_ID25_for_incr:
	li	ra, -16
	add	ra, s0, ra
	lw	ra, 0(ra)
	addi	t0, ra, 8
	lw	ra, 0(t0)
	li	t1, 1
	add	ra, ra, t1
	sw	ra, 0(t0)
	j	.classArray_Node_push_back_call_classArray_Node_doubleStorage_2_classArray_Node_doubleStorage_ID25_for_condition
.classArray_Node_push_back_return:
	li	ra, -20
	add	ra, s0, ra
	lw	s1, 0(ra)
	li	ra, -24
	add	ra, s0, ra
	lw	s4, 0(ra)
	li	ra, -28
	add	ra, s0, ra
	lw	s5, 0(ra)
	li	ra, -32
	add	ra, s0, ra
	lw	s6, 0(ra)
	li	t0, 32
	add	t1, sp, t0
	lw	ra, -4(t1)
	lw	s0, -8(t1)
	add	sp, sp, t0
	ret

	.globl	classArray_Node_pop_back
	.p2align	2
	.type	classArray_Node_pop_back,@function
classArray_Node_pop_back:
.classArray_Node_pop_back_assemblyInit:
	li	t0, 16
	sub	sp, sp, t0
	add	t1, sp, t0
	sw	ra, -4(t1)
	sw	s0, -8(t1)
	mv	s0, t1
	j	.classArray_Node_pop_back_entry
.classArray_Node_pop_back_entry:
	addi	t0, a0, 8
	lw	t1, 0(t0)
	li	ra, 1
	sub	ra, t1, ra
	sw	ra, 0(t0)
	addi	ra, a0, 0
	lw	t0, 0(ra)
	addi	ra, a0, 8
	lw	t1, 0(ra)
	li	ra, 8
	mul	ra, t1, ra
	add	ra, t0, ra
	lw	a0, 0(ra)
	j	.classArray_Node_pop_back_return
.classArray_Node_pop_back_return:
	li	t0, 16
	add	t1, sp, t0
	lw	ra, -4(t1)
	lw	s0, -8(t1)
	add	sp, sp, t0
	ret

	.globl	classArray_Node_back
	.p2align	2
	.type	classArray_Node_back,@function
classArray_Node_back:
.classArray_Node_back_assemblyInit:
	li	t0, 16
	sub	sp, sp, t0
	add	t1, sp, t0
	sw	ra, -4(t1)
	sw	s0, -8(t1)
	mv	s0, t1
	j	.classArray_Node_back_entry
.classArray_Node_back_entry:
	addi	ra, a0, 0
	lw	t0, 0(ra)
	addi	ra, a0, 8
	lw	ra, 0(ra)
	li	t1, 1
	sub	t1, ra, t1
	li	ra, 8
	mul	ra, t1, ra
	add	ra, t0, ra
	lw	a0, 0(ra)
	j	.classArray_Node_back_return
.classArray_Node_back_return:
	li	t0, 16
	add	t1, sp, t0
	lw	ra, -4(t1)
	lw	s0, -8(t1)
	add	sp, sp, t0
	ret

	.globl	classArray_Node_front
	.p2align	2
	.type	classArray_Node_front,@function
classArray_Node_front:
.classArray_Node_front_assemblyInit:
	li	t0, 16
	sub	sp, sp, t0
	add	t1, sp, t0
	sw	ra, -4(t1)
	sw	s0, -8(t1)
	mv	s0, t1
	j	.classArray_Node_front_entry
.classArray_Node_front_entry:
	addi	ra, a0, 0
	lw	ra, 0(ra)
	li	t1, 0
	li	t0, 8
	mul	t0, t1, t0
	add	ra, ra, t0
	lw	a0, 0(ra)
	j	.classArray_Node_front_return
.classArray_Node_front_return:
	li	t0, 16
	add	t1, sp, t0
	lw	ra, -4(t1)
	lw	s0, -8(t1)
	add	sp, sp, t0
	ret

	.globl	classArray_Node_size
	.p2align	2
	.type	classArray_Node_size,@function
classArray_Node_size:
.classArray_Node_size_assemblyInit:
	li	t0, 16
	sub	sp, sp, t0
	add	t1, sp, t0
	sw	ra, -4(t1)
	sw	s0, -8(t1)
	mv	s0, t1
	j	.classArray_Node_size_entry
.classArray_Node_size_entry:
	addi	ra, a0, 8
	lw	a0, 0(ra)
	j	.classArray_Node_size_return
.classArray_Node_size_return:
	li	t0, 16
	add	t1, sp, t0
	lw	ra, -4(t1)
	lw	s0, -8(t1)
	add	sp, sp, t0
	ret

	.globl	classArray_Node_resize
	.p2align	2
	.type	classArray_Node_resize,@function
classArray_Node_resize:
.classArray_Node_resize_assemblyInit:
	li	t0, 32
	sub	sp, sp, t0
	add	t1, sp, t0
	sw	ra, -4(t1)
	sw	s0, -8(t1)
	mv	s0, t1
	li	ra, -32
	add	ra, s0, ra
	sw	a0, 0(ra)
	li	ra, -16
	add	ra, s0, ra
	sw	a1, 0(ra)
	li	ra, -24
	add	ra, s0, ra
	sw	s2, 0(ra)
	li	ra, -28
	add	ra, s0, ra
	sw	s5, 0(ra)
	li	ra, -12
	add	ra, s0, ra
	sw	s6, 0(ra)
	j	.classArray_Node_resize_entry
.classArray_Node_resize_entry:
	j	.classArray_Node_resize_ID6_while_condition
.classArray_Node_resize_ID6_while_condition:
	li	ra, -32
	add	ra, s0, ra
	lw	ra, 0(ra)
	addi	ra, ra, 0
	lw	ra, 0(ra)
	li	t0, -1
	li	t1, 4
	mul	t0, t0, t1
	add	ra, ra, t0
	lw	t0, 0(ra)
	li	ra, -16
	add	ra, s0, ra
	lw	ra, 0(ra)
	slt	ra, t0, ra
	bnez	ra, .classArray_Node_resize_call_classArray_Node_doubleStorage_3_classArray_Node_doubleStorage_entry
	j	.classArray_Node_resize_ID13_while_out
.classArray_Node_resize_ID13_while_out:
	li	ra, -32
	add	ra, s0, ra
	lw	ra, 0(ra)
	addi	ra, ra, 8
	li	t0, -16
	add	t0, s0, t0
	lw	t0, 0(t0)
	sw	t0, 0(ra)
	j	.classArray_Node_resize_return
.classArray_Node_resize_call_classArray_Node_doubleStorage_3_classArray_Node_doubleStorage_entry:
	li	ra, -32
	add	ra, s0, ra
	lw	ra, 0(ra)
	addi	ra, ra, 0
	lw	ra, 0(ra)
	mv	s6, ra
	li	ra, -32
	add	ra, s0, ra
	lw	ra, 0(ra)
	addi	ra, ra, 8
	lw	t0, 0(ra)
	li	ra, -20
	add	ra, s0, ra
	sw	t0, 0(ra)
	li	ra, -32
	add	ra, s0, ra
	lw	ra, 0(ra)
	addi	s5, ra, 0
	mv	ra, s6
	li	t0, -1
	li	t1, 4
	mul	t0, t0, t1
	add	ra, ra, t0
	lw	t0, 0(ra)
	li	ra, 2
	mul	s2, t0, ra
	mv	ra, s2
	li	t0, 8
	mul	ra, ra, t0
	li	t0, 4
	add	a0, ra, t0
	call	malloc
	sw	s2, 0(a0)
	li	ra, 1
	li	t0, 4
	mul	ra, ra, t0
	add	ra, a0, ra
	sw	ra, 0(s5)
	li	ra, -32
	add	ra, s0, ra
	lw	ra, 0(ra)
	addi	t0, ra, 8
	li	ra, 0
	sw	ra, 0(t0)
	j	.classArray_Node_resize_call_classArray_Node_doubleStorage_3_classArray_Node_doubleStorage_ID25_for_condition
.classArray_Node_resize_call_classArray_Node_doubleStorage_3_classArray_Node_doubleStorage_ID25_for_condition:
	li	ra, -32
	add	ra, s0, ra
	lw	ra, 0(ra)
	addi	ra, ra, 8
	lw	t0, 0(ra)
	li	ra, -20
	add	ra, s0, ra
	lw	ra, 0(ra)
	xor	ra, t0, ra
	sltiu	ra, ra, 1
	xori	ra, ra, 1
	bnez	ra, .classArray_Node_resize_call_classArray_Node_doubleStorage_3_classArray_Node_doubleStorage_ID25_for_suite
	j	.classArray_Node_resize_ID6_while_condition
.classArray_Node_resize_call_classArray_Node_doubleStorage_3_classArray_Node_doubleStorage_ID25_for_suite:
	li	ra, -32
	add	ra, s0, ra
	lw	ra, 0(ra)
	addi	ra, ra, 0
	lw	t1, 0(ra)
	li	ra, -32
	add	ra, s0, ra
	lw	ra, 0(ra)
	addi	ra, ra, 8
	lw	ra, 0(ra)
	li	t0, 8
	mul	ra, ra, t0
	add	t0, t1, ra
	li	ra, -32
	add	ra, s0, ra
	lw	ra, 0(ra)
	addi	ra, ra, 8
	lw	ra, 0(ra)
	li	t1, 8
	mul	ra, ra, t1
	add	ra, s6, ra
	lw	ra, 0(ra)
	sw	ra, 0(t0)
	j	.classArray_Node_resize_call_classArray_Node_doubleStorage_3_classArray_Node_doubleStorage_ID25_for_incr
.classArray_Node_resize_call_classArray_Node_doubleStorage_3_classArray_Node_doubleStorage_ID25_for_incr:
	li	ra, -32
	add	ra, s0, ra
	lw	ra, 0(ra)
	addi	t1, ra, 8
	lw	t0, 0(t1)
	li	ra, 1
	add	ra, t0, ra
	sw	ra, 0(t1)
	j	.classArray_Node_resize_call_classArray_Node_doubleStorage_3_classArray_Node_doubleStorage_ID25_for_condition
.classArray_Node_resize_return:
	li	ra, -24
	add	ra, s0, ra
	lw	s2, 0(ra)
	li	ra, -28
	add	ra, s0, ra
	lw	s5, 0(ra)
	li	ra, -12
	add	ra, s0, ra
	lw	s6, 0(ra)
	li	t0, 32
	add	t1, sp, t0
	lw	ra, -4(t1)
	lw	s0, -8(t1)
	add	sp, sp, t0
	ret

	.globl	classArray_Node_get
	.p2align	2
	.type	classArray_Node_get,@function
classArray_Node_get:
.classArray_Node_get_assemblyInit:
	li	t0, 16
	sub	sp, sp, t0
	add	t1, sp, t0
	sw	ra, -4(t1)
	sw	s0, -8(t1)
	mv	s0, t1
	j	.classArray_Node_get_entry
.classArray_Node_get_entry:
	addi	ra, a0, 0
	lw	t0, 0(ra)
	li	ra, 8
	mul	ra, a1, ra
	add	ra, t0, ra
	lw	a0, 0(ra)
	j	.classArray_Node_get_return
.classArray_Node_get_return:
	li	t0, 16
	add	t1, sp, t0
	lw	ra, -4(t1)
	lw	s0, -8(t1)
	add	sp, sp, t0
	ret

	.globl	classArray_Node_set
	.p2align	2
	.type	classArray_Node_set,@function
classArray_Node_set:
.classArray_Node_set_assemblyInit:
	li	t0, 16
	sub	sp, sp, t0
	add	t1, sp, t0
	sw	ra, -4(t1)
	sw	s0, -8(t1)
	mv	s0, t1
	j	.classArray_Node_set_entry
.classArray_Node_set_entry:
	addi	ra, a0, 0
	lw	ra, 0(ra)
	li	t0, 8
	mul	t0, a1, t0
	add	ra, ra, t0
	sw	a2, 0(ra)
	j	.classArray_Node_set_return
.classArray_Node_set_return:
	li	t0, 16
	add	t1, sp, t0
	lw	ra, -4(t1)
	lw	s0, -8(t1)
	add	sp, sp, t0
	ret

	.globl	classArray_Node_swap
	.p2align	2
	.type	classArray_Node_swap,@function
classArray_Node_swap:
.classArray_Node_swap_assemblyInit:
	li	t0, 16
	sub	sp, sp, t0
	add	t1, sp, t0
	sw	ra, -4(t1)
	sw	s0, -8(t1)
	mv	s0, t1
	j	.classArray_Node_swap_entry
.classArray_Node_swap_entry:
	addi	ra, a0, 0
	lw	t0, 0(ra)
	li	ra, 8
	mul	ra, a1, ra
	add	ra, t0, ra
	lw	t0, 0(ra)
	addi	ra, a0, 0
	lw	t1, 0(ra)
	li	ra, 8
	mul	ra, a1, ra
	add	t1, t1, ra
	addi	ra, a0, 0
	lw	t2, 0(ra)
	li	ra, 8
	mul	ra, a2, ra
	add	ra, t2, ra
	lw	ra, 0(ra)
	sw	ra, 0(t1)
	addi	ra, a0, 0
	lw	t1, 0(ra)
	li	ra, 8
	mul	ra, a2, ra
	add	ra, t1, ra
	sw	t0, 0(ra)
	j	.classArray_Node_swap_return
.classArray_Node_swap_return:
	li	t0, 16
	add	t1, sp, t0
	lw	ra, -4(t1)
	lw	s0, -8(t1)
	add	sp, sp, t0
	ret

	.globl	classArray_Node_doubleStorage
	.p2align	2
	.type	classArray_Node_doubleStorage,@function
classArray_Node_doubleStorage:
.classArray_Node_doubleStorage_assemblyInit:
	li	t0, 32
	sub	sp, sp, t0
	add	t1, sp, t0
	sw	ra, -4(t1)
	sw	s0, -8(t1)
	mv	s0, t1
	li	ra, -20
	add	ra, s0, ra
	sw	a0, 0(ra)
	li	ra, -24
	add	ra, s0, ra
	sw	s4, 0(ra)
	li	ra, -16
	add	ra, s0, ra
	sw	s6, 0(ra)
	li	ra, -28
	add	ra, s0, ra
	sw	s7, 0(ra)
	li	ra, -12
	add	ra, s0, ra
	sw	s9, 0(ra)
	j	.classArray_Node_doubleStorage_entry
.classArray_Node_doubleStorage_entry:
	li	ra, -20
	add	ra, s0, ra
	lw	ra, 0(ra)
	addi	ra, ra, 0
	lw	ra, 0(ra)
	mv	s7, ra
	li	ra, -20
	add	ra, s0, ra
	lw	ra, 0(ra)
	addi	ra, ra, 8
	lw	s9, 0(ra)
	li	ra, -20
	add	ra, s0, ra
	lw	ra, 0(ra)
	addi	s4, ra, 0
	mv	ra, s7
	li	t0, -1
	li	t1, 4
	mul	t0, t0, t1
	add	ra, ra, t0
	lw	ra, 0(ra)
	li	t0, 2
	mul	s6, ra, t0
	mv	ra, s6
	li	t0, 8
	mul	ra, ra, t0
	li	t0, 4
	add	a0, ra, t0
	call	malloc
	sw	s6, 0(a0)
	li	t0, 1
	li	ra, 4
	mul	ra, t0, ra
	add	ra, a0, ra
	sw	ra, 0(s4)
	li	ra, -20
	add	ra, s0, ra
	lw	ra, 0(ra)
	addi	t0, ra, 8
	li	ra, 0
	sw	ra, 0(t0)
	j	.classArray_Node_doubleStorage_ID25_for_condition
.classArray_Node_doubleStorage_ID25_for_condition:
	li	ra, -20
	add	ra, s0, ra
	lw	ra, 0(ra)
	addi	ra, ra, 8
	lw	ra, 0(ra)
	xor	ra, ra, s9
	sltiu	ra, ra, 1
	xori	ra, ra, 1
	bnez	ra, .classArray_Node_doubleStorage_ID25_for_suite
	j	.classArray_Node_doubleStorage_return
.classArray_Node_doubleStorage_ID25_for_suite:
	li	ra, -20
	add	ra, s0, ra
	lw	ra, 0(ra)
	addi	ra, ra, 0
	lw	ra, 0(ra)
	li	t0, -20
	add	t0, s0, t0
	lw	t0, 0(t0)
	addi	t0, t0, 8
	lw	t0, 0(t0)
	li	t1, 8
	mul	t0, t0, t1
	add	t0, ra, t0
	li	ra, -20
	add	ra, s0, ra
	lw	ra, 0(ra)
	addi	ra, ra, 8
	lw	t1, 0(ra)
	li	ra, 8
	mul	ra, t1, ra
	add	ra, s7, ra
	lw	ra, 0(ra)
	sw	ra, 0(t0)
	j	.classArray_Node_doubleStorage_ID25_for_incr
.classArray_Node_doubleStorage_ID25_for_incr:
	li	ra, -20
	add	ra, s0, ra
	lw	ra, 0(ra)
	addi	t1, ra, 8
	lw	ra, 0(t1)
	li	t0, 1
	add	ra, ra, t0
	sw	ra, 0(t1)
	j	.classArray_Node_doubleStorage_ID25_for_condition
.classArray_Node_doubleStorage_return:
	li	ra, -24
	add	ra, s0, ra
	lw	s4, 0(ra)
	li	ra, -16
	add	ra, s0, ra
	lw	s6, 0(ra)
	li	ra, -28
	add	ra, s0, ra
	lw	s7, 0(ra)
	li	ra, -12
	add	ra, s0, ra
	lw	s9, 0(ra)
	li	t0, 32
	add	t1, sp, t0
	lw	ra, -4(t1)
	lw	s0, -8(t1)
	add	sp, sp, t0
	ret

	.globl	Heap_Node
	.p2align	2
	.type	Heap_Node,@function
Heap_Node:
.Heap_Node_assemblyInit:
	li	t0, 32
	sub	sp, sp, t0
	add	t1, sp, t0
	sw	ra, -4(t1)
	sw	s0, -8(t1)
	mv	s0, t1
	li	ra, -20
	add	ra, s0, ra
	sw	s3, 0(ra)
	li	ra, -16
	add	ra, s0, ra
	sw	s6, 0(ra)
	li	ra, -12
	add	ra, s0, ra
	sw	s8, 0(ra)
	j	.Heap_Node_entry
.Heap_Node_entry:
	addi	s6, a0, 0
	li	a0, 12
	call	malloc
	mv	s8, a0
	j	.Heap_Node_call_Array_Node_4_Array_Node_entry
.Heap_Node_call_Array_Node_4_out:
	mv	ra, s8
	sw	ra, 0(s6)
	j	.Heap_Node_return
.Heap_Node_call_Array_Node_4_Array_Node_entry:
	addi	t0, s8, 8
	li	ra, 0
	sw	ra, 0(t0)
	addi	s3, s8, 0
	li	a0, 132
	call	malloc
	li	ra, 16
	sw	ra, 0(a0)
	li	ra, 1
	li	t0, 4
	mul	ra, ra, t0
	add	ra, a0, ra
	sw	ra, 0(s3)
	j	.Heap_Node_call_Array_Node_4_out
.Heap_Node_return:
	li	ra, -20
	add	ra, s0, ra
	lw	s3, 0(ra)
	li	ra, -16
	add	ra, s0, ra
	lw	s6, 0(ra)
	li	ra, -12
	add	ra, s0, ra
	lw	s8, 0(ra)
	li	t0, 32
	add	t1, sp, t0
	lw	ra, -4(t1)
	lw	s0, -8(t1)
	add	sp, sp, t0
	ret

	.globl	classHeap_Node_push
	.p2align	2
	.type	classHeap_Node_push,@function
classHeap_Node_push:
.classHeap_Node_push_assemblyInit:
	li	t0, 48
	sub	sp, sp, t0
	add	t1, sp, t0
	sw	ra, -4(t1)
	sw	s0, -8(t1)
	mv	s0, t1
	li	ra, -16
	add	ra, s0, ra
	sw	a0, 0(ra)
	li	ra, -24
	add	ra, s0, ra
	sw	s1, 0(ra)
	li	ra, -32
	add	ra, s0, ra
	sw	s4, 0(ra)
	li	ra, -28
	add	ra, s0, ra
	sw	s7, 0(ra)
	li	ra, -36
	add	ra, s0, ra
	sw	s8, 0(ra)
	li	ra, -12
	add	ra, s0, ra
	sw	s10, 0(ra)
	j	.classHeap_Node_push_entry
.classHeap_Node_push_entry:
	li	ra, -16
	add	ra, s0, ra
	lw	ra, 0(ra)
	addi	ra, ra, 0
	lw	s8, 0(ra)
	mv	s10, a1
	j	.classHeap_Node_push_call_classArray_Node_push_back_5_classArray_Node_push_back_call_classArray_Node_size_1_classArray_Node_size_entry
.classHeap_Node_push_call_classHeap_Node_size_6_out:
	li	ra, 1
	sub	t0, a0, ra
	j	.classHeap_Node_push_ID14_while_condition
.classHeap_Node_push_ID14_while_condition:
	li	ra, 0
	slt	ra, ra, t0
	bnez	ra, .classHeap_Node_push_call_classHeap_Node_pnt_8_classHeap_Node_pnt_entry
	j	.classHeap_Node_push_return
.classHeap_Node_push_ID29_if_out:
	li	t1, -16
	add	t1, s0, t1
	lw	t1, 0(t1)
	addi	t1, t1, 0
	lw	a1, 0(t1)
	j	.classHeap_Node_push_call_classArray_Node_swap_7_classArray_Node_swap_entry
.classHeap_Node_push_call_classArray_Node_swap_7_out:
	mv	t0, ra
	j	.classHeap_Node_push_ID14_while_condition
.classHeap_Node_push_call_classHeap_Node_pnt_8_out:
	li	t1, -16
	add	t1, s0, t1
	lw	t1, 0(t1)
	addi	t1, t1, 0
	lw	t1, 0(t1)
	j	.classHeap_Node_push_call_classArray_Node_get_9_classArray_Node_get_entry
.classHeap_Node_push_call_classNode_key__10_out:
	li	t1, -16
	add	t1, s0, t1
	lw	t1, 0(t1)
	addi	t1, t1, 0
	lw	t1, 0(t1)
	j	.classHeap_Node_push_call_classArray_Node_get_11_classArray_Node_get_entry
.classHeap_Node_push_call_classNode_key__12_out:
	slt	t1, a0, t1
	xori	t1, t1, 1
	bnez	t1, .classHeap_Node_push_return
	j	.classHeap_Node_push_ID29_if_out
.classHeap_Node_push_call_classArray_Node_push_back_5_classArray_Node_push_back_call_classArray_Node_size_1_out:
	addi	ra, s8, 0
	lw	ra, 0(ra)
	li	t2, -1
	li	t0, 4
	mul	t0, t2, t0
	add	ra, ra, t0
	lw	ra, 0(ra)
	xor	ra, t1, ra
	sltiu	ra, ra, 1
	bnez	ra, .classHeap_Node_push_call_classArray_Node_push_back_5_classArray_Node_push_back_call_classArray_Node_doubleStorage_2_classArray_Node_doubleStorage_entry
	j	.classHeap_Node_push_call_classArray_Node_push_back_5_classArray_Node_push_back_ID12_if_out
.classHeap_Node_push_call_classArray_Node_push_back_5_classArray_Node_push_back_ID12_if_out:
	addi	ra, s8, 0
	lw	t1, 0(ra)
	addi	ra, s8, 8
	lw	t0, 0(ra)
	li	ra, 8
	mul	ra, t0, ra
	add	t0, t1, ra
	mv	ra, s10
	sw	ra, 0(t0)
	addi	t1, s8, 8
	lw	t0, 0(t1)
	li	ra, 1
	add	ra, t0, ra
	sw	ra, 0(t1)
	j	.classHeap_Node_push_call_classHeap_Node_size_6_classHeap_Node_size_entry
.classHeap_Node_push_call_classArray_Node_push_back_5_classArray_Node_push_back_call_classArray_Node_size_1_classArray_Node_size_entry:
	addi	ra, s8, 8
	lw	t1, 0(ra)
	j	.classHeap_Node_push_call_classArray_Node_push_back_5_classArray_Node_push_back_call_classArray_Node_size_1_out
.classHeap_Node_push_call_classArray_Node_push_back_5_classArray_Node_push_back_call_classArray_Node_doubleStorage_2_classArray_Node_doubleStorage_entry:
	addi	ra, s8, 0
	lw	ra, 0(ra)
	mv	s1, ra
	addi	ra, s8, 8
	lw	t0, 0(ra)
	li	ra, -20
	add	ra, s0, ra
	sw	t0, 0(ra)
	addi	s4, s8, 0
	mv	ra, s1
	li	t0, -1
	li	t1, 4
	mul	t0, t0, t1
	add	ra, ra, t0
	lw	ra, 0(ra)
	li	t0, 2
	mul	s7, ra, t0
	mv	ra, s7
	li	t0, 8
	mul	ra, ra, t0
	li	t0, 4
	add	a0, ra, t0
	call	malloc
	sw	s7, 0(a0)
	li	ra, 1
	li	t0, 4
	mul	ra, ra, t0
	add	ra, a0, ra
	sw	ra, 0(s4)
	addi	ra, s8, 8
	li	t0, 0
	sw	t0, 0(ra)
	j	.classHeap_Node_push_call_classArray_Node_push_back_5_classArray_Node_push_back_call_classArray_Node_doubleStorage_2_classArray_Node_doubleStorage_ID25_for_condition
.classHeap_Node_push_call_classArray_Node_push_back_5_classArray_Node_push_back_call_classArray_Node_doubleStorage_2_classArray_Node_doubleStorage_ID25_for_condition:
	addi	ra, s8, 8
	lw	ra, 0(ra)
	li	t0, -20
	add	t0, s0, t0
	lw	t0, 0(t0)
	xor	ra, ra, t0
	sltiu	ra, ra, 1
	xori	ra, ra, 1
	bnez	ra, .classHeap_Node_push_call_classArray_Node_push_back_5_classArray_Node_push_back_call_classArray_Node_doubleStorage_2_classArray_Node_doubleStorage_ID25_for_suite
	j	.classHeap_Node_push_call_classArray_Node_push_back_5_classArray_Node_push_back_ID12_if_out
.classHeap_Node_push_call_classArray_Node_push_back_5_classArray_Node_push_back_call_classArray_Node_doubleStorage_2_classArray_Node_doubleStorage_ID25_for_suite:
	addi	ra, s8, 0
	lw	t1, 0(ra)
	addi	ra, s8, 8
	lw	ra, 0(ra)
	li	t0, 8
	mul	ra, ra, t0
	add	t1, t1, ra
	addi	ra, s8, 8
	lw	ra, 0(ra)
	li	t0, 8
	mul	ra, ra, t0
	add	ra, s1, ra
	lw	ra, 0(ra)
	sw	ra, 0(t1)
	j	.classHeap_Node_push_call_classArray_Node_push_back_5_classArray_Node_push_back_call_classArray_Node_doubleStorage_2_classArray_Node_doubleStorage_ID25_for_incr
.classHeap_Node_push_call_classArray_Node_push_back_5_classArray_Node_push_back_call_classArray_Node_doubleStorage_2_classArray_Node_doubleStorage_ID25_for_incr:
	addi	t0, s8, 8
	lw	t1, 0(t0)
	li	ra, 1
	add	ra, t1, ra
	sw	ra, 0(t0)
	j	.classHeap_Node_push_call_classArray_Node_push_back_5_classArray_Node_push_back_call_classArray_Node_doubleStorage_2_classArray_Node_doubleStorage_ID25_for_condition
.classHeap_Node_push_call_classHeap_Node_size_6_classHeap_Node_size_entry:
	li	ra, -16
	add	ra, s0, ra
	lw	ra, 0(ra)
	addi	ra, ra, 0
	lw	a0, 0(ra)
	call	classArray_Node_size
	j	.classHeap_Node_push_call_classHeap_Node_size_6_out
.classHeap_Node_push_call_classArray_Node_swap_7_classArray_Node_swap_entry:
	addi	t1, a1, 0
	lw	t1, 0(t1)
	li	t2, 8
	mul	t2, ra, t2
	add	t1, t1, t2
	lw	t2, 0(t1)
	addi	t1, a1, 0
	lw	a0, 0(t1)
	li	t1, 8
	mul	t1, ra, t1
	add	a2, a0, t1
	addi	t1, a1, 0
	lw	a0, 0(t1)
	li	t1, 8
	mul	t1, t0, t1
	add	t1, a0, t1
	lw	t1, 0(t1)
	sw	t1, 0(a2)
	addi	t1, a1, 0
	lw	t1, 0(t1)
	li	a0, 8
	mul	t0, t0, a0
	add	t0, t1, t0
	sw	t2, 0(t0)
	j	.classHeap_Node_push_call_classArray_Node_swap_7_out
.classHeap_Node_push_call_classHeap_Node_pnt_8_classHeap_Node_pnt_entry:
	li	ra, 1
	sub	t1, t0, ra
	li	ra, 2
	div	ra, t1, ra
	j	.classHeap_Node_push_call_classHeap_Node_pnt_8_out
.classHeap_Node_push_call_classArray_Node_get_9_classArray_Node_get_entry:
	addi	t1, t1, 0
	lw	t1, 0(t1)
	li	t2, 8
	mul	t2, ra, t2
	add	t1, t1, t2
	lw	t1, 0(t1)
	j	.classHeap_Node_push_call_classNode_key__10_classNode_key__entry
.classHeap_Node_push_call_classNode_key__10_classNode_key__entry:
	addi	t1, t1, 4
	lw	t2, 0(t1)
	li	t1, 0
	sub	a0, t1, t2
	j	.classHeap_Node_push_call_classNode_key__10_out
.classHeap_Node_push_call_classArray_Node_get_11_classArray_Node_get_entry:
	addi	t1, t1, 0
	lw	t2, 0(t1)
	li	t1, 8
	mul	t1, t0, t1
	add	t1, t2, t1
	lw	t1, 0(t1)
	j	.classHeap_Node_push_call_classNode_key__12_classNode_key__entry
.classHeap_Node_push_call_classNode_key__12_classNode_key__entry:
	addi	t1, t1, 4
	lw	t2, 0(t1)
	li	t1, 0
	sub	t1, t1, t2
	j	.classHeap_Node_push_call_classNode_key__12_out
.classHeap_Node_push_return:
	li	ra, -24
	add	ra, s0, ra
	lw	s1, 0(ra)
	li	ra, -32
	add	ra, s0, ra
	lw	s4, 0(ra)
	li	ra, -28
	add	ra, s0, ra
	lw	s7, 0(ra)
	li	ra, -36
	add	ra, s0, ra
	lw	s8, 0(ra)
	li	ra, -12
	add	ra, s0, ra
	lw	s10, 0(ra)
	li	t0, 48
	add	t1, sp, t0
	lw	ra, -4(t1)
	lw	s0, -8(t1)
	add	sp, sp, t0
	ret

	.globl	classHeap_Node_pop
	.p2align	2
	.type	classHeap_Node_pop,@function
classHeap_Node_pop:
.classHeap_Node_pop_assemblyInit:
	li	t0, 32
	sub	sp, sp, t0
	add	t1, sp, t0
	sw	ra, -4(t1)
	sw	s0, -8(t1)
	mv	s0, t1
	li	ra, -28
	add	ra, s0, ra
	sw	a0, 0(ra)
	li	ra, -16
	add	ra, s0, ra
	sw	s1, 0(ra)
	li	ra, -20
	add	ra, s0, ra
	sw	s2, 0(ra)
	li	ra, -24
	add	ra, s0, ra
	sw	s9, 0(ra)
	li	ra, -12
	add	ra, s0, ra
	sw	s11, 0(ra)
	j	.classHeap_Node_pop_entry
.classHeap_Node_pop_entry:
	li	ra, -28
	add	ra, s0, ra
	lw	ra, 0(ra)
	addi	ra, ra, 0
	lw	ra, 0(ra)
	j	.classHeap_Node_pop_call_classArray_Node_front_13_classArray_Node_front_entry
.classHeap_Node_pop_call_classArray_Node_front_13_out:
	mv	s11, ra
	li	ra, -28
	add	ra, s0, ra
	lw	ra, 0(ra)
	addi	ra, ra, 0
	lw	s1, 0(ra)
	j	.classHeap_Node_pop_call_classHeap_Node_size_14_classHeap_Node_size_entry
.classHeap_Node_pop_call_classHeap_Node_size_14_out:
	li	ra, 1
	sub	a0, a0, ra
	j	.classHeap_Node_pop_call_classArray_Node_swap_15_classArray_Node_swap_entry
.classHeap_Node_pop_call_classArray_Node_swap_15_out:
	li	ra, -28
	add	ra, s0, ra
	lw	ra, 0(ra)
	addi	ra, ra, 0
	lw	ra, 0(ra)
	j	.classHeap_Node_pop_call_classArray_Node_pop_back_16_classArray_Node_pop_back_entry
.classHeap_Node_pop_call_classHeap_Node_maxHeapify_17_out:
	mv	a0, s11
	j	.classHeap_Node_pop_return
.classHeap_Node_pop_call_classArray_Node_front_13_classArray_Node_front_entry:
	addi	ra, ra, 0
	lw	t1, 0(ra)
	li	ra, 0
	li	t0, 8
	mul	ra, ra, t0
	add	ra, t1, ra
	lw	ra, 0(ra)
	j	.classHeap_Node_pop_call_classArray_Node_front_13_out
.classHeap_Node_pop_call_classHeap_Node_size_14_classHeap_Node_size_entry:
	li	ra, -28
	add	ra, s0, ra
	lw	ra, 0(ra)
	addi	ra, ra, 0
	lw	a0, 0(ra)
	call	classArray_Node_size
	j	.classHeap_Node_pop_call_classHeap_Node_size_14_out
.classHeap_Node_pop_call_classArray_Node_swap_15_classArray_Node_swap_entry:
	addi	ra, s1, 0
	lw	ra, 0(ra)
	li	t1, 0
	li	t0, 8
	mul	t0, t1, t0
	add	ra, ra, t0
	lw	t0, 0(ra)
	addi	ra, s1, 0
	lw	t2, 0(ra)
	li	t1, 0
	li	ra, 8
	mul	ra, t1, ra
	add	t1, t2, ra
	addi	ra, s1, 0
	lw	t2, 0(ra)
	li	ra, 8
	mul	ra, a0, ra
	add	ra, t2, ra
	lw	ra, 0(ra)
	sw	ra, 0(t1)
	addi	ra, s1, 0
	lw	t1, 0(ra)
	li	ra, 8
	mul	ra, a0, ra
	add	ra, t1, ra
	sw	t0, 0(ra)
	j	.classHeap_Node_pop_call_classArray_Node_swap_15_out
.classHeap_Node_pop_call_classArray_Node_pop_back_16_classArray_Node_pop_back_entry:
	addi	ra, ra, 8
	lw	t0, 0(ra)
	li	t1, 1
	sub	t0, t0, t1
	sw	t0, 0(ra)
	j	.classHeap_Node_pop_call_classHeap_Node_maxHeapify_17_classHeap_Node_maxHeapify_entry
.classHeap_Node_pop_call_classHeap_Node_maxHeapify_17_classHeap_Node_maxHeapify_entry:
	li	ra, -28
	add	ra, s0, ra
	lw	a0, 0(ra)
	li	a1, 0
	call	classHeap_Node_lchild
	mv	s9, a0
	li	ra, -28
	add	ra, s0, ra
	lw	a0, 0(ra)
	li	a1, 0
	call	classHeap_Node_rchild
	mv	s2, a0
	li	ra, -28
	add	ra, s0, ra
	lw	a0, 0(ra)
	call	classHeap_Node_size
	slt	ra, s9, a0
	bnez	ra, .classHeap_Node_pop_call_classHeap_Node_maxHeapify_17_classHeap_Node_maxHeapify_ID16_AndAnd_true
	j	.classHeap_Node_pop_call_classHeap_Node_maxHeapify_17_classHeap_Node_maxHeapify_entry_mid
.classHeap_Node_pop_call_classHeap_Node_maxHeapify_17_classHeap_Node_maxHeapify_entry_mid:
	li	ra, 0
	j	.classHeap_Node_pop_call_classHeap_Node_maxHeapify_17_classHeap_Node_maxHeapify_ID16_AndAnd_out
.classHeap_Node_pop_call_classHeap_Node_maxHeapify_17_classHeap_Node_maxHeapify_ID16_AndAnd_true:
	li	ra, -28
	add	ra, s0, ra
	lw	ra, 0(ra)
	addi	ra, ra, 0
	lw	a0, 0(ra)
	mv	a1, s9
	call	classArray_Node_get
	call	classNode_key_
	mv	s1, a0
	li	ra, -28
	add	ra, s0, ra
	lw	ra, 0(ra)
	addi	ra, ra, 0
	lw	a0, 0(ra)
	li	a1, 0
	call	classArray_Node_get
	call	classNode_key_
	slt	ra, a0, s1
	j	.classHeap_Node_pop_call_classHeap_Node_maxHeapify_17_classHeap_Node_maxHeapify_ID16_AndAnd_out
.classHeap_Node_pop_call_classHeap_Node_maxHeapify_17_classHeap_Node_maxHeapify_ID16_AndAnd_out_mid:
	li	ra, 0
	mv	s1, ra
	j	.classHeap_Node_pop_call_classHeap_Node_maxHeapify_17_classHeap_Node_maxHeapify_ID28_if_out
.classHeap_Node_pop_call_classHeap_Node_maxHeapify_17_classHeap_Node_maxHeapify_ID16_AndAnd_out:
	bnez	ra, .classHeap_Node_pop_call_classHeap_Node_maxHeapify_17_classHeap_Node_maxHeapify_ID28_if_true
	j	.classHeap_Node_pop_call_classHeap_Node_maxHeapify_17_classHeap_Node_maxHeapify_ID16_AndAnd_out_mid
.classHeap_Node_pop_call_classHeap_Node_maxHeapify_17_classHeap_Node_maxHeapify_ID28_if_out_mid:
	li	ra, 0
	j	.classHeap_Node_pop_call_classHeap_Node_maxHeapify_17_classHeap_Node_maxHeapify_ID32_AndAnd_out
.classHeap_Node_pop_call_classHeap_Node_maxHeapify_17_classHeap_Node_maxHeapify_ID28_if_true:
	mv	s1, s9
	j	.classHeap_Node_pop_call_classHeap_Node_maxHeapify_17_classHeap_Node_maxHeapify_ID28_if_out
.classHeap_Node_pop_call_classHeap_Node_maxHeapify_17_classHeap_Node_maxHeapify_ID32_AndAnd_out_mid:
	j	.classHeap_Node_pop_call_classHeap_Node_maxHeapify_17_classHeap_Node_maxHeapify_ID44_if_out
.classHeap_Node_pop_call_classHeap_Node_maxHeapify_17_classHeap_Node_maxHeapify_ID28_if_out:
	li	ra, -28
	add	ra, s0, ra
	lw	a0, 0(ra)
	call	classHeap_Node_size
	slt	ra, s2, a0
	bnez	ra, .classHeap_Node_pop_call_classHeap_Node_maxHeapify_17_classHeap_Node_maxHeapify_ID32_AndAnd_true
	j	.classHeap_Node_pop_call_classHeap_Node_maxHeapify_17_classHeap_Node_maxHeapify_ID28_if_out_mid
.classHeap_Node_pop_call_classHeap_Node_maxHeapify_17_classHeap_Node_maxHeapify_ID32_AndAnd_true:
	li	ra, -28
	add	ra, s0, ra
	lw	ra, 0(ra)
	addi	ra, ra, 0
	lw	a0, 0(ra)
	mv	a1, s2
	call	classArray_Node_get
	call	classNode_key_
	mv	s9, a0
	li	ra, -28
	add	ra, s0, ra
	lw	ra, 0(ra)
	addi	ra, ra, 0
	lw	a0, 0(ra)
	mv	a1, s1
	call	classArray_Node_get
	call	classNode_key_
	slt	ra, a0, s9
	j	.classHeap_Node_pop_call_classHeap_Node_maxHeapify_17_classHeap_Node_maxHeapify_ID32_AndAnd_out
.classHeap_Node_pop_call_classHeap_Node_maxHeapify_17_classHeap_Node_maxHeapify_ID32_AndAnd_out:
	bnez	ra, .classHeap_Node_pop_call_classHeap_Node_maxHeapify_17_classHeap_Node_maxHeapify_ID44_if_true
	j	.classHeap_Node_pop_call_classHeap_Node_maxHeapify_17_classHeap_Node_maxHeapify_ID32_AndAnd_out_mid
.classHeap_Node_pop_call_classHeap_Node_maxHeapify_17_classHeap_Node_maxHeapify_ID44_if_true:
	mv	s1, s2
	j	.classHeap_Node_pop_call_classHeap_Node_maxHeapify_17_classHeap_Node_maxHeapify_ID44_if_out
.classHeap_Node_pop_call_classHeap_Node_maxHeapify_17_classHeap_Node_maxHeapify_ID44_if_out:
	li	ra, 0
	xor	ra, s1, ra
	sltiu	ra, ra, 1
	bnez	ra, .classHeap_Node_pop_call_classHeap_Node_maxHeapify_17_out
	j	.classHeap_Node_pop_call_classHeap_Node_maxHeapify_17_classHeap_Node_maxHeapify_ID48_if_out
.classHeap_Node_pop_call_classHeap_Node_maxHeapify_17_classHeap_Node_maxHeapify_ID48_if_out:
	li	ra, -28
	add	ra, s0, ra
	lw	ra, 0(ra)
	addi	ra, ra, 0
	lw	a0, 0(ra)
	li	a1, 0
	mv	a2, s1
	call	classArray_Node_swap
	li	ra, -28
	add	ra, s0, ra
	lw	a0, 0(ra)
	mv	a1, s1
	call	classHeap_Node_maxHeapify
	j	.classHeap_Node_pop_call_classHeap_Node_maxHeapify_17_out
.classHeap_Node_pop_return:
	li	ra, -16
	add	ra, s0, ra
	lw	s1, 0(ra)
	li	ra, -20
	add	ra, s0, ra
	lw	s2, 0(ra)
	li	ra, -24
	add	ra, s0, ra
	lw	s9, 0(ra)
	li	ra, -12
	add	ra, s0, ra
	lw	s11, 0(ra)
	li	t0, 32
	add	t1, sp, t0
	lw	ra, -4(t1)
	lw	s0, -8(t1)
	add	sp, sp, t0
	ret

	.globl	classHeap_Node_top
	.p2align	2
	.type	classHeap_Node_top,@function
classHeap_Node_top:
.classHeap_Node_top_assemblyInit:
	li	t0, 16
	sub	sp, sp, t0
	add	t1, sp, t0
	sw	ra, -4(t1)
	sw	s0, -8(t1)
	mv	s0, t1
	j	.classHeap_Node_top_entry
.classHeap_Node_top_entry:
	addi	ra, a0, 0
	lw	ra, 0(ra)
	j	.classHeap_Node_top_call_classArray_Node_front_18_classArray_Node_front_entry
.classHeap_Node_top_call_classArray_Node_front_18_out:
	j	.classHeap_Node_top_return
.classHeap_Node_top_call_classArray_Node_front_18_classArray_Node_front_entry:
	addi	ra, ra, 0
	lw	ra, 0(ra)
	li	t1, 0
	li	t0, 8
	mul	t0, t1, t0
	add	ra, ra, t0
	lw	a0, 0(ra)
	j	.classHeap_Node_top_call_classArray_Node_front_18_out
.classHeap_Node_top_return:
	li	t0, 16
	add	t1, sp, t0
	lw	ra, -4(t1)
	lw	s0, -8(t1)
	add	sp, sp, t0
	ret

	.globl	classHeap_Node_size
	.p2align	2
	.type	classHeap_Node_size,@function
classHeap_Node_size:
.classHeap_Node_size_assemblyInit:
	li	t0, 16
	sub	sp, sp, t0
	add	t1, sp, t0
	sw	ra, -4(t1)
	sw	s0, -8(t1)
	mv	s0, t1
	j	.classHeap_Node_size_entry
.classHeap_Node_size_entry:
	addi	ra, a0, 0
	lw	ra, 0(ra)
	j	.classHeap_Node_size_call_classArray_Node_size_19_classArray_Node_size_entry
.classHeap_Node_size_call_classArray_Node_size_19_classArray_Node_size_entry:
	addi	ra, ra, 8
	lw	a0, 0(ra)
	j	.classHeap_Node_size_return
.classHeap_Node_size_return:
	li	t0, 16
	add	t1, sp, t0
	lw	ra, -4(t1)
	lw	s0, -8(t1)
	add	sp, sp, t0
	ret

	.globl	classHeap_Node_lchild
	.p2align	2
	.type	classHeap_Node_lchild,@function
classHeap_Node_lchild:
.classHeap_Node_lchild_assemblyInit:
	li	t0, 16
	sub	sp, sp, t0
	add	t1, sp, t0
	sw	ra, -4(t1)
	sw	s0, -8(t1)
	mv	s0, t1
	j	.classHeap_Node_lchild_entry
.classHeap_Node_lchild_entry:
	li	ra, 2
	mul	ra, a1, ra
	li	t0, 1
	add	a0, ra, t0
	j	.classHeap_Node_lchild_return
.classHeap_Node_lchild_return:
	li	t0, 16
	add	t1, sp, t0
	lw	ra, -4(t1)
	lw	s0, -8(t1)
	add	sp, sp, t0
	ret

	.globl	classHeap_Node_rchild
	.p2align	2
	.type	classHeap_Node_rchild,@function
classHeap_Node_rchild:
.classHeap_Node_rchild_assemblyInit:
	li	t0, 16
	sub	sp, sp, t0
	add	t1, sp, t0
	sw	ra, -4(t1)
	sw	s0, -8(t1)
	mv	s0, t1
	j	.classHeap_Node_rchild_entry
.classHeap_Node_rchild_entry:
	li	ra, 2
	mul	ra, a1, ra
	li	t0, 2
	add	a0, ra, t0
	j	.classHeap_Node_rchild_return
.classHeap_Node_rchild_return:
	li	t0, 16
	add	t1, sp, t0
	lw	ra, -4(t1)
	lw	s0, -8(t1)
	add	sp, sp, t0
	ret

	.globl	classHeap_Node_pnt
	.p2align	2
	.type	classHeap_Node_pnt,@function
classHeap_Node_pnt:
.classHeap_Node_pnt_assemblyInit:
	li	t0, 16
	sub	sp, sp, t0
	add	t1, sp, t0
	sw	ra, -4(t1)
	sw	s0, -8(t1)
	mv	s0, t1
	j	.classHeap_Node_pnt_entry
.classHeap_Node_pnt_entry:
	li	ra, 1
	sub	t0, a1, ra
	li	ra, 2
	div	a0, t0, ra
	j	.classHeap_Node_pnt_return
.classHeap_Node_pnt_return:
	li	t0, 16
	add	t1, sp, t0
	lw	ra, -4(t1)
	lw	s0, -8(t1)
	add	sp, sp, t0
	ret

	.globl	classHeap_Node_maxHeapify
	.p2align	2
	.type	classHeap_Node_maxHeapify,@function
classHeap_Node_maxHeapify:
.classHeap_Node_maxHeapify_assemblyInit:
	li	t0, 16
	sub	sp, sp, t0
	add	t1, sp, t0
	sw	ra, -4(t1)
	sw	s0, -8(t1)
	mv	s0, t1
	j	.classHeap_Node_maxHeapify_entry
.classHeap_Node_maxHeapify_entry:
	j	.classHeap_Node_maxHeapify_call_classHeap_Node_lchild_20_classHeap_Node_lchild_entry
.classHeap_Node_maxHeapify_call_classHeap_Node_size_22_out:
	slt	ra, t1, ra
	bnez	ra, .classHeap_Node_maxHeapify_ID16_AndAnd_true
	j	.classHeap_Node_maxHeapify_entry_mid
.classHeap_Node_maxHeapify_entry_mid:
	li	ra, 0
	j	.classHeap_Node_maxHeapify_ID16_AndAnd_out
.classHeap_Node_maxHeapify_ID16_AndAnd_true:
	addi	ra, a0, 0
	lw	ra, 0(ra)
	j	.classHeap_Node_maxHeapify_call_classArray_Node_get_23_classArray_Node_get_entry
.classHeap_Node_maxHeapify_call_classNode_key__24_out:
	addi	ra, a0, 0
	lw	ra, 0(ra)
	j	.classHeap_Node_maxHeapify_call_classArray_Node_get_25_classArray_Node_get_entry
.classHeap_Node_maxHeapify_call_classNode_key__26_out:
	slt	ra, ra, a2
	j	.classHeap_Node_maxHeapify_ID16_AndAnd_out
.classHeap_Node_maxHeapify_ID16_AndAnd_out_mid:
	mv	t1, a1
	j	.classHeap_Node_maxHeapify_ID28_if_out
.classHeap_Node_maxHeapify_ID16_AndAnd_out:
	bnez	ra, .classHeap_Node_maxHeapify_ID28_if_true
	j	.classHeap_Node_maxHeapify_ID16_AndAnd_out_mid
.classHeap_Node_maxHeapify_ID28_if_out_mid:
	li	ra, 0
	j	.classHeap_Node_maxHeapify_ID32_AndAnd_out
.classHeap_Node_maxHeapify_ID28_if_true:
	j	.classHeap_Node_maxHeapify_ID28_if_out
.classHeap_Node_maxHeapify_ID32_AndAnd_out_mid:
	mv	t0, t1
	j	.classHeap_Node_maxHeapify_ID44_if_out
.classHeap_Node_maxHeapify_ID28_if_out:
	j	.classHeap_Node_maxHeapify_call_classHeap_Node_size_27_classHeap_Node_size_entry
.classHeap_Node_maxHeapify_call_classHeap_Node_size_27_out:
	slt	ra, t0, ra
	bnez	ra, .classHeap_Node_maxHeapify_ID32_AndAnd_true
	j	.classHeap_Node_maxHeapify_ID28_if_out_mid
.classHeap_Node_maxHeapify_ID32_AndAnd_true:
	addi	ra, a0, 0
	lw	ra, 0(ra)
	j	.classHeap_Node_maxHeapify_call_classArray_Node_get_28_classArray_Node_get_entry
.classHeap_Node_maxHeapify_call_classNode_key__29_out:
	addi	ra, a0, 0
	lw	ra, 0(ra)
	j	.classHeap_Node_maxHeapify_call_classArray_Node_get_30_classArray_Node_get_entry
.classHeap_Node_maxHeapify_call_classNode_key__31_out:
	slt	ra, ra, t2
	j	.classHeap_Node_maxHeapify_ID32_AndAnd_out
.classHeap_Node_maxHeapify_ID32_AndAnd_out:
	bnez	ra, .classHeap_Node_maxHeapify_ID44_if_true
	j	.classHeap_Node_maxHeapify_ID32_AndAnd_out_mid
.classHeap_Node_maxHeapify_ID44_if_true:
	j	.classHeap_Node_maxHeapify_ID44_if_out
.classHeap_Node_maxHeapify_ID44_if_out:
	xor	ra, t0, a1
	sltiu	ra, ra, 1
	bnez	ra, .classHeap_Node_maxHeapify_return
	j	.classHeap_Node_maxHeapify_ID48_if_out
.classHeap_Node_maxHeapify_ID48_if_out:
	addi	ra, a0, 0
	lw	a2, 0(ra)
	j	.classHeap_Node_maxHeapify_call_classArray_Node_swap_32_classArray_Node_swap_entry
.classHeap_Node_maxHeapify_call_classArray_Node_swap_32_out:
	mv	a1, t0
	call	classHeap_Node_maxHeapify
	j	.classHeap_Node_maxHeapify_return
.classHeap_Node_maxHeapify_call_classHeap_Node_lchild_20_classHeap_Node_lchild_entry:
	li	ra, 2
	mul	ra, a1, ra
	li	t0, 1
	add	t1, ra, t0
	j	.classHeap_Node_maxHeapify_call_classHeap_Node_rchild_21_classHeap_Node_rchild_entry
.classHeap_Node_maxHeapify_call_classHeap_Node_rchild_21_classHeap_Node_rchild_entry:
	li	ra, 2
	mul	ra, a1, ra
	li	t0, 2
	add	t0, ra, t0
	j	.classHeap_Node_maxHeapify_call_classHeap_Node_size_22_classHeap_Node_size_entry
.classHeap_Node_maxHeapify_call_classHeap_Node_size_22_classHeap_Node_size_entry:
	addi	ra, a0, 0
	lw	ra, 0(ra)
	j	.classHeap_Node_maxHeapify_call_classHeap_Node_size_22_classHeap_Node_size_call_classArray_Node_size_19_classArray_Node_size_entry
.classHeap_Node_maxHeapify_call_classHeap_Node_size_22_classHeap_Node_size_call_classArray_Node_size_19_classArray_Node_size_entry:
	addi	ra, ra, 8
	lw	ra, 0(ra)
	j	.classHeap_Node_maxHeapify_call_classHeap_Node_size_22_out
.classHeap_Node_maxHeapify_call_classArray_Node_get_23_classArray_Node_get_entry:
	addi	ra, ra, 0
	lw	t2, 0(ra)
	li	ra, 8
	mul	ra, t1, ra
	add	ra, t2, ra
	lw	ra, 0(ra)
	j	.classHeap_Node_maxHeapify_call_classNode_key__24_classNode_key__entry
.classHeap_Node_maxHeapify_call_classNode_key__24_classNode_key__entry:
	addi	ra, ra, 4
	lw	ra, 0(ra)
	li	t2, 0
	sub	a2, t2, ra
	j	.classHeap_Node_maxHeapify_call_classNode_key__24_out
.classHeap_Node_maxHeapify_call_classArray_Node_get_25_classArray_Node_get_entry:
	addi	ra, ra, 0
	lw	t2, 0(ra)
	li	ra, 8
	mul	ra, a1, ra
	add	ra, t2, ra
	lw	ra, 0(ra)
	j	.classHeap_Node_maxHeapify_call_classNode_key__26_classNode_key__entry
.classHeap_Node_maxHeapify_call_classNode_key__26_classNode_key__entry:
	addi	ra, ra, 4
	lw	t2, 0(ra)
	li	ra, 0
	sub	ra, ra, t2
	j	.classHeap_Node_maxHeapify_call_classNode_key__26_out
.classHeap_Node_maxHeapify_call_classHeap_Node_size_27_classHeap_Node_size_entry:
	addi	ra, a0, 0
	lw	ra, 0(ra)
	j	.classHeap_Node_maxHeapify_call_classHeap_Node_size_27_classHeap_Node_size_call_classArray_Node_size_19_classArray_Node_size_entry
.classHeap_Node_maxHeapify_call_classHeap_Node_size_27_classHeap_Node_size_call_classArray_Node_size_19_classArray_Node_size_entry:
	addi	ra, ra, 8
	lw	ra, 0(ra)
	j	.classHeap_Node_maxHeapify_call_classHeap_Node_size_27_out
.classHeap_Node_maxHeapify_call_classArray_Node_get_28_classArray_Node_get_entry:
	addi	ra, ra, 0
	lw	ra, 0(ra)
	li	t2, 8
	mul	t2, t0, t2
	add	ra, ra, t2
	lw	ra, 0(ra)
	j	.classHeap_Node_maxHeapify_call_classNode_key__29_classNode_key__entry
.classHeap_Node_maxHeapify_call_classNode_key__29_classNode_key__entry:
	addi	ra, ra, 4
	lw	t2, 0(ra)
	li	ra, 0
	sub	t2, ra, t2
	j	.classHeap_Node_maxHeapify_call_classNode_key__29_out
.classHeap_Node_maxHeapify_call_classArray_Node_get_30_classArray_Node_get_entry:
	addi	ra, ra, 0
	lw	ra, 0(ra)
	li	a2, 8
	mul	a2, t1, a2
	add	ra, ra, a2
	lw	ra, 0(ra)
	j	.classHeap_Node_maxHeapify_call_classNode_key__31_classNode_key__entry
.classHeap_Node_maxHeapify_call_classNode_key__31_classNode_key__entry:
	addi	ra, ra, 4
	lw	a2, 0(ra)
	li	ra, 0
	sub	ra, ra, a2
	j	.classHeap_Node_maxHeapify_call_classNode_key__31_out
.classHeap_Node_maxHeapify_call_classArray_Node_swap_32_classArray_Node_swap_entry:
	addi	ra, a2, 0
	lw	t1, 0(ra)
	li	ra, 8
	mul	ra, a1, ra
	add	ra, t1, ra
	lw	ra, 0(ra)
	addi	t1, a2, 0
	lw	t1, 0(t1)
	li	t2, 8
	mul	t2, a1, t2
	add	a1, t1, t2
	addi	t1, a2, 0
	lw	t2, 0(t1)
	li	t1, 8
	mul	t1, t0, t1
	add	t1, t2, t1
	lw	t1, 0(t1)
	sw	t1, 0(a1)
	addi	t1, a2, 0
	lw	t1, 0(t1)
	li	t2, 8
	mul	t2, t0, t2
	add	t1, t1, t2
	sw	ra, 0(t1)
	j	.classHeap_Node_maxHeapify_call_classArray_Node_swap_32_out
.classHeap_Node_maxHeapify_return:
	li	t0, 16
	add	t1, sp, t0
	lw	ra, -4(t1)
	lw	s0, -8(t1)
	add	sp, sp, t0
	ret

	.globl	init
	.p2align	2
	.type	init,@function
init:
.init_assemblyInit:
	li	t0, 32
	sub	sp, sp, t0
	add	t1, sp, t0
	sw	ra, -4(t1)
	sw	s0, -8(t1)
	mv	s0, t1
	li	ra, -20
	add	ra, s0, ra
	sw	s1, 0(ra)
	li	ra, -12
	add	ra, s0, ra
	sw	s5, 0(ra)
	li	ra, -28
	add	ra, s0, ra
	sw	s6, 0(ra)
	li	ra, -24
	add	ra, s0, ra
	sw	s7, 0(ra)
	li	ra, -32
	add	ra, s0, ra
	sw	s8, 0(ra)
	li	ra, -16
	add	ra, s0, ra
	sw	s9, 0(ra)
	j	.init_entry
.init_entry:
	call	getInt
	li	ra, 0
	sw	a0, fuckLLVM_n, ra
	call	getInt
	li	ra, 0
	sw	a0, fuckLLVM_m, ra
	li	a0, 28
	call	malloc
	j	.init_call_EdgeList_33_out
.init_call_EdgeList_33_out:
	li	ra, 0
	sw	a0, fuckLLVM_g, ra
	lw	s1, fuckLLVM_g
	lw	s5, fuckLLVM_n
	lw	s7, fuckLLVM_m
	j	.init_call_classEdgeList_init_34_classEdgeList_init_entry
.init_call_classEdgeList_init_34_out:
	li	s1, 0
	j	.init_ID10_for_condition
.init_ID10_for_condition:
	lw	ra, fuckLLVM_m
	slt	ra, s1, ra
	bnez	ra, .init_ID10_for_suite
	j	.init_return
.init_ID10_for_suite:
	call	getInt
	mv	s8, a0
	call	getInt
	mv	s6, a0
	call	getInt
	mv	s5, a0
	lw	s7, fuckLLVM_g
	j	.init_call_classEdgeList_addEdge_35_classEdgeList_addEdge_entry
.init_ID10_for_incr:
	li	ra, 1
	add	s1, s1, ra
	j	.init_ID10_for_condition
.init_call_classEdgeList_init_34_classEdgeList_init_entry:
	addi	s6, s1, 0
	li	ra, 12
	mul	ra, s7, ra
	li	t0, 4
	add	a0, ra, t0
	call	malloc
	sw	s7, 0(a0)
	li	ra, 1
	li	t0, 4
	mul	ra, ra, t0
	add	ra, a0, ra
	sw	ra, 0(s6)
	addi	s6, s1, 8
	li	ra, 4
	mul	t0, s7, ra
	li	ra, 4
	add	a0, t0, ra
	call	malloc
	sw	s7, 0(a0)
	li	ra, 1
	li	t0, 4
	mul	ra, ra, t0
	add	ra, a0, ra
	sw	ra, 0(s6)
	addi	s6, s1, 16
	li	ra, 4
	mul	ra, s5, ra
	li	t0, 4
	add	a0, ra, t0
	call	malloc
	sw	s5, 0(a0)
	li	t0, 1
	li	ra, 4
	mul	ra, t0, ra
	add	ra, a0, ra
	sw	ra, 0(s6)
	li	ra, 0
	j	.init_call_classEdgeList_init_34_classEdgeList_init_ID38_for_condition
.init_call_classEdgeList_init_34_classEdgeList_init_ID38_for_condition:
	slt	t0, ra, s7
	bnez	t0, .init_call_classEdgeList_init_34_classEdgeList_init_ID38_for_suite
	j	.init_call_classEdgeList_init_34_classEdgeList_init_ID38_for_out
.init_call_classEdgeList_init_34_classEdgeList_init_ID38_for_suite:
	addi	t0, s1, 8
	lw	t1, 0(t0)
	li	t0, 4
	mul	t0, ra, t0
	add	t0, t1, t0
	li	t1, -1
	sw	t1, 0(t0)
	j	.init_call_classEdgeList_init_34_classEdgeList_init_ID38_for_incr
.init_call_classEdgeList_init_34_classEdgeList_init_ID38_for_incr:
	li	t0, 1
	add	ra, ra, t0
	j	.init_call_classEdgeList_init_34_classEdgeList_init_ID38_for_condition
.init_call_classEdgeList_init_34_classEdgeList_init_ID38_for_out:
	li	ra, 0
	j	.init_call_classEdgeList_init_34_classEdgeList_init_ID48_for_condition
.init_call_classEdgeList_init_34_classEdgeList_init_ID48_for_condition:
	slt	t0, ra, s5
	bnez	t0, .init_call_classEdgeList_init_34_classEdgeList_init_ID48_for_suite
	j	.init_call_classEdgeList_init_34_classEdgeList_init_ID48_for_out
.init_call_classEdgeList_init_34_classEdgeList_init_ID48_for_suite:
	addi	t0, s1, 16
	lw	t1, 0(t0)
	li	t0, 4
	mul	t0, ra, t0
	add	t0, t1, t0
	li	t1, -1
	sw	t1, 0(t0)
	j	.init_call_classEdgeList_init_34_classEdgeList_init_ID48_for_incr
.init_call_classEdgeList_init_34_classEdgeList_init_ID48_for_incr:
	li	t0, 1
	add	ra, ra, t0
	j	.init_call_classEdgeList_init_34_classEdgeList_init_ID48_for_condition
.init_call_classEdgeList_init_34_classEdgeList_init_ID48_for_out:
	addi	ra, s1, 24
	li	t0, 0
	sw	t0, 0(ra)
	j	.init_call_classEdgeList_init_34_out
.init_call_classEdgeList_addEdge_35_classEdgeList_addEdge_entry:
	li	a0, 12
	call	malloc
	j	.init_call_classEdgeList_addEdge_35_classEdgeList_addEdge_call_Edge_0_out
.init_call_classEdgeList_addEdge_35_classEdgeList_addEdge_call_Edge_0_out:
	addi	ra, a0, 0
	sw	s8, 0(ra)
	addi	ra, a0, 4
	sw	s6, 0(ra)
	addi	ra, a0, 8
	sw	s5, 0(ra)
	addi	ra, s7, 0
	lw	ra, 0(ra)
	addi	t0, s7, 24
	lw	t1, 0(t0)
	li	t0, 12
	mul	t0, t1, t0
	add	ra, ra, t0
	sw	a0, 0(ra)
	addi	ra, s7, 8
	lw	ra, 0(ra)
	addi	t0, s7, 24
	lw	t1, 0(t0)
	li	t0, 4
	mul	t0, t1, t0
	add	t1, ra, t0
	addi	ra, s7, 16
	lw	ra, 0(ra)
	li	t0, 4
	mul	t0, s8, t0
	add	ra, ra, t0
	lw	ra, 0(ra)
	sw	ra, 0(t1)
	addi	ra, s7, 16
	lw	t0, 0(ra)
	li	ra, 4
	mul	ra, s8, ra
	add	t0, t0, ra
	addi	ra, s7, 24
	lw	ra, 0(ra)
	sw	ra, 0(t0)
	addi	ra, s7, 24
	lw	t0, 0(ra)
	li	t1, 1
	add	t0, t0, t1
	sw	t0, 0(ra)
	j	.init_ID10_for_incr
.init_return:
	li	ra, -20
	add	ra, s0, ra
	lw	s1, 0(ra)
	li	ra, -12
	add	ra, s0, ra
	lw	s5, 0(ra)
	li	ra, -28
	add	ra, s0, ra
	lw	s6, 0(ra)
	li	ra, -24
	add	ra, s0, ra
	lw	s7, 0(ra)
	li	ra, -32
	add	ra, s0, ra
	lw	s8, 0(ra)
	li	ra, -16
	add	ra, s0, ra
	lw	s9, 0(ra)
	li	t0, 32
	add	t1, sp, t0
	lw	ra, -4(t1)
	lw	s0, -8(t1)
	add	sp, sp, t0
	ret

	.globl	Node
	.p2align	2
	.type	Node,@function
Node:
.Node_assemblyInit:
	li	t0, 16
	sub	sp, sp, t0
	add	t1, sp, t0
	sw	ra, -4(t1)
	sw	s0, -8(t1)
	mv	s0, t1
	j	.Node_entry
.Node_entry:
	j	.Node_return
.Node_return:
	li	t0, 16
	add	t1, sp, t0
	lw	ra, -4(t1)
	lw	s0, -8(t1)
	add	sp, sp, t0
	ret

	.globl	classNode_key_
	.p2align	2
	.type	classNode_key_,@function
classNode_key_:
.classNode_key__assemblyInit:
	li	t0, 16
	sub	sp, sp, t0
	add	t1, sp, t0
	sw	ra, -4(t1)
	sw	s0, -8(t1)
	mv	s0, t1
	j	.classNode_key__entry
.classNode_key__entry:
	addi	ra, a0, 4
	lw	ra, 0(ra)
	li	t0, 0
	sub	a0, t0, ra
	j	.classNode_key__return
.classNode_key__return:
	li	t0, 16
	add	t1, sp, t0
	lw	ra, -4(t1)
	lw	s0, -8(t1)
	add	sp, sp, t0
	ret

	.globl	dijkstra
	.p2align	2
	.type	dijkstra,@function
dijkstra:
.dijkstra_assemblyInit:
	li	t0, 64
	sub	sp, sp, t0
	add	t1, sp, t0
	sw	ra, -4(t1)
	sw	s0, -8(t1)
	mv	s0, t1
	li	ra, -56
	add	ra, s0, ra
	sw	a0, 0(ra)
	li	ra, -64
	add	ra, s0, ra
	sw	s1, 0(ra)
	li	ra, -20
	add	ra, s0, ra
	sw	s2, 0(ra)
	li	ra, -28
	add	ra, s0, ra
	sw	s5, 0(ra)
	li	ra, -32
	add	ra, s0, ra
	sw	s6, 0(ra)
	li	ra, -44
	add	ra, s0, ra
	sw	s7, 0(ra)
	li	ra, -48
	add	ra, s0, ra
	sw	s8, 0(ra)
	li	ra, -24
	add	ra, s0, ra
	sw	s9, 0(ra)
	li	ra, -40
	add	ra, s0, ra
	sw	s10, 0(ra)
	li	ra, -16
	add	ra, s0, ra
	sw	s11, 0(ra)
	j	.dijkstra_entry
.dijkstra_entry:
	lw	s1, fuckLLVM_n
	li	ra, 4
	mul	t0, s1, ra
	li	ra, 4
	add	a0, t0, ra
	call	malloc
	sw	s1, 0(a0)
	li	ra, 1
	li	t0, 4
	mul	ra, ra, t0
	add	s6, a0, ra
	lw	s1, fuckLLVM_n
	li	ra, 4
	mul	ra, s1, ra
	li	t0, 4
	add	a0, ra, t0
	call	malloc
	sw	s1, 0(a0)
	li	t0, 1
	li	ra, 4
	mul	ra, t0, ra
	add	s2, a0, ra
	li	ra, 0
	j	.dijkstra_ID23_for_condition
.dijkstra_ID23_for_condition:
	lw	t0, fuckLLVM_n
	slt	t0, ra, t0
	bnez	t0, .dijkstra_ID23_for_suite
	j	.dijkstra_ID23_for_out
.dijkstra_ID23_for_suite:
	li	t0, 4
	mul	t0, ra, t0
	add	t1, s2, t0
	lw	t0, fuckLLVM_INF
	sw	t0, 0(t1)
	li	t0, 4
	mul	t0, ra, t0
	add	t0, s6, t0
	li	t1, 0
	sw	t1, 0(t0)
	j	.dijkstra_ID23_for_incr
.dijkstra_ID23_for_incr:
	li	t0, 1
	add	ra, ra, t0
	j	.dijkstra_ID23_for_condition
.dijkstra_ID23_for_out:
	li	t0, 4
	li	ra, -56
	add	ra, s0, ra
	lw	ra, 0(ra)
	mul	ra, ra, t0
	add	ra, s2, ra
	li	t0, 0
	sw	t0, 0(ra)
	li	a0, 8
	call	malloc
	mv	s7, a0
	j	.dijkstra_call_Heap_Node_36_Heap_Node_entry
.dijkstra_call_Heap_Node_36_out:
	li	a0, 8
	call	malloc
	j	.dijkstra_call_Node_37_out
.dijkstra_call_Node_37_out:
	mv	s1, a0
	addi	t0, s1, 4
	li	ra, 0
	sw	ra, 0(t0)
	addi	t0, s1, 0
	li	ra, -56
	add	ra, s0, ra
	lw	ra, 0(ra)
	sw	ra, 0(t0)
	j	.dijkstra_call_classHeap_Node_push_38_classHeap_Node_push_entry
.dijkstra_call_classHeap_Node_size_39_out:
	li	ra, 0
	xor	ra, t0, ra
	sltiu	ra, ra, 1
	xori	ra, ra, 1
	bnez	ra, .dijkstra_call_classHeap_Node_pop_42_classHeap_Node_pop_entry
	j	.dijkstra_ID59_while_out
.dijkstra_ID71_if_out:
	li	ra, 4
	mul	ra, s1, ra
	add	ra, s6, ra
	li	t0, 1
	sw	t0, 0(ra)
	lw	ra, fuckLLVM_g
	addi	ra, ra, 16
	lw	t0, 0(ra)
	li	ra, 4
	mul	ra, s1, ra
	add	ra, t0, ra
	lw	s8, 0(ra)
	j	.dijkstra_ID81_for_condition
.dijkstra_ID81_for_condition:
	li	ra, -1
	xor	ra, s8, ra
	sltiu	ra, ra, 1
	xori	ra, ra, 1
	bnez	ra, .dijkstra_ID81_for_suite
	j	.dijkstra_call_classHeap_Node_size_39_classHeap_Node_size_entry
.dijkstra_ID81_for_suite:
	lw	ra, fuckLLVM_g
	addi	ra, ra, 0
	lw	ra, 0(ra)
	li	t0, 12
	mul	t0, s8, t0
	add	ra, ra, t0
	lw	ra, 0(ra)
	addi	ra, ra, 4
	lw	s5, 0(ra)
	lw	ra, fuckLLVM_g
	addi	ra, ra, 0
	lw	t0, 0(ra)
	li	ra, 12
	mul	ra, s8, ra
	add	ra, t0, ra
	lw	ra, 0(ra)
	addi	ra, ra, 8
	lw	t0, 0(ra)
	li	ra, 4
	mul	ra, s1, ra
	add	ra, s2, ra
	lw	ra, 0(ra)
	add	ra, ra, t0
	li	t0, 4
	mul	t0, s5, t0
	add	t0, s2, t0
	lw	t0, 0(t0)
	slt	t0, ra, t0
	xori	t0, t0, 1
	bnez	t0, .dijkstra_ID81_for_incr
	j	.dijkstra_ID115_if_out
.dijkstra_ID115_if_out:
	li	t0, 4
	mul	t0, s5, t0
	add	t0, s2, t0
	sw	ra, 0(t0)
	li	a0, 8
	call	malloc
	j	.dijkstra_call_Node_40_out
.dijkstra_call_Node_40_out:
	addi	ra, a0, 0
	sw	s5, 0(ra)
	addi	t0, a0, 4
	li	ra, 4
	mul	ra, s5, ra
	add	ra, s2, ra
	lw	ra, 0(ra)
	sw	ra, 0(t0)
	j	.dijkstra_call_classHeap_Node_push_41_classHeap_Node_push_entry
.dijkstra_ID81_for_incr:
	lw	ra, fuckLLVM_g
	addi	ra, ra, 8
	lw	ra, 0(ra)
	li	t0, 4
	mul	t0, s8, t0
	add	ra, ra, t0
	lw	s8, 0(ra)
	j	.dijkstra_ID81_for_condition
.dijkstra_call_classHeap_Node_pop_42_out:
	addi	ra, s1, 0
	lw	s1, 0(ra)
	li	ra, 4
	mul	ra, s1, ra
	add	ra, s6, ra
	lw	ra, 0(ra)
	li	t0, 1
	xor	ra, ra, t0
	sltiu	ra, ra, 1
	bnez	ra, .dijkstra_call_classHeap_Node_size_39_classHeap_Node_size_entry
	j	.dijkstra_ID71_if_out
.dijkstra_ID59_while_out:
	mv	a0, s2
	j	.dijkstra_return
.dijkstra_call_Heap_Node_36_Heap_Node_entry:
	addi	s5, s7, 0
	li	a0, 12
	call	malloc
	mv	s1, a0
	j	.dijkstra_call_Heap_Node_36_Heap_Node_call_Array_Node_4_Array_Node_entry
.dijkstra_call_Heap_Node_36_Heap_Node_call_Array_Node_4_out:
	sw	s1, 0(s5)
	j	.dijkstra_call_Heap_Node_36_out
.dijkstra_call_Heap_Node_36_Heap_Node_call_Array_Node_4_Array_Node_entry:
	addi	ra, s1, 8
	li	t0, 0
	sw	t0, 0(ra)
	addi	s8, s1, 0
	li	a0, 132
	call	malloc
	li	ra, 16
	sw	ra, 0(a0)
	li	t0, 1
	li	ra, 4
	mul	ra, t0, ra
	add	ra, a0, ra
	sw	ra, 0(s8)
	j	.dijkstra_call_Heap_Node_36_Heap_Node_call_Array_Node_4_out
.dijkstra_call_classHeap_Node_push_38_classHeap_Node_push_entry:
	addi	ra, s7, 0
	lw	s9, 0(ra)
	j	.dijkstra_call_classHeap_Node_push_38_classHeap_Node_push_call_classArray_Node_push_back_5_classArray_Node_push_back_call_classArray_Node_size_1_classArray_Node_size_entry
.dijkstra_call_classHeap_Node_push_38_classHeap_Node_push_call_classHeap_Node_size_6_out:
	li	ra, 1
	sub	ra, a0, ra
	j	.dijkstra_call_classHeap_Node_push_38_classHeap_Node_push_ID14_while_condition
.dijkstra_call_classHeap_Node_push_38_classHeap_Node_push_ID14_while_condition:
	li	t0, 0
	slt	t0, t0, ra
	bnez	t0, .dijkstra_call_classHeap_Node_push_38_classHeap_Node_push_call_classHeap_Node_pnt_8_classHeap_Node_pnt_entry
	j	.dijkstra_call_classHeap_Node_size_39_classHeap_Node_size_entry
.dijkstra_call_classHeap_Node_push_38_classHeap_Node_push_ID29_if_out:
	addi	t1, s7, 0
	lw	a2, 0(t1)
	j	.dijkstra_call_classHeap_Node_push_38_classHeap_Node_push_call_classArray_Node_swap_7_classArray_Node_swap_entry
.dijkstra_call_classHeap_Node_push_38_classHeap_Node_push_call_classArray_Node_swap_7_out:
	mv	ra, t0
	j	.dijkstra_call_classHeap_Node_push_38_classHeap_Node_push_ID14_while_condition
.dijkstra_call_classHeap_Node_push_38_classHeap_Node_push_call_classHeap_Node_pnt_8_out:
	addi	t1, s7, 0
	lw	t1, 0(t1)
	j	.dijkstra_call_classHeap_Node_push_38_classHeap_Node_push_call_classArray_Node_get_9_classArray_Node_get_entry
.dijkstra_call_classHeap_Node_push_38_classHeap_Node_push_call_classNode_key__10_out:
	addi	t1, s7, 0
	lw	t1, 0(t1)
	j	.dijkstra_call_classHeap_Node_push_38_classHeap_Node_push_call_classArray_Node_get_11_classArray_Node_get_entry
.dijkstra_call_classHeap_Node_push_38_classHeap_Node_push_call_classNode_key__12_out:
	slt	t1, t2, t1
	xori	t1, t1, 1
	bnez	t1, .dijkstra_call_classHeap_Node_size_39_classHeap_Node_size_entry
	j	.dijkstra_call_classHeap_Node_push_38_classHeap_Node_push_ID29_if_out
.dijkstra_call_classHeap_Node_push_38_classHeap_Node_push_call_classArray_Node_push_back_5_classArray_Node_push_back_call_classArray_Node_size_1_out:
	addi	ra, s9, 0
	lw	ra, 0(ra)
	li	t0, -1
	li	t1, 4
	mul	t0, t0, t1
	add	ra, ra, t0
	lw	ra, 0(ra)
	xor	ra, t2, ra
	sltiu	ra, ra, 1
	bnez	ra, .dijkstra_call_classHeap_Node_push_38_classHeap_Node_push_call_classArray_Node_push_back_5_classArray_Node_push_back_call_classArray_Node_doubleStorage_2_classArray_Node_doubleStorage_entry
	j	.dijkstra_call_classHeap_Node_push_38_classHeap_Node_push_call_classArray_Node_push_back_5_classArray_Node_push_back_ID12_if_out
.dijkstra_call_classHeap_Node_push_38_classHeap_Node_push_call_classArray_Node_push_back_5_classArray_Node_push_back_ID12_if_out:
	addi	ra, s9, 0
	lw	t0, 0(ra)
	addi	ra, s9, 8
	lw	t1, 0(ra)
	li	ra, 8
	mul	ra, t1, ra
	add	ra, t0, ra
	sw	s1, 0(ra)
	addi	t1, s9, 8
	lw	ra, 0(t1)
	li	t0, 1
	add	ra, ra, t0
	sw	ra, 0(t1)
	j	.dijkstra_call_classHeap_Node_push_38_classHeap_Node_push_call_classHeap_Node_size_6_classHeap_Node_size_entry
.dijkstra_call_classHeap_Node_push_38_classHeap_Node_push_call_classArray_Node_push_back_5_classArray_Node_push_back_call_classArray_Node_size_1_classArray_Node_size_entry:
	addi	ra, s9, 8
	lw	t2, 0(ra)
	j	.dijkstra_call_classHeap_Node_push_38_classHeap_Node_push_call_classArray_Node_push_back_5_classArray_Node_push_back_call_classArray_Node_size_1_out
.dijkstra_call_classHeap_Node_push_38_classHeap_Node_push_call_classArray_Node_push_back_5_classArray_Node_push_back_call_classArray_Node_doubleStorage_2_classArray_Node_doubleStorage_entry:
	addi	ra, s9, 0
	lw	s5, 0(ra)
	addi	ra, s9, 8
	lw	t0, 0(ra)
	li	ra, -60
	add	ra, s0, ra
	sw	t0, 0(ra)
	addi	s8, s9, 0
	li	ra, -1
	li	t0, 4
	mul	ra, ra, t0
	add	ra, s5, ra
	lw	t0, 0(ra)
	li	ra, 2
	mul	s10, t0, ra
	li	ra, 8
	mul	t0, s10, ra
	li	ra, 4
	add	a0, t0, ra
	call	malloc
	sw	s10, 0(a0)
	li	ra, 1
	li	t0, 4
	mul	ra, ra, t0
	add	ra, a0, ra
	sw	ra, 0(s8)
	addi	ra, s9, 8
	li	t0, 0
	sw	t0, 0(ra)
	j	.dijkstra_call_classHeap_Node_push_38_classHeap_Node_push_call_classArray_Node_push_back_5_classArray_Node_push_back_call_classArray_Node_doubleStorage_2_classArray_Node_doubleStorage_ID25_for_condition
.dijkstra_call_classHeap_Node_push_38_classHeap_Node_push_call_classArray_Node_push_back_5_classArray_Node_push_back_call_classArray_Node_doubleStorage_2_classArray_Node_doubleStorage_ID25_for_condition:
	addi	ra, s9, 8
	lw	t0, 0(ra)
	li	ra, -60
	add	ra, s0, ra
	lw	ra, 0(ra)
	xor	ra, t0, ra
	sltiu	ra, ra, 1
	xori	ra, ra, 1
	bnez	ra, .dijkstra_call_classHeap_Node_push_38_classHeap_Node_push_call_classArray_Node_push_back_5_classArray_Node_push_back_call_classArray_Node_doubleStorage_2_classArray_Node_doubleStorage_ID25_for_suite
	j	.dijkstra_call_classHeap_Node_push_38_classHeap_Node_push_call_classArray_Node_push_back_5_classArray_Node_push_back_ID12_if_out
.dijkstra_call_classHeap_Node_push_38_classHeap_Node_push_call_classArray_Node_push_back_5_classArray_Node_push_back_call_classArray_Node_doubleStorage_2_classArray_Node_doubleStorage_ID25_for_suite:
	addi	ra, s9, 0
	lw	t0, 0(ra)
	addi	ra, s9, 8
	lw	t1, 0(ra)
	li	ra, 8
	mul	ra, t1, ra
	add	t0, t0, ra
	addi	ra, s9, 8
	lw	t1, 0(ra)
	li	ra, 8
	mul	ra, t1, ra
	add	ra, s5, ra
	lw	ra, 0(ra)
	sw	ra, 0(t0)
	j	.dijkstra_call_classHeap_Node_push_38_classHeap_Node_push_call_classArray_Node_push_back_5_classArray_Node_push_back_call_classArray_Node_doubleStorage_2_classArray_Node_doubleStorage_ID25_for_incr
.dijkstra_call_classHeap_Node_push_38_classHeap_Node_push_call_classArray_Node_push_back_5_classArray_Node_push_back_call_classArray_Node_doubleStorage_2_classArray_Node_doubleStorage_ID25_for_incr:
	addi	ra, s9, 8
	lw	t1, 0(ra)
	li	t0, 1
	add	t0, t1, t0
	sw	t0, 0(ra)
	j	.dijkstra_call_classHeap_Node_push_38_classHeap_Node_push_call_classArray_Node_push_back_5_classArray_Node_push_back_call_classArray_Node_doubleStorage_2_classArray_Node_doubleStorage_ID25_for_condition
.dijkstra_call_classHeap_Node_push_38_classHeap_Node_push_call_classHeap_Node_size_6_classHeap_Node_size_entry:
	addi	ra, s7, 0
	lw	a0, 0(ra)
	call	classArray_Node_size
	j	.dijkstra_call_classHeap_Node_push_38_classHeap_Node_push_call_classHeap_Node_size_6_out
.dijkstra_call_classHeap_Node_push_38_classHeap_Node_push_call_classArray_Node_swap_7_classArray_Node_swap_entry:
	addi	t1, a2, 0
	lw	t2, 0(t1)
	li	t1, 8
	mul	t1, t0, t1
	add	t1, t2, t1
	lw	t2, 0(t1)
	addi	t1, a2, 0
	lw	a0, 0(t1)
	li	t1, 8
	mul	t1, t0, t1
	add	a0, a0, t1
	addi	t1, a2, 0
	lw	a1, 0(t1)
	li	t1, 8
	mul	t1, ra, t1
	add	t1, a1, t1
	lw	t1, 0(t1)
	sw	t1, 0(a0)
	addi	t1, a2, 0
	lw	a0, 0(t1)
	li	t1, 8
	mul	ra, ra, t1
	add	ra, a0, ra
	sw	t2, 0(ra)
	j	.dijkstra_call_classHeap_Node_push_38_classHeap_Node_push_call_classArray_Node_swap_7_out
.dijkstra_call_classHeap_Node_push_38_classHeap_Node_push_call_classHeap_Node_pnt_8_classHeap_Node_pnt_entry:
	li	t0, 1
	sub	t0, ra, t0
	li	t1, 2
	div	t0, t0, t1
	j	.dijkstra_call_classHeap_Node_push_38_classHeap_Node_push_call_classHeap_Node_pnt_8_out
.dijkstra_call_classHeap_Node_push_38_classHeap_Node_push_call_classArray_Node_get_9_classArray_Node_get_entry:
	addi	t1, t1, 0
	lw	t1, 0(t1)
	li	t2, 8
	mul	t2, t0, t2
	add	t1, t1, t2
	lw	t1, 0(t1)
	j	.dijkstra_call_classHeap_Node_push_38_classHeap_Node_push_call_classNode_key__10_classNode_key__entry
.dijkstra_call_classHeap_Node_push_38_classHeap_Node_push_call_classNode_key__10_classNode_key__entry:
	addi	t1, t1, 4
	lw	t1, 0(t1)
	li	t2, 0
	sub	t2, t2, t1
	j	.dijkstra_call_classHeap_Node_push_38_classHeap_Node_push_call_classNode_key__10_out
.dijkstra_call_classHeap_Node_push_38_classHeap_Node_push_call_classArray_Node_get_11_classArray_Node_get_entry:
	addi	t1, t1, 0
	lw	a0, 0(t1)
	li	t1, 8
	mul	t1, ra, t1
	add	t1, a0, t1
	lw	t1, 0(t1)
	j	.dijkstra_call_classHeap_Node_push_38_classHeap_Node_push_call_classNode_key__12_classNode_key__entry
.dijkstra_call_classHeap_Node_push_38_classHeap_Node_push_call_classNode_key__12_classNode_key__entry:
	addi	t1, t1, 4
	lw	t1, 0(t1)
	li	a0, 0
	sub	t1, a0, t1
	j	.dijkstra_call_classHeap_Node_push_38_classHeap_Node_push_call_classNode_key__12_out
.dijkstra_call_classHeap_Node_size_39_classHeap_Node_size_entry:
	addi	ra, s7, 0
	lw	ra, 0(ra)
	j	.dijkstra_call_classHeap_Node_size_39_classHeap_Node_size_call_classArray_Node_size_19_classArray_Node_size_entry
.dijkstra_call_classHeap_Node_size_39_classHeap_Node_size_call_classArray_Node_size_19_classArray_Node_size_entry:
	addi	ra, ra, 8
	lw	t0, 0(ra)
	j	.dijkstra_call_classHeap_Node_size_39_out
.dijkstra_call_classHeap_Node_push_41_classHeap_Node_push_entry:
	addi	ra, s7, 0
	lw	s5, 0(ra)
	li	ra, -52
	add	ra, s0, ra
	sw	a0, 0(ra)
	j	.dijkstra_call_classHeap_Node_push_41_classHeap_Node_push_call_classArray_Node_push_back_5_classArray_Node_push_back_call_classArray_Node_size_1_classArray_Node_size_entry
.dijkstra_call_classHeap_Node_push_41_classHeap_Node_push_call_classHeap_Node_size_6_out:
	li	ra, 1
	sub	t2, a0, ra
	j	.dijkstra_call_classHeap_Node_push_41_classHeap_Node_push_ID14_while_condition
.dijkstra_call_classHeap_Node_push_41_classHeap_Node_push_ID14_while_condition:
	li	ra, 0
	slt	ra, ra, t2
	bnez	ra, .dijkstra_call_classHeap_Node_push_41_classHeap_Node_push_call_classHeap_Node_pnt_8_classHeap_Node_pnt_entry
	j	.dijkstra_ID81_for_incr
.dijkstra_call_classHeap_Node_push_41_classHeap_Node_push_ID29_if_out:
	addi	ra, s7, 0
	lw	a1, 0(ra)
	j	.dijkstra_call_classHeap_Node_push_41_classHeap_Node_push_call_classArray_Node_swap_7_classArray_Node_swap_entry
.dijkstra_call_classHeap_Node_push_41_classHeap_Node_push_call_classArray_Node_swap_7_out:
	mv	t2, t1
	j	.dijkstra_call_classHeap_Node_push_41_classHeap_Node_push_ID14_while_condition
.dijkstra_call_classHeap_Node_push_41_classHeap_Node_push_call_classHeap_Node_pnt_8_out:
	addi	ra, s7, 0
	lw	ra, 0(ra)
	j	.dijkstra_call_classHeap_Node_push_41_classHeap_Node_push_call_classArray_Node_get_9_classArray_Node_get_entry
.dijkstra_call_classHeap_Node_push_41_classHeap_Node_push_call_classNode_key__10_out:
	addi	ra, s7, 0
	lw	ra, 0(ra)
	j	.dijkstra_call_classHeap_Node_push_41_classHeap_Node_push_call_classArray_Node_get_11_classArray_Node_get_entry
.dijkstra_call_classHeap_Node_push_41_classHeap_Node_push_call_classNode_key__12_out:
	slt	ra, t0, ra
	xori	ra, ra, 1
	bnez	ra, .dijkstra_ID81_for_incr
	j	.dijkstra_call_classHeap_Node_push_41_classHeap_Node_push_ID29_if_out
.dijkstra_call_classHeap_Node_push_41_classHeap_Node_push_call_classArray_Node_push_back_5_classArray_Node_push_back_call_classArray_Node_size_1_out:
	addi	ra, s5, 0
	lw	ra, 0(ra)
	li	t1, -1
	li	t2, 4
	mul	t1, t1, t2
	add	ra, ra, t1
	lw	ra, 0(ra)
	xor	ra, t0, ra
	sltiu	ra, ra, 1
	bnez	ra, .dijkstra_call_classHeap_Node_push_41_classHeap_Node_push_call_classArray_Node_push_back_5_classArray_Node_push_back_call_classArray_Node_doubleStorage_2_classArray_Node_doubleStorage_entry
	j	.dijkstra_call_classHeap_Node_push_41_classHeap_Node_push_call_classArray_Node_push_back_5_classArray_Node_push_back_ID12_if_out
.dijkstra_call_classHeap_Node_push_41_classHeap_Node_push_call_classArray_Node_push_back_5_classArray_Node_push_back_ID12_if_out:
	addi	ra, s5, 0
	lw	ra, 0(ra)
	addi	t0, s5, 8
	lw	t0, 0(t0)
	li	t1, 8
	mul	t0, t0, t1
	add	t0, ra, t0
	li	ra, -52
	add	ra, s0, ra
	lw	ra, 0(ra)
	sw	ra, 0(t0)
	addi	t1, s5, 8
	lw	ra, 0(t1)
	li	t0, 1
	add	ra, ra, t0
	sw	ra, 0(t1)
	j	.dijkstra_call_classHeap_Node_push_41_classHeap_Node_push_call_classHeap_Node_size_6_classHeap_Node_size_entry
.dijkstra_call_classHeap_Node_push_41_classHeap_Node_push_call_classArray_Node_push_back_5_classArray_Node_push_back_call_classArray_Node_size_1_classArray_Node_size_entry:
	addi	ra, s5, 8
	lw	t0, 0(ra)
	j	.dijkstra_call_classHeap_Node_push_41_classHeap_Node_push_call_classArray_Node_push_back_5_classArray_Node_push_back_call_classArray_Node_size_1_out
.dijkstra_call_classHeap_Node_push_41_classHeap_Node_push_call_classArray_Node_push_back_5_classArray_Node_push_back_call_classArray_Node_doubleStorage_2_classArray_Node_doubleStorage_entry:
	addi	ra, s5, 0
	lw	s9, 0(ra)
	addi	ra, s5, 8
	lw	ra, 0(ra)
	li	t0, -36
	add	t0, s0, t0
	sw	ra, 0(t0)
	addi	t0, s5, 0
	li	ra, -12
	add	ra, s0, ra
	sw	t0, 0(ra)
	li	t0, -1
	li	ra, 4
	mul	ra, t0, ra
	add	ra, s9, ra
	lw	ra, 0(ra)
	li	t0, 2
	mul	s10, ra, t0
	li	ra, 8
	mul	t0, s10, ra
	li	ra, 4
	add	a0, t0, ra
	call	malloc
	sw	s10, 0(a0)
	li	t0, 1
	li	ra, 4
	mul	ra, t0, ra
	add	ra, a0, ra
	li	t0, -12
	add	t0, s0, t0
	lw	t0, 0(t0)
	sw	ra, 0(t0)
	addi	ra, s5, 8
	li	t0, 0
	sw	t0, 0(ra)
	j	.dijkstra_call_classHeap_Node_push_41_classHeap_Node_push_call_classArray_Node_push_back_5_classArray_Node_push_back_call_classArray_Node_doubleStorage_2_classArray_Node_doubleStorage_ID25_for_condition
.dijkstra_call_classHeap_Node_push_41_classHeap_Node_push_call_classArray_Node_push_back_5_classArray_Node_push_back_call_classArray_Node_doubleStorage_2_classArray_Node_doubleStorage_ID25_for_condition:
	addi	ra, s5, 8
	lw	ra, 0(ra)
	li	t0, -36
	add	t0, s0, t0
	lw	t0, 0(t0)
	xor	ra, ra, t0
	sltiu	ra, ra, 1
	xori	ra, ra, 1
	bnez	ra, .dijkstra_call_classHeap_Node_push_41_classHeap_Node_push_call_classArray_Node_push_back_5_classArray_Node_push_back_call_classArray_Node_doubleStorage_2_classArray_Node_doubleStorage_ID25_for_suite
	j	.dijkstra_call_classHeap_Node_push_41_classHeap_Node_push_call_classArray_Node_push_back_5_classArray_Node_push_back_ID12_if_out
.dijkstra_call_classHeap_Node_push_41_classHeap_Node_push_call_classArray_Node_push_back_5_classArray_Node_push_back_call_classArray_Node_doubleStorage_2_classArray_Node_doubleStorage_ID25_for_suite:
	addi	ra, s5, 0
	lw	t1, 0(ra)
	addi	ra, s5, 8
	lw	ra, 0(ra)
	li	t0, 8
	mul	ra, ra, t0
	add	t1, t1, ra
	addi	ra, s5, 8
	lw	ra, 0(ra)
	li	t0, 8
	mul	ra, ra, t0
	add	ra, s9, ra
	lw	ra, 0(ra)
	sw	ra, 0(t1)
	j	.dijkstra_call_classHeap_Node_push_41_classHeap_Node_push_call_classArray_Node_push_back_5_classArray_Node_push_back_call_classArray_Node_doubleStorage_2_classArray_Node_doubleStorage_ID25_for_incr
.dijkstra_call_classHeap_Node_push_41_classHeap_Node_push_call_classArray_Node_push_back_5_classArray_Node_push_back_call_classArray_Node_doubleStorage_2_classArray_Node_doubleStorage_ID25_for_incr:
	addi	ra, s5, 8
	lw	t0, 0(ra)
	li	t1, 1
	add	t0, t0, t1
	sw	t0, 0(ra)
	j	.dijkstra_call_classHeap_Node_push_41_classHeap_Node_push_call_classArray_Node_push_back_5_classArray_Node_push_back_call_classArray_Node_doubleStorage_2_classArray_Node_doubleStorage_ID25_for_condition
.dijkstra_call_classHeap_Node_push_41_classHeap_Node_push_call_classHeap_Node_size_6_classHeap_Node_size_entry:
	addi	ra, s7, 0
	lw	a0, 0(ra)
	call	classArray_Node_size
	j	.dijkstra_call_classHeap_Node_push_41_classHeap_Node_push_call_classHeap_Node_size_6_out
.dijkstra_call_classHeap_Node_push_41_classHeap_Node_push_call_classArray_Node_swap_7_classArray_Node_swap_entry:
	addi	ra, a1, 0
	lw	t0, 0(ra)
	li	ra, 8
	mul	ra, t1, ra
	add	ra, t0, ra
	lw	ra, 0(ra)
	addi	t0, a1, 0
	lw	a0, 0(t0)
	li	t0, 8
	mul	t0, t1, t0
	add	a0, a0, t0
	addi	t0, a1, 0
	lw	a2, 0(t0)
	li	t0, 8
	mul	t0, t2, t0
	add	t0, a2, t0
	lw	t0, 0(t0)
	sw	t0, 0(a0)
	addi	t0, a1, 0
	lw	t0, 0(t0)
	li	a0, 8
	mul	t2, t2, a0
	add	t0, t0, t2
	sw	ra, 0(t0)
	j	.dijkstra_call_classHeap_Node_push_41_classHeap_Node_push_call_classArray_Node_swap_7_out
.dijkstra_call_classHeap_Node_push_41_classHeap_Node_push_call_classHeap_Node_pnt_8_classHeap_Node_pnt_entry:
	li	ra, 1
	sub	ra, t2, ra
	li	t0, 2
	div	t1, ra, t0
	j	.dijkstra_call_classHeap_Node_push_41_classHeap_Node_push_call_classHeap_Node_pnt_8_out
.dijkstra_call_classHeap_Node_push_41_classHeap_Node_push_call_classArray_Node_get_9_classArray_Node_get_entry:
	addi	ra, ra, 0
	lw	t0, 0(ra)
	li	ra, 8
	mul	ra, t1, ra
	add	ra, t0, ra
	lw	ra, 0(ra)
	j	.dijkstra_call_classHeap_Node_push_41_classHeap_Node_push_call_classNode_key__10_classNode_key__entry
.dijkstra_call_classHeap_Node_push_41_classHeap_Node_push_call_classNode_key__10_classNode_key__entry:
	addi	ra, ra, 4
	lw	ra, 0(ra)
	li	t0, 0
	sub	t0, t0, ra
	j	.dijkstra_call_classHeap_Node_push_41_classHeap_Node_push_call_classNode_key__10_out
.dijkstra_call_classHeap_Node_push_41_classHeap_Node_push_call_classArray_Node_get_11_classArray_Node_get_entry:
	addi	ra, ra, 0
	lw	ra, 0(ra)
	li	a0, 8
	mul	a0, t2, a0
	add	ra, ra, a0
	lw	ra, 0(ra)
	j	.dijkstra_call_classHeap_Node_push_41_classHeap_Node_push_call_classNode_key__12_classNode_key__entry
.dijkstra_call_classHeap_Node_push_41_classHeap_Node_push_call_classNode_key__12_classNode_key__entry:
	addi	ra, ra, 4
	lw	ra, 0(ra)
	li	a0, 0
	sub	ra, a0, ra
	j	.dijkstra_call_classHeap_Node_push_41_classHeap_Node_push_call_classNode_key__12_out
.dijkstra_call_classHeap_Node_pop_42_classHeap_Node_pop_entry:
	addi	ra, s7, 0
	lw	ra, 0(ra)
	j	.dijkstra_call_classHeap_Node_pop_42_classHeap_Node_pop_call_classArray_Node_front_13_classArray_Node_front_entry
.dijkstra_call_classHeap_Node_pop_42_classHeap_Node_pop_call_classArray_Node_front_13_out:
	addi	ra, s7, 0
	lw	s5, 0(ra)
	j	.dijkstra_call_classHeap_Node_pop_42_classHeap_Node_pop_call_classHeap_Node_size_14_classHeap_Node_size_entry
.dijkstra_call_classHeap_Node_pop_42_classHeap_Node_pop_call_classHeap_Node_size_14_out:
	li	ra, 1
	sub	t1, a0, ra
	j	.dijkstra_call_classHeap_Node_pop_42_classHeap_Node_pop_call_classArray_Node_swap_15_classArray_Node_swap_entry
.dijkstra_call_classHeap_Node_pop_42_classHeap_Node_pop_call_classArray_Node_swap_15_out:
	addi	ra, s7, 0
	lw	ra, 0(ra)
	j	.dijkstra_call_classHeap_Node_pop_42_classHeap_Node_pop_call_classArray_Node_pop_back_16_classArray_Node_pop_back_entry
.dijkstra_call_classHeap_Node_pop_42_classHeap_Node_pop_call_classHeap_Node_maxHeapify_17_out:
	j	.dijkstra_call_classHeap_Node_pop_42_out
.dijkstra_call_classHeap_Node_pop_42_classHeap_Node_pop_call_classArray_Node_front_13_classArray_Node_front_entry:
	addi	ra, ra, 0
	lw	t0, 0(ra)
	li	t1, 0
	li	ra, 8
	mul	ra, t1, ra
	add	ra, t0, ra
	lw	s1, 0(ra)
	j	.dijkstra_call_classHeap_Node_pop_42_classHeap_Node_pop_call_classArray_Node_front_13_out
.dijkstra_call_classHeap_Node_pop_42_classHeap_Node_pop_call_classHeap_Node_size_14_classHeap_Node_size_entry:
	addi	ra, s7, 0
	lw	a0, 0(ra)
	call	classArray_Node_size
	j	.dijkstra_call_classHeap_Node_pop_42_classHeap_Node_pop_call_classHeap_Node_size_14_out
.dijkstra_call_classHeap_Node_pop_42_classHeap_Node_pop_call_classArray_Node_swap_15_classArray_Node_swap_entry:
	addi	ra, s5, 0
	lw	ra, 0(ra)
	li	t2, 0
	li	t0, 8
	mul	t0, t2, t0
	add	ra, ra, t0
	lw	t0, 0(ra)
	addi	ra, s5, 0
	lw	t2, 0(ra)
	li	a0, 0
	li	ra, 8
	mul	ra, a0, ra
	add	t2, t2, ra
	addi	ra, s5, 0
	lw	a0, 0(ra)
	li	ra, 8
	mul	ra, t1, ra
	add	ra, a0, ra
	lw	ra, 0(ra)
	sw	ra, 0(t2)
	addi	ra, s5, 0
	lw	t2, 0(ra)
	li	ra, 8
	mul	ra, t1, ra
	add	ra, t2, ra
	sw	t0, 0(ra)
	j	.dijkstra_call_classHeap_Node_pop_42_classHeap_Node_pop_call_classArray_Node_swap_15_out
.dijkstra_call_classHeap_Node_pop_42_classHeap_Node_pop_call_classArray_Node_pop_back_16_classArray_Node_pop_back_entry:
	addi	t0, ra, 8
	lw	t1, 0(t0)
	li	ra, 1
	sub	ra, t1, ra
	sw	ra, 0(t0)
	j	.dijkstra_call_classHeap_Node_pop_42_classHeap_Node_pop_call_classHeap_Node_maxHeapify_17_classHeap_Node_maxHeapify_entry
.dijkstra_call_classHeap_Node_pop_42_classHeap_Node_pop_call_classHeap_Node_maxHeapify_17_classHeap_Node_maxHeapify_entry:
	mv	a0, s7
	li	a1, 0
	call	classHeap_Node_lchild
	mv	s8, a0
	mv	a0, s7
	li	a1, 0
	call	classHeap_Node_rchild
	mv	s5, a0
	mv	a0, s7
	call	classHeap_Node_size
	slt	ra, s8, a0
	bnez	ra, .dijkstra_call_classHeap_Node_pop_42_classHeap_Node_pop_call_classHeap_Node_maxHeapify_17_classHeap_Node_maxHeapify_ID16_AndAnd_true
	j	.dijkstra_call_classHeap_Node_pop_42_classHeap_Node_pop_call_classHeap_Node_maxHeapify_17_classHeap_Node_maxHeapify_entry_mid
.dijkstra_call_classHeap_Node_pop_42_classHeap_Node_pop_call_classHeap_Node_maxHeapify_17_classHeap_Node_maxHeapify_entry_mid:
	li	ra, 0
	j	.dijkstra_call_classHeap_Node_pop_42_classHeap_Node_pop_call_classHeap_Node_maxHeapify_17_classHeap_Node_maxHeapify_ID16_AndAnd_out
.dijkstra_call_classHeap_Node_pop_42_classHeap_Node_pop_call_classHeap_Node_maxHeapify_17_classHeap_Node_maxHeapify_ID16_AndAnd_true:
	addi	ra, s7, 0
	lw	a0, 0(ra)
	mv	a1, s8
	call	classArray_Node_get
	call	classNode_key_
	mv	s9, a0
	addi	ra, s7, 0
	lw	a0, 0(ra)
	li	a1, 0
	call	classArray_Node_get
	call	classNode_key_
	slt	ra, a0, s9
	j	.dijkstra_call_classHeap_Node_pop_42_classHeap_Node_pop_call_classHeap_Node_maxHeapify_17_classHeap_Node_maxHeapify_ID16_AndAnd_out
.dijkstra_call_classHeap_Node_pop_42_classHeap_Node_pop_call_classHeap_Node_maxHeapify_17_classHeap_Node_maxHeapify_ID16_AndAnd_out_mid:
	li	s8, 0
	j	.dijkstra_call_classHeap_Node_pop_42_classHeap_Node_pop_call_classHeap_Node_maxHeapify_17_classHeap_Node_maxHeapify_ID28_if_out
.dijkstra_call_classHeap_Node_pop_42_classHeap_Node_pop_call_classHeap_Node_maxHeapify_17_classHeap_Node_maxHeapify_ID16_AndAnd_out:
	bnez	ra, .dijkstra_call_classHeap_Node_pop_42_classHeap_Node_pop_call_classHeap_Node_maxHeapify_17_classHeap_Node_maxHeapify_ID28_if_true
	j	.dijkstra_call_classHeap_Node_pop_42_classHeap_Node_pop_call_classHeap_Node_maxHeapify_17_classHeap_Node_maxHeapify_ID16_AndAnd_out_mid
.dijkstra_call_classHeap_Node_pop_42_classHeap_Node_pop_call_classHeap_Node_maxHeapify_17_classHeap_Node_maxHeapify_ID28_if_out_mid:
	li	ra, 0
	j	.dijkstra_call_classHeap_Node_pop_42_classHeap_Node_pop_call_classHeap_Node_maxHeapify_17_classHeap_Node_maxHeapify_ID32_AndAnd_out
.dijkstra_call_classHeap_Node_pop_42_classHeap_Node_pop_call_classHeap_Node_maxHeapify_17_classHeap_Node_maxHeapify_ID28_if_true:
	j	.dijkstra_call_classHeap_Node_pop_42_classHeap_Node_pop_call_classHeap_Node_maxHeapify_17_classHeap_Node_maxHeapify_ID28_if_out
.dijkstra_call_classHeap_Node_pop_42_classHeap_Node_pop_call_classHeap_Node_maxHeapify_17_classHeap_Node_maxHeapify_ID32_AndAnd_out_mid:
	mv	s5, s8
	j	.dijkstra_call_classHeap_Node_pop_42_classHeap_Node_pop_call_classHeap_Node_maxHeapify_17_classHeap_Node_maxHeapify_ID44_if_out
.dijkstra_call_classHeap_Node_pop_42_classHeap_Node_pop_call_classHeap_Node_maxHeapify_17_classHeap_Node_maxHeapify_ID28_if_out:
	mv	a0, s7
	call	classHeap_Node_size
	slt	ra, s5, a0
	bnez	ra, .dijkstra_call_classHeap_Node_pop_42_classHeap_Node_pop_call_classHeap_Node_maxHeapify_17_classHeap_Node_maxHeapify_ID32_AndAnd_true
	j	.dijkstra_call_classHeap_Node_pop_42_classHeap_Node_pop_call_classHeap_Node_maxHeapify_17_classHeap_Node_maxHeapify_ID28_if_out_mid
.dijkstra_call_classHeap_Node_pop_42_classHeap_Node_pop_call_classHeap_Node_maxHeapify_17_classHeap_Node_maxHeapify_ID32_AndAnd_true:
	addi	ra, s7, 0
	lw	a0, 0(ra)
	mv	a1, s5
	call	classArray_Node_get
	call	classNode_key_
	mv	s9, a0
	addi	ra, s7, 0
	lw	a0, 0(ra)
	mv	a1, s8
	call	classArray_Node_get
	call	classNode_key_
	slt	ra, a0, s9
	j	.dijkstra_call_classHeap_Node_pop_42_classHeap_Node_pop_call_classHeap_Node_maxHeapify_17_classHeap_Node_maxHeapify_ID32_AndAnd_out
.dijkstra_call_classHeap_Node_pop_42_classHeap_Node_pop_call_classHeap_Node_maxHeapify_17_classHeap_Node_maxHeapify_ID32_AndAnd_out:
	bnez	ra, .dijkstra_call_classHeap_Node_pop_42_classHeap_Node_pop_call_classHeap_Node_maxHeapify_17_classHeap_Node_maxHeapify_ID44_if_true
	j	.dijkstra_call_classHeap_Node_pop_42_classHeap_Node_pop_call_classHeap_Node_maxHeapify_17_classHeap_Node_maxHeapify_ID32_AndAnd_out_mid
.dijkstra_call_classHeap_Node_pop_42_classHeap_Node_pop_call_classHeap_Node_maxHeapify_17_classHeap_Node_maxHeapify_ID44_if_true:
	j	.dijkstra_call_classHeap_Node_pop_42_classHeap_Node_pop_call_classHeap_Node_maxHeapify_17_classHeap_Node_maxHeapify_ID44_if_out
.dijkstra_call_classHeap_Node_pop_42_classHeap_Node_pop_call_classHeap_Node_maxHeapify_17_classHeap_Node_maxHeapify_ID44_if_out:
	li	ra, 0
	xor	ra, s5, ra
	sltiu	ra, ra, 1
	bnez	ra, .dijkstra_call_classHeap_Node_pop_42_classHeap_Node_pop_call_classHeap_Node_maxHeapify_17_out
	j	.dijkstra_call_classHeap_Node_pop_42_classHeap_Node_pop_call_classHeap_Node_maxHeapify_17_classHeap_Node_maxHeapify_ID48_if_out
.dijkstra_call_classHeap_Node_pop_42_classHeap_Node_pop_call_classHeap_Node_maxHeapify_17_classHeap_Node_maxHeapify_ID48_if_out:
	addi	ra, s7, 0
	lw	a0, 0(ra)
	li	a1, 0
	mv	a2, s5
	call	classArray_Node_swap
	mv	a0, s7
	mv	a1, s5
	call	classHeap_Node_maxHeapify
	j	.dijkstra_call_classHeap_Node_pop_42_classHeap_Node_pop_call_classHeap_Node_maxHeapify_17_out
.dijkstra_return:
	li	ra, -64
	add	ra, s0, ra
	lw	s1, 0(ra)
	li	ra, -20
	add	ra, s0, ra
	lw	s2, 0(ra)
	li	ra, -28
	add	ra, s0, ra
	lw	s5, 0(ra)
	li	ra, -32
	add	ra, s0, ra
	lw	s6, 0(ra)
	li	ra, -44
	add	ra, s0, ra
	lw	s7, 0(ra)
	li	ra, -48
	add	ra, s0, ra
	lw	s8, 0(ra)
	li	ra, -24
	add	ra, s0, ra
	lw	s9, 0(ra)
	li	ra, -40
	add	ra, s0, ra
	lw	s10, 0(ra)
	li	ra, -16
	add	ra, s0, ra
	lw	s11, 0(ra)
	li	t0, 64
	add	t1, sp, t0
	lw	ra, -4(t1)
	lw	s0, -8(t1)
	add	sp, sp, t0
	ret

	.globl	main
	.p2align	2
	.type	main,@function
main:
.main_assemblyInit:
	li	t0, 64
	sub	sp, sp, t0
	add	t1, sp, t0
	sw	ra, -4(t1)
	sw	s0, -8(t1)
	mv	s0, t1
	li	ra, -28
	add	ra, s0, ra
	sw	s1, 0(ra)
	li	ra, -44
	add	ra, s0, ra
	sw	s2, 0(ra)
	li	ra, -36
	add	ra, s0, ra
	sw	s3, 0(ra)
	li	ra, -40
	add	ra, s0, ra
	sw	s4, 0(ra)
	li	ra, -20
	add	ra, s0, ra
	sw	s5, 0(ra)
	li	ra, -12
	add	ra, s0, ra
	sw	s6, 0(ra)
	li	ra, -48
	add	ra, s0, ra
	sw	s7, 0(ra)
	li	ra, -32
	add	ra, s0, ra
	sw	s8, 0(ra)
	li	ra, -16
	add	ra, s0, ra
	sw	s9, 0(ra)
	li	ra, -56
	add	ra, s0, ra
	sw	s11, 0(ra)
	j	.main_entry
.main_entry:
	j	.main_call_init_44_init_entry
.main_call_init_44_out:
	li	ra, 0
	mv	s7, ra
	j	.main_ID3_for_condition
.main_ID3_for_condition:
	lw	ra, fuckLLVM_n
	slt	ra, s7, ra
	bnez	ra, .main_call_dijkstra_45_dijkstra_entry
	j	.main_return
.main_call_dijkstra_45_out:
	li	s2, 0
	j	.main_ID10_for_condition
.main_ID10_for_condition:
	lw	ra, fuckLLVM_n
	slt	ra, s2, ra
	bnez	ra, .main_ID10_for_suite
	j	.main_ID10_for_out
.main_ID10_for_suite:
	li	ra, 4
	mul	ra, s2, ra
	add	ra, s1, ra
	lw	ra, 0(ra)
	lw	t0, fuckLLVM_INF
	xor	ra, ra, t0
	sltiu	ra, ra, 1
	bnez	ra, .main_ID19_if_true
	j	.main_ID19_if_false
.main_ID19_if_true:
	la	a0, fuckLLVM_.str.0
	call	print
	j	.main_ID19_if_out
.main_ID19_if_false:
	li	ra, 4
	mul	ra, s2, ra
	add	ra, s1, ra
	lw	a0, 0(ra)
	call	toString
	call	print
	j	.main_ID19_if_out
.main_ID19_if_out:
	la	a0, fuckLLVM_.str.1
	call	print
	j	.main_ID10_for_incr
.main_ID10_for_incr:
	li	ra, 1
	add	s2, s2, ra
	j	.main_ID10_for_condition
.main_ID10_for_out:
	la	a0, fuckLLVM_.str.2
	call	println
	j	.main_ID3_for_incr
.main_ID3_for_incr:
	li	ra, 1
	add	ra, s7, ra
	mv	s7, ra
	j	.main_ID3_for_condition
.main_call_init_44_init_entry:
	call	getInt
	li	ra, 0
	sw	a0, fuckLLVM_n, ra
	call	getInt
	li	ra, 0
	sw	a0, fuckLLVM_m, ra
	li	a0, 28
	call	malloc
	j	.main_call_init_44_init_call_EdgeList_33_out
.main_call_init_44_init_call_EdgeList_33_out:
	li	ra, 0
	sw	a0, fuckLLVM_g, ra
	lw	s2, fuckLLVM_g
	lw	s3, fuckLLVM_n
	lw	s1, fuckLLVM_m
	j	.main_call_init_44_init_call_classEdgeList_init_34_classEdgeList_init_entry
.main_call_init_44_init_call_classEdgeList_init_34_out:
	li	s1, 0
	j	.main_call_init_44_init_ID10_for_condition
.main_call_init_44_init_ID10_for_condition:
	lw	ra, fuckLLVM_m
	slt	ra, s1, ra
	bnez	ra, .main_call_init_44_init_ID10_for_suite
	j	.main_call_init_44_out
.main_call_init_44_init_ID10_for_suite:
	call	getInt
	mv	s2, a0
	call	getInt
	mv	s3, a0
	call	getInt
	mv	s5, a0
	lw	s4, fuckLLVM_g
	j	.main_call_init_44_init_call_classEdgeList_addEdge_35_classEdgeList_addEdge_entry
.main_call_init_44_init_ID10_for_incr:
	li	ra, 1
	add	s1, s1, ra
	j	.main_call_init_44_init_ID10_for_condition
.main_call_init_44_init_call_classEdgeList_init_34_classEdgeList_init_entry:
	addi	s4, s2, 0
	li	ra, 12
	mul	ra, s1, ra
	li	t0, 4
	add	a0, ra, t0
	call	malloc
	sw	s1, 0(a0)
	li	ra, 1
	li	t0, 4
	mul	ra, ra, t0
	add	ra, a0, ra
	sw	ra, 0(s4)
	addi	s4, s2, 8
	li	ra, 4
	mul	t0, s1, ra
	li	ra, 4
	add	a0, t0, ra
	call	malloc
	sw	s1, 0(a0)
	li	t0, 1
	li	ra, 4
	mul	ra, t0, ra
	add	ra, a0, ra
	sw	ra, 0(s4)
	addi	s4, s2, 16
	li	ra, 4
	mul	ra, s3, ra
	li	t0, 4
	add	a0, ra, t0
	call	malloc
	sw	s3, 0(a0)
	li	t0, 1
	li	ra, 4
	mul	ra, t0, ra
	add	ra, a0, ra
	sw	ra, 0(s4)
	li	ra, 0
	j	.main_call_init_44_init_call_classEdgeList_init_34_classEdgeList_init_ID38_for_condition
.main_call_init_44_init_call_classEdgeList_init_34_classEdgeList_init_ID38_for_condition:
	slt	t0, ra, s1
	bnez	t0, .main_call_init_44_init_call_classEdgeList_init_34_classEdgeList_init_ID38_for_suite
	j	.main_call_init_44_init_call_classEdgeList_init_34_classEdgeList_init_ID38_for_out
.main_call_init_44_init_call_classEdgeList_init_34_classEdgeList_init_ID38_for_suite:
	addi	t0, s2, 8
	lw	t0, 0(t0)
	li	t1, 4
	mul	t1, ra, t1
	add	t1, t0, t1
	li	t0, -1
	sw	t0, 0(t1)
	j	.main_call_init_44_init_call_classEdgeList_init_34_classEdgeList_init_ID38_for_incr
.main_call_init_44_init_call_classEdgeList_init_34_classEdgeList_init_ID38_for_incr:
	li	t0, 1
	add	ra, ra, t0
	j	.main_call_init_44_init_call_classEdgeList_init_34_classEdgeList_init_ID38_for_condition
.main_call_init_44_init_call_classEdgeList_init_34_classEdgeList_init_ID38_for_out:
	li	ra, 0
	j	.main_call_init_44_init_call_classEdgeList_init_34_classEdgeList_init_ID48_for_condition
.main_call_init_44_init_call_classEdgeList_init_34_classEdgeList_init_ID48_for_condition:
	slt	t0, ra, s3
	bnez	t0, .main_call_init_44_init_call_classEdgeList_init_34_classEdgeList_init_ID48_for_suite
	j	.main_call_init_44_init_call_classEdgeList_init_34_classEdgeList_init_ID48_for_out
.main_call_init_44_init_call_classEdgeList_init_34_classEdgeList_init_ID48_for_suite:
	addi	t0, s2, 16
	lw	t1, 0(t0)
	li	t0, 4
	mul	t0, ra, t0
	add	t0, t1, t0
	li	t1, -1
	sw	t1, 0(t0)
	j	.main_call_init_44_init_call_classEdgeList_init_34_classEdgeList_init_ID48_for_incr
.main_call_init_44_init_call_classEdgeList_init_34_classEdgeList_init_ID48_for_incr:
	li	t0, 1
	add	ra, ra, t0
	j	.main_call_init_44_init_call_classEdgeList_init_34_classEdgeList_init_ID48_for_condition
.main_call_init_44_init_call_classEdgeList_init_34_classEdgeList_init_ID48_for_out:
	addi	t0, s2, 24
	li	ra, 0
	sw	ra, 0(t0)
	j	.main_call_init_44_init_call_classEdgeList_init_34_out
.main_call_init_44_init_call_classEdgeList_addEdge_35_classEdgeList_addEdge_entry:
	li	a0, 12
	call	malloc
	j	.main_call_init_44_init_call_classEdgeList_addEdge_35_classEdgeList_addEdge_call_Edge_0_out
.main_call_init_44_init_call_classEdgeList_addEdge_35_classEdgeList_addEdge_call_Edge_0_out:
	addi	ra, a0, 0
	sw	s2, 0(ra)
	addi	ra, a0, 4
	sw	s3, 0(ra)
	addi	ra, a0, 8
	sw	s5, 0(ra)
	addi	ra, s4, 0
	lw	t0, 0(ra)
	addi	ra, s4, 24
	lw	t1, 0(ra)
	li	ra, 12
	mul	ra, t1, ra
	add	ra, t0, ra
	sw	a0, 0(ra)
	addi	ra, s4, 8
	lw	t0, 0(ra)
	addi	ra, s4, 24
	lw	t1, 0(ra)
	li	ra, 4
	mul	ra, t1, ra
	add	t1, t0, ra
	addi	ra, s4, 16
	lw	ra, 0(ra)
	li	t0, 4
	mul	t0, s2, t0
	add	ra, ra, t0
	lw	ra, 0(ra)
	sw	ra, 0(t1)
	addi	ra, s4, 16
	lw	t0, 0(ra)
	li	ra, 4
	mul	ra, s2, ra
	add	ra, t0, ra
	addi	t0, s4, 24
	lw	t0, 0(t0)
	sw	t0, 0(ra)
	addi	t0, s4, 24
	lw	ra, 0(t0)
	li	t1, 1
	add	ra, ra, t1
	sw	ra, 0(t0)
	j	.main_call_init_44_init_ID10_for_incr
.main_call_dijkstra_45_dijkstra_entry:
	lw	s1, fuckLLVM_n
	li	ra, 4
	mul	ra, s1, ra
	li	t0, 4
	add	a0, ra, t0
	call	malloc
	sw	s1, 0(a0)
	li	t0, 1
	li	ra, 4
	mul	ra, t0, ra
	add	ra, a0, ra
	mv	s5, ra
	lw	s1, fuckLLVM_n
	li	ra, 4
	mul	t0, s1, ra
	li	ra, 4
	add	a0, t0, ra
	call	malloc
	sw	s1, 0(a0)
	li	t0, 1
	li	ra, 4
	mul	ra, t0, ra
	add	ra, a0, ra
	mv	s3, ra
	li	ra, 0
	j	.main_call_dijkstra_45_dijkstra_ID23_for_condition
.main_call_dijkstra_45_dijkstra_ID23_for_condition:
	lw	t0, fuckLLVM_n
	slt	t0, ra, t0
	bnez	t0, .main_call_dijkstra_45_dijkstra_ID23_for_suite
	j	.main_call_dijkstra_45_dijkstra_ID23_for_out
.main_call_dijkstra_45_dijkstra_ID23_for_suite:
	li	t0, 4
	mul	t0, ra, t0
	add	t1, s3, t0
	lw	t0, fuckLLVM_INF
	sw	t0, 0(t1)
	li	t0, 4
	mul	t0, ra, t0
	add	t1, s5, t0
	li	t0, 0
	sw	t0, 0(t1)
	j	.main_call_dijkstra_45_dijkstra_ID23_for_incr
.main_call_dijkstra_45_dijkstra_ID23_for_incr:
	li	t0, 1
	add	ra, ra, t0
	j	.main_call_dijkstra_45_dijkstra_ID23_for_condition
.main_call_dijkstra_45_dijkstra_ID23_for_out:
	li	ra, 4
	mul	ra, s7, ra
	add	ra, s3, ra
	li	t0, 0
	sw	t0, 0(ra)
	li	a0, 8
	call	malloc
	mv	s1, a0
	j	.main_call_dijkstra_45_dijkstra_call_Heap_Node_36_Heap_Node_entry
.main_call_dijkstra_45_dijkstra_call_Heap_Node_36_out:
	mv	s9, s1
	li	a0, 8
	call	malloc
	j	.main_call_dijkstra_45_dijkstra_call_Node_37_out
.main_call_dijkstra_45_dijkstra_call_Node_37_out:
	addi	t0, a0, 4
	li	ra, 0
	sw	ra, 0(t0)
	addi	ra, a0, 0
	sw	s7, 0(ra)
	j	.main_call_dijkstra_45_dijkstra_call_classHeap_Node_push_38_classHeap_Node_push_entry
.main_call_dijkstra_45_dijkstra_call_classHeap_Node_size_39_out:
	li	ra, 0
	xor	ra, t0, ra
	sltiu	ra, ra, 1
	xori	ra, ra, 1
	bnez	ra, .main_call_dijkstra_45_dijkstra_call_classHeap_Node_pop_42_classHeap_Node_pop_entry
	j	.main_call_dijkstra_45_dijkstra_ID59_while_out
.main_call_dijkstra_45_dijkstra_ID71_if_out:
	li	ra, 4
	mul	ra, s1, ra
	add	t0, s5, ra
	li	ra, 1
	sw	ra, 0(t0)
	lw	ra, fuckLLVM_g
	addi	ra, ra, 16
	lw	t0, 0(ra)
	li	ra, 4
	mul	ra, s1, ra
	add	ra, t0, ra
	lw	ra, 0(ra)
	mv	s2, ra
	j	.main_call_dijkstra_45_dijkstra_ID81_for_condition
.main_call_dijkstra_45_dijkstra_ID81_for_condition:
	li	ra, -1
	xor	ra, s2, ra
	sltiu	ra, ra, 1
	xori	ra, ra, 1
	bnez	ra, .main_call_dijkstra_45_dijkstra_ID81_for_suite
	j	.main_call_dijkstra_45_dijkstra_call_classHeap_Node_size_39_classHeap_Node_size_entry
.main_call_dijkstra_45_dijkstra_ID81_for_suite:
	lw	ra, fuckLLVM_g
	addi	ra, ra, 0
	lw	t0, 0(ra)
	li	ra, 12
	mul	ra, s2, ra
	add	ra, t0, ra
	lw	ra, 0(ra)
	addi	ra, ra, 4
	lw	s4, 0(ra)
	lw	ra, fuckLLVM_g
	addi	ra, ra, 0
	lw	t0, 0(ra)
	li	ra, 12
	mul	ra, s2, ra
	add	ra, t0, ra
	lw	ra, 0(ra)
	addi	ra, ra, 8
	lw	t0, 0(ra)
	li	ra, 4
	mul	ra, s1, ra
	add	ra, s3, ra
	lw	ra, 0(ra)
	add	t0, ra, t0
	li	ra, 4
	mul	ra, s4, ra
	add	ra, s3, ra
	lw	ra, 0(ra)
	slt	ra, t0, ra
	xori	ra, ra, 1
	bnez	ra, .main_call_dijkstra_45_dijkstra_ID81_for_incr
	j	.main_call_dijkstra_45_dijkstra_ID115_if_out
.main_call_dijkstra_45_dijkstra_ID115_if_out:
	li	ra, 4
	mul	ra, s4, ra
	add	ra, s3, ra
	sw	t0, 0(ra)
	li	a0, 8
	call	malloc
	j	.main_call_dijkstra_45_dijkstra_call_Node_40_out
.main_call_dijkstra_45_dijkstra_call_Node_40_out:
	addi	ra, a0, 0
	sw	s4, 0(ra)
	addi	t0, a0, 4
	li	ra, 4
	mul	ra, s4, ra
	add	ra, s3, ra
	lw	ra, 0(ra)
	sw	ra, 0(t0)
	j	.main_call_dijkstra_45_dijkstra_call_classHeap_Node_push_41_classHeap_Node_push_entry
.main_call_dijkstra_45_dijkstra_ID81_for_incr:
	lw	ra, fuckLLVM_g
	addi	ra, ra, 8
	lw	t0, 0(ra)
	li	ra, 4
	mul	ra, s2, ra
	add	ra, t0, ra
	lw	ra, 0(ra)
	mv	s2, ra
	j	.main_call_dijkstra_45_dijkstra_ID81_for_condition
.main_call_dijkstra_45_dijkstra_call_classHeap_Node_pop_42_out:
	addi	ra, s4, 0
	lw	s1, 0(ra)
	li	ra, 4
	mul	ra, s1, ra
	add	ra, s5, ra
	lw	ra, 0(ra)
	li	t0, 1
	xor	ra, ra, t0
	sltiu	ra, ra, 1
	bnez	ra, .main_call_dijkstra_45_dijkstra_call_classHeap_Node_size_39_classHeap_Node_size_entry
	j	.main_call_dijkstra_45_dijkstra_ID71_if_out
.main_call_dijkstra_45_dijkstra_ID59_while_out:
	mv	s1, s3
	j	.main_call_dijkstra_45_out
.main_call_dijkstra_45_dijkstra_call_Heap_Node_36_Heap_Node_entry:
	addi	s4, s1, 0
	li	a0, 12
	call	malloc
	mv	s6, a0
	j	.main_call_dijkstra_45_dijkstra_call_Heap_Node_36_Heap_Node_call_Array_Node_4_Array_Node_entry
.main_call_dijkstra_45_dijkstra_call_Heap_Node_36_Heap_Node_call_Array_Node_4_out:
	sw	s6, 0(s4)
	j	.main_call_dijkstra_45_dijkstra_call_Heap_Node_36_out
.main_call_dijkstra_45_dijkstra_call_Heap_Node_36_Heap_Node_call_Array_Node_4_Array_Node_entry:
	addi	ra, s6, 8
	li	t0, 0
	sw	t0, 0(ra)
	addi	s2, s6, 0
	li	a0, 132
	call	malloc
	li	ra, 16
	sw	ra, 0(a0)
	li	t0, 1
	li	ra, 4
	mul	ra, t0, ra
	add	ra, a0, ra
	sw	ra, 0(s2)
	j	.main_call_dijkstra_45_dijkstra_call_Heap_Node_36_Heap_Node_call_Array_Node_4_out
.main_call_dijkstra_45_dijkstra_call_classHeap_Node_push_38_classHeap_Node_push_entry:
	addi	ra, s9, 0
	lw	s8, 0(ra)
	mv	s4, a0
	j	.main_call_dijkstra_45_dijkstra_call_classHeap_Node_push_38_classHeap_Node_push_call_classArray_Node_push_back_5_classArray_Node_push_back_call_classArray_Node_size_1_classArray_Node_size_entry
.main_call_dijkstra_45_dijkstra_call_classHeap_Node_push_38_classHeap_Node_push_call_classHeap_Node_size_6_out:
	li	ra, 1
	sub	t2, a0, ra
	j	.main_call_dijkstra_45_dijkstra_call_classHeap_Node_push_38_classHeap_Node_push_ID14_while_condition
.main_call_dijkstra_45_dijkstra_call_classHeap_Node_push_38_classHeap_Node_push_ID14_while_condition:
	li	ra, 0
	slt	ra, ra, t2
	bnez	ra, .main_call_dijkstra_45_dijkstra_call_classHeap_Node_push_38_classHeap_Node_push_call_classHeap_Node_pnt_8_classHeap_Node_pnt_entry
	j	.main_call_dijkstra_45_dijkstra_call_classHeap_Node_size_39_classHeap_Node_size_entry
.main_call_dijkstra_45_dijkstra_call_classHeap_Node_push_38_classHeap_Node_push_ID29_if_out:
	addi	ra, s9, 0
	lw	a2, 0(ra)
	j	.main_call_dijkstra_45_dijkstra_call_classHeap_Node_push_38_classHeap_Node_push_call_classArray_Node_swap_7_classArray_Node_swap_entry
.main_call_dijkstra_45_dijkstra_call_classHeap_Node_push_38_classHeap_Node_push_call_classArray_Node_swap_7_out:
	mv	t2, t1
	j	.main_call_dijkstra_45_dijkstra_call_classHeap_Node_push_38_classHeap_Node_push_ID14_while_condition
.main_call_dijkstra_45_dijkstra_call_classHeap_Node_push_38_classHeap_Node_push_call_classHeap_Node_pnt_8_out:
	addi	ra, s9, 0
	lw	ra, 0(ra)
	j	.main_call_dijkstra_45_dijkstra_call_classHeap_Node_push_38_classHeap_Node_push_call_classArray_Node_get_9_classArray_Node_get_entry
.main_call_dijkstra_45_dijkstra_call_classHeap_Node_push_38_classHeap_Node_push_call_classNode_key__10_out:
	addi	ra, s9, 0
	lw	ra, 0(ra)
	j	.main_call_dijkstra_45_dijkstra_call_classHeap_Node_push_38_classHeap_Node_push_call_classArray_Node_get_11_classArray_Node_get_entry
.main_call_dijkstra_45_dijkstra_call_classHeap_Node_push_38_classHeap_Node_push_call_classNode_key__12_out:
	slt	ra, a0, ra
	xori	ra, ra, 1
	bnez	ra, .main_call_dijkstra_45_dijkstra_call_classHeap_Node_size_39_classHeap_Node_size_entry
	j	.main_call_dijkstra_45_dijkstra_call_classHeap_Node_push_38_classHeap_Node_push_ID29_if_out
.main_call_dijkstra_45_dijkstra_call_classHeap_Node_push_38_classHeap_Node_push_call_classArray_Node_push_back_5_classArray_Node_push_back_call_classArray_Node_size_1_out:
	addi	ra, s8, 0
	lw	ra, 0(ra)
	li	t1, -1
	li	t2, 4
	mul	t1, t1, t2
	add	ra, ra, t1
	lw	ra, 0(ra)
	xor	ra, t0, ra
	sltiu	ra, ra, 1
	bnez	ra, .main_call_dijkstra_45_dijkstra_call_classHeap_Node_push_38_classHeap_Node_push_call_classArray_Node_push_back_5_classArray_Node_push_back_call_classArray_Node_doubleStorage_2_classArray_Node_doubleStorage_entry
	j	.main_call_dijkstra_45_dijkstra_call_classHeap_Node_push_38_classHeap_Node_push_call_classArray_Node_push_back_5_classArray_Node_push_back_ID12_if_out
.main_call_dijkstra_45_dijkstra_call_classHeap_Node_push_38_classHeap_Node_push_call_classArray_Node_push_back_5_classArray_Node_push_back_ID12_if_out:
	addi	ra, s8, 0
	lw	ra, 0(ra)
	addi	t0, s8, 8
	lw	t0, 0(t0)
	li	t1, 8
	mul	t0, t0, t1
	add	t0, ra, t0
	mv	ra, s4
	sw	ra, 0(t0)
	addi	t1, s8, 8
	lw	ra, 0(t1)
	li	t0, 1
	add	ra, ra, t0
	sw	ra, 0(t1)
	j	.main_call_dijkstra_45_dijkstra_call_classHeap_Node_push_38_classHeap_Node_push_call_classHeap_Node_size_6_classHeap_Node_size_entry
.main_call_dijkstra_45_dijkstra_call_classHeap_Node_push_38_classHeap_Node_push_call_classArray_Node_push_back_5_classArray_Node_push_back_call_classArray_Node_size_1_classArray_Node_size_entry:
	addi	ra, s8, 8
	lw	t0, 0(ra)
	j	.main_call_dijkstra_45_dijkstra_call_classHeap_Node_push_38_classHeap_Node_push_call_classArray_Node_push_back_5_classArray_Node_push_back_call_classArray_Node_size_1_out
.main_call_dijkstra_45_dijkstra_call_classHeap_Node_push_38_classHeap_Node_push_call_classArray_Node_push_back_5_classArray_Node_push_back_call_classArray_Node_doubleStorage_2_classArray_Node_doubleStorage_entry:
	addi	ra, s8, 0
	lw	ra, 0(ra)
	mv	s2, ra
	addi	ra, s8, 8
	lw	s11, 0(ra)
	addi	s1, s8, 0
	mv	ra, s2
	li	t1, -1
	li	t0, 4
	mul	t0, t1, t0
	add	ra, ra, t0
	lw	ra, 0(ra)
	li	t0, 2
	mul	s6, ra, t0
	mv	ra, s6
	li	t0, 8
	mul	t0, ra, t0
	li	ra, 4
	add	a0, t0, ra
	call	malloc
	sw	s6, 0(a0)
	li	ra, 1
	li	t0, 4
	mul	ra, ra, t0
	add	ra, a0, ra
	sw	ra, 0(s1)
	addi	t0, s8, 8
	li	ra, 0
	sw	ra, 0(t0)
	j	.main_call_dijkstra_45_dijkstra_call_classHeap_Node_push_38_classHeap_Node_push_call_classArray_Node_push_back_5_classArray_Node_push_back_call_classArray_Node_doubleStorage_2_classArray_Node_doubleStorage_ID25_for_condition
.main_call_dijkstra_45_dijkstra_call_classHeap_Node_push_38_classHeap_Node_push_call_classArray_Node_push_back_5_classArray_Node_push_back_call_classArray_Node_doubleStorage_2_classArray_Node_doubleStorage_ID25_for_condition:
	addi	ra, s8, 8
	lw	ra, 0(ra)
	xor	ra, ra, s11
	sltiu	ra, ra, 1
	xori	ra, ra, 1
	bnez	ra, .main_call_dijkstra_45_dijkstra_call_classHeap_Node_push_38_classHeap_Node_push_call_classArray_Node_push_back_5_classArray_Node_push_back_call_classArray_Node_doubleStorage_2_classArray_Node_doubleStorage_ID25_for_suite
	j	.main_call_dijkstra_45_dijkstra_call_classHeap_Node_push_38_classHeap_Node_push_call_classArray_Node_push_back_5_classArray_Node_push_back_ID12_if_out
.main_call_dijkstra_45_dijkstra_call_classHeap_Node_push_38_classHeap_Node_push_call_classArray_Node_push_back_5_classArray_Node_push_back_call_classArray_Node_doubleStorage_2_classArray_Node_doubleStorage_ID25_for_suite:
	addi	ra, s8, 0
	lw	ra, 0(ra)
	addi	t0, s8, 8
	lw	t0, 0(t0)
	li	t1, 8
	mul	t0, t0, t1
	add	t1, ra, t0
	addi	ra, s8, 8
	lw	ra, 0(ra)
	li	t0, 8
	mul	ra, ra, t0
	add	ra, s2, ra
	lw	ra, 0(ra)
	sw	ra, 0(t1)
	j	.main_call_dijkstra_45_dijkstra_call_classHeap_Node_push_38_classHeap_Node_push_call_classArray_Node_push_back_5_classArray_Node_push_back_call_classArray_Node_doubleStorage_2_classArray_Node_doubleStorage_ID25_for_incr
.main_call_dijkstra_45_dijkstra_call_classHeap_Node_push_38_classHeap_Node_push_call_classArray_Node_push_back_5_classArray_Node_push_back_call_classArray_Node_doubleStorage_2_classArray_Node_doubleStorage_ID25_for_incr:
	addi	t0, s8, 8
	lw	t1, 0(t0)
	li	ra, 1
	add	ra, t1, ra
	sw	ra, 0(t0)
	j	.main_call_dijkstra_45_dijkstra_call_classHeap_Node_push_38_classHeap_Node_push_call_classArray_Node_push_back_5_classArray_Node_push_back_call_classArray_Node_doubleStorage_2_classArray_Node_doubleStorage_ID25_for_condition
.main_call_dijkstra_45_dijkstra_call_classHeap_Node_push_38_classHeap_Node_push_call_classHeap_Node_size_6_classHeap_Node_size_entry:
	addi	ra, s9, 0
	lw	a0, 0(ra)
	call	classArray_Node_size
	j	.main_call_dijkstra_45_dijkstra_call_classHeap_Node_push_38_classHeap_Node_push_call_classHeap_Node_size_6_out
.main_call_dijkstra_45_dijkstra_call_classHeap_Node_push_38_classHeap_Node_push_call_classArray_Node_swap_7_classArray_Node_swap_entry:
	addi	ra, a2, 0
	lw	ra, 0(ra)
	li	t0, 8
	mul	t0, t1, t0
	add	ra, ra, t0
	lw	t0, 0(ra)
	addi	ra, a2, 0
	lw	ra, 0(ra)
	li	a0, 8
	mul	a0, t1, a0
	add	a0, ra, a0
	addi	ra, a2, 0
	lw	ra, 0(ra)
	li	a1, 8
	mul	a1, t2, a1
	add	ra, ra, a1
	lw	ra, 0(ra)
	sw	ra, 0(a0)
	addi	ra, a2, 0
	lw	a0, 0(ra)
	li	ra, 8
	mul	ra, t2, ra
	add	ra, a0, ra
	sw	t0, 0(ra)
	j	.main_call_dijkstra_45_dijkstra_call_classHeap_Node_push_38_classHeap_Node_push_call_classArray_Node_swap_7_out
.main_call_dijkstra_45_dijkstra_call_classHeap_Node_push_38_classHeap_Node_push_call_classHeap_Node_pnt_8_classHeap_Node_pnt_entry:
	li	ra, 1
	sub	ra, t2, ra
	li	t0, 2
	div	t1, ra, t0
	j	.main_call_dijkstra_45_dijkstra_call_classHeap_Node_push_38_classHeap_Node_push_call_classHeap_Node_pnt_8_out
.main_call_dijkstra_45_dijkstra_call_classHeap_Node_push_38_classHeap_Node_push_call_classArray_Node_get_9_classArray_Node_get_entry:
	addi	ra, ra, 0
	lw	t0, 0(ra)
	li	ra, 8
	mul	ra, t1, ra
	add	ra, t0, ra
	lw	ra, 0(ra)
	j	.main_call_dijkstra_45_dijkstra_call_classHeap_Node_push_38_classHeap_Node_push_call_classNode_key__10_classNode_key__entry
.main_call_dijkstra_45_dijkstra_call_classHeap_Node_push_38_classHeap_Node_push_call_classNode_key__10_classNode_key__entry:
	addi	ra, ra, 4
	lw	ra, 0(ra)
	li	t0, 0
	sub	a0, t0, ra
	j	.main_call_dijkstra_45_dijkstra_call_classHeap_Node_push_38_classHeap_Node_push_call_classNode_key__10_out
.main_call_dijkstra_45_dijkstra_call_classHeap_Node_push_38_classHeap_Node_push_call_classArray_Node_get_11_classArray_Node_get_entry:
	addi	ra, ra, 0
	lw	t0, 0(ra)
	li	ra, 8
	mul	ra, t2, ra
	add	ra, t0, ra
	lw	ra, 0(ra)
	j	.main_call_dijkstra_45_dijkstra_call_classHeap_Node_push_38_classHeap_Node_push_call_classNode_key__12_classNode_key__entry
.main_call_dijkstra_45_dijkstra_call_classHeap_Node_push_38_classHeap_Node_push_call_classNode_key__12_classNode_key__entry:
	addi	ra, ra, 4
	lw	ra, 0(ra)
	li	t0, 0
	sub	ra, t0, ra
	j	.main_call_dijkstra_45_dijkstra_call_classHeap_Node_push_38_classHeap_Node_push_call_classNode_key__12_out
.main_call_dijkstra_45_dijkstra_call_classHeap_Node_size_39_classHeap_Node_size_entry:
	addi	ra, s9, 0
	lw	ra, 0(ra)
	j	.main_call_dijkstra_45_dijkstra_call_classHeap_Node_size_39_classHeap_Node_size_call_classArray_Node_size_19_classArray_Node_size_entry
.main_call_dijkstra_45_dijkstra_call_classHeap_Node_size_39_classHeap_Node_size_call_classArray_Node_size_19_classArray_Node_size_entry:
	addi	ra, ra, 8
	lw	t0, 0(ra)
	j	.main_call_dijkstra_45_dijkstra_call_classHeap_Node_size_39_out
.main_call_dijkstra_45_dijkstra_call_classHeap_Node_push_41_classHeap_Node_push_entry:
	addi	ra, s9, 0
	lw	s4, 0(ra)
	li	ra, -52
	add	ra, s0, ra
	sw	a0, 0(ra)
	j	.main_call_dijkstra_45_dijkstra_call_classHeap_Node_push_41_classHeap_Node_push_call_classArray_Node_push_back_5_classArray_Node_push_back_call_classArray_Node_size_1_classArray_Node_size_entry
.main_call_dijkstra_45_dijkstra_call_classHeap_Node_push_41_classHeap_Node_push_call_classHeap_Node_size_6_out:
	li	ra, 1
	sub	ra, a0, ra
	j	.main_call_dijkstra_45_dijkstra_call_classHeap_Node_push_41_classHeap_Node_push_ID14_while_condition
.main_call_dijkstra_45_dijkstra_call_classHeap_Node_push_41_classHeap_Node_push_ID14_while_condition:
	li	t0, 0
	slt	t0, t0, ra
	bnez	t0, .main_call_dijkstra_45_dijkstra_call_classHeap_Node_push_41_classHeap_Node_push_call_classHeap_Node_pnt_8_classHeap_Node_pnt_entry
	j	.main_call_dijkstra_45_dijkstra_ID81_for_incr
.main_call_dijkstra_45_dijkstra_call_classHeap_Node_push_41_classHeap_Node_push_ID29_if_out:
	addi	t0, s9, 0
	lw	a0, 0(t0)
	j	.main_call_dijkstra_45_dijkstra_call_classHeap_Node_push_41_classHeap_Node_push_call_classArray_Node_swap_7_classArray_Node_swap_entry
.main_call_dijkstra_45_dijkstra_call_classHeap_Node_push_41_classHeap_Node_push_call_classArray_Node_swap_7_out:
	mv	ra, t1
	j	.main_call_dijkstra_45_dijkstra_call_classHeap_Node_push_41_classHeap_Node_push_ID14_while_condition
.main_call_dijkstra_45_dijkstra_call_classHeap_Node_push_41_classHeap_Node_push_call_classHeap_Node_pnt_8_out:
	addi	t0, s9, 0
	lw	t0, 0(t0)
	j	.main_call_dijkstra_45_dijkstra_call_classHeap_Node_push_41_classHeap_Node_push_call_classArray_Node_get_9_classArray_Node_get_entry
.main_call_dijkstra_45_dijkstra_call_classHeap_Node_push_41_classHeap_Node_push_call_classNode_key__10_out:
	addi	t0, s9, 0
	lw	t0, 0(t0)
	j	.main_call_dijkstra_45_dijkstra_call_classHeap_Node_push_41_classHeap_Node_push_call_classArray_Node_get_11_classArray_Node_get_entry
.main_call_dijkstra_45_dijkstra_call_classHeap_Node_push_41_classHeap_Node_push_call_classNode_key__12_out:
	slt	t0, a0, t0
	xori	t0, t0, 1
	bnez	t0, .main_call_dijkstra_45_dijkstra_ID81_for_incr
	j	.main_call_dijkstra_45_dijkstra_call_classHeap_Node_push_41_classHeap_Node_push_ID29_if_out
.main_call_dijkstra_45_dijkstra_call_classHeap_Node_push_41_classHeap_Node_push_call_classArray_Node_push_back_5_classArray_Node_push_back_call_classArray_Node_size_1_out:
	addi	ra, s4, 0
	lw	ra, 0(ra)
	li	t1, -1
	li	t0, 4
	mul	t0, t1, t0
	add	ra, ra, t0
	lw	ra, 0(ra)
	xor	ra, t2, ra
	sltiu	ra, ra, 1
	bnez	ra, .main_call_dijkstra_45_dijkstra_call_classHeap_Node_push_41_classHeap_Node_push_call_classArray_Node_push_back_5_classArray_Node_push_back_call_classArray_Node_doubleStorage_2_classArray_Node_doubleStorage_entry
	j	.main_call_dijkstra_45_dijkstra_call_classHeap_Node_push_41_classHeap_Node_push_call_classArray_Node_push_back_5_classArray_Node_push_back_ID12_if_out
.main_call_dijkstra_45_dijkstra_call_classHeap_Node_push_41_classHeap_Node_push_call_classArray_Node_push_back_5_classArray_Node_push_back_ID12_if_out:
	addi	ra, s4, 0
	lw	t1, 0(ra)
	addi	ra, s4, 8
	lw	t0, 0(ra)
	li	ra, 8
	mul	ra, t0, ra
	add	t0, t1, ra
	li	ra, -52
	add	ra, s0, ra
	lw	ra, 0(ra)
	sw	ra, 0(t0)
	addi	t1, s4, 8
	lw	t0, 0(t1)
	li	ra, 1
	add	ra, t0, ra
	sw	ra, 0(t1)
	j	.main_call_dijkstra_45_dijkstra_call_classHeap_Node_push_41_classHeap_Node_push_call_classHeap_Node_size_6_classHeap_Node_size_entry
.main_call_dijkstra_45_dijkstra_call_classHeap_Node_push_41_classHeap_Node_push_call_classArray_Node_push_back_5_classArray_Node_push_back_call_classArray_Node_size_1_classArray_Node_size_entry:
	addi	ra, s4, 8
	lw	t2, 0(ra)
	j	.main_call_dijkstra_45_dijkstra_call_classHeap_Node_push_41_classHeap_Node_push_call_classArray_Node_push_back_5_classArray_Node_push_back_call_classArray_Node_size_1_out
.main_call_dijkstra_45_dijkstra_call_classHeap_Node_push_41_classHeap_Node_push_call_classArray_Node_push_back_5_classArray_Node_push_back_call_classArray_Node_doubleStorage_2_classArray_Node_doubleStorage_entry:
	addi	ra, s4, 0
	lw	ra, 0(ra)
	mv	s8, ra
	addi	ra, s4, 8
	lw	s11, 0(ra)
	addi	ra, s4, 0
	li	t0, -24
	add	t0, s0, t0
	sw	ra, 0(t0)
	mv	ra, s8
	li	t0, -1
	li	t1, 4
	mul	t0, t0, t1
	add	ra, ra, t0
	lw	ra, 0(ra)
	li	t0, 2
	mul	s6, ra, t0
	mv	ra, s6
	li	t0, 8
	mul	t0, ra, t0
	li	ra, 4
	add	a0, t0, ra
	call	malloc
	sw	s6, 0(a0)
	li	ra, 1
	li	t0, 4
	mul	ra, ra, t0
	add	ra, a0, ra
	li	t0, -24
	add	t0, s0, t0
	lw	t0, 0(t0)
	sw	ra, 0(t0)
	addi	ra, s4, 8
	li	t0, 0
	sw	t0, 0(ra)
	j	.main_call_dijkstra_45_dijkstra_call_classHeap_Node_push_41_classHeap_Node_push_call_classArray_Node_push_back_5_classArray_Node_push_back_call_classArray_Node_doubleStorage_2_classArray_Node_doubleStorage_ID25_for_condition
.main_call_dijkstra_45_dijkstra_call_classHeap_Node_push_41_classHeap_Node_push_call_classArray_Node_push_back_5_classArray_Node_push_back_call_classArray_Node_doubleStorage_2_classArray_Node_doubleStorage_ID25_for_condition:
	addi	ra, s4, 8
	lw	ra, 0(ra)
	xor	ra, ra, s11
	sltiu	ra, ra, 1
	xori	ra, ra, 1
	bnez	ra, .main_call_dijkstra_45_dijkstra_call_classHeap_Node_push_41_classHeap_Node_push_call_classArray_Node_push_back_5_classArray_Node_push_back_call_classArray_Node_doubleStorage_2_classArray_Node_doubleStorage_ID25_for_suite
	j	.main_call_dijkstra_45_dijkstra_call_classHeap_Node_push_41_classHeap_Node_push_call_classArray_Node_push_back_5_classArray_Node_push_back_ID12_if_out
.main_call_dijkstra_45_dijkstra_call_classHeap_Node_push_41_classHeap_Node_push_call_classArray_Node_push_back_5_classArray_Node_push_back_call_classArray_Node_doubleStorage_2_classArray_Node_doubleStorage_ID25_for_suite:
	addi	ra, s4, 0
	lw	t0, 0(ra)
	addi	ra, s4, 8
	lw	t1, 0(ra)
	li	ra, 8
	mul	ra, t1, ra
	add	t1, t0, ra
	addi	ra, s4, 8
	lw	t0, 0(ra)
	li	ra, 8
	mul	ra, t0, ra
	add	ra, s8, ra
	lw	ra, 0(ra)
	sw	ra, 0(t1)
	j	.main_call_dijkstra_45_dijkstra_call_classHeap_Node_push_41_classHeap_Node_push_call_classArray_Node_push_back_5_classArray_Node_push_back_call_classArray_Node_doubleStorage_2_classArray_Node_doubleStorage_ID25_for_incr
.main_call_dijkstra_45_dijkstra_call_classHeap_Node_push_41_classHeap_Node_push_call_classArray_Node_push_back_5_classArray_Node_push_back_call_classArray_Node_doubleStorage_2_classArray_Node_doubleStorage_ID25_for_incr:
	addi	t1, s4, 8
	lw	t0, 0(t1)
	li	ra, 1
	add	ra, t0, ra
	sw	ra, 0(t1)
	j	.main_call_dijkstra_45_dijkstra_call_classHeap_Node_push_41_classHeap_Node_push_call_classArray_Node_push_back_5_classArray_Node_push_back_call_classArray_Node_doubleStorage_2_classArray_Node_doubleStorage_ID25_for_condition
.main_call_dijkstra_45_dijkstra_call_classHeap_Node_push_41_classHeap_Node_push_call_classHeap_Node_size_6_classHeap_Node_size_entry:
	addi	ra, s9, 0
	lw	a0, 0(ra)
	call	classArray_Node_size
	j	.main_call_dijkstra_45_dijkstra_call_classHeap_Node_push_41_classHeap_Node_push_call_classHeap_Node_size_6_out
.main_call_dijkstra_45_dijkstra_call_classHeap_Node_push_41_classHeap_Node_push_call_classArray_Node_swap_7_classArray_Node_swap_entry:
	addi	t0, a0, 0
	lw	t2, 0(t0)
	li	t0, 8
	mul	t0, t1, t0
	add	t0, t2, t0
	lw	t0, 0(t0)
	addi	t2, a0, 0
	lw	a1, 0(t2)
	li	t2, 8
	mul	t2, t1, t2
	add	a1, a1, t2
	addi	t2, a0, 0
	lw	t2, 0(t2)
	li	a2, 8
	mul	a2, ra, a2
	add	t2, t2, a2
	lw	t2, 0(t2)
	sw	t2, 0(a1)
	addi	t2, a0, 0
	lw	a0, 0(t2)
	li	t2, 8
	mul	ra, ra, t2
	add	ra, a0, ra
	sw	t0, 0(ra)
	j	.main_call_dijkstra_45_dijkstra_call_classHeap_Node_push_41_classHeap_Node_push_call_classArray_Node_swap_7_out
.main_call_dijkstra_45_dijkstra_call_classHeap_Node_push_41_classHeap_Node_push_call_classHeap_Node_pnt_8_classHeap_Node_pnt_entry:
	li	t0, 1
	sub	t0, ra, t0
	li	t1, 2
	div	t1, t0, t1
	j	.main_call_dijkstra_45_dijkstra_call_classHeap_Node_push_41_classHeap_Node_push_call_classHeap_Node_pnt_8_out
.main_call_dijkstra_45_dijkstra_call_classHeap_Node_push_41_classHeap_Node_push_call_classArray_Node_get_9_classArray_Node_get_entry:
	addi	t0, t0, 0
	lw	t0, 0(t0)
	li	t2, 8
	mul	t2, t1, t2
	add	t0, t0, t2
	lw	t0, 0(t0)
	j	.main_call_dijkstra_45_dijkstra_call_classHeap_Node_push_41_classHeap_Node_push_call_classNode_key__10_classNode_key__entry
.main_call_dijkstra_45_dijkstra_call_classHeap_Node_push_41_classHeap_Node_push_call_classNode_key__10_classNode_key__entry:
	addi	t0, t0, 4
	lw	t2, 0(t0)
	li	t0, 0
	sub	a0, t0, t2
	j	.main_call_dijkstra_45_dijkstra_call_classHeap_Node_push_41_classHeap_Node_push_call_classNode_key__10_out
.main_call_dijkstra_45_dijkstra_call_classHeap_Node_push_41_classHeap_Node_push_call_classArray_Node_get_11_classArray_Node_get_entry:
	addi	t0, t0, 0
	lw	t2, 0(t0)
	li	t0, 8
	mul	t0, ra, t0
	add	t0, t2, t0
	lw	t0, 0(t0)
	j	.main_call_dijkstra_45_dijkstra_call_classHeap_Node_push_41_classHeap_Node_push_call_classNode_key__12_classNode_key__entry
.main_call_dijkstra_45_dijkstra_call_classHeap_Node_push_41_classHeap_Node_push_call_classNode_key__12_classNode_key__entry:
	addi	t0, t0, 4
	lw	t0, 0(t0)
	li	t2, 0
	sub	t0, t2, t0
	j	.main_call_dijkstra_45_dijkstra_call_classHeap_Node_push_41_classHeap_Node_push_call_classNode_key__12_out
.main_call_dijkstra_45_dijkstra_call_classHeap_Node_pop_42_classHeap_Node_pop_entry:
	addi	ra, s9, 0
	lw	ra, 0(ra)
	j	.main_call_dijkstra_45_dijkstra_call_classHeap_Node_pop_42_classHeap_Node_pop_call_classArray_Node_front_13_classArray_Node_front_entry
.main_call_dijkstra_45_dijkstra_call_classHeap_Node_pop_42_classHeap_Node_pop_call_classArray_Node_front_13_out:
	addi	ra, s9, 0
	lw	s1, 0(ra)
	j	.main_call_dijkstra_45_dijkstra_call_classHeap_Node_pop_42_classHeap_Node_pop_call_classHeap_Node_size_14_classHeap_Node_size_entry
.main_call_dijkstra_45_dijkstra_call_classHeap_Node_pop_42_classHeap_Node_pop_call_classHeap_Node_size_14_out:
	li	ra, 1
	sub	a0, a0, ra
	j	.main_call_dijkstra_45_dijkstra_call_classHeap_Node_pop_42_classHeap_Node_pop_call_classArray_Node_swap_15_classArray_Node_swap_entry
.main_call_dijkstra_45_dijkstra_call_classHeap_Node_pop_42_classHeap_Node_pop_call_classArray_Node_swap_15_out:
	addi	ra, s9, 0
	lw	ra, 0(ra)
	j	.main_call_dijkstra_45_dijkstra_call_classHeap_Node_pop_42_classHeap_Node_pop_call_classArray_Node_pop_back_16_classArray_Node_pop_back_entry
.main_call_dijkstra_45_dijkstra_call_classHeap_Node_pop_42_classHeap_Node_pop_call_classHeap_Node_maxHeapify_17_out:
	j	.main_call_dijkstra_45_dijkstra_call_classHeap_Node_pop_42_out
.main_call_dijkstra_45_dijkstra_call_classHeap_Node_pop_42_classHeap_Node_pop_call_classArray_Node_front_13_classArray_Node_front_entry:
	addi	ra, ra, 0
	lw	t0, 0(ra)
	li	t1, 0
	li	ra, 8
	mul	ra, t1, ra
	add	ra, t0, ra
	lw	s4, 0(ra)
	j	.main_call_dijkstra_45_dijkstra_call_classHeap_Node_pop_42_classHeap_Node_pop_call_classArray_Node_front_13_out
.main_call_dijkstra_45_dijkstra_call_classHeap_Node_pop_42_classHeap_Node_pop_call_classHeap_Node_size_14_classHeap_Node_size_entry:
	addi	ra, s9, 0
	lw	a0, 0(ra)
	call	classArray_Node_size
	j	.main_call_dijkstra_45_dijkstra_call_classHeap_Node_pop_42_classHeap_Node_pop_call_classHeap_Node_size_14_out
.main_call_dijkstra_45_dijkstra_call_classHeap_Node_pop_42_classHeap_Node_pop_call_classArray_Node_swap_15_classArray_Node_swap_entry:
	addi	ra, s1, 0
	lw	t1, 0(ra)
	li	ra, 0
	li	t0, 8
	mul	ra, ra, t0
	add	ra, t1, ra
	lw	ra, 0(ra)
	addi	t0, s1, 0
	lw	t2, 0(t0)
	li	t0, 0
	li	t1, 8
	mul	t0, t0, t1
	add	t1, t2, t0
	addi	t0, s1, 0
	lw	t2, 0(t0)
	li	t0, 8
	mul	t0, a0, t0
	add	t0, t2, t0
	lw	t0, 0(t0)
	sw	t0, 0(t1)
	addi	t0, s1, 0
	lw	t1, 0(t0)
	li	t0, 8
	mul	t0, a0, t0
	add	t0, t1, t0
	sw	ra, 0(t0)
	j	.main_call_dijkstra_45_dijkstra_call_classHeap_Node_pop_42_classHeap_Node_pop_call_classArray_Node_swap_15_out
.main_call_dijkstra_45_dijkstra_call_classHeap_Node_pop_42_classHeap_Node_pop_call_classArray_Node_pop_back_16_classArray_Node_pop_back_entry:
	addi	t0, ra, 8
	lw	t1, 0(t0)
	li	ra, 1
	sub	ra, t1, ra
	sw	ra, 0(t0)
	j	.main_call_dijkstra_45_dijkstra_call_classHeap_Node_pop_42_classHeap_Node_pop_call_classHeap_Node_maxHeapify_17_classHeap_Node_maxHeapify_entry
.main_call_dijkstra_45_dijkstra_call_classHeap_Node_pop_42_classHeap_Node_pop_call_classHeap_Node_maxHeapify_17_classHeap_Node_maxHeapify_entry:
	mv	a0, s9
	li	a1, 0
	call	classHeap_Node_lchild
	mv	s1, a0
	mv	a0, s9
	li	a1, 0
	call	classHeap_Node_rchild
	mv	s2, a0
	mv	a0, s9
	call	classHeap_Node_size
	slt	ra, s1, a0
	bnez	ra, .main_call_dijkstra_45_dijkstra_call_classHeap_Node_pop_42_classHeap_Node_pop_call_classHeap_Node_maxHeapify_17_classHeap_Node_maxHeapify_ID16_AndAnd_true
	j	.main_call_dijkstra_45_dijkstra_call_classHeap_Node_pop_42_classHeap_Node_pop_call_classHeap_Node_maxHeapify_17_classHeap_Node_maxHeapify_entry_mid
.main_call_dijkstra_45_dijkstra_call_classHeap_Node_pop_42_classHeap_Node_pop_call_classHeap_Node_maxHeapify_17_classHeap_Node_maxHeapify_entry_mid:
	li	ra, 0
	j	.main_call_dijkstra_45_dijkstra_call_classHeap_Node_pop_42_classHeap_Node_pop_call_classHeap_Node_maxHeapify_17_classHeap_Node_maxHeapify_ID16_AndAnd_out
.main_call_dijkstra_45_dijkstra_call_classHeap_Node_pop_42_classHeap_Node_pop_call_classHeap_Node_maxHeapify_17_classHeap_Node_maxHeapify_ID16_AndAnd_true:
	addi	ra, s9, 0
	lw	a0, 0(ra)
	mv	a1, s1
	call	classArray_Node_get
	call	classNode_key_
	mv	s6, a0
	addi	ra, s9, 0
	lw	a0, 0(ra)
	li	a1, 0
	call	classArray_Node_get
	call	classNode_key_
	slt	ra, a0, s6
	j	.main_call_dijkstra_45_dijkstra_call_classHeap_Node_pop_42_classHeap_Node_pop_call_classHeap_Node_maxHeapify_17_classHeap_Node_maxHeapify_ID16_AndAnd_out
.main_call_dijkstra_45_dijkstra_call_classHeap_Node_pop_42_classHeap_Node_pop_call_classHeap_Node_maxHeapify_17_classHeap_Node_maxHeapify_ID16_AndAnd_out_mid:
	li	s1, 0
	j	.main_call_dijkstra_45_dijkstra_call_classHeap_Node_pop_42_classHeap_Node_pop_call_classHeap_Node_maxHeapify_17_classHeap_Node_maxHeapify_ID28_if_out
.main_call_dijkstra_45_dijkstra_call_classHeap_Node_pop_42_classHeap_Node_pop_call_classHeap_Node_maxHeapify_17_classHeap_Node_maxHeapify_ID16_AndAnd_out:
	bnez	ra, .main_call_dijkstra_45_dijkstra_call_classHeap_Node_pop_42_classHeap_Node_pop_call_classHeap_Node_maxHeapify_17_classHeap_Node_maxHeapify_ID28_if_true
	j	.main_call_dijkstra_45_dijkstra_call_classHeap_Node_pop_42_classHeap_Node_pop_call_classHeap_Node_maxHeapify_17_classHeap_Node_maxHeapify_ID16_AndAnd_out_mid
.main_call_dijkstra_45_dijkstra_call_classHeap_Node_pop_42_classHeap_Node_pop_call_classHeap_Node_maxHeapify_17_classHeap_Node_maxHeapify_ID28_if_out_mid:
	li	ra, 0
	j	.main_call_dijkstra_45_dijkstra_call_classHeap_Node_pop_42_classHeap_Node_pop_call_classHeap_Node_maxHeapify_17_classHeap_Node_maxHeapify_ID32_AndAnd_out
.main_call_dijkstra_45_dijkstra_call_classHeap_Node_pop_42_classHeap_Node_pop_call_classHeap_Node_maxHeapify_17_classHeap_Node_maxHeapify_ID28_if_true:
	j	.main_call_dijkstra_45_dijkstra_call_classHeap_Node_pop_42_classHeap_Node_pop_call_classHeap_Node_maxHeapify_17_classHeap_Node_maxHeapify_ID28_if_out
.main_call_dijkstra_45_dijkstra_call_classHeap_Node_pop_42_classHeap_Node_pop_call_classHeap_Node_maxHeapify_17_classHeap_Node_maxHeapify_ID32_AndAnd_out_mid:
	j	.main_call_dijkstra_45_dijkstra_call_classHeap_Node_pop_42_classHeap_Node_pop_call_classHeap_Node_maxHeapify_17_classHeap_Node_maxHeapify_ID44_if_out
.main_call_dijkstra_45_dijkstra_call_classHeap_Node_pop_42_classHeap_Node_pop_call_classHeap_Node_maxHeapify_17_classHeap_Node_maxHeapify_ID28_if_out:
	mv	a0, s9
	call	classHeap_Node_size
	slt	ra, s2, a0
	bnez	ra, .main_call_dijkstra_45_dijkstra_call_classHeap_Node_pop_42_classHeap_Node_pop_call_classHeap_Node_maxHeapify_17_classHeap_Node_maxHeapify_ID32_AndAnd_true
	j	.main_call_dijkstra_45_dijkstra_call_classHeap_Node_pop_42_classHeap_Node_pop_call_classHeap_Node_maxHeapify_17_classHeap_Node_maxHeapify_ID28_if_out_mid
.main_call_dijkstra_45_dijkstra_call_classHeap_Node_pop_42_classHeap_Node_pop_call_classHeap_Node_maxHeapify_17_classHeap_Node_maxHeapify_ID32_AndAnd_true:
	addi	ra, s9, 0
	lw	a0, 0(ra)
	mv	a1, s2
	call	classArray_Node_get
	call	classNode_key_
	mv	s6, a0
	addi	ra, s9, 0
	lw	a0, 0(ra)
	mv	a1, s1
	call	classArray_Node_get
	call	classNode_key_
	slt	ra, a0, s6
	j	.main_call_dijkstra_45_dijkstra_call_classHeap_Node_pop_42_classHeap_Node_pop_call_classHeap_Node_maxHeapify_17_classHeap_Node_maxHeapify_ID32_AndAnd_out
.main_call_dijkstra_45_dijkstra_call_classHeap_Node_pop_42_classHeap_Node_pop_call_classHeap_Node_maxHeapify_17_classHeap_Node_maxHeapify_ID32_AndAnd_out:
	bnez	ra, .main_call_dijkstra_45_dijkstra_call_classHeap_Node_pop_42_classHeap_Node_pop_call_classHeap_Node_maxHeapify_17_classHeap_Node_maxHeapify_ID44_if_true
	j	.main_call_dijkstra_45_dijkstra_call_classHeap_Node_pop_42_classHeap_Node_pop_call_classHeap_Node_maxHeapify_17_classHeap_Node_maxHeapify_ID32_AndAnd_out_mid
.main_call_dijkstra_45_dijkstra_call_classHeap_Node_pop_42_classHeap_Node_pop_call_classHeap_Node_maxHeapify_17_classHeap_Node_maxHeapify_ID44_if_true:
	mv	s1, s2
	j	.main_call_dijkstra_45_dijkstra_call_classHeap_Node_pop_42_classHeap_Node_pop_call_classHeap_Node_maxHeapify_17_classHeap_Node_maxHeapify_ID44_if_out
.main_call_dijkstra_45_dijkstra_call_classHeap_Node_pop_42_classHeap_Node_pop_call_classHeap_Node_maxHeapify_17_classHeap_Node_maxHeapify_ID44_if_out:
	li	ra, 0
	xor	ra, s1, ra
	sltiu	ra, ra, 1
	bnez	ra, .main_call_dijkstra_45_dijkstra_call_classHeap_Node_pop_42_classHeap_Node_pop_call_classHeap_Node_maxHeapify_17_out
	j	.main_call_dijkstra_45_dijkstra_call_classHeap_Node_pop_42_classHeap_Node_pop_call_classHeap_Node_maxHeapify_17_classHeap_Node_maxHeapify_ID48_if_out
.main_call_dijkstra_45_dijkstra_call_classHeap_Node_pop_42_classHeap_Node_pop_call_classHeap_Node_maxHeapify_17_classHeap_Node_maxHeapify_ID48_if_out:
	addi	ra, s9, 0
	lw	a0, 0(ra)
	li	a1, 0
	mv	a2, s1
	call	classArray_Node_swap
	mv	a0, s9
	mv	a1, s1
	call	classHeap_Node_maxHeapify
	j	.main_call_dijkstra_45_dijkstra_call_classHeap_Node_pop_42_classHeap_Node_pop_call_classHeap_Node_maxHeapify_17_out
.main_return:
	li	a0, 0
	li	ra, -28
	add	ra, s0, ra
	lw	s1, 0(ra)
	li	ra, -44
	add	ra, s0, ra
	lw	s2, 0(ra)
	li	ra, -36
	add	ra, s0, ra
	lw	s3, 0(ra)
	li	ra, -40
	add	ra, s0, ra
	lw	s4, 0(ra)
	li	ra, -20
	add	ra, s0, ra
	lw	s5, 0(ra)
	li	ra, -12
	add	ra, s0, ra
	lw	s6, 0(ra)
	li	ra, -48
	add	ra, s0, ra
	lw	s7, 0(ra)
	li	ra, -32
	add	ra, s0, ra
	lw	s8, 0(ra)
	li	ra, -16
	add	ra, s0, ra
	lw	s9, 0(ra)
	li	ra, -56
	add	ra, s0, ra
	lw	s11, 0(ra)
	li	t0, 64
	add	t1, sp, t0
	lw	ra, -4(t1)
	lw	s0, -8(t1)
	add	sp, sp, t0
	ret

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

