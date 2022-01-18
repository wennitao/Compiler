	.text

	.globl	__init
	.p2align	2
	.type	__init,@function
__init:
.__init_assemblyInit:
	addi	sp, sp, -208
	sw	ra, 204(sp)
	sw	s0, 200(sp)
	addi	s0, sp, 208
.__init_entry:
	li	t0, 12000
	sw	t0, -12(s0)
	li	t0, 4
	sw	t0, -16(s0)
	lw	t0, -12(s0)
	lw	t1, -16(s0)
	mul	t2, t0, t1
	sw	t2, -20(s0)
	li	t0, 4
	sw	t0, -24(s0)
	lw	t0, -20(s0)
	lw	t1, -24(s0)
	add	t2, t0, t1
	sw	t2, -28(s0)
	lw	t0, -28(s0)
	mv	a0, t0
	call	malloc
	mv	t1, a0
	sw	t1, -32(s0)
	li	t0, 12000
	sw	t0, -36(s0)
	lw	t0, -36(s0)
	lw	t1, -32(s0)
	sw	t0, 0(t1)
	li	t0, 1
	sw	t0, -40(s0)
	li	t0, 4
	sw	t0, -44(s0)
	lw	t0, -40(s0)
	lw	t1, -44(s0)
	mul	t2, t0, t1
	sw	t2, -48(s0)
	lw	t0, -32(s0)
	lw	t1, -48(s0)
	add	t2, t0, t1
	sw	t2, -52(s0)
	lw	t0, -52(s0)
	lw	t1, -56(s0)
	sw	t0, fuckLLVM_xlist, t1
	li	t0, 12000
	sw	t0, -60(s0)
	li	t0, 4
	sw	t0, -64(s0)
	lw	t0, -60(s0)
	lw	t1, -64(s0)
	mul	t2, t0, t1
	sw	t2, -68(s0)
	li	t0, 4
	sw	t0, -72(s0)
	lw	t0, -68(s0)
	lw	t1, -72(s0)
	add	t2, t0, t1
	sw	t2, -76(s0)
	lw	t0, -76(s0)
	mv	a0, t0
	call	malloc
	mv	t1, a0
	sw	t1, -80(s0)
	li	t0, 12000
	sw	t0, -84(s0)
	lw	t0, -84(s0)
	lw	t1, -80(s0)
	sw	t0, 0(t1)
	li	t0, 1
	sw	t0, -88(s0)
	li	t0, 4
	sw	t0, -92(s0)
	lw	t0, -88(s0)
	lw	t1, -92(s0)
	mul	t2, t0, t1
	sw	t2, -96(s0)
	lw	t0, -80(s0)
	lw	t1, -96(s0)
	add	t2, t0, t1
	sw	t2, -100(s0)
	lw	t0, -100(s0)
	lw	t1, -104(s0)
	sw	t0, fuckLLVM_ylist, t1
	li	t0, 8
	sw	t0, -108(s0)
	li	t0, 4
	sw	t0, -112(s0)
	lw	t0, -108(s0)
	lw	t1, -112(s0)
	mul	t2, t0, t1
	sw	t2, -116(s0)
	li	t0, 4
	sw	t0, -120(s0)
	lw	t0, -116(s0)
	lw	t1, -120(s0)
	add	t2, t0, t1
	sw	t2, -124(s0)
	lw	t0, -124(s0)
	mv	a0, t0
	call	malloc
	mv	t1, a0
	sw	t1, -128(s0)
	li	t0, 8
	sw	t0, -132(s0)
	lw	t0, -132(s0)
	lw	t1, -128(s0)
	sw	t0, 0(t1)
	li	t0, 1
	sw	t0, -136(s0)
	li	t0, 4
	sw	t0, -140(s0)
	lw	t0, -136(s0)
	lw	t1, -140(s0)
	mul	t2, t0, t1
	sw	t2, -144(s0)
	lw	t0, -128(s0)
	lw	t1, -144(s0)
	add	t2, t0, t1
	sw	t2, -148(s0)
	lw	t0, -148(s0)
	lw	t1, -152(s0)
	sw	t0, fuckLLVM_dx, t1
	li	t0, 9
	sw	t0, -156(s0)
	li	t0, 4
	sw	t0, -160(s0)
	lw	t0, -156(s0)
	lw	t1, -160(s0)
	mul	t2, t0, t1
	sw	t2, -164(s0)
	li	t0, 4
	sw	t0, -168(s0)
	lw	t0, -164(s0)
	lw	t1, -168(s0)
	add	t2, t0, t1
	sw	t2, -172(s0)
	lw	t0, -172(s0)
	mv	a0, t0
	call	malloc
	mv	t1, a0
	sw	t1, -176(s0)
	li	t0, 9
	sw	t0, -180(s0)
	lw	t0, -180(s0)
	lw	t1, -176(s0)
	sw	t0, 0(t1)
	li	t0, 1
	sw	t0, -184(s0)
	li	t0, 4
	sw	t0, -188(s0)
	lw	t0, -184(s0)
	lw	t1, -188(s0)
	mul	t2, t0, t1
	sw	t2, -192(s0)
	lw	t0, -176(s0)
	lw	t1, -192(s0)
	add	t2, t0, t1
	sw	t2, -196(s0)
	lw	t0, -196(s0)
	lw	t1, -200(s0)
	sw	t0, fuckLLVM_dy, t1
	j	.__init_return
.__init_return:
	lw	ra, 204(sp)
	lw	s0, 200(sp)
	addi	sp, sp, 208
	ret

	.globl	origin
	.p2align	2
	.type	origin,@function
origin:
.origin_assemblyInit:
	addi	sp, sp, -256
	sw	ra, 252(sp)
	sw	s0, 248(sp)
	addi	s0, sp, 256
	mv	t1, a0
	sw	t1, -16(s0)
