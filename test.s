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

	.globl	Queue_int
	.p2align	2
	.type	Queue_int,@function
Queue_int:
.Queue_int_assemblyInit:
	li	t0, 16
	sub	sp, sp, t0
	add	t1, sp, t0
	sw	ra, -4(t1)
	sw	s0, -8(t1)
	mv	s0, t1
	li	ra, -16
	add	ra, s0, ra
	sw	s6, 0(ra)
	li	ra, -12
	add	ra, s0, ra
	sw	s9, 0(ra)
	j	.Queue_int_entry
.Queue_int_entry:
	addi	ra, a0, 8
	li	t0, 0
	sw	t0, 0(ra)
	addi	ra, a0, 12
	li	t0, 0
	sw	t0, 0(ra)
	addi	s6, a0, 0
	li	a0, 68
	call	malloc
	li	ra, 16
	sw	ra, 0(a0)
	li	ra, 1
	li	t0, 4
	mul	ra, ra, t0
	add	ra, a0, ra
	sw	ra, 0(s6)
	j	.Queue_int_return
.Queue_int_return:
	li	ra, -16
	add	ra, s0, ra
	lw	s6, 0(ra)
	li	ra, -12
	add	ra, s0, ra
	lw	s9, 0(ra)
	li	t0, 16
	add	t1, sp, t0
	lw	ra, -4(t1)
	lw	s0, -8(t1)
	add	sp, sp, t0
	ret

	.globl	classQueue_int_push
	.p2align	2
	.type	classQueue_int_push,@function
classQueue_int_push:
.classQueue_int_push_assemblyInit:
	li	t0, 16
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
	j	.classQueue_int_push_entry
.classQueue_int_push_entry:
	li	ra, -12
	add	ra, s0, ra
	lw	a0, 0(ra)
	call	classQueue_int_size
	li	ra, -12
	add	ra, s0, ra
	lw	ra, 0(ra)
	addi	ra, ra, 0
	lw	t1, 0(ra)
	li	t0, -1
	li	ra, 4
	mul	ra, t0, ra
	add	ra, t1, ra
	lw	t0, 0(ra)
	li	ra, 1
	sub	ra, t0, ra
	xor	ra, a0, ra
	sltiu	ra, ra, 1
	bnez	ra, .classQueue_int_push_ID13_if_true
	j	.classQueue_int_push_entry_mid
.classQueue_int_push_entry_mid:
	j	.classQueue_int_push_ID13_if_out
.classQueue_int_push_ID13_if_true:
	li	ra, -12
	add	ra, s0, ra
	lw	a0, 0(ra)
	call	classQueue_int_doubleStorage
	j	.classQueue_int_push_ID13_if_out
.classQueue_int_push_ID13_if_out:
	li	ra, -12
	add	ra, s0, ra
	lw	ra, 0(ra)
	addi	ra, ra, 0
	lw	t1, 0(ra)
	li	ra, -12
	add	ra, s0, ra
	lw	ra, 0(ra)
	addi	ra, ra, 12
	lw	ra, 0(ra)
	li	t0, 4
	mul	ra, ra, t0
	add	t0, t1, ra
	li	ra, -16
	add	ra, s0, ra
	lw	ra, 0(ra)
	sw	ra, 0(t0)
	li	ra, -12
	add	ra, s0, ra
	lw	ra, 0(ra)
	addi	t0, ra, 12
	li	ra, -12
	add	ra, s0, ra
	lw	ra, 0(ra)
	addi	ra, ra, 12
	lw	ra, 0(ra)
	li	t1, 1
	add	t1, ra, t1
	li	ra, -12
	add	ra, s0, ra
	lw	ra, 0(ra)
	addi	ra, ra, 0
	lw	t2, 0(ra)
	li	a0, -1
	li	ra, 4
	mul	ra, a0, ra
	add	ra, t2, ra
	lw	ra, 0(ra)
	rem	ra, t1, ra
	sw	ra, 0(t0)
	j	.classQueue_int_push_return
