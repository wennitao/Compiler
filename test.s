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
	j	.__init_alloca
.__init_alloca:
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
	j	.Edge_alloca
.Edge_alloca:
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
	j	.EdgeList_alloca
.EdgeList_alloca:
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
	li	t0, 48
	sub	sp, sp, t0
	add	t1, sp, t0
	sw	ra, -4(t1)
	sw	s0, -8(t1)
	mv	s0, t1
	li	t0, -12
	add	t0, s0, t0
	sw	s4, 0(t0)
	li	t0, -20
	add	t0, s0, t0
	sw	s6, 0(t0)
	li	t0, -36
	add	t0, s0, t0
	sw	s7, 0(t0)
	li	t0, -32
	add	t0, s0, t0
	sw	s11, 0(t0)
	j	.classEdgeList_init_alloca
.classEdgeList_init_alloca:
	j	.classEdgeList_init_entry
.classEdgeList_init_entry:
	mv	s4, a0
	mv	s6, a1
	mv	s7, a2
	addi	t0, s4, 0
	li	t1, -16
	add	t1, s0, t1
	sw	t0, 0(t1)
	li	t0, 12
	mul	t0, s7, t0
	li	t1, 4
	add	a0, t0, t1
	call	malloc
	sw	s7, 0(a0)
	li	t1, 1
	li	t0, 4
	mul	t0, t1, t0
	add	t1, a0, t0
	li	t0, -16
	add	t0, s0, t0
	lw	t0, 0(t0)
	sw	t1, 0(t0)
	addi	t1, s4, 8
	li	t0, -28
	add	t0, s0, t0
	sw	t1, 0(t0)
	li	t0, 4
	mul	t1, s7, t0
	li	t0, 4
	add	a0, t1, t0
	call	malloc
	sw	s7, 0(a0)
	li	t1, 1
	li	t0, 4
	mul	t0, t1, t0
	add	t0, a0, t0
	li	t1, -28
	add	t1, s0, t1
	lw	t1, 0(t1)
	sw	t0, 0(t1)
	addi	t0, s4, 16
	li	t1, -24
	add	t1, s0, t1
	sw	t0, 0(t1)
	li	t0, 4
	mul	t0, s6, t0
	li	t1, 4
	add	a0, t0, t1
	call	malloc
	sw	s6, 0(a0)
	li	t0, 1
	li	t1, 4
	mul	t0, t0, t1
	add	t1, a0, t0
	li	t0, -24
	add	t0, s0, t0
	lw	t0, 0(t0)
	sw	t1, 0(t0)
	li	t0, 0
	j	.classEdgeList_init_ID38_for_condition
.classEdgeList_init_ID38_for_condition:
	slt	t1, t0, s7
	bnez	t1, .classEdgeList_init_ID38_for_suite
	j	.classEdgeList_init_ID38_for_out
.classEdgeList_init_ID38_for_suite:
	addi	t1, s4, 8
	lw	t2, 0(t1)
	li	t1, 4
	mul	t1, t0, t1
	add	t1, t2, t1
	li	t2, 0
	li	a0, 1
	sub	t2, t2, a0
	sw	t2, 0(t1)
	j	.classEdgeList_init_ID38_for_incr
.classEdgeList_init_ID38_for_incr:
	li	t1, 1
	add	t0, t0, t1
	j	.classEdgeList_init_ID38_for_condition
.classEdgeList_init_ID38_for_out:
	li	t0, 0
	j	.classEdgeList_init_ID48_for_condition
.classEdgeList_init_ID48_for_condition:
	slt	t1, t0, s6
	bnez	t1, .classEdgeList_init_ID48_for_suite
	j	.classEdgeList_init_ID48_for_out
.classEdgeList_init_ID48_for_suite:
	addi	t1, s4, 16
	lw	t2, 0(t1)
	li	t1, 4
	mul	t1, t0, t1
	add	t1, t2, t1
	li	a0, 0
	li	t2, 1
	sub	t2, a0, t2
	sw	t2, 0(t1)
	j	.classEdgeList_init_ID48_for_incr
.classEdgeList_init_ID48_for_incr:
	li	t1, 1
	add	t0, t0, t1
	j	.classEdgeList_init_ID48_for_condition
.classEdgeList_init_ID48_for_out:
	addi	t1, s4, 24
	li	t0, 0
	sw	t0, 0(t1)
	j	.classEdgeList_init_return
.classEdgeList_init_return:
	li	t0, -12
	add	t0, s0, t0
	lw	s4, 0(t0)
	li	t0, -20
	add	t0, s0, t0
	lw	s6, 0(t0)
	li	t0, -36
	add	t0, s0, t0
	lw	s7, 0(t0)
	li	t0, -32
	add	t0, s0, t0
	lw	s11, 0(t0)
	li	t0, 48
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
	li	t0, -24
	add	t0, s0, t0
	sw	s2, 0(t0)
	li	t0, -12
	add	t0, s0, t0
	sw	s5, 0(t0)
	li	t0, -28
	add	t0, s0, t0
	sw	s6, 0(t0)
	li	t0, -16
	add	t0, s0, t0
	sw	s7, 0(t0)
	li	t0, -20
	add	t0, s0, t0
	sw	s10, 0(t0)
	j	.classEdgeList_addEdge_alloca
.classEdgeList_addEdge_alloca:
	j	.classEdgeList_addEdge_entry
