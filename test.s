	.text

	.globl	__init
	.p2align	2
	.type	__init,@function
__init:
.__init_assemblyInit:
	addi	sp, sp, -64
	sw	ra, 60(sp)
	sw	s0, 56(sp)
	addi	s0, sp, 64
.__init_entry:
	li	t0, 15001
	sw	t0, -12(s0)
	li	t0, 1
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
	li	t0, 15001
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
	sw	t0, fuckLLVM_b, t1
	j	.__init_return
.__init_return:
	lw	ra, 60(sp)
	lw	s0, 56(sp)
	addi	sp, sp, 64
	ret

	.globl	main
	.p2align	2
	.type	main,@function
main:
.main_assemblyInit:
	addi	sp, sp, -336
	sw	ra, 332(sp)
	sw	s0, 328(sp)
	addi	s0, sp, 336
.main_entry:
	call	__init
	li	t0, 0
	sw	t0, -16(s0)
	lw	t0, -16(s0)
	lw	t1, -20(s0)
	sw	t0, 0(t1)
	li	t0, 1
	sw	t0, -24(s0)
	lw	t0, -24(s0)
	lw	t1, -28(s0)
	sw	t0, 0(t1)
	j	.main_ID1_for_condition
.main_ID1_for_condition:
	lw	t0, -28(s0)
	lw	t1, 0(t0)
	sw	t1, -32(s0)
	lw	t1, fuckLLVM_N
	sw	t1, -36(s0)
	lw	t0, -36(s0)
	lw	t1, -32(s0)
	slt	t2, t0, t1
	sw	t2, -40(s0)
	lw	t0, -40(s0)
	xori	t1, t0, 1
	sw	t1, -40(s0)
	lw	t0, -40(s0)
	bnez	t0, .main_ID1_for_suite
	j	.main_ID1_for_out
.main_ID1_for_suite:
	lw	t1, fuckLLVM_b
	sw	t1, -44(s0)
	lw	t0, -28(s0)
	lw	t1, 0(t0)
	sw	t1, -48(s0)
	li	t0, 1
	sw	t0, -52(s0)
	lw	t0, -48(s0)
	lw	t1, -52(s0)
	mul	t2, t0, t1
	sw	t2, -56(s0)
	lw	t0, -44(s0)
	lw	t1, -56(s0)
	add	t2, t0, t1
	sw	t2, -60(s0)
	li	t0, 1
	sw	t0, -64(s0)
	lw	t0, -64(s0)
	lw	t1, -60(s0)
	sb	t0, 0(t1)
	j	.main_ID1_for_incr
.main_ID1_for_incr:
	lw	t0, -28(s0)
	lw	t1, 0(t0)
	sw	t1, -68(s0)
	li	t0, 1
	sw	t0, -72(s0)
	lw	t0, -68(s0)
	lw	t1, -72(s0)
	add	t2, t0, t1
	sw	t2, -76(s0)
	lw	t0, -76(s0)
	lw	t1, -28(s0)
	sw	t0, 0(t1)
	j	.main_ID1_for_condition
.main_ID1_for_out:
	li	t0, 2
	sw	t0, -80(s0)
	lw	t0, -80(s0)
	lw	t1, -28(s0)
	sw	t0, 0(t1)
	j	.main_ID9_for_condition
.main_ID9_for_condition:
	lw	t0, -28(s0)
	lw	t1, 0(t0)
	sw	t1, -84(s0)
	lw	t1, fuckLLVM_N
	sw	t1, -88(s0)
	lw	t0, -88(s0)
	lw	t1, -84(s0)
	slt	t2, t0, t1
	sw	t2, -92(s0)
	lw	t0, -92(s0)
	xori	t1, t0, 1
	sw	t1, -92(s0)
	lw	t0, -92(s0)
	bnez	t0, .main_ID9_for_suite
	j	.main_ID9_for_out
.main_ID9_for_suite:
	lw	t1, fuckLLVM_b
	sw	t1, -96(s0)
	lw	t0, -28(s0)
	lw	t1, 0(t0)
	sw	t1, -100(s0)
	li	t0, 1
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
	lb	t1, 0(t0)
	sb	t1, -116(s0)
	lb	t0, -116(s0)
	bnez	t0, .main_ID17_if_true
	j	.main_ID17_if_out
