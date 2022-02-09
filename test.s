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
.vector_entry:
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
	sw	s1, -28(s0)
	sw	s2, -12(s0)
	sw	s4, -24(s0)
	sw	s8, -20(s0)
	sw	s9, -16(s0)
.classvector_init_alloca:
	j	.classvector_init_entry
.classvector_init_entry:
	mv	s2, a0
	mv	s8, a1
	mv	t0, s8
	li	t1, 0
	xor	t0, t0, t1
	sltiu	t0, t0, 1
	bnez	t0, .classvector_init_ID7_if_true
	j	.classvector_init_ID7_if_out
.classvector_init_ID7_if_true:
	j	.classvector_init_return
.classvector_init_ID7_if_out:
	addi	s1, s2, 0
	mv	t0, s8
	addi	t1, zero, -1
	addi	t2, zero, 4
	mul	t1, t1, t2
	add	t0, t0, t1
	lw	s4, 0(t0)
	addi	t0, zero, 4
	mul	t1, s4, t0
	addi	t0, zero, 4
	add	a0, t1, t0
	call	malloc
	sw	s4, 0(a0)
	addi	t0, zero, 1
	addi	t1, zero, 4
	mul	t0, t0, t1
	add	t0, a0, t0
	sw	t0, 0(s1)
	addi	t1, zero, 0
	j	.classvector_init_ID21_for_condition
.classvector_init_ID21_for_condition:
	mv	t0, s8
	addi	a0, zero, -1
	addi	t2, zero, 4
	mul	t2, a0, t2
	add	t0, t0, t2
	lw	t0, 0(t0)
	slt	t0, t1, t0
	bnez	t0, .classvector_init_ID21_for_suite
	j	.classvector_init_ID21_for_out
.classvector_init_ID21_for_suite:
	addi	t0, s2, 0
	lw	t0, 0(t0)
	addi	t2, zero, 4
	mul	t2, t1, t2
	add	a0, t0, t2
	mv	t0, s8
	addi	t2, zero, 4
	mul	t2, t1, t2
	add	t0, t0, t2
	lw	t0, 0(t0)
	sw	t0, 0(a0)
	j	.classvector_init_ID21_for_incr
.classvector_init_ID21_for_incr:
	addi	t0, zero, 1
	add	t1, t1, t0
	j	.classvector_init_ID21_for_condition
.classvector_init_ID21_for_out:
	j	.classvector_init_return
.classvector_init_return:
	lw	s1, -28(s0)
	lw	s2, -12(s0)
	lw	s4, -24(s0)
	lw	s8, -20(s0)
	lw	s9, -16(s0)
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
.classvector_getDim_alloca:
	j	.classvector_getDim_entry
.classvector_getDim_entry:
	addi	t0, a0, 0
	lw	t1, 0(t0)
	li	t0, 0
	xor	t0, t1, t0
	sltiu	t0, t0, 1
	bnez	t0, .classvector_getDim_ID6_if_true
	j	.classvector_getDim_ID6_if_out
.classvector_getDim_ID6_if_true:
	addi	a0, zero, 0
	j	.classvector_getDim_return
.classvector_getDim_ID6_if_out:
	addi	t0, a0, 0
	lw	t2, 0(t0)
	addi	t1, zero, -1
	addi	t0, zero, 4
	mul	t0, t1, t0
	add	t0, t2, t0
	lw	a0, 0(t0)
	j	.classvector_getDim_return
.classvector_getDim_return:
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
	li	t0, 32
	sub	sp, sp, t0
	add	t1, sp, t0
	sw	ra, -4(t1)
	sw	s0, -8(t1)
	mv	s0, t1
	sw	s2, -16(s0)
	sw	s4, -24(s0)
	sw	s5, -28(s0)
	sw	s7, -20(s0)
	sw	s8, -12(s0)
.classvector_dot_alloca:
	j	.classvector_dot_entry
.classvector_dot_entry:
	mv	s5, a0
	mv	s4, a1
	addi	t0, zero, 0
	mv	s2, t0
	addi	t0, zero, 0
	mv	s7, t0
	j	.classvector_dot_ID8_while_condition
.classvector_dot_ID8_while_condition:
	mv	a0, s5
	call	classvector_getDim
	slt	t0, s2, a0
	bnez	t0, .classvector_dot_ID11_while_suite
	j	.classvector_dot_ID11_while_out