.classEdgeList_addEdge_entry:
	mv	s2, a0
	mv	s6, a1
	mv	s7, a2
	mv	s10, a3
	li	a0, 12
	call	malloc
	mv	s5, a0
	mv	a0, s5
	call	Edge
	mv	t1, s5
	addi	t2, t1, 0
	mv	t0, s6
	sw	t0, 0(t2)
	addi	t2, t1, 4
	mv	t0, s7
	sw	t0, 0(t2)
	addi	t2, t1, 8
	mv	t0, s10
	sw	t0, 0(t2)
	addi	t0, s2, 0
	lw	a0, 0(t0)
	addi	t0, s2, 24
	lw	t2, 0(t0)
	li	t0, 12
	mul	t0, t2, t0
	add	t0, a0, t0
	sw	t1, 0(t0)
	addi	t0, s2, 8
	lw	t0, 0(t0)
	addi	t1, s2, 24
	lw	t1, 0(t1)
	li	t2, 4
	mul	t1, t1, t2
	add	t2, t0, t1
	addi	t0, s2, 16
	lw	a0, 0(t0)
	mv	t0, s6
	li	t1, 4
	mul	t0, t0, t1
	add	t0, a0, t0
	lw	t0, 0(t0)
	sw	t0, 0(t2)
	addi	t0, s2, 16
	lw	t2, 0(t0)
	mv	t0, s6
	li	t1, 4
	mul	t0, t0, t1
	add	t1, t2, t0
	addi	t0, s2, 24
	lw	t0, 0(t0)
	sw	t0, 0(t1)
	addi	t2, s2, 24
	lw	t1, 0(t2)
	li	t0, 1
	add	t0, t1, t0
	sw	t0, 0(t2)
	j	.classEdgeList_addEdge_return
.classEdgeList_addEdge_return:
	li	t0, -24
	add	t0, s0, t0
	lw	s2, 0(t0)
	li	t0, -12
	add	t0, s0, t0
	lw	s5, 0(t0)
	li	t0, -28
	add	t0, s0, t0
	lw	s6, 0(t0)
	li	t0, -16
	add	t0, s0, t0
	lw	s7, 0(t0)
	li	t0, -20
	add	t0, s0, t0
	lw	s10, 0(t0)
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
	j	.classEdgeList_nVertices_alloca
.classEdgeList_nVertices_alloca:
	j	.classEdgeList_nVertices_entry
.classEdgeList_nVertices_entry:
	addi	t0, a0, 16
	lw	t0, 0(t0)
	li	t2, -1
	li	t1, 4
	mul	t1, t2, t1
	add	t0, t0, t1
	lw	a0, 0(t0)
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
	j	.classEdgeList_nEdges_alloca
.classEdgeList_nEdges_alloca:
	j	.classEdgeList_nEdges_entry
.classEdgeList_nEdges_entry:
	addi	t0, a0, 0
	lw	t1, 0(t0)
	li	t0, -1
	li	t2, 4
	mul	t0, t0, t2
	add	t0, t1, t0
	lw	a0, 0(t0)
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
	li	t0, -16
	add	t0, s0, t0
	sw	s2, 0(t0)
	li	t0, -12
	add	t0, s0, t0
	sw	s3, 0(t0)
	j	.Array_Node_alloca
.Array_Node_alloca:
.Array_Node_entry:
	addi	t1, a0, 8
	li	t0, 0
	sw	t0, 0(t1)
	addi	s2, a0, 0
	li	t0, 16
	li	t1, 8
	mul	t1, t0, t1
	li	t0, 4
	add	a0, t1, t0
	call	malloc
	li	t0, 16
	sw	t0, 0(a0)
	li	t1, 1
	li	t0, 4
	mul	t0, t1, t0
	add	t0, a0, t0
	sw	t0, 0(s2)
	j	.Array_Node_return
.Array_Node_return:
	li	t0, -16
	add	t0, s0, t0
	lw	s2, 0(t0)
	li	t0, -12
	add	t0, s0, t0
	lw	s3, 0(t0)
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
	li	t0, 16
	sub	sp, sp, t0
	add	t1, sp, t0
	sw	ra, -4(t1)
	sw	s0, -8(t1)
	mv	s0, t1
	li	t0, -12
	add	t0, s0, t0
	sw	s6, 0(t0)
	li	t0, -16
	add	t0, s0, t0
	sw	s7, 0(t0)
	j	.classArray_Node_push_back_alloca
.classArray_Node_push_back_alloca:
	j	.classArray_Node_push_back_entry
.classArray_Node_push_back_entry:
	mv	s7, a0
	mv	s6, a1
	mv	a0, s7
	call	classArray_Node_size
	addi	t0, s7, 0
	lw	t2, 0(t0)
	li	t1, -1
	li	t0, 4
	mul	t0, t1, t0
	add	t0, t2, t0
	lw	t0, 0(t0)
	xor	t0, a0, t0
	sltiu	t0, t0, 1
	bnez	t0, .classArray_Node_push_back_ID12_if_true
	j	.classArray_Node_push_back_ID12_if_out
.classArray_Node_push_back_ID12_if_true:
	mv	a0, s7
	call	classArray_Node_doubleStorage
	j	.classArray_Node_push_back_ID12_if_out
.classArray_Node_push_back_ID12_if_out:
	addi	t0, s7, 0
	lw	t1, 0(t0)
	addi	t0, s7, 8
	lw	t0, 0(t0)
	li	t2, 8
	mul	t0, t0, t2
	add	t1, t1, t0
	mv	t0, s6
	sw	t0, 0(t1)
	addi	t2, s7, 8
	lw	t0, 0(t2)
	li	t1, 1
	add	t0, t0, t1
	sw	t0, 0(t2)
	j	.classArray_Node_push_back_return
