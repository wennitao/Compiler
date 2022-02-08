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

	.globl	vector
	.p2align	2
	.type	vector,@function
vector:
.vector_assemblyInit:
	li	t0, 16
	sub	sp, sp, t0
	add	t1, sp, t0
	sw	ra, -4(t1)
	sw	s0, -8(t1)
	mv	s0, t1
	j	.vector_entry
.vector_entry:
	li	t0, -12
	add	t0, s0, t0
	sw	a0, 0(t0)
	j	.vector_return
.vector_return:
	li	t0, 16
	add	t1, sp, t0
	lw	ra, -4(t1)
	lw	s0, -8(t1)
	add	sp, sp, t0
	ret

	.globl	classvector_init
	.p2align	2
	.type	classvector_init,@function
classvector_init:
.classvector_init_assemblyInit:
	li	t0, 32
	sub	sp, sp, t0
	add	t1, sp, t0
	sw	ra, -4(t1)
	sw	s0, -8(t1)
	mv	s0, t1
	li	t1, -24
	add	t1, s0, t1
	sw	s6, 0(t1)
	li	t1, -32
	add	t1, s0, t1
	sw	s7, 0(t1)
	j	.classvector_init_entry
.classvector_init_entry:
	li	t1, -12
	add	t1, s0, t1
	sw	a0, 0(t1)
	li	t1, -12
	add	t1, s0, t1
	lw	t1, 0(t1)
	li	t2, -28
	add	t2, s0, t2
	sw	t1, 0(t2)
	li	t1, -16
	add	t1, s0, t1
	sw	a1, 0(t1)
	li	t1, -16
	add	t1, s0, t1
	lw	t2, 0(t1)
	li	t1, 0
	xor	t1, t2, t1
	sltiu	t1, t1, 1
	bnez	t1, .classvector_init_ID7_if_true
	j	.classvector_init_ID7_if_out
.classvector_init_ID7_if_true:
	j	.classvector_init_return
.classvector_init_ID7_if_out:
	li	t1, -28
	add	t1, s0, t1
	lw	t1, 0(t1)
	addi	s6, t1, 0
	li	t1, -16
	add	t1, s0, t1
	lw	t2, 0(t1)
	li	a0, -1
	li	t1, 4
	mul	t1, a0, t1
	add	t1, t2, t1
	lw	s7, 0(t1)
	li	t1, 4
	mul	t2, s7, t1
	li	t1, 4
	add	a0, t2, t1
	call	malloc
	sw	s7, 0(a0)
	li	t2, 1
	li	t1, 4
	mul	t1, t2, t1
	add	t1, a0, t1
	sw	t1, 0(s6)
	li	t1, 0
	li	t2, -20
	add	t2, s0, t2
	sw	t1, 0(t2)
	j	.classvector_init_ID21_for_condition
.classvector_init_ID21_for_condition:
	li	t1, -20
	add	t1, s0, t1
	lw	a0, 0(t1)
	li	t1, -16
	add	t1, s0, t1
	lw	t2, 0(t1)
	li	a1, -1
	li	t1, 4
	mul	t1, a1, t1
	add	t1, t2, t1
	lw	t1, 0(t1)
	slt	t1, a0, t1
	bnez	t1, .classvector_init_ID21_for_suite
	j	.classvector_init_ID21_for_out
.classvector_init_ID21_for_suite:
	li	t1, -28
	add	t1, s0, t1
	lw	t1, 0(t1)
	addi	t1, t1, 0
	lw	t2, 0(t1)
	li	t1, -20
	add	t1, s0, t1
	lw	t1, 0(t1)
	li	a0, 4
	mul	t1, t1, a0
	add	a1, t2, t1
	li	t1, -16
	add	t1, s0, t1
	lw	a0, 0(t1)
	li	t1, -20
	add	t1, s0, t1
	lw	t2, 0(t1)
	li	t1, 4
	mul	t1, t2, t1
	add	t1, a0, t1
	lw	t1, 0(t1)
	sw	t1, 0(a1)
	j	.classvector_init_ID21_for_incr
.classvector_init_ID21_for_incr:
	li	t1, -20
	add	t1, s0, t1
	lw	t1, 0(t1)
	li	t2, 1
	add	t2, t1, t2
	li	t1, -20
	add	t1, s0, t1
	sw	t2, 0(t1)
	j	.classvector_init_ID21_for_condition
.classvector_init_ID21_for_out:
	j	.classvector_init_return