.classvector_dot_ID11_while_suite:
	addi	t0, s5, 0
	lw	t2, 0(t0)
	mv	t0, s2
	addi	t1, zero, 4
	mul	t0, t0, t1
	add	t0, t2, t0
	lw	t2, 0(t0)
	mv	t0, s4
	addi	t0, t0, 0
	lw	a0, 0(t0)
	mv	t0, s2
	addi	t1, zero, 4
	mul	t0, t0, t1
	add	t0, a0, t0
	lw	t0, 0(t0)
	mul	t0, t2, t0
	mv	s7, t0
	mv	t0, s2
	addi	t1, zero, 1
	add	t0, t0, t1
	mv	s2, t0
	j	.classvector_dot_ID8_while_condition
.classvector_dot_ID11_while_out:
	mv	a0, s7
	j	.classvector_dot_return
.classvector_dot_return:
	lw	s2, -16(s0)
	lw	s4, -24(s0)
	lw	s5, -28(s0)
	lw	s7, -20(s0)
	lw	s8, -12(s0)
	li	t0, 32
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
	sw	s5, -16(s0)
	sw	s6, -12(s0)
	sw	s7, -20(s0)
.classvector_scalarInPlaceMultiply_alloca:
	j	.classvector_scalarInPlaceMultiply_entry
.classvector_scalarInPlaceMultiply_entry:
	mv	s7, a0
	mv	s5, a1
	addi	t0, s7, 0
	lw	t1, 0(t0)
	li	t0, 0
	xor	t0, t1, t0
	sltiu	t0, t0, 1
	bnez	t0, .classvector_scalarInPlaceMultiply_ID8_if_true
	j	.classvector_scalarInPlaceMultiply_ID8_if_out
.classvector_scalarInPlaceMultiply_ID8_if_true:
	li	a0, 0
	j	.classvector_scalarInPlaceMultiply_return
.classvector_scalarInPlaceMultiply_ID8_if_out:
	addi	t0, zero, 0
	mv	s6, t0
	j	.classvector_scalarInPlaceMultiply_ID9_for_condition
.classvector_scalarInPlaceMultiply_ID9_for_condition:
	mv	a0, s7
	call	classvector_getDim
	slt	t0, s6, a0
	bnez	t0, .classvector_scalarInPlaceMultiply_ID9_for_suite
	j	.classvector_scalarInPlaceMultiply_ID9_for_out
.classvector_scalarInPlaceMultiply_ID9_for_suite:
	addi	t0, s7, 0
	lw	t1, 0(t0)
	mv	t0, s6
	addi	t2, zero, 4
	mul	t0, t0, t2
	add	t2, t1, t0
	mv	t1, s5
	addi	t0, s7, 0
	lw	a0, 0(t0)
	mv	t0, s6
	addi	a1, zero, 4
	mul	t0, t0, a1
	add	t0, a0, t0
	lw	t0, 0(t0)
	mul	t0, t1, t0
	sw	t0, 0(t2)
	j	.classvector_scalarInPlaceMultiply_ID9_for_incr
.classvector_scalarInPlaceMultiply_ID9_for_incr:
	mv	t0, s6
	addi	t1, zero, 1
	add	t0, t0, t1
	mv	s6, t0
	j	.classvector_scalarInPlaceMultiply_ID9_for_condition
.classvector_scalarInPlaceMultiply_ID9_for_out:
	mv	a0, s7
	j	.classvector_scalarInPlaceMultiply_return
.classvector_scalarInPlaceMultiply_return:
	lw	s5, -16(s0)
	lw	s6, -12(s0)
	lw	s7, -20(s0)
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
	li	t0, 32
	sub	sp, sp, t0
	add	t1, sp, t0
	sw	ra, -4(t1)
	sw	s0, -8(t1)
	mv	s0, t1
	sw	s1, -12(s0)
	mv	t0, s5
	sw	t0, -24(s0)
	mv	t0, s6
	sw	t0, -32(s0)
	mv	t0, s7
	sw	t0, -16(s0)
	mv	t0, s8
	sw	t0, -20(s0)
	mv	t0, s9
	sw	t0, -28(s0)
.classvector_add_alloca:
	j	.classvector_add_entry