.origin_entry:
	lw	t0, -16(s0)
	sw	t0, -12(s0)
	li	t0, 0
	sw	t0, -20(s0)
	lw	t0, -20(s0)
	lw	t1, -24(s0)
	sw	t0, fuckLLVM_head, t1
	li	t0, 0
	sw	t0, -28(s0)
	lw	t0, -28(s0)
	lw	t1, -32(s0)
	sw	t0, fuckLLVM_tail, t1
	lw	t1, -12(s0)
	sw	t1, -36(s0)
	li	t0, 8
	sw	t0, -40(s0)
	lw	t0, -36(s0)
	lw	t1, -40(s0)
	mul	t2, t0, t1
	sw	t2, -44(s0)
	li	t0, 4
	sw	t0, -48(s0)
	lw	t0, -44(s0)
	lw	t1, -48(s0)
	add	t2, t0, t1
	sw	t2, -52(s0)
	lw	t0, -52(s0)
	mv	a0, t0
	call	malloc
	mv	t1, a0
	sw	t1, -56(s0)
	lw	t0, -36(s0)
	lw	t1, -56(s0)
	sw	t0, 0(t1)
	li	t0, 1
	sw	t0, -60(s0)
	li	t0, 4
	sw	t0, -64(s0)
	lw	t0, -60(s0)
	lw	t1, -64(s0)
	mul	t2, t0, t1
	sw	t2, -68(s0)
	lw	t0, -56(s0)
	lw	t1, -68(s0)
	add	t2, t0, t1
	sw	t2, -72(s0)
	lw	t0, -72(s0)
	lw	t1, -76(s0)
	sw	t0, fuckLLVM_step, t1
	li	t0, 0
	sw	t0, -80(s0)
	lw	t0, -80(s0)
	lw	t1, -84(s0)
	sw	t0, fuckLLVM_i, t1
	j	.origin_ID11_for_condition
.origin_ID11_for_condition:
	lw	t1, fuckLLVM_i
	sw	t1, -88(s0)
	lw	t1, -12(s0)
	sw	t1, -92(s0)
	lw	t0, -88(s0)
	lw	t1, -92(s0)
	slt	t2, t0, t1
	sw	t2, -96(s0)
	lw	t0, -96(s0)
	bnez	t0, .origin_ID11_for_suite
	j	.origin_ID11_for_out
.origin_ID11_for_suite:
	lw	t1, fuckLLVM_step
	sw	t1, -100(s0)
	lw	t1, fuckLLVM_i
	sw	t1, -104(s0)
	li	t0, 8
	sw	t0, -108(s0)
	lw	t0, -104(s0)
	lw	t1, -108(s0)
	mul	t2, t0, t1
	sw	t2, -112(s0)
	lw	t0, -100(s0)
	lw	t1, -112(s0)
	add	t2, t0, t1
	sw	t2, -116(s0)
	lw	t1, -12(s0)
	sw	t1, -120(s0)
	li	t0, 4
	sw	t0, -124(s0)
	lw	t0, -120(s0)
	lw	t1, -124(s0)
	mul	t2, t0, t1
	sw	t2, -128(s0)
	li	t0, 4
	sw	t0, -132(s0)
	lw	t0, -128(s0)
	lw	t1, -132(s0)
	add	t2, t0, t1
	sw	t2, -136(s0)
	lw	t0, -136(s0)
	mv	a0, t0
	call	malloc
	mv	t1, a0
	sw	t1, -140(s0)
	lw	t0, -120(s0)
	lw	t1, -140(s0)
	sw	t0, 0(t1)
	li	t0, 1
	sw	t0, -144(s0)
	li	t0, 4
	sw	t0, -148(s0)
	lw	t0, -144(s0)
	lw	t1, -148(s0)
	mul	t2, t0, t1
	sw	t2, -152(s0)
	lw	t0, -140(s0)
	lw	t1, -152(s0)
	add	t2, t0, t1
	sw	t2, -156(s0)
	lw	t0, -156(s0)
	lw	t1, -116(s0)
	sw	t0, 0(t1)
	li	t0, 0
	sw	t0, -160(s0)
	lw	t0, -160(s0)
	lw	t1, -164(s0)
	sw	t0, fuckLLVM_j, t1
	j	.origin_ID26_for_condition
.origin_ID26_for_condition:
	lw	t1, fuckLLVM_j
	sw	t1, -168(s0)
	lw	t1, -12(s0)
	sw	t1, -172(s0)
	lw	t0, -168(s0)
	lw	t1, -172(s0)
	slt	t2, t0, t1
	sw	t2, -176(s0)
	lw	t0, -176(s0)
	bnez	t0, .origin_ID26_for_suite
	j	.origin_ID26_for_out
.origin_ID26_for_suite:
	lw	t1, fuckLLVM_step
	sw	t1, -180(s0)
	lw	t1, fuckLLVM_i
	sw	t1, -184(s0)
	li	t0, 8
	sw	t0, -188(s0)
	lw	t0, -184(s0)
	lw	t1, -188(s0)
	mul	t2, t0, t1
	sw	t2, -192(s0)
	lw	t0, -180(s0)
	lw	t1, -192(s0)
	add	t2, t0, t1
	sw	t2, -196(s0)
	lw	t0, -196(s0)
	lw	t1, 0(t0)
	sw	t1, -200(s0)
	lw	t1, fuckLLVM_j
	sw	t1, -204(s0)
	li	t0, 4
	sw	t0, -208(s0)
	lw	t0, -204(s0)
	lw	t1, -208(s0)
	mul	t2, t0, t1
	sw	t2, -212(s0)
	lw	t0, -200(s0)
	lw	t1, -212(s0)
	add	t2, t0, t1
	sw	t2, -216(s0)
	li	t0, 0
	sw	t0, -220(s0)
	lw	t0, -220(s0)
	lw	t1, -216(s0)
	sw	t0, 0(t1)
	j	.origin_ID26_for_incr
.origin_ID26_for_incr:
	lw	t1, fuckLLVM_j
	sw	t1, -224(s0)
	li	t0, 1
	sw	t0, -228(s0)
	lw	t0, -224(s0)
	lw	t1, -228(s0)
	add	t2, t0, t1
	sw	t2, -232(s0)
	lw	t0, -232(s0)
	lw	t1, -236(s0)
	sw	t0, fuckLLVM_j, t1
	j	.origin_ID26_for_condition
.origin_ID26_for_out:
	j	.origin_ID11_for_incr
.origin_ID11_for_incr:
	lw	t1, fuckLLVM_i
	sw	t1, -240(s0)
	li	t0, 1
	sw	t0, -244(s0)
	lw	t0, -240(s0)
	lw	t1, -244(s0)
	add	t2, t0, t1
	sw	t2, -248(s0)
	lw	t0, -248(s0)
	lw	t1, -252(s0)
	sw	t0, fuckLLVM_i, t1
	j	.origin_ID11_for_condition