.classArray_Node_push_back_return:
	li	t0, -12
	add	t0, s0, t0
	lw	s6, 0(t0)
	li	t0, -16
	add	t0, s0, t0
	lw	s7, 0(t0)
	li	t0, 16
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
	j	.classArray_Node_pop_back_alloca
.classArray_Node_pop_back_alloca:
	j	.classArray_Node_pop_back_entry
.classArray_Node_pop_back_entry:
	addi	t2, a0, 8
	lw	t0, 0(t2)
	li	t1, 1
	sub	t0, t0, t1
	sw	t0, 0(t2)
	addi	t0, a0, 0
	lw	t1, 0(t0)
	addi	t0, a0, 8
	lw	t2, 0(t0)
	li	t0, 8
	mul	t0, t2, t0
	add	t0, t1, t0
	lw	a0, 0(t0)
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
	j	.classArray_Node_back_alloca
.classArray_Node_back_alloca:
	j	.classArray_Node_back_entry
.classArray_Node_back_entry:
	addi	t0, a0, 0
	lw	t2, 0(t0)
	addi	t0, a0, 8
	lw	t1, 0(t0)
	li	t0, 1
	sub	t1, t1, t0
	li	t0, 8
	mul	t0, t1, t0
	add	t0, t2, t0
	lw	a0, 0(t0)
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
	j	.classArray_Node_front_alloca
.classArray_Node_front_alloca:
	j	.classArray_Node_front_entry
.classArray_Node_front_entry:
	addi	t0, a0, 0
	lw	t0, 0(t0)
	li	t1, 0
	li	t2, 8
	mul	t1, t1, t2
	add	t0, t0, t1
	lw	a0, 0(t0)
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
	j	.classArray_Node_size_alloca
.classArray_Node_size_alloca:
	j	.classArray_Node_size_entry
.classArray_Node_size_entry:
	addi	t0, a0, 8
	lw	a0, 0(t0)
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
	li	t0, -20
	add	t0, s0, t0
	sw	s6, 0(t0)
	li	t0, -16
	add	t0, s0, t0
	sw	s7, 0(t0)
	li	t0, -12
	add	t0, s0, t0
	sw	s10, 0(t0)
	j	.classArray_Node_resize_alloca
.classArray_Node_resize_alloca:
	j	.classArray_Node_resize_entry
.classArray_Node_resize_entry:
	mv	s7, a0
	mv	s6, a1
	j	.classArray_Node_resize_ID6_while_condition
.classArray_Node_resize_ID6_while_condition:
	addi	t0, s7, 0
	lw	t2, 0(t0)
	li	t0, -1
	li	t1, 4
	mul	t0, t0, t1
	add	t0, t2, t0
	lw	t0, 0(t0)
	slt	t0, t0, s6
	bnez	t0, .classArray_Node_resize_ID13_while_suite
	j	.classArray_Node_resize_ID13_while_out
.classArray_Node_resize_ID13_while_suite:
	mv	a0, s7
	call	classArray_Node_doubleStorage
	j	.classArray_Node_resize_ID6_while_condition
.classArray_Node_resize_ID13_while_out:
	addi	t0, s7, 8
	sw	s6, 0(t0)
	j	.classArray_Node_resize_return
.classArray_Node_resize_return:
	li	t0, -20
	add	t0, s0, t0
	lw	s6, 0(t0)
	li	t0, -16
	add	t0, s0, t0
	lw	s7, 0(t0)
	li	t0, -12
	add	t0, s0, t0
	lw	s10, 0(t0)
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
	j	.classArray_Node_get_alloca
.classArray_Node_get_alloca:
	j	.classArray_Node_get_entry
.classArray_Node_get_entry:
	addi	t0, a0, 0
	lw	t1, 0(t0)
	li	t0, 8
	mul	t0, a1, t0
	add	t0, t1, t0
	lw	a0, 0(t0)
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
	j	.classArray_Node_set_alloca
.classArray_Node_set_alloca:
	j	.classArray_Node_set_entry
.classArray_Node_set_entry:
	addi	t0, a0, 0
	lw	t0, 0(t0)
	li	t1, 8
	mul	t1, a1, t1
	add	t0, t0, t1
	sw	a2, 0(t0)
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
	j	.classArray_Node_swap_alloca
.classArray_Node_swap_alloca:
	j	.classArray_Node_swap_entry
.classArray_Node_swap_entry:
	addi	t0, a0, 0
	lw	t1, 0(t0)
	li	t0, 8
	mul	t0, a1, t0
	add	t0, t1, t0
	lw	t0, 0(t0)
	addi	t1, a0, 0
	lw	t1, 0(t1)
	li	t2, 8
	mul	t2, a1, t2
	add	t2, t1, t2
	addi	t1, a0, 0
	lw	t1, 0(t1)
	li	a1, 8
	mul	a1, a2, a1
	add	t1, t1, a1
	lw	t1, 0(t1)
	sw	t1, 0(t2)
	addi	t1, a0, 0
	lw	t2, 0(t1)
	li	t1, 8
	mul	t1, a2, t1
	add	t1, t2, t1
	sw	t0, 0(t1)
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
	li	t0, -28
	add	t0, s0, t0
	sw	s1, 0(t0)
	li	t0, -16
	add	t0, s0, t0
	sw	s6, 0(t0)
	li	t0, -24
	add	t0, s0, t0
	sw	s9, 0(t0)
	li	t0, -12
	add	t0, s0, t0
	sw	s10, 0(t0)
	j	.classArray_Node_doubleStorage_alloca
.classArray_Node_doubleStorage_alloca:
	j	.classArray_Node_doubleStorage_entry