.classQueue_int_push_return:
	li	t0, 16
	add	t1, sp, t0
	lw	ra, -4(t1)
	lw	s0, -8(t1)
	add	sp, sp, t0
	ret

	.globl	classQueue_int_top
	.p2align	2
	.type	classQueue_int_top,@function
classQueue_int_top:
.classQueue_int_top_assemblyInit:
	li	t0, 16
	sub	sp, sp, t0
	add	t1, sp, t0
	sw	ra, -4(t1)
	sw	s0, -8(t1)
	mv	s0, t1
	j	.classQueue_int_top_entry
.classQueue_int_top_entry:
	addi	ra, a0, 0
	lw	t0, 0(ra)
	addi	ra, a0, 8
	lw	ra, 0(ra)
	li	t1, 4
	mul	ra, ra, t1
	add	ra, t0, ra
	lw	a0, 0(ra)
	j	.classQueue_int_top_return
.classQueue_int_top_return:
	li	t0, 16
	add	t1, sp, t0
	lw	ra, -4(t1)
	lw	s0, -8(t1)
	add	sp, sp, t0
	ret

	.globl	classQueue_int_pop
	.p2align	2
	.type	classQueue_int_pop,@function
classQueue_int_pop:
.classQueue_int_pop_assemblyInit:
	li	t0, 16
	sub	sp, sp, t0
	add	t1, sp, t0
	sw	ra, -4(t1)
	sw	s0, -8(t1)
	mv	s0, t1
	li	ra, -12
	add	ra, s0, ra
	sw	a0, 0(ra)
	j	.classQueue_int_pop_entry
.classQueue_int_pop_entry:
	li	ra, -12
	add	ra, s0, ra
	lw	a0, 0(ra)
	call	classQueue_int_size
	li	ra, 0
	xor	ra, a0, ra
	sltiu	ra, ra, 1
	bnez	ra, .classQueue_int_pop_ID5_if_true
	j	.classQueue_int_pop_entry_mid
.classQueue_int_pop_entry_mid:
	j	.classQueue_int_pop_ID5_if_out
.classQueue_int_pop_ID5_if_true:
	la	a0, fuckLLVM_.str.0
	call	println
	j	.classQueue_int_pop_ID5_if_out
.classQueue_int_pop_ID5_if_out:
	li	ra, -12
	add	ra, s0, ra
	lw	a0, 0(ra)
	call	classQueue_int_top
	li	ra, -12
	add	ra, s0, ra
	lw	ra, 0(ra)
	addi	t0, ra, 8
	li	ra, -12
	add	ra, s0, ra
	lw	ra, 0(ra)
	addi	ra, ra, 8
	lw	ra, 0(ra)
	li	t1, 1
	add	a1, ra, t1
	li	ra, -12
	add	ra, s0, ra
	lw	ra, 0(ra)
	addi	ra, ra, 0
	lw	t2, 0(ra)
	li	ra, -1
	li	t1, 4
	mul	ra, ra, t1
	add	ra, t2, ra
	lw	ra, 0(ra)
	rem	ra, a1, ra
	sw	ra, 0(t0)
	j	.classQueue_int_pop_return
.classQueue_int_pop_return:
	li	t0, 16
	add	t1, sp, t0
	lw	ra, -4(t1)
	lw	s0, -8(t1)
	add	sp, sp, t0
	ret

	.globl	classQueue_int_size
	.p2align	2
	.type	classQueue_int_size,@function
classQueue_int_size:
.classQueue_int_size_assemblyInit:
	li	t0, 16
	sub	sp, sp, t0
	add	t1, sp, t0
	sw	ra, -4(t1)
	sw	s0, -8(t1)
	mv	s0, t1
	j	.classQueue_int_size_entry