.origin_ID11_for_out:
	j	.origin_return
.origin_return:
	lw	ra, 252(sp)
	lw	s0, 248(sp)
	addi	sp, sp, 256
	ret

	.globl	check
	.p2align	2
	.type	check,@function
check:
.check_assemblyInit:
	addi	sp, sp, -64
	sw	ra, 60(sp)
	sw	s0, 56(sp)
	addi	s0, sp, 64
	mv	t1, a0
	sw	t1, -20(s0)
.check_entry:
	lw	t0, -20(s0)
	sw	t0, -12(s0)
	lw	t1, -12(s0)
	sw	t1, -24(s0)
	lw	t1, fuckLLVM_N
	sw	t1, -28(s0)
	lw	t0, -24(s0)
	lw	t1, -28(s0)
	slt	t2, t0, t1
	sw	t2, -32(s0)
	li	t0, 0
	sw	t0, -36(s0)
	lw	t0, -36(s0)
	mv	t1, t0
	sw	t1, -40(s0)
	lw	t0, -32(s0)
	bnez	t0, .check_ID5_AndAnd_true
	lw	t0, -36(s0)
	mv	t1, t0
	sw	t1, -40(s0)
	j	.check_ID5_AndAnd_out
.check_ID5_AndAnd_true:
	lw	t1, -12(s0)
	sw	t1, -44(s0)
	li	t0, 0
	sw	t0, -48(s0)
	lw	t0, -44(s0)
	lw	t1, -48(s0)
	slt	t2, t0, t1
	sw	t2, -52(s0)
	lw	t0, -52(s0)
	xori	t1, t0, 1
	sw	t1, -52(s0)
	lw	t0, -52(s0)
	mv	t1, t0
	sw	t1, -40(s0)
	j	.check_ID5_AndAnd_out
.check_ID5_AndAnd_out:
	lw	t0, -40(s0)
	sb	t0, -16(s0)
	j	.check_return
	j	.check_return
.check_return:
	lb	t1, -16(s0)
	sb	t1, -56(s0)
	lb	t0, -56(s0)
	mv	a0, t0
	lw	ra, 60(sp)
	lw	s0, 56(sp)
	addi	sp, sp, 64
	ret

	.globl	addList
	.p2align	2
	.type	addList,@function
addList:
.addList_assemblyInit:
	addi	sp, sp, -272
	sw	ra, 268(sp)
	sw	s0, 264(sp)
	addi	s0, sp, 272
	mv	t1, a0
	sw	t1, -20(s0)
	mv	t1, a1
	sw	t1, -24(s0)
.addList_entry:
	lw	t0, -20(s0)
	sw	t0, -12(s0)
	lw	t0, -24(s0)
	sw	t0, -16(s0)
	lw	t1, -12(s0)
	sw	t1, -28(s0)
	lw	t0, -28(s0)
	mv	a0, t0
	call	check
	mv	t1, a0
	sb	t1, -32(s0)
	li	t0, 0
	sw	t0, -36(s0)
	lw	t0, -36(s0)
	mv	t1, t0
	sw	t1, -40(s0)
	lb	t0, -32(s0)
	bnez	t0, .addList_ID6_AndAnd_true
	lw	t0, -36(s0)
	mv	t1, t0
	sw	t1, -40(s0)
	j	.addList_ID6_AndAnd_out
.addList_ID6_AndAnd_true:
	lw	t1, -16(s0)
	sw	t1, -44(s0)
	lw	t0, -44(s0)
	mv	a0, t0
	call	check
	mv	t1, a0
	sb	t1, -48(s0)
	lb	t0, -48(s0)
	mv	t1, t0
	sw	t1, -40(s0)
	j	.addList_ID6_AndAnd_out
.addList_ID6_AndAnd_out:
	li	t0, 0
	sw	t0, -52(s0)
	lw	t0, -52(s0)
	mv	t1, t0
	sw	t1, -56(s0)
	lw	t0, -40(s0)
	bnez	t0, .addList_ID11_AndAnd_true
	lw	t0, -52(s0)
	mv	t1, t0
	sw	t1, -56(s0)
	j	.addList_ID11_AndAnd_out
.addList_ID11_AndAnd_true:
	lw	t1, fuckLLVM_step
	sw	t1, -60(s0)
	lw	t1, -12(s0)
	sw	t1, -64(s0)
	li	t0, 8
	sw	t0, -68(s0)
	lw	t0, -64(s0)
	lw	t1, -68(s0)
	mul	t2, t0, t1
	sw	t2, -72(s0)
	lw	t0, -60(s0)
	lw	t1, -72(s0)
	add	t2, t0, t1
	sw	t2, -76(s0)
	lw	t0, -76(s0)
	lw	t1, 0(t0)
	sw	t1, -80(s0)
	lw	t1, -16(s0)
	sw	t1, -84(s0)
	li	t0, 4
	sw	t0, -88(s0)
	lw	t0, -84(s0)
	lw	t1, -88(s0)
	mul	t2, t0, t1
	sw	t2, -92(s0)
	lw	t0, -80(s0)
	lw	t1, -92(s0)
	add	t2, t0, t1
	sw	t2, -96(s0)
	lw	t0, -96(s0)
	lw	t1, 0(t0)
	sw	t1, -100(s0)
	li	t0, 0
	sw	t0, -104(s0)
	li	t0, 1
	sw	t0, -108(s0)
	lw	t0, -104(s0)
	lw	t1, -108(s0)
	sub	t2, t0, t1
	sw	t2, -112(s0)
	lw	t0, -100(s0)
	lw	t1, -112(s0)
	xor	t2, t0, t1
	sw	t2, -116(s0)
	lw	t0, -116(s0)
	sltiu	t1, t0, 1
	sw	t1, -116(s0)
	lw	t0, -116(s0)
	mv	t1, t0
	sw	t1, -56(s0)
	j	.addList_ID11_AndAnd_out
.addList_ID11_AndAnd_out:
	lw	t0, -56(s0)
	bnez	t0, .addList_ID21_if_true
	j	.addList_ID21_if_out