.classArray_Node_doubleStorage_entry:
	mv	s1, a0
	addi	t0, s1, 0
	lw	t0, 0(t0)
	mv	s6, t0
	addi	t0, s1, 8
	lw	t0, 0(t0)
	mv	s10, t0
	addi	t0, s1, 0
	li	t1, -20
	add	t1, s0, t1
	sw	t0, 0(t1)
	mv	t0, s6
	li	t2, -1
	li	t1, 4
	mul	t1, t2, t1
	add	t0, t0, t1
	lw	t0, 0(t0)
	li	t1, 2
	mul	s9, t0, t1
	li	t0, 8
	mul	t0, s9, t0
	li	t1, 4
	add	a0, t0, t1
	call	malloc
	sw	s9, 0(a0)
	li	t1, 1
	li	t0, 4
	mul	t0, t1, t0
	add	t0, a0, t0
	li	t1, -20
	add	t1, s0, t1
	lw	t1, 0(t1)
	sw	t0, 0(t1)
	addi	t1, s1, 8
	li	t0, 0
	sw	t0, 0(t1)
	j	.classArray_Node_doubleStorage_ID25_for_condition
.classArray_Node_doubleStorage_ID25_for_condition:
	addi	t0, s1, 8
	lw	t1, 0(t0)
	mv	t0, s10
	xor	t0, t1, t0
	sltiu	t0, t0, 1
	xori	t0, t0, 1
	bnez	t0, .classArray_Node_doubleStorage_ID25_for_suite
	j	.classArray_Node_doubleStorage_ID25_for_out
.classArray_Node_doubleStorage_ID25_for_suite:
	addi	t0, s1, 0
	lw	t1, 0(t0)
	addi	t0, s1, 8
	lw	t2, 0(t0)
	li	t0, 8
	mul	t0, t2, t0
	add	t2, t1, t0
	mv	t0, s6
	addi	t1, s1, 8
	lw	a0, 0(t1)
	li	t1, 8
	mul	t1, a0, t1
	add	t0, t0, t1
	lw	t0, 0(t0)
	sw	t0, 0(t2)
	j	.classArray_Node_doubleStorage_ID25_for_incr
.classArray_Node_doubleStorage_ID25_for_incr:
	addi	t2, s1, 8
	lw	t0, 0(t2)
	li	t1, 1
	add	t0, t0, t1
	sw	t0, 0(t2)
	j	.classArray_Node_doubleStorage_ID25_for_condition
.classArray_Node_doubleStorage_ID25_for_out:
	j	.classArray_Node_doubleStorage_return
.classArray_Node_doubleStorage_return:
	li	t0, -28
	add	t0, s0, t0
	lw	s1, 0(t0)
	li	t0, -16
	add	t0, s0, t0
	lw	s6, 0(t0)
	li	t0, -24
	add	t0, s0, t0
	lw	s9, 0(t0)
	li	t0, -12
	add	t0, s0, t0
	lw	s10, 0(t0)
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
	li	t0, 16
	sub	sp, sp, t0
	add	t1, sp, t0
	sw	ra, -4(t1)
	sw	s0, -8(t1)
	mv	s0, t1
	li	t0, -12
	add	t0, s0, t0
	sw	s3, 0(t0)
	li	t0, -16
	add	t0, s0, t0
	sw	s5, 0(t0)
	j	.Heap_Node_alloca
.Heap_Node_alloca:
.Heap_Node_entry:
	addi	s5, a0, 0
	li	a0, 12
	call	malloc
	mv	s3, a0
	mv	a0, s3
	call	Array_Node
	sw	s3, 0(s5)
	j	.Heap_Node_return
.Heap_Node_return:
	li	t0, -12
	add	t0, s0, t0
	lw	s3, 0(t0)
	li	t0, -16
	add	t0, s0, t0
	lw	s5, 0(t0)
	li	t0, 16
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
	li	t0, 32
	sub	sp, sp, t0
	add	t1, sp, t0
	sw	ra, -4(t1)
	sw	s0, -8(t1)
	mv	s0, t1
	li	t0, -20
	add	t0, s0, t0
	sw	s2, 0(t0)
	li	t0, -12
	add	t0, s0, t0
	sw	s4, 0(t0)
	li	t0, -24
	add	t0, s0, t0
	sw	s6, 0(t0)
	li	t0, -16
	add	t0, s0, t0
	sw	s10, 0(t0)
	j	.classHeap_Node_push_alloca
.classHeap_Node_push_alloca:
	j	.classHeap_Node_push_entry
.classHeap_Node_push_entry:
	mv	s4, a0
	addi	t0, s4, 0
	lw	a0, 0(t0)
	call	classArray_Node_push_back
	mv	a0, s4
	call	classHeap_Node_size
	li	t0, 1
	sub	t0, a0, t0
	mv	s10, t0
	j	.classHeap_Node_push_ID14_while_condition
.classHeap_Node_push_ID14_while_condition:
	mv	t0, s10
	li	t1, 0
	slt	t0, t1, t0
	bnez	t0, .classHeap_Node_push_ID16_while_suite
	j	.classHeap_Node_push_ID16_while_out
.classHeap_Node_push_ID29_if_true:
	j	.classHeap_Node_push_ID16_while_out
.classHeap_Node_push_ID29_if_out:
	addi	t0, s4, 0
	lw	a0, 0(t0)
	mv	a1, s2
	mv	a2, s10
	call	classArray_Node_swap
	mv	t0, s2
	mv	s10, t0
	j	.classHeap_Node_push_ID14_while_condition