.classvector_init_return:
	li	t1, -24
	add	t1, s0, t1
	lw	s6, 0(t1)
	li	t1, -32
	add	t1, s0, t1
	lw	s7, 0(t1)
	li	t0, 32
	add	t1, sp, t0
	lw	ra, -4(t1)
	lw	s0, -8(t1)
	add	sp, sp, t0
	ret

	.globl	classvector_getDim
	.p2align	2
	.type	classvector_getDim,@function
classvector_getDim:
.classvector_getDim_assemblyInit:
	li	t0, 16
	sub	sp, sp, t0
	add	t1, sp, t0
	sw	ra, -4(t1)
	sw	s0, -8(t1)
	mv	s0, t1
	j	.classvector_getDim_entry
.classvector_getDim_entry:
	li	t1, -12
	add	t1, s0, t1
	sw	a0, 0(t1)
	li	t1, -12
	add	t1, s0, t1
	lw	t2, 0(t1)
	addi	t1, t2, 0
	lw	t1, 0(t1)
	li	a0, 0
	xor	t1, t1, a0
	sltiu	t1, t1, 1
	bnez	t1, .classvector_getDim_ID6_if_true
	j	.classvector_getDim_ID6_if_out
.classvector_getDim_ID6_if_true:
	li	t2, 0
	li	t1, -16
	add	t1, s0, t1
	sw	t2, 0(t1)
	j	.classvector_getDim_return
.classvector_getDim_ID6_if_out:
	addi	t1, t2, 0
	lw	a0, 0(t1)
	li	t2, -1
	li	t1, 4
	mul	t1, t2, t1
	add	t1, a0, t1
	lw	t1, 0(t1)
	li	t2, -16
	add	t2, s0, t2
	sw	t1, 0(t2)
	j	.classvector_getDim_return
.classvector_getDim_return:
	li	t1, -16
	add	t1, s0, t1
	lw	a0, 0(t1)
	li	t0, 16
	add	t1, sp, t0
	lw	ra, -4(t1)
	lw	s0, -8(t1)
	add	sp, sp, t0
	ret

	.globl	classvector_dot
	.p2align	2
	.type	classvector_dot,@function
classvector_dot:
.classvector_dot_assemblyInit:
	li	t0, 48
	sub	sp, sp, t0
	add	t1, sp, t0
	sw	ra, -4(t1)
	sw	s0, -8(t1)
	mv	s0, t1
	li	t1, -36
	add	t1, s0, t1
	sw	s2, 0(t1)
	li	t1, -32
	add	t1, s0, t1
	sw	s6, 0(t1)
	j	.classvector_dot_entry
.classvector_dot_entry:
	li	t1, -12
	add	t1, s0, t1
	sw	a0, 0(t1)
	li	t1, -12
	add	t1, s0, t1
	lw	s6, 0(t1)
	li	t1, -16
	add	t1, s0, t1
	sw	a1, 0(t1)
	li	t1, 0
	li	t2, -24
	add	t2, s0, t2
	sw	t1, 0(t2)
	li	t2, 0
	li	t1, -28
	add	t1, s0, t1
	sw	t2, 0(t1)
	j	.classvector_dot_ID8_while_condition
.classvector_dot_ID8_while_condition:
	li	t1, -24
	add	t1, s0, t1
	lw	s2, 0(t1)
	mv	a0, s6
	call	classvector_getDim
	slt	t1, s2, a0
	bnez	t1, .classvector_dot_ID11_while_suite
	j	.classvector_dot_ID11_while_out
.classvector_dot_ID11_while_suite:
	addi	t1, s6, 0
	lw	a0, 0(t1)
	li	t1, -24
	add	t1, s0, t1
	lw	t2, 0(t1)
	li	t1, 4
	mul	t1, t2, t1
	add	t1, a0, t1
	lw	t2, 0(t1)
	li	t1, -16
	add	t1, s0, t1
	lw	t1, 0(t1)
	addi	t1, t1, 0
	lw	a1, 0(t1)
	li	t1, -24
	add	t1, s0, t1
	lw	a0, 0(t1)
	li	t1, 4
	mul	t1, a0, t1
	add	t1, a1, t1
	lw	t1, 0(t1)
	mul	t2, t2, t1
	li	t1, -28
	add	t1, s0, t1
	sw	t2, 0(t1)
	li	t1, -24
	add	t1, s0, t1
	lw	t1, 0(t1)
	li	t2, 1
	add	t1, t1, t2
	li	t2, -24
	add	t2, s0, t2
	sw	t1, 0(t2)
	j	.classvector_dot_ID8_while_condition
.classvector_dot_ID11_while_out:
	li	t1, -28
	add	t1, s0, t1
	lw	t2, 0(t1)
	li	t1, -20
	add	t1, s0, t1
	sw	t2, 0(t1)
	j	.classvector_dot_return