.addList_ID42_AndAnd_true:
	lw	t1, -16(s0)
	sw	t1, -120(s0)
	lw	t1, fuckLLVM_targety
	sw	t1, -124(s0)
	lw	t0, -120(s0)
	lw	t1, -124(s0)
	xor	t2, t0, t1
	sw	t2, -128(s0)
	lw	t0, -128(s0)
	sltiu	t1, t0, 1
	sw	t1, -128(s0)
	lw	t0, -128(s0)
	mv	t1, t0
	sw	t1, -132(s0)
	j	.addList_ID42_AndAnd_out
.addList_ID42_AndAnd_out:
	lw	t0, -132(s0)
	bnez	t0, .addList_ID46_if_true
	j	.addList_ID46_if_out
.addList_ID46_if_true:
	li	t0, 1
	sw	t0, -136(s0)
	lw	t0, -136(s0)
	lw	t1, -140(s0)
	sw	t0, fuckLLVM_ok, t1
	j	.addList_ID46_if_out
.addList_ID46_if_out:
	j	.addList_ID21_if_out
.addList_ID21_if_true:
	lw	t1, fuckLLVM_tail
	sw	t1, -144(s0)
	li	t0, 1
	sw	t0, -148(s0)
	lw	t0, -144(s0)
	lw	t1, -148(s0)
	add	t2, t0, t1
	sw	t2, -152(s0)
	lw	t0, -152(s0)
	lw	t1, -156(s0)
	sw	t0, fuckLLVM_tail, t1
	lw	t1, fuckLLVM_xlist
	sw	t1, -160(s0)
	lw	t1, fuckLLVM_tail
	sw	t1, -164(s0)
	li	t0, 4
	sw	t0, -168(s0)
	lw	t0, -164(s0)
	lw	t1, -168(s0)
	mul	t2, t0, t1
	sw	t2, -172(s0)
	lw	t0, -160(s0)
	lw	t1, -172(s0)
	add	t2, t0, t1
	sw	t2, -176(s0)
	lw	t1, -12(s0)
	sw	t1, -180(s0)
	lw	t0, -180(s0)
	lw	t1, -176(s0)
	sw	t0, 0(t1)
	lw	t1, fuckLLVM_ylist
	sw	t1, -184(s0)
	lw	t1, fuckLLVM_tail
	sw	t1, -188(s0)
	li	t0, 4
	sw	t0, -192(s0)
	lw	t0, -188(s0)
	lw	t1, -192(s0)
	mul	t2, t0, t1
	sw	t2, -196(s0)
	lw	t0, -184(s0)
	lw	t1, -196(s0)
	add	t2, t0, t1
	sw	t2, -200(s0)
	lw	t1, -16(s0)
	sw	t1, -204(s0)
	lw	t0, -204(s0)
	lw	t1, -200(s0)
	sw	t0, 0(t1)
	lw	t1, fuckLLVM_step
	sw	t1, -208(s0)
	lw	t1, -12(s0)
	sw	t1, -212(s0)
	li	t0, 8
	sw	t0, -216(s0)
	lw	t0, -212(s0)
	lw	t1, -216(s0)
	mul	t2, t0, t1
	sw	t2, -220(s0)
	lw	t0, -208(s0)
	lw	t1, -220(s0)
	add	t2, t0, t1
	sw	t2, -224(s0)
	lw	t0, -224(s0)
	lw	t1, 0(t0)
	sw	t1, -228(s0)
	lw	t1, -16(s0)
	sw	t1, -232(s0)
	li	t0, 4
	sw	t0, -236(s0)
	lw	t0, -232(s0)
	lw	t1, -236(s0)
	mul	t2, t0, t1
	sw	t2, -240(s0)
	lw	t0, -228(s0)
	lw	t1, -240(s0)
	add	t2, t0, t1
	sw	t2, -244(s0)
	lw	t1, fuckLLVM_now
	sw	t1, -248(s0)
	li	t0, 1
	sw	t0, -252(s0)
	lw	t0, -248(s0)
	lw	t1, -252(s0)
	add	t2, t0, t1
	sw	t2, -256(s0)
	lw	t0, -256(s0)
	lw	t1, -244(s0)
	sw	t0, 0(t1)
	lw	t1, -12(s0)
	sw	t1, -260(s0)
	lw	t1, fuckLLVM_targetx
	sw	t1, -264(s0)
	lw	t0, -260(s0)
	lw	t1, -264(s0)
	xor	t2, t0, t1
	sw	t2, -268(s0)
	lw	t0, -268(s0)
	sltiu	t1, t0, 1
	sw	t1, -268(s0)
	li	t0, 0
	sw	t0, -272(s0)
	lw	t0, -272(s0)
	mv	t1, t0
	sw	t1, -132(s0)
	lw	t0, -268(s0)
	bnez	t0, .addList_ID42_AndAnd_true
	lw	t0, -272(s0)
	mv	t1, t0
	sw	t1, -132(s0)
	j	.addList_ID42_AndAnd_out
.addList_ID21_if_out:
	j	.addList_return
.addList_return:
	lw	ra, 268(sp)
	lw	s0, 264(sp)
	addi	sp, sp, 272
	ret

	.globl	main
	.p2align	2
	.type	main,@function
main:
.main_assemblyInit:
	addi	sp, sp, -944
	sw	ra, 940(sp)
	sw	s0, 936(sp)
	addi	s0, sp, 944
.main_entry:
	call	__init
	li	t0, 0
	sw	t0, -16(s0)
	lw	t0, -16(s0)
	sw	t0, -12(s0)
	li	t0, 106
	sw	t0, -20(s0)
	lw	t0, -20(s0)
	mv	a0, t0
	call	origin
	call	getInt
	mv	t1, a0
	sw	t1, -24(s0)
	lw	t0, -24(s0)
	lw	t1, -28(s0)
	sw	t0, fuckLLVM_N, t1
	lw	t1, fuckLLVM_N
	sw	t1, -32(s0)
	li	t0, 1
	sw	t0, -36(s0)
	lw	t0, -32(s0)
	lw	t1, -36(s0)
	sub	t2, t0, t1
	sw	t2, -40(s0)
	lw	t0, -40(s0)
	lw	t1, -44(s0)
	sw	t0, fuckLLVM_targety, t1
	lw	t1, fuckLLVM_targety
	sw	t1, -48(s0)
	lw	t0, -48(s0)
	lw	t1, -52(s0)
	sw	t0, fuckLLVM_targetx, t1
	li	t0, 0
	sw	t0, -56(s0)
	lw	t0, -56(s0)
	lw	t1, -60(s0)
	sw	t0, fuckLLVM_i, t1
	j	.main_ID5_for_condition