.classQueue_int_size_entry:
	addi	ra, a0, 12
	lw	t2, 0(ra)
	addi	ra, a0, 0
	lw	ra, 0(ra)
	li	t1, -1
	li	t0, 4
	mul	t0, t1, t0
	add	ra, ra, t0
	lw	ra, 0(ra)
	add	t0, t2, ra
	addi	ra, a0, 8
	lw	ra, 0(ra)
	sub	t0, t0, ra
	addi	ra, a0, 0
	lw	t2, 0(ra)
	li	ra, -1
	li	t1, 4
	mul	ra, ra, t1
	add	ra, t2, ra
	lw	ra, 0(ra)
	rem	a0, t0, ra
	j	.classQueue_int_size_return
.classQueue_int_size_return:
	li	t0, 16
	add	t1, sp, t0
	lw	ra, -4(t1)
	lw	s0, -8(t1)
	add	sp, sp, t0
	ret

	.globl	classQueue_int_doubleStorage
	.p2align	2
	.type	classQueue_int_doubleStorage,@function
classQueue_int_doubleStorage:
.classQueue_int_doubleStorage_assemblyInit:
	li	t0, 32
	sub	sp, sp, t0
	add	t1, sp, t0
	sw	ra, -4(t1)
	sw	s0, -8(t1)
	mv	s0, t1
	li	ra, -28
	add	ra, s0, ra
	sw	a0, 0(ra)
	li	ra, -20
	add	ra, s0, ra
	sw	s1, 0(ra)
	li	ra, -12
	add	ra, s0, ra
	sw	s2, 0(ra)
	li	ra, -32
	add	ra, s0, ra
	sw	s3, 0(ra)
	j	.classQueue_int_doubleStorage_entry
.classQueue_int_doubleStorage_entry:
	li	ra, -28
	add	ra, s0, ra
	lw	ra, 0(ra)
	addi	ra, ra, 0
	lw	s1, 0(ra)
	li	ra, -28
	add	ra, s0, ra
	lw	ra, 0(ra)
	addi	ra, ra, 8
	lw	s2, 0(ra)
	li	ra, -28
	add	ra, s0, ra
	lw	ra, 0(ra)
	addi	ra, ra, 12
	lw	ra, 0(ra)
	li	t0, -16
	add	t0, s0, t0
	sw	ra, 0(t0)
	li	ra, -28
	add	ra, s0, ra
	lw	ra, 0(ra)
	addi	t0, ra, 0
	li	ra, -24
	add	ra, s0, ra
	sw	t0, 0(ra)
	li	t0, -1
	li	ra, 4
	mul	ra, t0, ra
	add	ra, s1, ra
	lw	t0, 0(ra)
	li	ra, 2
	mul	s3, t0, ra
	li	ra, 4
	mul	ra, s3, ra
	li	t0, 4
	add	a0, ra, t0
	call	malloc
	sw	s3, 0(a0)
	li	t0, 1
	li	ra, 4
	mul	ra, t0, ra
	add	t0, a0, ra
	li	ra, -24
	add	ra, s0, ra
	lw	ra, 0(ra)
	sw	t0, 0(ra)
	li	ra, -28
	add	ra, s0, ra
	lw	ra, 0(ra)
	addi	ra, ra, 8
	li	t0, 0
	sw	t0, 0(ra)
	li	ra, -28
	add	ra, s0, ra
	lw	ra, 0(ra)
	addi	t0, ra, 12
	li	ra, 0
	sw	ra, 0(t0)
	mv	ra, s2
	j	.classQueue_int_doubleStorage_ID32_while_condition
.classQueue_int_doubleStorage_ID32_while_condition:
	li	t0, -16
	add	t0, s0, t0
	lw	t0, 0(t0)
	xor	t0, ra, t0
	sltiu	t0, t0, 1
	xori	t0, t0, 1
	bnez	t0, .classQueue_int_doubleStorage_ID35_while_suite
	j	.classQueue_int_doubleStorage_ID35_while_out