.classvector_dot_return:
	li	t1, -20
	add	t1, s0, t1
	lw	a0, 0(t1)
	li	t1, -36
	add	t1, s0, t1
	lw	s2, 0(t1)
	li	t1, -32
	add	t1, s0, t1
	lw	s6, 0(t1)
	li	t0, 48
	add	t1, sp, t0
	lw	ra, -4(t1)
	lw	s0, -8(t1)
	add	sp, sp, t0
	ret

	.globl	classvector_scalarInPlaceMultiply
	.p2align	2
	.type	classvector_scalarInPlaceMultiply,@function
classvector_scalarInPlaceMultiply:
.classvector_scalarInPlaceMultiply_assemblyInit:
	li	t0, 32
	sub	sp, sp, t0
	add	t1, sp, t0
	sw	ra, -4(t1)
	sw	s0, -8(t1)
	mv	s0, t1
	li	t1, -32
	add	t1, s0, t1
	sw	s1, 0(t1)
	li	t1, -28
	add	t1, s0, t1
	sw	s2, 0(t1)
	j	.classvector_scalarInPlaceMultiply_entry
.classvector_scalarInPlaceMultiply_entry:
	li	t1, -12
	add	t1, s0, t1
	sw	a0, 0(t1)
	li	t1, -12
	add	t1, s0, t1
	lw	s1, 0(t1)
	li	t1, -16
	add	t1, s0, t1
	sw	a1, 0(t1)
	addi	t1, s1, 0
	lw	t2, 0(t1)
	li	t1, 0
	xor	t1, t2, t1
	sltiu	t1, t1, 1
	bnez	t1, .classvector_scalarInPlaceMultiply_ID8_if_true
	j	.classvector_scalarInPlaceMultiply_ID8_if_out
.classvector_scalarInPlaceMultiply_ID8_if_true:
	li	t2, 0
	li	t1, -20
	add	t1, s0, t1
	sw	t2, 0(t1)
	j	.classvector_scalarInPlaceMultiply_return
.classvector_scalarInPlaceMultiply_ID8_if_out:
	li	t2, 0
	li	t1, -24
	add	t1, s0, t1
	sw	t2, 0(t1)
	j	.classvector_scalarInPlaceMultiply_ID9_for_condition
.classvector_scalarInPlaceMultiply_ID9_for_condition:
	li	t1, -24
	add	t1, s0, t1
	lw	s2, 0(t1)
	mv	a0, s1
	call	classvector_getDim
	slt	t1, s2, a0
	bnez	t1, .classvector_scalarInPlaceMultiply_ID9_for_suite
	j	.classvector_scalarInPlaceMultiply_ID9_for_out
.classvector_scalarInPlaceMultiply_ID9_for_suite:
	addi	t1, s1, 0
	lw	a0, 0(t1)
	li	t1, -24
	add	t1, s0, t1
	lw	t1, 0(t1)
	li	t2, 4
	mul	t1, t1, t2
	add	a1, a0, t1
	li	t1, -16
	add	t1, s0, t1
	lw	a0, 0(t1)
	addi	t1, s1, 0
	lw	a2, 0(t1)
	li	t1, -24
	add	t1, s0, t1
	lw	t2, 0(t1)
	li	t1, 4
	mul	t1, t2, t1
	add	t1, a2, t1
	lw	t1, 0(t1)
	mul	t1, a0, t1
	sw	t1, 0(a1)
	j	.classvector_scalarInPlaceMultiply_ID9_for_incr
.classvector_scalarInPlaceMultiply_ID9_for_incr:
	li	t1, -24
	add	t1, s0, t1
	lw	t2, 0(t1)
	li	t1, 1
	add	t1, t2, t1
	li	t2, -24
	add	t2, s0, t2
	sw	t1, 0(t2)
	j	.classvector_scalarInPlaceMultiply_ID9_for_condition
.classvector_scalarInPlaceMultiply_ID9_for_out:
	li	t1, -20
	add	t1, s0, t1
	sw	s1, 0(t1)
	j	.classvector_scalarInPlaceMultiply_return
.classvector_scalarInPlaceMultiply_return:
	li	t1, -20
	add	t1, s0, t1
	lw	a0, 0(t1)
	li	t1, -32
	add	t1, s0, t1
	lw	s1, 0(t1)
	li	t1, -28
	add	t1, s0, t1
	lw	s2, 0(t1)
	li	t0, 32
	add	t1, sp, t0
	lw	ra, -4(t1)
	lw	s0, -8(t1)
	add	sp, sp, t0
	ret

	.globl	classvector_add
	.p2align	2
	.type	classvector_add,@function