.classHeap_Node_push_ID16_while_suite:
	mv	a1, s10
	mv	a0, s4
	call	classHeap_Node_pnt
	mv	s2, a0
	addi	t0, s4, 0
	lw	a0, 0(t0)
	mv	a1, s2
	call	classArray_Node_get
	call	classNode_key_
	mv	s6, a0
	addi	t0, s4, 0
	lw	a0, 0(t0)
	mv	a1, s10
	call	classArray_Node_get
	call	classNode_key_
	slt	t0, s6, a0
	xori	t0, t0, 1
	bnez	t0, .classHeap_Node_push_ID29_if_true
	j	.classHeap_Node_push_ID29_if_out
.classHeap_Node_push_ID16_while_out:
	j	.classHeap_Node_push_return
.classHeap_Node_push_return:
	li	t0, -20
	add	t0, s0, t0
	lw	s2, 0(t0)
	li	t0, -12
	add	t0, s0, t0
	lw	s4, 0(t0)
	li	t0, -24
	add	t0, s0, t0
	lw	s6, 0(t0)
	li	t0, -16
	add	t0, s0, t0
	lw	s10, 0(t0)
	li	t0, 32
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
	li	t0, -12
	add	t0, s0, t0
	sw	s3, 0(t0)
	li	t0, -16
	add	t0, s0, t0
	sw	s4, 0(t0)
	li	t0, -20
	add	t0, s0, t0
	sw	s11, 0(t0)
	j	.classHeap_Node_pop_alloca
.classHeap_Node_pop_alloca:
	j	.classHeap_Node_pop_entry
.classHeap_Node_pop_entry:
	mv	s4, a0
	addi	t0, s4, 0
	lw	a0, 0(t0)
	call	classArray_Node_front
	mv	s11, a0
	addi	t0, s4, 0
	lw	s3, 0(t0)
	mv	a0, s4
	call	classHeap_Node_size
	li	t0, 1
	sub	a2, a0, t0
	mv	a0, s3
	li	a1, 0
	call	classArray_Node_swap
	addi	t0, s4, 0
	lw	a0, 0(t0)
	call	classArray_Node_pop_back
	mv	a0, s4
	li	a1, 0
	call	classHeap_Node_maxHeapify
	mv	a0, s11
	j	.classHeap_Node_pop_return
.classHeap_Node_pop_return:
	li	t0, -12
	add	t0, s0, t0
	lw	s3, 0(t0)
	li	t0, -16
	add	t0, s0, t0
	lw	s4, 0(t0)
	li	t0, -20
	add	t0, s0, t0
	lw	s11, 0(t0)
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
	j	.classHeap_Node_top_alloca
.classHeap_Node_top_alloca:
	j	.classHeap_Node_top_entry
.classHeap_Node_top_entry:
	addi	t0, a0, 0
	lw	a0, 0(t0)
	call	classArray_Node_front
	j	.classHeap_Node_top_return
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
	j	.classHeap_Node_size_alloca
.classHeap_Node_size_alloca:
	j	.classHeap_Node_size_entry
.classHeap_Node_size_entry:
	addi	t0, a0, 0
	lw	a0, 0(t0)
	call	classArray_Node_size
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
	j	.classHeap_Node_lchild_alloca
.classHeap_Node_lchild_alloca:
	j	.classHeap_Node_lchild_entry
.classHeap_Node_lchild_entry:
	li	t0, 2
	mul	t0, a1, t0
	li	t1, 1
	add	a0, t0, t1
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
	j	.classHeap_Node_rchild_alloca
.classHeap_Node_rchild_alloca:
	j	.classHeap_Node_rchild_entry
.classHeap_Node_rchild_entry:
	li	t0, 2
	mul	t0, a1, t0
	li	t1, 2
	add	a0, t0, t1
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
	j	.classHeap_Node_pnt_alloca
.classHeap_Node_pnt_alloca:
	j	.classHeap_Node_pnt_entry
.classHeap_Node_pnt_entry:
	li	t0, 1
	sub	t0, a1, t0
	li	t1, 2
	div	a0, t0, t1
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
	li	t0, 48
	sub	sp, sp, t0
	add	t1, sp, t0
	sw	ra, -4(t1)
	sw	s0, -8(t1)
	mv	s0, t1
	li	t0, -24
	add	t0, s0, t0
	sw	s1, 0(t0)
	li	t0, -32
	add	t0, s0, t0
	sw	s2, 0(t0)
	li	t0, -28
	add	t0, s0, t0
	sw	s4, 0(t0)
	li	t0, -36
	add	t0, s0, t0
	sw	s5, 0(t0)
	li	t0, -20
	add	t0, s0, t0
	sw	s7, 0(t0)
	li	t0, -16
	add	t0, s0, t0
	sw	s9, 0(t0)
	li	t0, -12
	add	t0, s0, t0
	sw	s10, 0(t0)
	j	.classHeap_Node_maxHeapify_alloca
.classHeap_Node_maxHeapify_alloca:
	j	.classHeap_Node_maxHeapify_entry
.classHeap_Node_maxHeapify_entry:
	mv	s7, a0
	mv	s2, a1
	mv	a1, s2
	mv	a0, s7
	call	classHeap_Node_lchild
	mv	s5, a0
	mv	a0, s7
	mv	a1, s2
	call	classHeap_Node_rchild
	mv	s4, a0
	mv	s9, s2
	mv	a0, s7
	call	classHeap_Node_size
	slt	t1, s5, a0
	li	t0, 0
	bnez	t1, .classHeap_Node_maxHeapify_ID16_AndAnd_true
	j	.classHeap_Node_maxHeapify_ID16_AndAnd_out