.classQueue_int_doubleStorage_ID35_while_suite:
	li	t0, -28
	add	t0, s0, t0
	lw	t0, 0(t0)
	addi	t0, t0, 0
	lw	t2, 0(t0)
	li	t0, -28
	add	t0, s0, t0
	lw	t0, 0(t0)
	addi	t0, t0, 12
	lw	t1, 0(t0)
	li	t0, 4
	mul	t0, t1, t0
	add	t1, t2, t0
	li	t0, 4
	mul	t0, ra, t0
	add	t0, s1, t0
	lw	t0, 0(t0)
	sw	t0, 0(t1)
	li	t0, -28
	add	t0, s0, t0
	lw	t0, 0(t0)
	addi	t1, t0, 12
	lw	t0, 0(t1)
	li	t2, 1
	add	t0, t0, t2
	sw	t0, 0(t1)
	li	t0, 1
	add	t0, ra, t0
	li	t1, -1
	li	ra, 4
	mul	ra, t1, ra
	add	ra, s1, ra
	lw	ra, 0(ra)
	rem	ra, t0, ra
	j	.classQueue_int_doubleStorage_ID32_while_condition
.classQueue_int_doubleStorage_ID35_while_out:
	j	.classQueue_int_doubleStorage_return
.classQueue_int_doubleStorage_return:
	li	ra, -20
	add	ra, s0, ra
	lw	s1, 0(ra)
	li	ra, -12
	add	ra, s0, ra
	lw	s2, 0(ra)
	li	ra, -32
	add	ra, s0, ra
	lw	s3, 0(ra)
	li	t0, 32
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
	li	ra, -16
	add	ra, s0, ra
	sw	a0, 0(ra)
	li	ra, -24
	add	ra, s0, ra
	sw	a1, 0(ra)
	li	ra, -12
	add	ra, s0, ra
	sw	a2, 0(ra)
	li	ra, -20
	add	ra, s0, ra
	sw	s3, 0(ra)
	j	.classEdgeList_init_entry
.classEdgeList_init_entry:
	li	ra, -16
	add	ra, s0, ra
	lw	ra, 0(ra)
	addi	s3, ra, 0
	li	t0, 12
	li	ra, -12
	add	ra, s0, ra
	lw	ra, 0(ra)
	mul	ra, ra, t0
	li	t0, 4
	add	a0, ra, t0
	call	malloc
	li	ra, -12
	add	ra, s0, ra
	lw	ra, 0(ra)
	sw	ra, 0(a0)
	li	ra, 1
	li	t0, 4
	mul	ra, ra, t0
	add	ra, a0, ra
	sw	ra, 0(s3)
	li	ra, -16
	add	ra, s0, ra
	lw	ra, 0(ra)
	addi	s3, ra, 8
	li	t0, 4
	li	ra, -12
	add	ra, s0, ra
	lw	ra, 0(ra)
	mul	t0, ra, t0
	li	ra, 4
	add	a0, t0, ra
	call	malloc
	li	ra, -12
	add	ra, s0, ra
	lw	ra, 0(ra)
	sw	ra, 0(a0)
	li	ra, 1
	li	t0, 4
	mul	ra, ra, t0
	add	ra, a0, ra
	sw	ra, 0(s3)
	li	ra, -16
	add	ra, s0, ra
	lw	ra, 0(ra)
	addi	s3, ra, 16
	li	t0, 4
	li	ra, -24
	add	ra, s0, ra
	lw	ra, 0(ra)
	mul	t0, ra, t0
	li	ra, 4
	add	a0, t0, ra
	call	malloc
	li	ra, -24
	add	ra, s0, ra
	lw	ra, 0(ra)
	sw	ra, 0(a0)
	li	t0, 1
	li	ra, 4
	mul	ra, t0, ra
	add	ra, a0, ra
	sw	ra, 0(s3)
	li	ra, 0
	j	.classEdgeList_init_ID38_for_condition
.classEdgeList_init_ID38_for_condition:
	li	t0, -12
	add	t0, s0, t0
	lw	t0, 0(t0)
	slt	t0, ra, t0
	bnez	t0, .classEdgeList_init_ID38_for_suite
	j	.classEdgeList_init_ID38_for_out