classvector_add:
.classvector_add_assemblyInit:
	li	t0, 48
	sub	sp, sp, t0
	add	t1, sp, t0
	sw	ra, -4(t1)
	sw	s0, -8(t1)
	mv	s0, t1
	li	t1, -40
	add	t1, s0, t1
	sw	s7, 0(t1)
	li	t1, -32
	add	t1, s0, t1
	sw	s8, 0(t1)
	li	t1, -36
	add	t1, s0, t1
	sw	s9, 0(t1)
	j	.classvector_add_entry
.classvector_add_entry:
	li	t1, -12
	add	t1, s0, t1
	sw	a0, 0(t1)
	li	t1, -12
	add	t1, s0, t1
	lw	s8, 0(t1)
	li	t1, -16
	add	t1, s0, t1
	sw	a1, 0(t1)
	mv	a0, s8
	call	classvector_getDim
	mv	s7, a0
	li	t1, -16
	add	t1, s0, t1
	lw	a0, 0(t1)
	call	classvector_getDim
	xor	a0, s7, a0
	sltiu	a0, a0, 1
	xori	a0, a0, 1
	li	t2, 1
	mv	t1, t2
	bnez	a0, .classvector_add_ID9_OrOr_out
	mv	t1, t2
	j	.classvector_add_ID9_OrOr_false
.classvector_add_ID9_OrOr_false:
	mv	a0, s8
	call	classvector_getDim
	li	t1, 0
	xor	t1, a0, t1
	sltiu	t1, t1, 1
	j	.classvector_add_ID9_OrOr_out
.classvector_add_ID9_OrOr_out:
	bnez	t1, .classvector_add_ID12_if_true
	j	.classvector_add_ID12_if_out
.classvector_add_ID12_if_true:
	li	t1, 0
	li	t2, -20
	add	t2, s0, t2
	sw	t1, 0(t2)
	j	.classvector_add_return
.classvector_add_ID12_if_out:
	li	a0, 8
	call	malloc
	mv	s7, a0
	mv	a0, s7
	call	vector
	li	t1, -24
	add	t1, s0, t1
	sw	s7, 0(t1)
	li	t1, -24
	add	t1, s0, t1
	lw	t1, 0(t1)
	addi	s9, t1, 0
	mv	a0, s8
	call	classvector_getDim
	mv	s7, a0
	li	t1, 4
	mul	t2, s7, t1
	li	t1, 4
	add	a0, t2, t1
	call	malloc
	sw	s7, 0(a0)
	li	t1, 1
	li	t2, 4
	mul	t1, t1, t2
	add	t1, a0, t1
	sw	t1, 0(s9)
	li	t2, 0
	li	t1, -28
	add	t1, s0, t1
	sw	t2, 0(t1)
	j	.classvector_add_ID28_for_condition
.classvector_add_ID28_for_condition:
	li	t1, -28
	add	t1, s0, t1
	lw	s7, 0(t1)
	mv	a0, s8
	call	classvector_getDim
	slt	t1, s7, a0
	bnez	t1, .classvector_add_ID28_for_suite
	j	.classvector_add_ID28_for_out
.classvector_add_ID28_for_suite:
	li	t1, -24
	add	t1, s0, t1
	lw	t1, 0(t1)
	addi	t1, t1, 0
	lw	t1, 0(t1)
	li	t2, -28
	add	t2, s0, t2
	lw	t2, 0(t2)
	li	a0, 4
	mul	t2, t2, a0
	add	t2, t1, t2
	addi	t1, s8, 0
	lw	a0, 0(t1)
	li	t1, -28
	add	t1, s0, t1
	lw	a1, 0(t1)
	li	t1, 4
	mul	t1, a1, t1
	add	t1, a0, t1
	lw	a0, 0(t1)
	li	t1, -16
	add	t1, s0, t1
	lw	t1, 0(t1)
	addi	t1, t1, 0
	lw	a1, 0(t1)
	li	t1, -28
	add	t1, s0, t1
	lw	a2, 0(t1)
	li	t1, 4
	mul	t1, a2, t1
	add	t1, a1, t1
	lw	t1, 0(t1)
	add	t1, a0, t1
	sw	t1, 0(t2)
	j	.classvector_add_ID28_for_incr
.classvector_add_ID28_for_incr:
	li	t1, -28
	add	t1, s0, t1
	lw	t1, 0(t1)
	li	t2, 1
	add	t1, t1, t2
	li	t2, -28
	add	t2, s0, t2
	sw	t1, 0(t2)
	j	.classvector_add_ID28_for_condition
.classvector_add_ID28_for_out:
	li	t1, -24
	add	t1, s0, t1
	lw	t1, 0(t1)
	li	t2, -20
	add	t2, s0, t2
	sw	t1, 0(t2)
	j	.classvector_add_return