.main_ID5_for_condition:
	lw	t1, fuckLLVM_i
	sw	t1, -64(s0)
	lw	t1, fuckLLVM_N
	sw	t1, -68(s0)
	lw	t0, -64(s0)
	lw	t1, -68(s0)
	slt	t2, t0, t1
	sw	t2, -72(s0)
	lw	t0, -72(s0)
	bnez	t0, .main_ID5_for_suite
	j	.main_ID5_for_out
.main_ID5_for_suite:
	li	t0, 0
	sw	t0, -76(s0)
	lw	t0, -76(s0)
	lw	t1, -80(s0)
	sw	t0, fuckLLVM_j, t1
	j	.main_ID8_for_condition
.main_ID8_for_condition:
	lw	t1, fuckLLVM_j
	sw	t1, -84(s0)
	lw	t1, fuckLLVM_N
	sw	t1, -88(s0)
	lw	t0, -84(s0)
	lw	t1, -88(s0)
	slt	t2, t0, t1
	sw	t2, -92(s0)
	lw	t0, -92(s0)
	bnez	t0, .main_ID8_for_suite
	j	.main_ID8_for_out
.main_ID8_for_suite:
	lw	t1, fuckLLVM_step
	sw	t1, -96(s0)
	lw	t1, fuckLLVM_i
	sw	t1, -100(s0)
	li	t0, 8
	sw	t0, -104(s0)
	lw	t0, -100(s0)
	lw	t1, -104(s0)
	mul	t2, t0, t1
	sw	t2, -108(s0)
	lw	t0, -96(s0)
	lw	t1, -108(s0)
	add	t2, t0, t1
	sw	t2, -112(s0)
	lw	t0, -112(s0)
	lw	t1, 0(t0)
	sw	t1, -116(s0)
	lw	t1, fuckLLVM_j
	sw	t1, -120(s0)
	li	t0, 4
	sw	t0, -124(s0)
	lw	t0, -120(s0)
	lw	t1, -124(s0)
	mul	t2, t0, t1
	sw	t2, -128(s0)
	lw	t0, -116(s0)
	lw	t1, -128(s0)
	add	t2, t0, t1
	sw	t2, -132(s0)
	li	t0, 0
	sw	t0, -136(s0)
	li	t0, 1
	sw	t0, -140(s0)
	lw	t0, -136(s0)
	lw	t1, -140(s0)
	sub	t2, t0, t1
	sw	t2, -144(s0)
	lw	t0, -144(s0)
	lw	t1, -132(s0)
	sw	t0, 0(t1)
	j	.main_ID8_for_incr
.main_ID8_for_incr:
	lw	t1, fuckLLVM_j
	sw	t1, -148(s0)
	li	t0, 1
	sw	t0, -152(s0)
	lw	t0, -148(s0)
	lw	t1, -152(s0)
	add	t2, t0, t1
	sw	t2, -156(s0)
	lw	t0, -156(s0)
	lw	t1, -160(s0)
	sw	t0, fuckLLVM_j, t1
	j	.main_ID8_for_condition
.main_ID8_for_out:
	j	.main_ID5_for_incr
.main_ID5_for_incr:
	lw	t1, fuckLLVM_i
	sw	t1, -164(s0)
	li	t0, 1
	sw	t0, -168(s0)
	lw	t0, -164(s0)
	lw	t1, -168(s0)
	add	t2, t0, t1
	sw	t2, -172(s0)
	lw	t0, -172(s0)
	lw	t1, -176(s0)
	sw	t0, fuckLLVM_i, t1
	j	.main_ID5_for_condition