.classHeap_Node_maxHeapify_ID16_AndAnd_true:
	addi	t0, s7, 0
	lw	a0, 0(t0)
	mv	a1, s5
	call	classArray_Node_get
	call	classNode_key_
	mv	s1, a0
	addi	t0, s7, 0
	lw	a0, 0(t0)
	mv	a1, s9
	call	classArray_Node_get
	call	classNode_key_
	slt	t0, a0, s1
	j	.classHeap_Node_maxHeapify_ID16_AndAnd_out
.classHeap_Node_maxHeapify_ID16_AndAnd_out:
	bnez	t0, .classHeap_Node_maxHeapify_ID28_if_true
	j	.classHeap_Node_maxHeapify_ID28_if_out
.classHeap_Node_maxHeapify_ID28_if_true:
	mv	s9, s5
	j	.classHeap_Node_maxHeapify_ID28_if_out
.classHeap_Node_maxHeapify_ID28_if_out:
	mv	a0, s7
	call	classHeap_Node_size
	slt	t1, s4, a0
	li	t0, 0
	bnez	t1, .classHeap_Node_maxHeapify_ID32_AndAnd_true
	j	.classHeap_Node_maxHeapify_ID32_AndAnd_out
.classHeap_Node_maxHeapify_ID32_AndAnd_true:
	addi	t0, s7, 0
	lw	a0, 0(t0)
	mv	a1, s4
	call	classArray_Node_get
	call	classNode_key_
	mv	s1, a0
	addi	t0, s7, 0
	lw	a0, 0(t0)
	mv	a1, s9
	call	classArray_Node_get
	call	classNode_key_
	slt	t0, a0, s1
	j	.classHeap_Node_maxHeapify_ID32_AndAnd_out
.classHeap_Node_maxHeapify_ID32_AndAnd_out:
	bnez	t0, .classHeap_Node_maxHeapify_ID44_if_true
	j	.classHeap_Node_maxHeapify_ID44_if_out
.classHeap_Node_maxHeapify_ID44_if_true:
	mv	s9, s4
	j	.classHeap_Node_maxHeapify_ID44_if_out
.classHeap_Node_maxHeapify_ID44_if_out:
	xor	t0, s9, s2
	sltiu	t0, t0, 1
	bnez	t0, .classHeap_Node_maxHeapify_ID48_if_true
	j	.classHeap_Node_maxHeapify_ID48_if_out
.classHeap_Node_maxHeapify_ID48_if_true:
	j	.classHeap_Node_maxHeapify_return
.classHeap_Node_maxHeapify_ID48_if_out:
	addi	t0, s7, 0
	lw	a0, 0(t0)
	mv	a2, s9
	mv	a1, s2
	call	classArray_Node_swap
	mv	a1, s9
	mv	a0, s7
	call	classHeap_Node_maxHeapify
	j	.classHeap_Node_maxHeapify_return
.classHeap_Node_maxHeapify_return:
	li	t0, -24
	add	t0, s0, t0
	lw	s1, 0(t0)
	li	t0, -32
	add	t0, s0, t0
	lw	s2, 0(t0)
	li	t0, -28
	add	t0, s0, t0
	lw	s4, 0(t0)
	li	t0, -36
	add	t0, s0, t0
	lw	s5, 0(t0)
	li	t0, -20
	add	t0, s0, t0
	lw	s7, 0(t0)
	li	t0, -16
	add	t0, s0, t0
	lw	s9, 0(t0)
	li	t0, -12
	add	t0, s0, t0
	lw	s10, 0(t0)
	li	t0, 48
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
	li	t0, -16
	add	t0, s0, t0
	sw	s1, 0(t0)
	li	t0, -12
	add	t0, s0, t0
	sw	s6, 0(t0)
	j	.init_alloca
.init_alloca:
	j	.init_entry
.init_entry:
	call	getInt
	li	t0, 0
	sw	a0, fuckLLVM_n, t0
	call	getInt
	li	t0, 0
	sw	a0, fuckLLVM_m, t0
	li	a0, 28
	call	malloc
	mv	s1, a0
	mv	a0, s1
	call	EdgeList
	li	t0, 0
	sw	s1, fuckLLVM_g, t0
	lw	a0, fuckLLVM_g
	lw	a1, fuckLLVM_n
	lw	a2, fuckLLVM_m
	call	classEdgeList_init
	li	t0, 0
	mv	s1, t0
	j	.init_ID10_for_condition
.init_ID10_for_condition:
	mv	t0, s1
	lw	t1, fuckLLVM_m
	slt	t0, t0, t1
	bnez	t0, .init_ID10_for_suite
	j	.init_ID10_for_out
.init_ID10_for_suite:
	call	getInt
	li	t0, -20
	add	t0, s0, t0
	sw	a0, 0(t0)
	call	getInt
	mv	s6, a0
	call	getInt
	mv	a3, a0
	lw	a0, fuckLLVM_g
	li	t0, -20
	add	t0, s0, t0
	lw	a1, 0(t0)
	mv	a2, s6
	call	classEdgeList_addEdge
	j	.init_ID10_for_incr
.init_ID10_for_incr:
	mv	t0, s1
	li	t1, 1
	add	t0, t0, t1
	mv	s1, t0
	j	.init_ID10_for_condition
.init_ID10_for_out:
	j	.init_return
.init_return:
	li	t0, -16
	add	t0, s0, t0
	lw	s1, 0(t0)
	li	t0, -12
	add	t0, s0, t0
	lw	s6, 0(t0)
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
	j	.Node_alloca