.classvector_add_return:
	li	t1, -20
	add	t1, s0, t1
	lw	a0, 0(t1)
	li	t1, -40
	add	t1, s0, t1
	lw	s7, 0(t1)
	li	t1, -32
	add	t1, s0, t1
	lw	s8, 0(t1)
	li	t1, -36
	add	t1, s0, t1
	lw	s9, 0(t1)
	li	t0, 48
	add	t1, sp, t0
	lw	ra, -4(t1)
	lw	s0, -8(t1)
	add	sp, sp, t0
	ret

	.globl	classvector_set
	.p2align	2
	.type	classvector_set,@function
classvector_set:
.classvector_set_assemblyInit:
	li	t0, 32
	sub	sp, sp, t0
	add	t1, sp, t0
	sw	ra, -4(t1)
	sw	s0, -8(t1)
	mv	s0, t1
	j	.classvector_set_entry
.classvector_set_entry:
	li	t1, -12
	add	t1, s0, t1
	sw	a0, 0(t1)
	li	t1, -12
	add	t1, s0, t1
	lw	t2, 0(t1)
	li	t1, -28
	add	t1, s0, t1
	sw	t2, 0(t1)
	li	t1, -16
	add	t1, s0, t1
	sw	a1, 0(t1)
	li	t1, -20
	add	t1, s0, t1
	sw	a2, 0(t1)
	li	t1, -28
	add	t1, s0, t1
	lw	a0, 0(t1)
	call	classvector_getDim
	li	t1, -16
	add	t1, s0, t1
	lw	t1, 0(t1)
	slt	t1, a0, t1
	bnez	t1, .classvector_set_ID10_if_true
	j	.classvector_set_ID10_if_out
.classvector_set_ID10_if_true:
	li	t2, 0
	li	t1, -24
	add	t1, s0, t1
	sb	t2, 0(t1)
	j	.classvector_set_return
.classvector_set_ID10_if_out:
	li	t1, -28
	add	t1, s0, t1
	lw	t1, 0(t1)
	addi	t1, t1, 0
	lw	a0, 0(t1)
	li	t1, -16
	add	t1, s0, t1
	lw	t1, 0(t1)
	li	t2, 4
	mul	t1, t1, t2
	add	t2, a0, t1
	li	t1, -20
	add	t1, s0, t1
	lw	t1, 0(t1)
	sw	t1, 0(t2)
	li	t1, 1
	li	t2, -24
	add	t2, s0, t2
	sb	t1, 0(t2)
	j	.classvector_set_return
.classvector_set_return:
	li	t1, -24
	add	t1, s0, t1
	lb	a0, 0(t1)
	li	t0, 32
	add	t1, sp, t0
	lw	ra, -4(t1)
	lw	s0, -8(t1)
	add	sp, sp, t0
	ret

	.globl	classvector_tostring
	.p2align	2
	.type	classvector_tostring,@function
classvector_tostring:
.classvector_tostring_assemblyInit:
	li	t0, 32
	sub	sp, sp, t0
	add	t1, sp, t0
	sw	ra, -4(t1)
	sw	s0, -8(t1)
	mv	s0, t1
	li	t1, -32
	add	t1, s0, t1
	sw	s5, 0(t1)
	j	.classvector_tostring_entry
.classvector_tostring_entry:
	li	t1, -12
	add	t1, s0, t1
	sw	a0, 0(t1)
	li	t1, -12
	add	t1, s0, t1
	lw	t2, 0(t1)
	li	t1, -28
	add	t1, s0, t1
	sw	t2, 0(t1)
	la	t1, fuckLLVM_.str.0
	li	t2, -20
	add	t2, s0, t2
	sw	t1, 0(t2)
	li	t1, -28
	add	t1, s0, t1
	lw	a0, 0(t1)
	call	classvector_getDim
	li	t1, 0
	slt	t1, t1, a0
	bnez	t1, .classvector_tostring_ID7_if_true
	j	.classvector_tostring_ID7_if_out
.classvector_tostring_ID7_if_true:
	li	t1, -20
	add	t1, s0, t1
	lw	s5, 0(t1)
	li	t1, -28
	add	t1, s0, t1
	lw	t1, 0(t1)
	addi	t1, t1, 0
	lw	t2, 0(t1)
	li	t1, 0
	li	a0, 4
	mul	t1, t1, a0
	add	t1, t2, t1
	lw	a0, 0(t1)
	call	toString
	mv	a1, a0
	mv	a0, s5
	call	string_add
	li	t1, -20
	add	t1, s0, t1
	sw	a0, 0(t1)
	j	.classvector_tostring_ID7_if_out