.classvector_add_entry:
	mv	s5, a0
	mv	s8, a1
	mv	a0, s5
	call	classvector_getDim
	mv	s1, a0
	mv	a0, s8
	call	classvector_getDim
	xor	t1, s1, a0
	sltiu	t1, t1, 1
	xori	t1, t1, 1
	mv	t0, s6
	bnez	t1, .classvector_add_ID9_OrOr_out
	mv	t0, s6
	j	.classvector_add_ID9_OrOr_false
	addi	s6, zero, 1
.classvector_add_ID9_OrOr_false:
	mv	a0, s5
	call	classvector_getDim
	addi	t0, zero, 0
	xor	t0, a0, t0
	sltiu	t0, t0, 1
	j	.classvector_add_ID9_OrOr_out
.classvector_add_ID9_OrOr_out:
	bnez	t0, .classvector_add_ID12_if_true
	j	.classvector_add_ID12_if_out
.classvector_add_ID12_if_true:
	li	a0, 0
	j	.classvector_add_return
.classvector_add_ID12_if_out:
	addi	a0, zero, 8
	call	malloc
	mv	s1, a0
	mv	a0, s1
	call	vector
	mv	t0, s1
	addi	s7, t0, 0
	mv	a0, s5
	call	classvector_getDim
	mv	s6, a0
	addi	t0, zero, 4
	mul	t1, s6, t0
	addi	t0, zero, 4
	add	a0, t1, t0
	call	malloc
	sw	s6, 0(a0)
	addi	t1, zero, 1
	addi	t0, zero, 4
	mul	t0, t1, t0
	add	t0, a0, t0
	sw	t0, 0(s7)
	addi	s6, zero, 0
	j	.classvector_add_ID28_for_condition
.classvector_add_ID28_for_condition:
	mv	a0, s5
	call	classvector_getDim
	slt	t0, s6, a0
	bnez	t0, .classvector_add_ID28_for_suite
	j	.classvector_add_ID28_for_out
.classvector_add_ID28_for_suite:
	mv	t0, s1
	addi	t0, t0, 0
	lw	t1, 0(t0)
	addi	t0, zero, 4
	mul	t0, s6, t0
	add	a0, t1, t0
	addi	t0, s5, 0
	lw	t1, 0(t0)
	addi	t0, zero, 4
	mul	t0, s6, t0
	add	t0, t1, t0
	lw	t2, 0(t0)
	mv	t0, s8
	addi	t0, t0, 0
	lw	t0, 0(t0)
	addi	t1, zero, 4
	mul	t1, s6, t1
	add	t0, t0, t1
	lw	t0, 0(t0)
	add	t0, t2, t0
	sw	t0, 0(a0)
	j	.classvector_add_ID28_for_incr
.classvector_add_ID28_for_incr:
	addi	t0, zero, 1
	add	s6, s6, t0
	j	.classvector_add_ID28_for_condition
.classvector_add_ID28_for_out:
	mv	a0, s1
	j	.classvector_add_return
.classvector_add_return:
	lw	s1, -12(s0)
	lw	s5, -24(s0)
	lw	s6, -32(s0)
	lw	s7, -16(s0)
	lw	s8, -20(s0)
	lw	s9, -28(s0)
	li	t0, 32
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
	sw	s1, -20(s0)
	sw	s8, -24(s0)
	sw	s9, -12(s0)
	sw	s10, -16(s0)
.classvector_set_alloca:
	j	.classvector_set_entry
.classvector_set_entry:
	mv	s9, a0
	mv	s8, a1
	mv	s1, a2
	mv	a0, s9
	call	classvector_getDim
	mv	t0, s8
	slt	t0, a0, t0
	bnez	t0, .classvector_set_ID10_if_true
	j	.classvector_set_ID10_if_out
.classvector_set_ID10_if_true:
	addi	a0, zero, 0
	j	.classvector_set_return
.classvector_set_ID10_if_out:
	addi	t0, s9, 0
	lw	t1, 0(t0)
	mv	t0, s8
	addi	t2, zero, 4
	mul	t0, t0, t2
	add	t1, t1, t0
	mv	t0, s1
	sw	t0, 0(t1)
	addi	a0, zero, 1
	j	.classvector_set_return