.main_ID5_for_out:
	lw	t1, fuckLLVM_dx
	sw	t1, -180(s0)
	li	t0, 0
	sw	t0, -184(s0)
	li	t0, 4
	sw	t0, -188(s0)
	lw	t0, -184(s0)
	lw	t1, -188(s0)
	mul	t2, t0, t1
	sw	t2, -192(s0)
	lw	t0, -180(s0)
	lw	t1, -192(s0)
	add	t2, t0, t1
	sw	t2, -196(s0)
	li	t0, 0
	sw	t0, -200(s0)
	li	t0, 2
	sw	t0, -204(s0)
	lw	t0, -200(s0)
	lw	t1, -204(s0)
	sub	t2, t0, t1
	sw	t2, -208(s0)
	lw	t0, -208(s0)
	lw	t1, -196(s0)
	sw	t0, 0(t1)
	lw	t1, fuckLLVM_dy
	sw	t1, -212(s0)
	li	t0, 0
	sw	t0, -216(s0)
	li	t0, 4
	sw	t0, -220(s0)
	lw	t0, -216(s0)
	lw	t1, -220(s0)
	mul	t2, t0, t1
	sw	t2, -224(s0)
	lw	t0, -212(s0)
	lw	t1, -224(s0)
	add	t2, t0, t1
	sw	t2, -228(s0)
	li	t0, 0
	sw	t0, -232(s0)
	li	t0, 1
	sw	t0, -236(s0)
	lw	t0, -232(s0)
	lw	t1, -236(s0)
	sub	t2, t0, t1
	sw	t2, -240(s0)
	lw	t0, -240(s0)
	lw	t1, -228(s0)
	sw	t0, 0(t1)
	lw	t1, fuckLLVM_dx
	sw	t1, -244(s0)
	li	t0, 1
	sw	t0, -248(s0)
	li	t0, 4
	sw	t0, -252(s0)
	lw	t0, -248(s0)
	lw	t1, -252(s0)
	mul	t2, t0, t1
	sw	t2, -256(s0)
	lw	t0, -244(s0)
	lw	t1, -256(s0)
	add	t2, t0, t1
	sw	t2, -260(s0)
	li	t0, 0
	sw	t0, -264(s0)
	li	t0, 2
	sw	t0, -268(s0)
	lw	t0, -264(s0)
	lw	t1, -268(s0)
	sub	t2, t0, t1
	sw	t2, -272(s0)
	lw	t0, -272(s0)
	lw	t1, -260(s0)
	sw	t0, 0(t1)
	lw	t1, fuckLLVM_dy
	sw	t1, -276(s0)
	li	t0, 1
	sw	t0, -280(s0)
	li	t0, 4
	sw	t0, -284(s0)
	lw	t0, -280(s0)
	lw	t1, -284(s0)
	mul	t2, t0, t1
	sw	t2, -288(s0)
	lw	t0, -276(s0)
	lw	t1, -288(s0)
	add	t2, t0, t1
	sw	t2, -292(s0)
	li	t0, 1
	sw	t0, -296(s0)
	lw	t0, -296(s0)
	lw	t1, -292(s0)
	sw	t0, 0(t1)
	lw	t1, fuckLLVM_dx
	sw	t1, -300(s0)
	li	t0, 2
	sw	t0, -304(s0)
	li	t0, 4
	sw	t0, -308(s0)
	lw	t0, -304(s0)
	lw	t1, -308(s0)
	mul	t2, t0, t1
	sw	t2, -312(s0)
	lw	t0, -300(s0)
	lw	t1, -312(s0)
	add	t2, t0, t1
	sw	t2, -316(s0)
	li	t0, 2
	sw	t0, -320(s0)
	lw	t0, -320(s0)
	lw	t1, -316(s0)
	sw	t0, 0(t1)
	lw	t1, fuckLLVM_dy
	sw	t1, -324(s0)
	li	t0, 2
	sw	t0, -328(s0)
	li	t0, 4
	sw	t0, -332(s0)
	lw	t0, -328(s0)
	lw	t1, -332(s0)
	mul	t2, t0, t1
	sw	t2, -336(s0)
	lw	t0, -324(s0)
	lw	t1, -336(s0)
	add	t2, t0, t1
	sw	t2, -340(s0)
	li	t0, 0
	sw	t0, -344(s0)
	li	t0, 1
	sw	t0, -348(s0)
	lw	t0, -344(s0)
	lw	t1, -348(s0)
	sub	t2, t0, t1
	sw	t2, -352(s0)
	lw	t0, -352(s0)
	lw	t1, -340(s0)
	sw	t0, 0(t1)
	lw	t1, fuckLLVM_dx
	sw	t1, -356(s0)
	li	t0, 3
	sw	t0, -360(s0)
	li	t0, 4
	sw	t0, -364(s0)
	lw	t0, -360(s0)
	lw	t1, -364(s0)
	mul	t2, t0, t1
	sw	t2, -368(s0)
	lw	t0, -356(s0)
	lw	t1, -368(s0)
	add	t2, t0, t1
	sw	t2, -372(s0)
	li	t0, 2
	sw	t0, -376(s0)
	lw	t0, -376(s0)
	lw	t1, -372(s0)
	sw	t0, 0(t1)
	lw	t1, fuckLLVM_dy
	sw	t1, -380(s0)
	li	t0, 3
	sw	t0, -384(s0)
	li	t0, 4
	sw	t0, -388(s0)
	lw	t0, -384(s0)
	lw	t1, -388(s0)
	mul	t2, t0, t1
	sw	t2, -392(s0)
	lw	t0, -380(s0)
	lw	t1, -392(s0)
	add	t2, t0, t1
	sw	t2, -396(s0)
	li	t0, 1
	sw	t0, -400(s0)
	lw	t0, -400(s0)
	lw	t1, -396(s0)
	sw	t0, 0(t1)
	lw	t1, fuckLLVM_dx
	sw	t1, -404(s0)
	li	t0, 4
	sw	t0, -408(s0)
	li	t0, 4
	sw	t0, -412(s0)
	lw	t0, -408(s0)
	lw	t1, -412(s0)
	mul	t2, t0, t1
	sw	t2, -416(s0)
	lw	t0, -404(s0)
	lw	t1, -416(s0)
	add	t2, t0, t1
	sw	t2, -420(s0)
	li	t0, 0
	sw	t0, -424(s0)
	li	t0, 1
	sw	t0, -428(s0)
	lw	t0, -424(s0)
	lw	t1, -428(s0)
	sub	t2, t0, t1
	sw	t2, -432(s0)
	lw	t0, -432(s0)
	lw	t1, -420(s0)
	sw	t0, 0(t1)
	lw	t1, fuckLLVM_dy
	sw	t1, -436(s0)
	li	t0, 4
	sw	t0, -440(s0)
	li	t0, 4
	sw	t0, -444(s0)
	lw	t0, -440(s0)
	lw	t1, -444(s0)
	mul	t2, t0, t1
	sw	t2, -448(s0)
	lw	t0, -436(s0)
	lw	t1, -448(s0)
	add	t2, t0, t1
	sw	t2, -452(s0)
	li	t0, 0
	sw	t0, -456(s0)
	li	t0, 2
	sw	t0, -460(s0)
	lw	t0, -456(s0)
	lw	t1, -460(s0)
	sub	t2, t0, t1
	sw	t2, -464(s0)
	lw	t0, -464(s0)
	lw	t1, -452(s0)
	sw	t0, 0(t1)
	lw	t1, fuckLLVM_dx
	sw	t1, -468(s0)
	li	t0, 5
	sw	t0, -472(s0)
	li	t0, 4
	sw	t0, -476(s0)
	lw	t0, -472(s0)
	lw	t1, -476(s0)
	mul	t2, t0, t1
	sw	t2, -480(s0)
	lw	t0, -468(s0)
	lw	t1, -480(s0)
	add	t2, t0, t1
	sw	t2, -484(s0)
	li	t0, 0
	sw	t0, -488(s0)
	li	t0, 1
	sw	t0, -492(s0)
	lw	t0, -488(s0)
	lw	t1, -492(s0)
	sub	t2, t0, t1
	sw	t2, -496(s0)
	lw	t0, -496(s0)
	lw	t1, -484(s0)
	sw	t0, 0(t1)
	lw	t1, fuckLLVM_dy
	sw	t1, -500(s0)
	li	t0, 5
	sw	t0, -504(s0)
	li	t0, 4
	sw	t0, -508(s0)
	lw	t0, -504(s0)
	lw	t1, -508(s0)
	mul	t2, t0, t1
	sw	t2, -512(s0)
	lw	t0, -500(s0)
	lw	t1, -512(s0)
	add	t2, t0, t1
	sw	t2, -516(s0)
	li	t0, 2
	sw	t0, -520(s0)
	lw	t0, -520(s0)
	lw	t1, -516(s0)
	sw	t0, 0(t1)
	lw	t1, fuckLLVM_dx
	sw	t1, -524(s0)
	li	t0, 6
	sw	t0, -528(s0)
	li	t0, 4
	sw	t0, -532(s0)
	lw	t0, -528(s0)
	lw	t1, -532(s0)
	mul	t2, t0, t1
	sw	t2, -536(s0)
	lw	t0, -524(s0)
	lw	t1, -536(s0)
	add	t2, t0, t1
	sw	t2, -540(s0)
	li	t0, 1
	sw	t0, -544(s0)
	lw	t0, -544(s0)
	lw	t1, -540(s0)
	sw	t0, 0(t1)
	lw	t1, fuckLLVM_dy
	sw	t1, -548(s0)
	li	t0, 6
	sw	t0, -552(s0)
	li	t0, 4
	sw	t0, -556(s0)
	lw	t0, -552(s0)
	lw	t1, -556(s0)
	mul	t2, t0, t1
	sw	t2, -560(s0)
	lw	t0, -548(s0)
	lw	t1, -560(s0)
	add	t2, t0, t1
	sw	t2, -564(s0)
	li	t0, 0
	sw	t0, -568(s0)
	li	t0, 2
	sw	t0, -572(s0)
	lw	t0, -568(s0)
	lw	t1, -572(s0)
	sub	t2, t0, t1
	sw	t2, -576(s0)
	lw	t0, -576(s0)
	lw	t1, -564(s0)
	sw	t0, 0(t1)
	lw	t1, fuckLLVM_dx
	sw	t1, -580(s0)
	li	t0, 7
	sw	t0, -584(s0)
	li	t0, 4
	sw	t0, -588(s0)
	lw	t0, -584(s0)
	lw	t1, -588(s0)
	mul	t2, t0, t1
	sw	t2, -592(s0)
	lw	t0, -580(s0)
	lw	t1, -592(s0)
	add	t2, t0, t1
	sw	t2, -596(s0)
	li	t0, 1
	sw	t0, -600(s0)
	lw	t0, -600(s0)
	lw	t1, -596(s0)
	sw	t0, 0(t1)
	lw	t1, fuckLLVM_dy
	sw	t1, -604(s0)
	li	t0, 7
	sw	t0, -608(s0)
	li	t0, 4
	sw	t0, -612(s0)
	lw	t0, -608(s0)
	lw	t1, -612(s0)
	mul	t2, t0, t1
	sw	t2, -616(s0)
	lw	t0, -604(s0)
	lw	t1, -616(s0)
	add	t2, t0, t1
	sw	t2, -620(s0)
	li	t0, 2
	sw	t0, -624(s0)
	lw	t0, -624(s0)
	lw	t1, -620(s0)
	sw	t0, 0(t1)
	j	.main_ID63_while_condition