.classvector_tostring_ID7_if_out:
	li	t1, 1
	li	t2, -24
	add	t2, s0, t2
	sw	t1, 0(t2)
	j	.classvector_tostring_ID18_for_condition
.classvector_tostring_ID18_for_condition:
	li	t1, -24
	add	t1, s0, t1
	lw	s5, 0(t1)
	li	t1, -28
	add	t1, s0, t1
	lw	a0, 0(t1)
	call	classvector_getDim
	slt	t1, s5, a0
	bnez	t1, .classvector_tostring_ID18_for_suite
	j	.classvector_tostring_ID18_for_out
.classvector_tostring_ID18_for_suite:
	li	t1, -20
	add	t1, s0, t1
	lw	a0, 0(t1)
	la	a1, fuckLLVM_.str.1
	call	string_add
	mv	s5, a0
	li	t1, -28
	add	t1, s0, t1
	lw	t1, 0(t1)
	addi	t1, t1, 0
	lw	t2, 0(t1)
	li	t1, -24
	add	t1, s0, t1
	lw	a0, 0(t1)
	li	t1, 4
	mul	t1, a0, t1
	add	t1, t2, t1
	lw	a0, 0(t1)
	call	toString
	mv	a1, a0
	mv	a0, s5
	call	string_add
	li	t1, -20
	add	t1, s0, t1
	sw	a0, 0(t1)
	j	.classvector_tostring_ID18_for_incr
.classvector_tostring_ID18_for_incr:
	li	t1, -24
	add	t1, s0, t1
	lw	t2, 0(t1)
	li	t1, 1
	add	t2, t2, t1
	li	t1, -24
	add	t1, s0, t1
	sw	t2, 0(t1)
	j	.classvector_tostring_ID18_for_condition
.classvector_tostring_ID18_for_out:
	li	t1, -20
	add	t1, s0, t1
	lw	a0, 0(t1)
	la	a1, fuckLLVM_.str.2
	call	string_add
	li	t1, -20
	add	t1, s0, t1
	sw	a0, 0(t1)
	li	t1, -20
	add	t1, s0, t1
	lw	t1, 0(t1)
	li	t2, -16
	add	t2, s0, t2
	sw	t1, 0(t2)
	j	.classvector_tostring_return
.classvector_tostring_return:
	li	t1, -16
	add	t1, s0, t1
	lw	a0, 0(t1)
	li	t1, -32
	add	t1, s0, t1
	lw	s5, 0(t1)
	li	t0, 32
	add	t1, sp, t0
	lw	ra, -4(t1)
	lw	s0, -8(t1)
	add	sp, sp, t0
	ret

	.globl	classvector_copy
	.p2align	2
	.type	classvector_copy,@function
classvector_copy:
.classvector_copy_assemblyInit:
	li	t0, 48
	sub	sp, sp, t0
	add	t1, sp, t0
	sw	ra, -4(t1)
	sw	s0, -8(t1)
	mv	s0, t1
	li	t1, -36
	add	t1, s0, t1
	sw	s5, 0(t1)
	li	t1, -32
	add	t1, s0, t1
	sw	s6, 0(t1)
	j	.classvector_copy_entry
.classvector_copy_entry:
	li	t1, -12
	add	t1, s0, t1
	sw	a0, 0(t1)
	li	t1, -12
	add	t1, s0, t1
	lw	s5, 0(t1)
	li	t1, -16
	add	t1, s0, t1
	sw	a1, 0(t1)
	li	t1, -16
	add	t1, s0, t1
	lw	t2, 0(t1)
	li	t1, 0
	xor	t1, t2, t1
	sltiu	t1, t1, 1
	bnez	t1, .classvector_copy_ID7_if_true
	j	.classvector_copy_ID7_if_out
.classvector_copy_ID7_if_true:
	li	t1, 0
	li	t2, -20
	add	t2, s0, t2
	sb	t1, 0(t2)
	j	.classvector_copy_return
.classvector_copy_ID7_if_out:
	li	t1, -16
	add	t1, s0, t1
	lw	a0, 0(t1)
	call	classvector_getDim
	li	t1, 0
	xor	t1, a0, t1
	sltiu	t1, t1, 1
	bnez	t1, .classvector_copy_ID10_if_true
	j	.classvector_copy_ID10_if_false
.classvector_copy_ID23_for_condition:
	li	t1, -24
	add	t1, s0, t1
	lw	s6, 0(t1)
	mv	a0, s5
	call	classvector_getDim
	slt	t1, s6, a0
	bnez	t1, .classvector_copy_ID23_for_suite
	j	.classvector_copy_ID23_for_out