.Node_alloca:
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
	j	.classNode_key__alloca
.classNode_key__alloca:
	j	.classNode_key__entry
.classNode_key__entry:
	addi	t0, a0, 4
	lw	t1, 0(t0)
	li	t0, 0
	sub	a0, t0, t1
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
	li	t0, 48
	sub	sp, sp, t0
	add	t1, sp, t0
	sw	ra, -4(t1)
	sw	s0, -8(t1)
	mv	s0, t1
	li	t0, -16
	add	t0, s0, t0
	sw	s1, 0(t0)
	li	t0, -12
	add	t0, s0, t0
	sw	s2, 0(t0)
	li	t0, -24
	add	t0, s0, t0
	sw	s3, 0(t0)
	li	t0, -20
	add	t0, s0, t0
	sw	s4, 0(t0)
	li	t0, -28
	add	t0, s0, t0
	sw	s5, 0(t0)
	li	t0, -32
	add	t0, s0, t0
	sw	s8, 0(t0)
	li	t0, -40
	add	t0, s0, t0
	sw	s9, 0(t0)
	li	t0, -36
	add	t0, s0, t0
	sw	s11, 0(t0)
	j	.dijkstra_alloca
.dijkstra_alloca:
	j	.dijkstra_entry
.dijkstra_entry:
	mv	s2, a0
	lw	s1, fuckLLVM_n
	li	t0, 4
	mul	t0, s1, t0
	li	t1, 4
	add	a0, t0, t1
	call	malloc
	sw	s1, 0(a0)
	li	t1, 1
	li	t0, 4
	mul	t0, t1, t0
	add	s3, a0, t0
	lw	s1, fuckLLVM_n
	li	t0, 4
	mul	t0, s1, t0
	li	t1, 4
	add	a0, t0, t1
	call	malloc
	sw	s1, 0(a0)
	li	t1, 1
	li	t0, 4
	mul	t0, t1, t0
	add	s4, a0, t0
	li	t0, 0
	j	.dijkstra_ID23_for_condition
.dijkstra_ID23_for_condition:
	lw	t1, fuckLLVM_n
	slt	t1, t0, t1
	bnez	t1, .dijkstra_ID23_for_suite
	j	.dijkstra_ID23_for_out
.dijkstra_ID23_for_suite:
	li	t1, 4
	mul	t1, t0, t1
	add	t1, s4, t1
	lw	t2, fuckLLVM_INF
	sw	t2, 0(t1)
	li	t1, 4
	mul	t1, t0, t1
	add	t1, s3, t1
	li	t2, 0
	sw	t2, 0(t1)
	j	.dijkstra_ID23_for_incr
.dijkstra_ID23_for_incr:
	li	t1, 1
	add	t0, t0, t1
	j	.dijkstra_ID23_for_condition
.dijkstra_ID23_for_out:
	li	t0, 4
	mul	t0, s2, t0
	add	t0, s4, t0
	li	t1, 0
	sw	t1, 0(t0)
	li	a0, 8
	call	malloc
	mv	s1, a0
	mv	a0, s1
	call	Heap_Node
	li	a0, 8
	call	malloc
	mv	s5, a0
	mv	a0, s5
	call	Node
	addi	t0, s5, 4
	li	t1, 0
	sw	t1, 0(t0)
	addi	t0, s5, 0
	sw	s2, 0(t0)
	mv	a0, s1
	mv	a1, s5
	call	classHeap_Node_push
	j	.dijkstra_ID56_while_condition
.dijkstra_ID56_while_condition:
	mv	a0, s1
	call	classHeap_Node_size
	li	t0, 0
	xor	t0, a0, t0
	sltiu	t0, t0, 1
	xori	t0, t0, 1
	bnez	t0, .dijkstra_ID59_while_suite
	j	.dijkstra_ID59_while_out
.dijkstra_ID71_if_true:
	j	.dijkstra_ID56_while_condition
.dijkstra_ID71_if_out:
	li	t0, 4
	mul	t0, s5, t0
	add	t1, s3, t0
	li	t0, 1
	sw	t0, 0(t1)
	lw	t0, fuckLLVM_g
	addi	t0, t0, 16
	lw	t1, 0(t0)
	li	t0, 4
	mul	t0, s5, t0
	add	t0, t1, t0
	lw	s8, 0(t0)
	j	.dijkstra_ID81_for_condition
.dijkstra_ID81_for_condition:
	li	t0, 0
	li	t1, 1
	sub	t0, t0, t1
	xor	t0, s8, t0
	sltiu	t0, t0, 1
	xori	t0, t0, 1
	bnez	t0, .dijkstra_ID81_for_suite
	j	.dijkstra_ID81_for_out
.dijkstra_ID81_for_suite:
	lw	t0, fuckLLVM_g
	addi	t0, t0, 0
	lw	t1, 0(t0)
	li	t0, 12
	mul	t0, s8, t0
	add	t0, t1, t0
	lw	t0, 0(t0)
	addi	t0, t0, 4
	lw	s9, 0(t0)
	lw	t0, fuckLLVM_g
	addi	t0, t0, 0
	lw	t1, 0(t0)
	li	t0, 12
	mul	t0, s8, t0
	add	t0, t1, t0
	lw	t0, 0(t0)
	addi	t0, t0, 8
	lw	t0, 0(t0)
	li	t1, 4
	mul	t1, s5, t1
	add	t1, s4, t1
	lw	t1, 0(t1)
	add	t0, t1, t0
	li	t1, 4
	mul	t1, s9, t1
	add	t1, s4, t1
	lw	t1, 0(t1)
	slt	t1, t0, t1
	xori	t1, t1, 1
	bnez	t1, .dijkstra_ID115_if_true
	j	.dijkstra_ID115_if_out