.main_ID63_while_condition:
	lw	t1, fuckLLVM_head
	sw	t1, -628(s0)
	lw	t1, fuckLLVM_tail
	sw	t1, -632(s0)
	lw	t0, -632(s0)
	lw	t1, -628(s0)
	slt	t2, t0, t1
	sw	t2, -636(s0)
	lw	t0, -636(s0)
	xori	t1, t0, 1
	sw	t1, -636(s0)
	lw	t0, -636(s0)
	bnez	t0, .main_ID66_while_suite
	j	.main_ID66_while_out
.main_ID80_for_condition:
	lw	t1, fuckLLVM_j
	sw	t1, -640(s0)
	li	t0, 8
	sw	t0, -644(s0)
	lw	t0, -640(s0)
	lw	t1, -644(s0)
	slt	t2, t0, t1
	sw	t2, -648(s0)
	lw	t0, -648(s0)
	bnez	t0, .main_ID80_for_suite
	j	.main_ID80_for_out
.main_ID80_for_suite:
	lw	t1, fuckLLVM_x
	sw	t1, -652(s0)
	lw	t1, fuckLLVM_dx
	sw	t1, -656(s0)
	lw	t1, fuckLLVM_j
	sw	t1, -660(s0)
	li	t0, 4
	sw	t0, -664(s0)
	lw	t0, -660(s0)
	lw	t1, -664(s0)
	mul	t2, t0, t1
	sw	t2, -668(s0)
	lw	t0, -656(s0)
	lw	t1, -668(s0)
	add	t2, t0, t1
	sw	t2, -672(s0)
	lw	t0, -672(s0)
	lw	t1, 0(t0)
	sw	t1, -676(s0)
	lw	t0, -652(s0)
	lw	t1, -676(s0)
	add	t2, t0, t1
	sw	t2, -680(s0)
	lw	t1, fuckLLVM_y
	sw	t1, -684(s0)
	lw	t1, fuckLLVM_dy
	sw	t1, -688(s0)
	lw	t1, fuckLLVM_j
	sw	t1, -692(s0)
	li	t0, 4
	sw	t0, -696(s0)
	lw	t0, -692(s0)
	lw	t1, -696(s0)
	mul	t2, t0, t1
	sw	t2, -700(s0)
	lw	t0, -688(s0)
	lw	t1, -700(s0)
	add	t2, t0, t1
	sw	t2, -704(s0)
	lw	t0, -704(s0)
	lw	t1, 0(t0)
	sw	t1, -708(s0)
	lw	t0, -684(s0)
	lw	t1, -708(s0)
	add	t2, t0, t1
	sw	t2, -712(s0)
	lw	t0, -680(s0)
	mv	a0, t0
	lw	t0, -712(s0)
	mv	a1, t0
	call	addList
	j	.main_ID80_for_incr
.main_ID80_for_incr:
	lw	t1, fuckLLVM_j
	sw	t1, -716(s0)
	li	t0, 1
	sw	t0, -720(s0)
	lw	t0, -716(s0)
	lw	t1, -720(s0)
	add	t2, t0, t1
	sw	t2, -724(s0)
	lw	t0, -724(s0)
	lw	t1, -728(s0)
	sw	t0, fuckLLVM_j, t1
	j	.main_ID80_for_condition