.main_ID20_AndAnd_true:
	lw	t1, fuckLLVM_b
	sw	t1, -120(s0)
	lw	t0, -28(s0)
	lw	t1, 0(t0)
	sw	t1, -124(s0)
	li	t0, 2
	sw	t0, -128(s0)
	lw	t0, -124(s0)
	lw	t1, -128(s0)
	sub	t2, t0, t1
	sw	t2, -132(s0)
	li	t0, 1
	sw	t0, -136(s0)
	lw	t0, -132(s0)
	lw	t1, -136(s0)
	mul	t2, t0, t1
	sw	t2, -140(s0)
	lw	t0, -120(s0)
	lw	t1, -140(s0)
	add	t2, t0, t1
	sw	t2, -144(s0)
	lw	t0, -144(s0)
	lb	t1, 0(t0)
	sb	t1, -148(s0)
	lb	t0, -148(s0)
	mv	t1, t0
	sw	t1, -152(s0)
	j	.main_ID20_AndAnd_out
.main_ID20_AndAnd_out:
	li	t0, 0
	sw	t0, -156(s0)
	lw	t0, -152(s0)
	bnez	t0, .main_ID27_if_true
	j	.main_ID27_if_out
.main_ID27_if_true:
	lw	t1, fuckLLVM_resultCount
	sw	t1, -160(s0)
	li	t0, 1
	sw	t0, -164(s0)
	lw	t0, -160(s0)
	lw	t1, -164(s0)
	add	t2, t0, t1
	sw	t2, -168(s0)
	lw	t0, -168(s0)
	lw	t1, -172(s0)
	sw	t0, fuckLLVM_resultCount, t1
	lw	t0, -28(s0)
	lw	t1, 0(t0)
	sw	t1, -176(s0)
	li	t0, 2
	sw	t0, -180(s0)
	lw	t0, -176(s0)
	lw	t1, -180(s0)
	sub	t2, t0, t1
	sw	t2, -184(s0)
	lw	t0, -184(s0)
	mv	a0, t0
	call	toString
	mv	t1, a0
	sw	t1, -188(s0)
	la	t0, fuckLLVM_.str.0
	sw	t0, -192(s0)
	lw	t0, -188(s0)
	mv	a0, t0
	lw	t0, -192(s0)
	mv	a1, t0
	call	string_add
	mv	t1, a0
	sw	t1, -196(s0)
	lw	t0, -28(s0)
	lw	t1, 0(t0)
	sw	t1, -200(s0)
	lw	t0, -200(s0)
	mv	a0, t0
	call	toString
	mv	t1, a0
	sw	t1, -204(s0)
	lw	t0, -196(s0)
	mv	a0, t0
	lw	t0, -204(s0)
	mv	a1, t0
	call	string_add
	mv	t1, a0
	sw	t1, -208(s0)
	lw	t0, -208(s0)
	mv	a0, t0
	call	println
	j	.main_ID27_if_out
.main_ID27_if_out:
	j	.main_ID43_while_condition
.main_ID43_while_condition:
	lw	t0, -28(s0)
	lw	t1, 0(t0)
	sw	t1, -212(s0)
	lw	t1, -12(s0)
	sw	t1, -216(s0)
	lw	t0, -212(s0)
	lw	t1, -216(s0)
	mul	t2, t0, t1
	sw	t2, -220(s0)
	lw	t1, fuckLLVM_N
	sw	t1, -224(s0)
	lw	t0, -224(s0)
	lw	t1, -220(s0)
	slt	t2, t0, t1
	sw	t2, -228(s0)
	lw	t0, -228(s0)
	xori	t1, t0, 1
	sw	t1, -228(s0)
	lw	t0, -228(s0)
	bnez	t0, .main_ID48_while_suite
	j	.main_ID48_while_out