.classEdgeList_init_ID38_for_suite:
	li	t0, -16
	add	t0, s0, t0
	lw	t0, 0(t0)
	addi	t0, t0, 8
	lw	t1, 0(t0)
	li	t0, 4
	mul	t0, ra, t0
	add	t0, t1, t0
	li	t1, -1
	sw	t1, 0(t0)
	j	.classEdgeList_init_ID38_for_incr
.classEdgeList_init_ID38_for_incr:
	li	t0, 1
	add	ra, ra, t0
	j	.classEdgeList_init_ID38_for_condition
.classEdgeList_init_ID38_for_out:
	li	ra, 0
	j	.classEdgeList_init_ID48_for_condition
.classEdgeList_init_ID48_for_condition:
	li	t0, -24
	add	t0, s0, t0
	lw	t0, 0(t0)
	slt	t0, ra, t0
	bnez	t0, .classEdgeList_init_ID48_for_suite
	j	.classEdgeList_init_ID48_for_out
.classEdgeList_init_ID48_for_suite:
	li	t0, -16
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
	li	ra, -16
	add	ra, s0, ra
	lw	ra, 0(ra)
	addi	ra, ra, 24
	li	t0, 0
	sw	t0, 0(ra)
	j	.classEdgeList_init_return
.classEdgeList_init_return:
	li	ra, -20
	add	ra, s0, ra
	lw	s3, 0(ra)
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
	li	ra, -24
	add	ra, s0, ra
	sw	a0, 0(ra)
	li	ra, -28
	add	ra, s0, ra
	sw	a1, 0(ra)
	li	ra, -20
	add	ra, s0, ra
	sw	a2, 0(ra)
	li	ra, -12
	add	ra, s0, ra
	sw	a3, 0(ra)
	li	ra, -16
	add	ra, s0, ra
	sw	s2, 0(ra)
	j	.classEdgeList_addEdge_entry
.classEdgeList_addEdge_entry:
	li	a0, 12
	call	malloc
	mv	s2, a0
	mv	a0, s2
	call	Edge
	addi	t0, s2, 0
	li	ra, -28
	add	ra, s0, ra
	lw	ra, 0(ra)
	sw	ra, 0(t0)
	addi	t0, s2, 4
	li	ra, -20
	add	ra, s0, ra
	lw	ra, 0(ra)
	sw	ra, 0(t0)
	addi	t0, s2, 8
	li	ra, -12
	add	ra, s0, ra
	lw	ra, 0(ra)
	sw	ra, 0(t0)
	li	ra, -24
	add	ra, s0, ra
	lw	ra, 0(ra)
	addi	ra, ra, 0
	lw	t0, 0(ra)
	li	ra, -24
	add	ra, s0, ra
	lw	ra, 0(ra)
	addi	ra, ra, 24
	lw	ra, 0(ra)
	li	t1, 12
	mul	ra, ra, t1
	add	ra, t0, ra
	sw	s2, 0(ra)
	li	ra, -24
	add	ra, s0, ra
	lw	ra, 0(ra)
	addi	ra, ra, 8
	lw	t0, 0(ra)
	li	ra, -24
	add	ra, s0, ra
	lw	ra, 0(ra)
	addi	ra, ra, 24
	lw	ra, 0(ra)
	li	t1, 4
	mul	ra, ra, t1
	add	ra, t0, ra
	li	t0, -24
	add	t0, s0, t0
	lw	t0, 0(t0)
	addi	t0, t0, 16
	lw	t1, 0(t0)
	li	t2, 4
	li	t0, -28
	add	t0, s0, t0
	lw	t0, 0(t0)
	mul	t0, t0, t2
	add	t0, t1, t0
	lw	t0, 0(t0)
	sw	t0, 0(ra)
	li	ra, -24
	add	ra, s0, ra
	lw	ra, 0(ra)
	addi	ra, ra, 16
	lw	t0, 0(ra)
	li	t1, 4
	li	ra, -28
	add	ra, s0, ra
	lw	ra, 0(ra)
	mul	ra, ra, t1
	add	ra, t0, ra
	li	t0, -24
	add	t0, s0, t0
	lw	t0, 0(t0)
	addi	t0, t0, 24
	lw	t0, 0(t0)
	sw	t0, 0(ra)
	li	ra, -24
	add	ra, s0, ra
	lw	ra, 0(ra)
	addi	t0, ra, 24
	lw	t1, 0(t0)
	li	ra, 1
	add	ra, t1, ra
	sw	ra, 0(t0)
	j	.classEdgeList_addEdge_return