.main_ID80_for_out:
	lw	t1, fuckLLVM_ok
	sw	t1, -732(s0)
	li	t0, 1
	sw	t0, -736(s0)
	lw	t0, -732(s0)
	lw	t1, -736(s0)
	xor	t2, t0, t1
	sw	t2, -740(s0)
	lw	t0, -740(s0)
	sltiu	t1, t0, 1
	sw	t1, -740(s0)
	lw	t0, -740(s0)
	bnez	t0, .main_ID99_if_true
	j	.main_ID99_if_out
.main_ID99_if_true:
	j	.main_ID66_while_out
	j	.main_ID99_if_out
.main_ID99_if_out:
	lw	t1, fuckLLVM_head
	sw	t1, -744(s0)
	li	t0, 1
	sw	t0, -748(s0)
	lw	t0, -744(s0)
	lw	t1, -748(s0)
	add	t2, t0, t1
	sw	t2, -752(s0)
	lw	t0, -752(s0)
	lw	t1, -756(s0)
	sw	t0, fuckLLVM_head, t1
	j	.main_ID63_while_condition
.main_ID66_while_suite:
	lw	t1, fuckLLVM_xlist
	sw	t1, -760(s0)
	lw	t1, fuckLLVM_head
	sw	t1, -764(s0)
	li	t0, 4
	sw	t0, -768(s0)
	lw	t0, -764(s0)
	lw	t1, -768(s0)
	mul	t2, t0, t1
	sw	t2, -772(s0)
	lw	t0, -760(s0)
	lw	t1, -772(s0)
	add	t2, t0, t1
	sw	t2, -776(s0)
	lw	t0, -776(s0)
	lw	t1, 0(t0)
	sw	t1, -780(s0)
	lw	t0, -780(s0)
	lw	t1, -784(s0)
	sw	t0, fuckLLVM_x, t1
	lw	t1, fuckLLVM_ylist
	sw	t1, -788(s0)
	lw	t1, fuckLLVM_head
	sw	t1, -792(s0)
	li	t0, 4
	sw	t0, -796(s0)
	lw	t0, -792(s0)
	lw	t1, -796(s0)
	mul	t2, t0, t1
	sw	t2, -800(s0)
	lw	t0, -788(s0)
	lw	t1, -800(s0)
	add	t2, t0, t1
	sw	t2, -804(s0)
	lw	t0, -804(s0)
	lw	t1, 0(t0)
	sw	t1, -808(s0)
	lw	t0, -808(s0)
	lw	t1, -812(s0)
	sw	t0, fuckLLVM_y, t1
	lw	t1, fuckLLVM_step
	sw	t1, -816(s0)
	lw	t1, fuckLLVM_x
	sw	t1, -820(s0)
	li	t0, 8
	sw	t0, -824(s0)
	lw	t0, -820(s0)
	lw	t1, -824(s0)
	mul	t2, t0, t1
	sw	t2, -828(s0)
	lw	t0, -816(s0)
	lw	t1, -828(s0)
	add	t2, t0, t1
	sw	t2, -832(s0)
	lw	t0, -832(s0)
	lw	t1, 0(t0)
	sw	t1, -836(s0)
	lw	t1, fuckLLVM_y
	sw	t1, -840(s0)
	li	t0, 4
	sw	t0, -844(s0)
	lw	t0, -840(s0)
	lw	t1, -844(s0)
	mul	t2, t0, t1
	sw	t2, -848(s0)
	lw	t0, -836(s0)
	lw	t1, -848(s0)
	add	t2, t0, t1
	sw	t2, -852(s0)
	lw	t0, -852(s0)
	lw	t1, 0(t0)
	sw	t1, -856(s0)
	lw	t0, -856(s0)
	lw	t1, -860(s0)
	sw	t0, fuckLLVM_now, t1
	li	t0, 0
	sw	t0, -864(s0)
	lw	t0, -864(s0)
	lw	t1, -868(s0)
	sw	t0, fuckLLVM_j, t1
	j	.main_ID80_for_condition
.main_ID66_while_out:
	lw	t1, fuckLLVM_ok
	sw	t1, -872(s0)
	li	t0, 1
	sw	t0, -876(s0)
	lw	t0, -872(s0)
	lw	t1, -876(s0)
	xor	t2, t0, t1
	sw	t2, -880(s0)
	lw	t0, -880(s0)
	sltiu	t1, t0, 1
	sw	t1, -880(s0)
	lw	t0, -880(s0)
	bnez	t0, .main_ID103_if_true
	j	.main_ID103_if_false
.main_ID103_if_true:
	lw	t1, fuckLLVM_step
	sw	t1, -884(s0)
	lw	t1, fuckLLVM_targetx
	sw	t1, -888(s0)
	li	t0, 8
	sw	t0, -892(s0)
	lw	t0, -888(s0)
	lw	t1, -892(s0)
	mul	t2, t0, t1
	sw	t2, -896(s0)
	lw	t0, -884(s0)
	lw	t1, -896(s0)
	add	t2, t0, t1
	sw	t2, -900(s0)
	lw	t0, -900(s0)
	lw	t1, 0(t0)
	sw	t1, -904(s0)
	lw	t1, fuckLLVM_targety
	sw	t1, -908(s0)
	li	t0, 4
	sw	t0, -912(s0)
	lw	t0, -908(s0)
	lw	t1, -912(s0)
	mul	t2, t0, t1
	sw	t2, -916(s0)
	lw	t0, -904(s0)
	lw	t1, -916(s0)
	add	t2, t0, t1
	sw	t2, -920(s0)
	lw	t0, -920(s0)
	lw	t1, 0(t0)
	sw	t1, -924(s0)
	lw	t0, -924(s0)
	mv	a0, t0
	call	toString
	mv	t1, a0
	sw	t1, -928(s0)
	lw	t0, -928(s0)
	mv	a0, t0
	call	println
	j	.main_ID103_if_out
.main_ID103_if_false:
	la	t0, fuckLLVM_.str.0
	sw	t0, -932(s0)
	lw	t0, -932(s0)
	mv	a0, t0
	call	print
	j	.main_ID103_if_out
.main_ID103_if_out:
	li	t0, 0
	sw	t0, -936(s0)
	lw	t0, -936(s0)
	sw	t0, -12(s0)
	j	.main_return
	j	.main_return
.main_return:
	lw	t1, -12(s0)
	sw	t1, -940(s0)
	lw	t0, -940(s0)
	mv	a0, t0
	lw	ra, 940(sp)
	lw	s0, 936(sp)
	addi	sp, sp, 944
	ret

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