.main_ID48_while_suite:
	lw	t1, fuckLLVM_b
	sw	t1, -232(s0)
	lw	t0, -28(s0)
	lw	t1, 0(t0)
	sw	t1, -236(s0)
	lw	t1, -12(s0)
	sw	t1, -240(s0)
	lw	t0, -236(s0)
	lw	t1, -240(s0)
	mul	t2, t0, t1
	sw	t2, -244(s0)
	li	t0, 1
	sw	t0, -248(s0)
	lw	t0, -244(s0)
	lw	t1, -248(s0)
	mul	t2, t0, t1
	sw	t2, -252(s0)
	lw	t0, -232(s0)
	lw	t1, -252(s0)
	add	t2, t0, t1
	sw	t2, -256(s0)
	li	t0, 0
	sw	t0, -260(s0)
	lw	t0, -260(s0)
	lw	t1, -256(s0)
	sb	t0, 0(t1)
	lw	t1, -12(s0)
	sw	t1, -264(s0)
	li	t0, 1
	sw	t0, -268(s0)
	lw	t0, -264(s0)
	lw	t1, -268(s0)
	add	t2, t0, t1
	sw	t2, -272(s0)
	lw	t0, -272(s0)
	sw	t0, -12(s0)
	j	.main_ID43_while_condition
.main_ID48_while_out:
	j	.main_ID17_if_out
.main_ID17_if_true:
	li	t0, 2
	sw	t0, -276(s0)
	lw	t0, -276(s0)
	sw	t0, -12(s0)
	lw	t0, -28(s0)
	lw	t1, 0(t0)
	sw	t1, -280(s0)
	li	t0, 3
	sw	t0, -284(s0)
	lw	t0, -284(s0)
	lw	t1, -280(s0)
	slt	t2, t0, t1
	sw	t2, -288(s0)
	lw	t0, -156(s0)
	mv	t1, t0
	sw	t1, -152(s0)
	lw	t0, -288(s0)
	bnez	t0, .main_ID20_AndAnd_true
	lw	t0, -156(s0)
	mv	t1, t0
	sw	t1, -152(s0)
	j	.main_ID20_AndAnd_out
.main_ID17_if_out:
	j	.main_ID9_for_incr
.main_ID9_for_incr:
	lw	t0, -28(s0)
	lw	t1, 0(t0)
	sw	t1, -292(s0)
	li	t0, 1
	sw	t0, -296(s0)
	lw	t0, -292(s0)
	lw	t1, -296(s0)
	add	t2, t0, t1
	sw	t2, -300(s0)
	lw	t0, -300(s0)
	lw	t1, -28(s0)
	sw	t0, 0(t1)
	j	.main_ID9_for_condition
.main_ID9_for_out:
	lw	t1, fuckLLVM_resultCount
	sw	t1, -304(s0)
	lw	t0, -304(s0)
	mv	a0, t0
	call	toString
	mv	t1, a0
	sw	t1, -308(s0)
	la	t0, fuckLLVM_.str.1
	sw	t0, -312(s0)
	lw	t0, -312(s0)
	mv	a0, t0
	lw	t0, -308(s0)
	mv	a1, t0
	call	string_add
	mv	t1, a0
	sw	t1, -316(s0)
	lw	t0, -316(s0)
	mv	a0, t0
	call	println
	li	t0, 0
	sw	t0, -320(s0)
	lw	t0, -320(s0)
	lw	t1, -20(s0)
	sw	t0, 0(t1)
	j	.main_return
	j	.main_return
.main_return:
	lw	t0, -20(s0)
	lw	t1, 0(t0)
	sw	t1, -324(s0)
	lw	t0, -324(s0)
	mv	a0, t0
	lw	ra, 332(sp)
	lw	s0, 328(sp)
	addi	sp, sp, 336
	ret

	.section	.sbss
	.type	fuckLLVM_N,@object
	.globl	fuckLLVM_N
	.p2align	2
fuckLLVM_N:
	.word	15000
	.size	fuckLLVM_N, 8

	.section	.sbss
	.type	fuckLLVM_b,@object
	.globl	fuckLLVM_b
	.p2align	2
fuckLLVM_b:
	.word	0
	.size	fuckLLVM_b, 8

	.section	.sbss
	.type	fuckLLVM_resultCount,@object
	.globl	fuckLLVM_resultCount
	.p2align	2
fuckLLVM_resultCount:
	.word	0
	.size	fuckLLVM_resultCount, 8

	.section	.rodata
	.type	fuckLLVM_.str.0,@object
fuckLLVM_.str.0:
	.asciz	"  "
	.size	fuckLLVM_.str.0, 2

	.section	.rodata
	.type	fuckLLVM_.str.1,@object
fuckLLVM_.str.1:
	.asciz	"Total:  "
	.size	fuckLLVM_.str.1, 8