.classvector_set_return:
	lw	s1, -20(s0)
	lw	s8, -24(s0)
	lw	s9, -12(s0)
	lw	s10, -16(s0)
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
	sw	s2, -12(s0)
	sw	s3, -24(s0)
	sw	s5, -20(s0)
	sw	s10, -16(s0)
.classvector_tostring_alloca:
	j	.classvector_tostring_entry
.classvector_tostring_entry:
	mv	s3, a0
	la	t0, fuckLLVM_.str.0
	mv	s2, t0
	mv	a0, s3
	call	classvector_getDim
	addi	t0, zero, 0
	slt	t0, t0, a0
	bnez	t0, .classvector_tostring_ID7_if_true
	j	.classvector_tostring_ID7_if_out
.classvector_tostring_ID7_if_true:
	addi	t0, s3, 0
	lw	t0, 0(t0)
	addi	t1, zero, 0
	addi	t2, zero, 4
	mul	t1, t1, t2
	add	t0, t0, t1
	lw	a0, 0(t0)
	call	toString
	mv	a1, a0
	mv	a0, s2
	call	string_add
	mv	s2, a0
	j	.classvector_tostring_ID7_if_out
.classvector_tostring_ID7_if_out:
	addi	t0, zero, 1
	mv	s5, t0
	j	.classvector_tostring_ID18_for_condition
.classvector_tostring_ID18_for_condition:
	mv	a0, s3
	call	classvector_getDim
	slt	t0, s5, a0
	bnez	t0, .classvector_tostring_ID18_for_suite
	j	.classvector_tostring_ID18_for_out
.classvector_tostring_ID18_for_suite:
	mv	a0, s2
	la	a1, fuckLLVM_.str.1
	call	string_add
	mv	s2, a0
	addi	t0, s3, 0
	lw	t2, 0(t0)
	mv	t0, s5
	addi	t1, zero, 4
	mul	t0, t0, t1
	add	t0, t2, t0
	lw	a0, 0(t0)
	call	toString
	mv	a1, a0
	mv	a0, s2
	call	string_add
	mv	s2, a0
	j	.classvector_tostring_ID18_for_incr
.classvector_tostring_ID18_for_incr:
	mv	t0, s5
	addi	t1, zero, 1
	add	t0, t0, t1
	mv	s5, t0
	j	.classvector_tostring_ID18_for_condition
.classvector_tostring_ID18_for_out:
	mv	a0, s2
	la	a1, fuckLLVM_.str.2
	call	string_add
	mv	s2, a0
	mv	a0, s2
	j	.classvector_tostring_return
.classvector_tostring_return:
	lw	s2, -12(s0)
	lw	s3, -24(s0)
	lw	s5, -20(s0)
	lw	s10, -16(s0)
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
	li	t0, 32
	sub	sp, sp, t0
	add	t1, sp, t0
	sw	ra, -4(t1)
	sw	s0, -8(t1)
	mv	s0, t1
	sw	s1, -16(s0)
	sw	s2, -12(s0)
	sw	s5, -24(s0)
	sw	s6, -28(s0)
	sw	s8, -20(s0)
.classvector_copy_alloca:
	j	.classvector_copy_entry
.classvector_copy_entry:
	mv	s6, a0
	mv	s1, a1
	mv	t0, s1
	li	t1, 0
	xor	t0, t0, t1
	sltiu	t0, t0, 1
	bnez	t0, .classvector_copy_ID7_if_true
	j	.classvector_copy_ID7_if_out
.classvector_copy_ID7_if_true:
	addi	a0, zero, 0
	j	.classvector_copy_return
.classvector_copy_ID7_if_out:
	mv	a0, s1
	call	classvector_getDim
	addi	t0, zero, 0
	xor	t0, a0, t0
	sltiu	t0, t0, 1
	bnez	t0, .classvector_copy_ID10_if_true
	j	.classvector_copy_ID10_if_false
.classvector_copy_ID23_for_condition:
	mv	a0, s6
	call	classvector_getDim
	slt	t0, s2, a0
	bnez	t0, .classvector_copy_ID23_for_suite
	j	.classvector_copy_ID23_for_out
.classvector_copy_ID23_for_suite:
	addi	t0, s6, 0
	lw	t1, 0(t0)
	addi	t0, zero, 4
	mul	t0, s2, t0
	add	t2, t1, t0
	mv	t0, s1
	addi	t0, t0, 0
	lw	t0, 0(t0)
	addi	t1, zero, 4
	mul	t1, s2, t1
	add	t0, t0, t1
	lw	t0, 0(t0)
	sw	t0, 0(t2)
	j	.classvector_copy_ID23_for_incr