.classEdgeList_addEdge_return:
	li	ra, -16
	add	ra, s0, ra
	lw	s2, 0(ra)
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
	lw	t1, 0(ra)
	li	ra, -1
	li	t0, 4
	mul	ra, ra, t0
	add	ra, t1, ra
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
	lw	t0, 0(ra)
	li	ra, -1
	li	t1, 4
	mul	ra, ra, t1
	add	ra, t0, ra
	lw	a0, 0(ra)
	j	.classEdgeList_nEdges_return
.classEdgeList_nEdges_return:
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
	li	ra, -12
	add	ra, s0, ra
	sw	s4, 0(ra)
	li	ra, -20
	add	ra, s0, ra
	sw	s5, 0(ra)
	li	ra, -16
	add	ra, s0, ra
	sw	s8, 0(ra)
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
	mv	s4, a0
	mv	a0, s4
	call	EdgeList
	li	ra, 0
	sw	s4, fuckLLVM_g, ra
	lw	a0, fuckLLVM_g
	lw	a1, fuckLLVM_n
	lw	a2, fuckLLVM_m
	call	classEdgeList_init
	li	ra, 0
	mv	s4, ra
	j	.init_ID10_for_condition
.init_ID10_for_condition:
	lw	ra, fuckLLVM_m
	slt	ra, s4, ra
	bnez	ra, .init_ID10_for_suite
	j	.init_ID10_for_out
.init_ID10_for_suite:
	call	getInt
	mv	s8, a0
	call	getInt
	mv	s5, a0
	call	getInt
	mv	a3, a0
	lw	a0, fuckLLVM_g
	mv	a1, s8
	mv	a2, s5
	call	classEdgeList_addEdge
	j	.init_ID10_for_incr
.init_ID10_for_incr:
	li	ra, 1
	add	ra, s4, ra
	mv	s4, ra
	j	.init_ID10_for_condition
.init_ID10_for_out:
	j	.init_return
.init_return:
	li	ra, -12
	add	ra, s0, ra
	lw	s4, 0(ra)
	li	ra, -20
	add	ra, s0, ra
	lw	s5, 0(ra)
	li	ra, -16
	add	ra, s0, ra
	lw	s8, 0(ra)
	li	t0, 32
	add	t1, sp, t0
	lw	ra, -4(t1)
	lw	s0, -8(t1)
	add	sp, sp, t0
	ret

	.globl	spfa
	.p2align	2
	.type	spfa,@function
spfa:
.spfa_assemblyInit:
	li	t0, 48
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
	li	ra, -12
	add	ra, s0, ra
	sw	s3, 0(ra)
	li	ra, -36
	add	ra, s0, ra
	sw	s4, 0(ra)
	li	ra, -32
	add	ra, s0, ra
	sw	s6, 0(ra)
	li	ra, -40
	add	ra, s0, ra
	sw	s8, 0(ra)
	li	ra, -24
	add	ra, s0, ra
	sw	s10, 0(ra)
	j	.spfa_entry
.spfa_entry:
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
	add	s4, a0, ra
	li	ra, 0
	j	.spfa_ID13_for_condition
.spfa_ID13_for_condition:
	lw	t0, fuckLLVM_n
	slt	t0, ra, t0
	bnez	t0, .spfa_ID13_for_suite
	j	.spfa_ID13_for_out
.spfa_ID13_for_suite:
	li	t0, 4
	mul	t0, ra, t0
	add	t1, s4, t0
	lw	t0, fuckLLVM_INF
	sw	t0, 0(t1)
	j	.spfa_ID13_for_incr