.classvector_copy_ID23_for_suite:
	addi	t1, s5, 0
	lw	a0, 0(t1)
	li	t1, -24
	add	t1, s0, t1
	lw	t2, 0(t1)
	li	t1, 4
	mul	t1, t2, t1
	add	a1, a0, t1
	li	t1, -16
	add	t1, s0, t1
	lw	t1, 0(t1)
	addi	t1, t1, 0
	lw	a0, 0(t1)
	li	t1, -24
	add	t1, s0, t1
	lw	t2, 0(t1)
	li	t1, 4
	mul	t1, t2, t1
	add	t1, a0, t1
	lw	t1, 0(t1)
	sw	t1, 0(a1)
	j	.classvector_copy_ID23_for_incr
.classvector_copy_ID23_for_incr:
	li	t1, -24
	add	t1, s0, t1
	lw	t1, 0(t1)
	li	t2, 1
	add	t2, t1, t2
	li	t1, -24
	add	t1, s0, t1
	sw	t2, 0(t1)
	j	.classvector_copy_ID23_for_condition
.classvector_copy_ID23_for_out:
	j	.classvector_copy_ID10_if_out
.classvector_copy_ID10_if_true:
	addi	t2, s5, 0
	li	t1, 0
	sw	t1, 0(t2)
	j	.classvector_copy_ID10_if_out
.classvector_copy_ID10_if_false:
	addi	t2, s5, 0
	li	t1, -28
	add	t1, s0, t1
	sw	t2, 0(t1)
	li	t1, -16
	add	t1, s0, t1
	lw	a0, 0(t1)
	call	classvector_getDim
	mv	s6, a0
	li	t1, 4
	mul	t1, s6, t1
	li	t2, 4
	add	a0, t1, t2
	call	malloc
	sw	s6, 0(a0)
	li	t2, 1
	li	t1, 4
	mul	t1, t2, t1
	add	t2, a0, t1
	li	t1, -28
	add	t1, s0, t1
	lw	t1, 0(t1)
	sw	t2, 0(t1)
	li	t1, 0
	li	t2, -24
	add	t2, s0, t2
	sw	t1, 0(t2)
	j	.classvector_copy_ID23_for_condition
.classvector_copy_ID10_if_out:
	li	t1, 1
	li	t2, -20
	add	t2, s0, t2
	sb	t1, 0(t2)
	j	.classvector_copy_return
.classvector_copy_return:
	li	t1, -20
	add	t1, s0, t1
	lb	a0, 0(t1)
	li	t1, -36
	add	t1, s0, t1
	lw	s5, 0(t1)
	li	t1, -32
	add	t1, s0, t1
	lw	s6, 0(t1)
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
	li	t1, -32
	add	t1, s0, t1
	sw	s1, 0(t1)
	j	.main_entry
.main_entry:
	call	__init
	li	t2, 0
	li	t1, -12
	add	t1, s0, t1
	sw	t2, 0(t1)
	li	a0, 8
	call	malloc
	mv	s1, a0
	mv	a0, s1
	call	vector
	li	t1, -16
	add	t1, s0, t1
	sw	s1, 0(t1)
	li	t1, 10
	li	t2, 4
	mul	t1, t1, t2
	li	t2, 4
	add	a0, t1, t2
	call	malloc
	li	t1, 10
	sw	t1, 0(a0)
	li	t1, 1
	li	t2, 4
	mul	t1, t1, t2
	add	t2, a0, t1
	li	t1, -20
	add	t1, s0, t1
	sw	t2, 0(t1)
	li	t2, 0
	li	t1, -24
	add	t1, s0, t1
	sw	t2, 0(t1)
	j	.main_ID13_for_condition
.main_ID13_for_condition:
	li	t1, -24
	add	t1, s0, t1
	lw	t1, 0(t1)
	li	t2, 10
	slt	t1, t1, t2
	bnez	t1, .main_ID13_for_suite
	j	.main_ID13_for_out
.main_ID13_for_suite:
	li	t1, -20
	add	t1, s0, t1
	lw	s1, 0(t1)
	li	t1, -24
	add	t1, s0, t1
	lw	t2, 0(t1)
	li	t1, 4
	mul	t1, t2, t1
	add	s1, s1, t1
	li	t1, -24
	add	t1, s0, t1
	lw	t1, 0(t1)
	li	t2, 9
	sub	t1, t2, t1
	sw	t1, 0(s1)
	j	.main_ID13_for_incr
.main_ID13_for_incr:
	li	t1, -24
	add	t1, s0, t1
	lw	t2, 0(t1)
	li	t1, 1
	add	t1, t2, t1
	li	t2, -24
	add	t2, s0, t2
	sw	t1, 0(t2)
	j	.main_ID13_for_condition