.dijkstra_ID115_if_true:
	j	.dijkstra_ID81_for_incr
.dijkstra_ID115_if_out:
	li	t1, 4
	mul	t1, s9, t1
	add	t1, s4, t1
	sw	t0, 0(t1)
	li	a0, 8
	call	malloc
	mv	s2, a0
	mv	a0, s2
	call	Node
	mv	a1, s2
	addi	t0, a1, 0
	sw	s9, 0(t0)
	addi	t1, a1, 4
	li	t0, 4
	mul	t0, s9, t0
	add	t0, s4, t0
	lw	t0, 0(t0)
	sw	t0, 0(t1)
	mv	a0, s1
	call	classHeap_Node_push
	j	.dijkstra_ID81_for_incr
.dijkstra_ID81_for_incr:
	lw	t0, fuckLLVM_g
	addi	t0, t0, 8
	lw	t1, 0(t0)
	li	t0, 4
	mul	t0, s8, t0
	add	t0, t1, t0
	lw	s8, 0(t0)
	j	.dijkstra_ID81_for_condition
.dijkstra_ID81_for_out:
	j	.dijkstra_ID56_while_condition
.dijkstra_ID59_while_suite:
	mv	a0, s1
	call	classHeap_Node_pop
	mv	a1, a0
	addi	t0, a1, 0
	lw	s5, 0(t0)
	li	t0, 4
	mul	t0, s5, t0
	add	t0, s3, t0
	lw	t0, 0(t0)
	li	t1, 1
	xor	t0, t0, t1
	sltiu	t0, t0, 1
	bnez	t0, .dijkstra_ID71_if_true
	j	.dijkstra_ID71_if_out
.dijkstra_ID59_while_out:
	mv	a0, s4
	j	.dijkstra_return
.dijkstra_return:
	li	t0, -16
	add	t0, s0, t0
	lw	s1, 0(t0)
	li	t0, -12
	add	t0, s0, t0
	lw	s2, 0(t0)
	li	t0, -24
	add	t0, s0, t0
	lw	s3, 0(t0)
	li	t0, -20
	add	t0, s0, t0
	lw	s4, 0(t0)
	li	t0, -28
	add	t0, s0, t0
	lw	s5, 0(t0)
	li	t0, -32
	add	t0, s0, t0
	lw	s8, 0(t0)
	li	t0, -40
	add	t0, s0, t0
	lw	s9, 0(t0)
	li	t0, -36
	add	t0, s0, t0
	lw	s11, 0(t0)
	li	t0, 48
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
	li	t0, 32
	sub	sp, sp, t0
	add	t1, sp, t0
	sw	ra, -4(t1)
	sw	s0, -8(t1)
	mv	s0, t1
	li	t0, -16
	add	t0, s0, t0
	sw	s2, 0(t0)
	li	t0, -24
	add	t0, s0, t0
	sw	s6, 0(t0)
	li	t0, -20
	add	t0, s0, t0
	sw	s8, 0(t0)
	li	t0, -12
	add	t0, s0, t0
	sw	s10, 0(t0)
	j	.main_alloca
.main_alloca:
	j	.main_entry
.main_entry:
	call	__init
	li	a0, 0
	call	init
	li	s8, 0
	j	.main_ID3_for_condition
.main_ID3_for_condition:
	lw	t0, fuckLLVM_n
	slt	t0, s8, t0
	bnez	t0, .main_ID3_for_suite
	j	.main_ID3_for_out
.main_ID3_for_suite:
	mv	a0, s8
	call	dijkstra
	mv	s2, a0
	li	s6, 0
	j	.main_ID10_for_condition
.main_ID10_for_condition:
	lw	t0, fuckLLVM_n
	slt	t0, s6, t0
	bnez	t0, .main_ID10_for_suite
	j	.main_ID10_for_out
.main_ID10_for_suite:
	li	t0, 4
	mul	t0, s6, t0
	add	t0, s2, t0
	lw	t0, 0(t0)
	lw	t1, fuckLLVM_INF
	xor	t0, t0, t1
	sltiu	t0, t0, 1
	bnez	t0, .main_ID19_if_true
	j	.main_ID19_if_false
.main_ID19_if_true:
	la	a0, fuckLLVM_.str.0
	call	print
	j	.main_ID19_if_out
.main_ID19_if_false:
	li	t0, 4
	mul	t0, s6, t0
	add	t0, s2, t0
	lw	a0, 0(t0)
	call	toString
	call	print
	j	.main_ID19_if_out
.main_ID19_if_out:
	la	a0, fuckLLVM_.str.1
	call	print
	j	.main_ID10_for_incr
.main_ID10_for_incr:
	li	t0, 1
	add	s6, s6, t0
	j	.main_ID10_for_condition
.main_ID10_for_out:
	la	a0, fuckLLVM_.str.2
	call	println
	j	.main_ID3_for_incr
.main_ID3_for_incr:
	li	t0, 1
	add	s8, s8, t0
	j	.main_ID3_for_condition
.main_ID3_for_out:
	li	a0, 0
	j	.main_return
.main_return:
	li	t0, -16
	add	t0, s0, t0
	lw	s2, 0(t0)
	li	t0, -24
	add	t0, s0, t0
	lw	s6, 0(t0)
	li	t0, -20
	add	t0, s0, t0
	lw	s8, 0(t0)
	li	t0, -12
	add	t0, s0, t0
	lw	s10, 0(t0)
	li	t0, 32
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