.spfa_ID13_for_incr:
	li	t0, 1
	add	ra, ra, t0
	j	.spfa_ID13_for_condition
.spfa_ID13_for_out:
	li	t0, 4
	li	ra, -28
	add	ra, s0, ra
	lw	ra, 0(ra)
	mul	ra, ra, t0
	add	t0, s4, ra
	li	ra, 0
	sw	ra, 0(t0)
	li	a0, 16
	call	malloc
	mv	s3, a0
	mv	a0, s3
	call	Queue_int
	mv	a0, s3
	li	ra, -28
	add	ra, s0, ra
	lw	a1, 0(ra)
	call	classQueue_int_push
	li	s1, 0
	li	s2, 0
	j	.spfa_ID33_while_condition
.spfa_ID33_while_condition:
	mv	a0, s3
	call	classQueue_int_size
	li	ra, 0
	xor	ra, a0, ra
	sltiu	ra, ra, 1
	xori	ra, ra, 1
	bnez	ra, .spfa_ID36_while_suite
	j	.spfa_ID36_while_out
.spfa_ID45_for_condition:
	li	ra, -1
	xor	ra, s8, ra
	sltiu	ra, ra, 1
	xori	ra, ra, 1
	bnez	ra, .spfa_ID45_for_suite
	j	.spfa_ID45_for_out
.spfa_ID45_for_suite:
	lw	ra, fuckLLVM_g
	addi	ra, ra, 0
	lw	t0, 0(ra)
	li	ra, 12
	mul	ra, s8, ra
	add	ra, t0, ra
	lw	s2, 0(ra)
	addi	ra, s2, 4
	lw	s1, 0(ra)
	li	ra, 4
	mul	ra, s1, ra
	add	ra, s4, ra
	lw	t0, 0(ra)
	li	ra, 4
	mul	ra, s6, ra
	add	ra, s4, ra
	lw	t1, 0(ra)
	addi	ra, s2, 8
	lw	ra, 0(ra)
	add	ra, t1, ra
	slt	ra, ra, t0
	bnez	ra, .spfa_ID73_if_true
	j	.spfa_ID45_for_suite_mid
.spfa_ID45_for_suite_mid:
	j	.spfa_ID73_if_out
.spfa_ID73_if_true:
	li	ra, 4
	mul	ra, s1, ra
	add	t0, s4, ra
	li	ra, 4
	mul	ra, s6, ra
	add	ra, s4, ra
	lw	t1, 0(ra)
	addi	ra, s2, 8
	lw	ra, 0(ra)
	add	ra, t1, ra
	sw	ra, 0(t0)
	mv	a0, s3
	mv	a1, s1
	call	classQueue_int_push
	j	.spfa_ID73_if_out
.spfa_ID73_if_out:
	j	.spfa_ID45_for_incr
.spfa_ID45_for_incr:
	lw	ra, fuckLLVM_g
	addi	ra, ra, 8
	lw	ra, 0(ra)
	li	t0, 4
	mul	t0, s8, t0
	add	ra, ra, t0
	lw	s8, 0(ra)
	j	.spfa_ID45_for_condition
.spfa_ID45_for_out:
	j	.spfa_ID33_while_condition
.spfa_ID36_while_suite:
	mv	a0, s3
	call	classQueue_int_pop
	mv	s6, a0
	lw	ra, fuckLLVM_g
	addi	ra, ra, 16
	lw	ra, 0(ra)
	li	t0, 4
	mul	t0, s6, t0
	add	ra, ra, t0
	lw	s8, 0(ra)
	j	.spfa_ID45_for_condition
.spfa_ID36_while_out:
	j	.spfa_return