.main_ID13_for_out:
	li	t1, -16
	add	t1, s0, t1
	lw	a0, 0(t1)
	li	t1, -20
	add	t1, s0, t1
	lw	a1, 0(t1)
	call	classvector_init
	la	a0, fuckLLVM_.str.3
	call	print
	li	t1, -16
	add	t1, s0, t1
	lw	a0, 0(t1)
	call	classvector_tostring
	call	println
	li	a0, 8
	call	malloc
	mv	s1, a0
	mv	a0, s1
	call	vector
	li	t1, -28
	add	t1, s0, t1
	sw	s1, 0(t1)
	li	t1, -28
	add	t1, s0, t1
	lw	a0, 0(t1)
	li	t1, -16
	add	t1, s0, t1
	lw	a1, 0(t1)
	call	classvector_copy
	li	t1, -28
	add	t1, s0, t1
	lw	a0, 0(t1)
	li	a1, 3
	li	a2, 817
	call	classvector_set
	bnez	a0, .main_ID43_if_true
	j	.main_ID43_if_out
.main_ID43_if_true:
	la	a0, fuckLLVM_.str.4
	call	println
	j	.main_ID43_if_out
.main_ID43_if_out:
	la	a0, fuckLLVM_.str.5
	call	print
	li	t1, -28
	add	t1, s0, t1
	lw	a0, 0(t1)
	call	classvector_tostring
	call	println
	la	a0, fuckLLVM_.str.6
	call	print
	li	t1, -16
	add	t1, s0, t1
	lw	a0, 0(t1)
	li	t1, -28
	add	t1, s0, t1
	lw	a1, 0(t1)
	call	classvector_add
	call	classvector_tostring
	call	println
	la	a0, fuckLLVM_.str.7
	call	print
	li	t1, -16
	add	t1, s0, t1
	lw	a0, 0(t1)
	li	t1, -28
	add	t1, s0, t1
	lw	a1, 0(t1)
	call	classvector_dot
	call	toString
	call	println
	la	a0, fuckLLVM_.str.8
	call	print
	li	t1, -28
	add	t1, s0, t1
	lw	a0, 0(t1)
	li	t2, 1
	li	t1, 3
	sll	a1, t2, t1
	call	classvector_scalarInPlaceMultiply
	call	classvector_tostring
	call	println
	li	t2, 0
	li	t1, -12
	add	t1, s0, t1
	sw	t2, 0(t1)
	j	.main_return
.main_return:
	li	t1, -12
	add	t1, s0, t1
	lw	a0, 0(t1)
	li	t1, -32
	add	t1, s0, t1
	lw	s1, 0(t1)
	li	t0, 32
	add	t1, sp, t0
	lw	ra, -4(t1)
	lw	s0, -8(t1)
	add	sp, sp, t0
	ret

	.section	.rodata
	.type	fuckLLVM_.str.0,@object
fuckLLVM_.str.0:
	.asciz	"(  "
	.size	fuckLLVM_.str.0, 3

	.section	.rodata
	.type	fuckLLVM_.str.1,@object
fuckLLVM_.str.1:
	.asciz	",  "
	.size	fuckLLVM_.str.1, 3

	.section	.rodata
	.type	fuckLLVM_.str.2,@object
fuckLLVM_.str.2:
	.asciz	" ) "
	.size	fuckLLVM_.str.2, 3

	.section	.rodata
	.type	fuckLLVM_.str.3,@object
fuckLLVM_.str.3:
	.asciz	"vector x:  "
	.size	fuckLLVM_.str.3, 11

	.section	.rodata
	.type	fuckLLVM_.str.4,@object
fuckLLVM_.str.4:
	.asciz	"excited! "
	.size	fuckLLVM_.str.4, 9

	.section	.rodata
	.type	fuckLLVM_.str.5,@object
fuckLLVM_.str.5:
	.asciz	"vector y:  "
	.size	fuckLLVM_.str.5, 11

	.section	.rodata
	.type	fuckLLVM_.str.6,@object
fuckLLVM_.str.6:
	.asciz	"x + y:  "
	.size	fuckLLVM_.str.6, 8

	.section	.rodata
	.type	fuckLLVM_.str.7,@object
fuckLLVM_.str.7:
	.asciz	"x * y:  "
	.size	fuckLLVM_.str.7, 8

	.section	.rodata
	.type	fuckLLVM_.str.8,@object
fuckLLVM_.str.8:
	.asciz	"(1 << 3) * y:  "
	.size	fuckLLVM_.str.8, 15