.classvector_copy_ID23_for_incr:
	addi	t0, zero, 1
	add	s2, s2, t0
	j	.classvector_copy_ID23_for_condition
.classvector_copy_ID23_for_out:
	j	.classvector_copy_ID10_if_out
.classvector_copy_ID10_if_true:
	addi	t1, s6, 0
	li	t0, 0
	sw	t0, 0(t1)
	j	.classvector_copy_ID10_if_out
.classvector_copy_ID10_if_false:
	addi	s2, s6, 0
	mv	a0, s1
	call	classvector_getDim
	mv	s5, a0
	addi	t0, zero, 4
	mul	t0, s5, t0
	addi	t1, zero, 4
	add	a0, t0, t1
	call	malloc
	sw	s5, 0(a0)
	addi	t0, zero, 1
	addi	t1, zero, 4
	mul	t0, t0, t1
	add	t0, a0, t0
	sw	t0, 0(s2)
	addi	s2, zero, 0
	j	.classvector_copy_ID23_for_condition
.classvector_copy_ID10_if_out:
	addi	a0, zero, 1
	j	.classvector_copy_return
.classvector_copy_return:
	lw	s1, -16(s0)
	lw	s2, -12(s0)
	lw	s5, -24(s0)
	lw	s6, -28(s0)
	lw	s8, -20(s0)
	li	t0, 32
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
	sw	s4, -12(s0)
	sw	s5, -20(s0)
	sw	s6, -16(s0)
.main_alloca:
	j	.main_entry
.main_entry:
	call	__init
	addi	a0, zero, 0
	addi	a0, zero, 8
	call	malloc
	mv	s4, a0
	mv	a0, s4
	call	vector
	mv	s5, s4
	addi	t0, zero, 10
	addi	t1, zero, 4
	mul	t1, t0, t1
	addi	t0, zero, 4
	add	a0, t1, t0
	call	malloc
	addi	t0, zero, 10
	sw	t0, 0(a0)
	addi	t1, zero, 1
	addi	t0, zero, 4
	mul	t0, t1, t0
	add	a1, a0, t0
	addi	t0, zero, 0
	j	.main_ID13_for_condition
.main_ID13_for_condition:
	addi	t1, zero, 10
	slt	t1, t0, t1
	bnez	t1, .main_ID13_for_suite
	j	.main_ID13_for_out
.main_ID13_for_suite:
	addi	t1, zero, 4
	mul	t1, t0, t1
	add	t2, a1, t1
	addi	t1, zero, 9
	sub	t1, t1, t0
	sw	t1, 0(t2)
	j	.main_ID13_for_incr
.main_ID13_for_incr:
	addi	t1, zero, 1
	add	t0, t0, t1
	j	.main_ID13_for_condition
.main_ID13_for_out:
	mv	a0, s5
	call	classvector_init
	la	a0, fuckLLVM_.str.3
	call	print
	mv	a0, s5
	call	classvector_tostring
	call	println
	addi	a0, zero, 8
	call	malloc
	mv	s4, a0
	mv	a0, s4
	call	vector
	mv	a0, s4
	mv	a1, s5
	call	classvector_copy
	mv	a0, s4
	addi	a1, zero, 3
	addi	a2, zero, 817
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
	mv	a0, s4
	call	classvector_tostring
	call	println
	la	a0, fuckLLVM_.str.6
	call	print
	mv	a0, s5
	mv	a1, s4
	call	classvector_add
	call	classvector_tostring
	call	println
	la	a0, fuckLLVM_.str.7
	call	print
	mv	a0, s5
	mv	a1, s4
	call	classvector_dot
	call	toString
	call	println
	la	a0, fuckLLVM_.str.8
	call	print
	mv	a0, s4
	addi	t1, zero, 1
	addi	t0, zero, 3
	sll	a1, t1, t0
	call	classvector_scalarInPlaceMultiply
	call	classvector_tostring
	call	println
	addi	a0, zero, 0
	j	.main_return
.main_return:
	lw	s4, -12(s0)
	lw	s5, -20(s0)
	lw	s6, -16(s0)
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