.spfa_return:
	mv	a0, s4
	li	ra, -16
	add	ra, s0, ra
	lw	s1, 0(ra)
	li	ra, -20
	add	ra, s0, ra
	lw	s2, 0(ra)
	li	ra, -12
	add	ra, s0, ra
	lw	s3, 0(ra)
	li	ra, -36
	add	ra, s0, ra
	lw	s4, 0(ra)
	li	ra, -32
	add	ra, s0, ra
	lw	s6, 0(ra)
	li	ra, -40
	add	ra, s0, ra
	lw	s8, 0(ra)
	li	ra, -24
	add	ra, s0, ra
	lw	s10, 0(ra)
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
	li	ra, -24
	add	ra, s0, ra
	sw	s2, 0(ra)
	li	ra, -12
	add	ra, s0, ra
	sw	s5, 0(ra)
	li	ra, -20
	add	ra, s0, ra
	sw	s7, 0(ra)
	li	ra, -16
	add	ra, s0, ra
	sw	s8, 0(ra)
	j	.main_entry
.main_entry:
	call	__init
	call	init
	li	s2, 0
	j	.main_ID3_for_condition
.main_ID3_for_condition:
	lw	ra, fuckLLVM_n
	slt	ra, s2, ra
	bnez	ra, .main_ID3_for_suite
	j	.main_ID3_for_out
.main_ID3_for_suite:
	mv	a0, s2
	call	spfa
	mv	s5, a0
	li	s7, 0
	j	.main_ID10_for_condition
.main_ID10_for_condition:
	lw	ra, fuckLLVM_n
	slt	ra, s7, ra
	bnez	ra, .main_ID10_for_suite
	j	.main_ID10_for_out
.main_ID10_for_suite:
	li	ra, 4
	mul	ra, s7, ra
	add	ra, s5, ra
	lw	ra, 0(ra)
	lw	t0, fuckLLVM_INF
	xor	ra, ra, t0
	sltiu	ra, ra, 1
	bnez	ra, .main_ID19_if_true
	j	.main_ID19_if_false
.main_ID19_if_true:
	la	a0, fuckLLVM_.str.1
	call	print
	j	.main_ID19_if_out
.main_ID19_if_false:
	li	ra, 4
	mul	ra, s7, ra
	add	ra, s5, ra
	lw	a0, 0(ra)
	call	toString
	call	print
	j	.main_ID19_if_out
.main_ID19_if_out:
	la	a0, fuckLLVM_.str.2
	call	print
	j	.main_ID10_for_incr
.main_ID10_for_incr:
	li	ra, 1
	add	s7, s7, ra
	j	.main_ID10_for_condition
.main_ID10_for_out:
	la	a0, fuckLLVM_.str.3
	call	println
	j	.main_ID3_for_incr
.main_ID3_for_incr:
	li	ra, 1
	add	s2, s2, ra
	j	.main_ID3_for_condition
.main_ID3_for_out:
	j	.main_return
.main_return:
	li	a0, 0
	li	ra, -24
	add	ra, s0, ra
	lw	s2, 0(ra)
	li	ra, -12
	add	ra, s0, ra
	lw	s5, 0(ra)
	li	ra, -20
	add	ra, s0, ra
	lw	s7, 0(ra)
	li	ra, -16
	add	ra, s0, ra
	lw	s8, 0(ra)
	li	t0, 32
	add	t1, sp, t0
	lw	ra, -4(t1)
	lw	s0, -8(t1)
	add	sp, sp, t0
	ret

	.section	.rodata
	.type	fuckLLVM_.str.0,@object
fuckLLVM_.str.0:
	.asciz	"Warning: Queue_int::pop: empty queue "
	.size	fuckLLVM_.str.0, 37

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
	.type	fuckLLVM_.str.1,@object
fuckLLVM_.str.1:
	.asciz	"-1 "
	.size	fuckLLVM_.str.1, 3

	.section	.rodata
	.type	fuckLLVM_.str.2,@object
fuckLLVM_.str.2:
	.asciz	"  "
	.size	fuckLLVM_.str.2, 2

	.section	.rodata
	.type	fuckLLVM_.str.3,@object
fuckLLVM_.str.3:
	.asciz	" "
	.size	fuckLLVM_.str.3, 1

