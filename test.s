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
	li	t0, 10100
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
	li	t0, 10100
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
	sw	t0, fuckLLVM_a, t1
	j	.__init_return
.__init_return:
	lw	ra, 60(sp)
	lw	s0, 56(sp)
	addi	sp, sp, 64
	ret

	.globl	qsrt
	.p2align	2
	.type	qsrt,@function
qsrt:
.qsrt_assemblyInit:
	addi	sp, sp, -384
	sw	ra, 380(sp)
	sw	s0, 376(sp)
	addi	s0, sp, 384
	mv	t1, a0
	sw	t1, -40(s0)
	mv	t1, a1
	sw	t1, -44(s0)
.qsrt_entry:
	lw	t0, -40(s0)
	sw	t0, -12(s0)
	lw	t0, -44(s0)
	sw	t0, -16(s0)
	lw	t1, -12(s0)
	sw	t1, -48(s0)
	lw	t0, -48(s0)
	sw	t0, -24(s0)
	lw	t1, -16(s0)
	sw	t1, -52(s0)
	lw	t0, -52(s0)
	sw	t0, -28(s0)
	lw	t1, fuckLLVM_a
	sw	t1, -56(s0)
	lw	t1, -12(s0)
	sw	t1, -60(s0)
	lw	t1, -16(s0)
	sw	t1, -64(s0)
	lw	t0, -60(s0)
	lw	t1, -64(s0)
	add	t2, t0, t1
	sw	t2, -68(s0)
	li	t0, 2
	sw	t0, -72(s0)
	lw	t0, -68(s0)
	lw	t1, -72(s0)
	div	t2, t0, t1
	sw	t2, -76(s0)
	li	t0, 4
	sw	t0, -80(s0)
	lw	t0, -76(s0)
	lw	t1, -80(s0)
	mul	t2, t0, t1
	sw	t2, -84(s0)
	lw	t0, -56(s0)
	lw	t1, -84(s0)
	add	t2, t0, t1
	sw	t2, -88(s0)
	lw	t0, -88(s0)
	lw	t1, 0(t0)
	sw	t1, -92(s0)
	lw	t0, -92(s0)
	sw	t0, -32(s0)
	j	.qsrt_ID17_while_condition
.qsrt_ID17_while_condition:
	lw	t1, -24(s0)
	sw	t1, -96(s0)
	lw	t1, -28(s0)
	sw	t1, -100(s0)
	lw	t0, -100(s0)
	lw	t1, -96(s0)
	slt	t2, t0, t1
	sw	t2, -104(s0)
	lw	t0, -104(s0)
	xori	t1, t0, 1
	sw	t1, -104(s0)
	lw	t0, -104(s0)
	bnez	t0, .qsrt_ID20_while_suite
	j	.qsrt_ID20_while_out
.qsrt_ID20_while_condition:
	lw	t1, fuckLLVM_a
	sw	t1, -108(s0)
	lw	t1, -24(s0)
	sw	t1, -112(s0)
	li	t0, 4
	sw	t0, -116(s0)
	lw	t0, -112(s0)
	lw	t1, -116(s0)
	mul	t2, t0, t1
	sw	t2, -120(s0)
	lw	t0, -108(s0)
	lw	t1, -120(s0)
	add	t2, t0, t1
	sw	t2, -124(s0)
	lw	t0, -124(s0)
	lw	t1, 0(t0)
	sw	t1, -128(s0)
	lw	t1, -32(s0)
	sw	t1, -132(s0)
	lw	t0, -128(s0)
	lw	t1, -132(s0)
	slt	t2, t0, t1
	sw	t2, -136(s0)
	lw	t0, -136(s0)
	bnez	t0, .qsrt_ID26_while_suite
	j	.qsrt_ID26_while_out
.qsrt_ID26_while_suite:
	lw	t1, -24(s0)
	sw	t1, -140(s0)
	li	t0, 1
	sw	t0, -144(s0)
	lw	t0, -140(s0)
	lw	t1, -144(s0)
	add	t2, t0, t1
	sw	t2, -148(s0)
	lw	t0, -148(s0)
	sw	t0, -24(s0)
	j	.qsrt_ID20_while_condition
.qsrt_ID26_while_out:
	j	.qsrt_ID28_while_condition
.qsrt_ID28_while_condition:
	lw	t1, fuckLLVM_a
	sw	t1, -152(s0)
	lw	t1, -28(s0)
	sw	t1, -156(s0)
	li	t0, 4
	sw	t0, -160(s0)
	lw	t0, -156(s0)
	lw	t1, -160(s0)
	mul	t2, t0, t1
	sw	t2, -164(s0)
	lw	t0, -152(s0)
	lw	t1, -164(s0)
	add	t2, t0, t1
	sw	t2, -168(s0)
	lw	t0, -168(s0)
	lw	t1, 0(t0)
	sw	t1, -172(s0)
	lw	t1, -32(s0)
	sw	t1, -176(s0)
	lw	t0, -176(s0)
	lw	t1, -172(s0)
	slt	t2, t0, t1
	sw	t2, -180(s0)
	lw	t0, -180(s0)
	bnez	t0, .qsrt_ID34_while_suite
	j	.qsrt_ID34_while_out
.qsrt_ID34_while_suite:
	lw	t1, -28(s0)
	sw	t1, -184(s0)
	li	t0, 1
	sw	t0, -188(s0)
	lw	t0, -184(s0)
	lw	t1, -188(s0)
	sub	t2, t0, t1
	sw	t2, -192(s0)
	lw	t0, -192(s0)
	sw	t0, -28(s0)
	j	.qsrt_ID28_while_condition
.qsrt_ID34_while_out:
	lw	t1, -24(s0)
	sw	t1, -196(s0)
	lw	t1, -28(s0)
	sw	t1, -200(s0)
	lw	t0, -200(s0)
	lw	t1, -196(s0)
	slt	t2, t0, t1
	sw	t2, -204(s0)
	lw	t0, -204(s0)
	xori	t1, t0, 1
	sw	t1, -204(s0)
	lw	t0, -204(s0)
	bnez	t0, .qsrt_ID38_if_true
	j	.qsrt_ID38_if_out
.qsrt_ID38_if_true:
	lw	t1, fuckLLVM_a
	sw	t1, -208(s0)
	lw	t1, -24(s0)
	sw	t1, -212(s0)
	li	t0, 4
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
	lw	t0, -228(s0)
	sw	t0, -36(s0)
	lw	t1, fuckLLVM_a
	sw	t1, -232(s0)
	lw	t1, -24(s0)
	sw	t1, -236(s0)
	li	t0, 4
	sw	t0, -240(s0)
	lw	t0, -236(s0)
	lw	t1, -240(s0)
	mul	t2, t0, t1
	sw	t2, -244(s0)
	lw	t0, -232(s0)
	lw	t1, -244(s0)
	add	t2, t0, t1
	sw	t2, -248(s0)
	lw	t1, fuckLLVM_a
	sw	t1, -252(s0)
	lw	t1, -28(s0)
	sw	t1, -256(s0)
	li	t0, 4
	sw	t0, -260(s0)
	lw	t0, -256(s0)
	lw	t1, -260(s0)
	mul	t2, t0, t1
	sw	t2, -264(s0)
	lw	t0, -252(s0)
	lw	t1, -264(s0)
	add	t2, t0, t1
	sw	t2, -268(s0)
	lw	t0, -268(s0)
	lw	t1, 0(t0)
	sw	t1, -272(s0)
	lw	t0, -272(s0)
	lw	t1, -248(s0)
	sw	t0, 0(t1)
	lw	t1, fuckLLVM_a
	sw	t1, -276(s0)
	lw	t1, -28(s0)
	sw	t1, -280(s0)
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
	lw	t1, -36(s0)
	sw	t1, -296(s0)
	lw	t0, -296(s0)
	lw	t1, -292(s0)
	sw	t0, 0(t1)
	lw	t1, -24(s0)
	sw	t1, -300(s0)
	li	t0, 1
	sw	t0, -304(s0)
	lw	t0, -300(s0)
	lw	t1, -304(s0)
	add	t2, t0, t1
	sw	t2, -308(s0)
	lw	t0, -308(s0)
	sw	t0, -24(s0)
	lw	t1, -28(s0)
	sw	t1, -312(s0)
	li	t0, 1
	sw	t0, -316(s0)
	lw	t0, -312(s0)
	lw	t1, -316(s0)
	sub	t2, t0, t1
	sw	t2, -320(s0)
	lw	t0, -320(s0)
	sw	t0, -28(s0)
	j	.qsrt_ID38_if_out
.qsrt_ID38_if_out:
	j	.qsrt_ID17_while_condition
.qsrt_ID20_while_suite:
	j	.qsrt_ID20_while_condition
.qsrt_ID20_while_out:
	lw	t1, -12(s0)
	sw	t1, -324(s0)
	lw	t1, -28(s0)
	sw	t1, -328(s0)
	lw	t0, -324(s0)
	lw	t1, -328(s0)
	slt	t2, t0, t1
	sw	t2, -332(s0)
	lw	t0, -332(s0)
	bnez	t0, .qsrt_ID61_if_true
	j	.qsrt_ID61_if_out
.qsrt_ID61_if_true:
	lw	t1, -12(s0)
	sw	t1, -336(s0)
	lw	t1, -28(s0)
	sw	t1, -340(s0)
	lw	t0, -336(s0)
	mv	a0, t0
	lw	t0, -340(s0)
	mv	a1, t0
	call	qsrt
	mv	t1, a0
	sw	t1, -344(s0)
	j	.qsrt_ID61_if_out
.qsrt_ID61_if_out:
	lw	t1, -24(s0)
	sw	t1, -348(s0)
	lw	t1, -16(s0)
	sw	t1, -352(s0)
	lw	t0, -348(s0)
	lw	t1, -352(s0)
	slt	t2, t0, t1
	sw	t2, -356(s0)
	lw	t0, -356(s0)
	bnez	t0, .qsrt_ID67_if_true
	j	.qsrt_ID67_if_out
.qsrt_ID67_if_true:
	lw	t1, -24(s0)
	sw	t1, -360(s0)
	lw	t1, -16(s0)
	sw	t1, -364(s0)
	lw	t0, -360(s0)
	mv	a0, t0
	lw	t0, -364(s0)
	mv	a1, t0
	call	qsrt
	mv	t1, a0
	sw	t1, -368(s0)
	j	.qsrt_ID67_if_out
.qsrt_ID67_if_out:
	li	t0, 0
	sw	t0, -372(s0)
	lw	t0, -372(s0)
	sw	t0, -20(s0)
	j	.qsrt_return
	j	.qsrt_return
.qsrt_return:
	lw	t1, -20(s0)
	sw	t1, -376(s0)
	lw	t0, -376(s0)
	mv	a0, t0
	lw	ra, 380(sp)
	lw	s0, 376(sp)
	addi	sp, sp, 384
	ret

	.globl	main
	.p2align	2
	.type	main,@function
main:
.main_assemblyInit:
	addi	sp, sp, -176
	sw	ra, 172(sp)
	sw	s0, 168(sp)
	addi	s0, sp, 176
.main_entry:
	call	__init
	li	t0, 0
	sw	t0, -20(s0)
	lw	t0, -20(s0)
	sw	t0, -12(s0)
	li	t0, 1
	sw	t0, -24(s0)
	lw	t0, -24(s0)
	sw	t0, -16(s0)
	j	.main_ID1_for_condition
.main_ID1_for_condition:
	lw	t1, -16(s0)
	sw	t1, -28(s0)
	lw	t1, fuckLLVM_n
	sw	t1, -32(s0)
	lw	t0, -32(s0)
	lw	t1, -28(s0)
	slt	t2, t0, t1
	sw	t2, -36(s0)
	lw	t0, -36(s0)
	xori	t1, t0, 1
	sw	t1, -36(s0)
	lw	t0, -36(s0)
	bnez	t0, .main_ID1_for_suite
	j	.main_ID1_for_out
.main_ID1_for_suite:
	lw	t1, fuckLLVM_a
	sw	t1, -40(s0)
	lw	t1, -16(s0)
	sw	t1, -44(s0)
	li	t0, 4
	sw	t0, -48(s0)
	lw	t0, -44(s0)
	lw	t1, -48(s0)
	mul	t2, t0, t1
	sw	t2, -52(s0)
	lw	t0, -40(s0)
	lw	t1, -52(s0)
	add	t2, t0, t1
	sw	t2, -56(s0)
	lw	t1, fuckLLVM_n
	sw	t1, -60(s0)
	li	t0, 1
	sw	t0, -64(s0)
	lw	t0, -60(s0)
	lw	t1, -64(s0)
	add	t2, t0, t1
	sw	t2, -68(s0)
	lw	t1, -16(s0)
	sw	t1, -72(s0)
	lw	t0, -68(s0)
	lw	t1, -72(s0)
	sub	t2, t0, t1
	sw	t2, -76(s0)
	lw	t0, -76(s0)
	lw	t1, -56(s0)
	sw	t0, 0(t1)
	j	.main_ID1_for_incr
.main_ID1_for_incr:
	lw	t1, -16(s0)
	sw	t1, -80(s0)
	li	t0, 1
	sw	t0, -84(s0)
	lw	t0, -80(s0)
	lw	t1, -84(s0)
	add	t2, t0, t1
	sw	t2, -88(s0)
	lw	t0, -88(s0)
	sw	t0, -16(s0)
	j	.main_ID1_for_condition
.main_ID1_for_out:
	lw	t1, fuckLLVM_n
	sw	t1, -92(s0)
	li	t0, 1
	sw	t0, -96(s0)
	lw	t0, -96(s0)
	mv	a0, t0
	lw	t0, -92(s0)
	mv	a1, t0
	call	qsrt
	mv	t1, a0
	sw	t1, -100(s0)
	li	t0, 1
	sw	t0, -104(s0)
	lw	t0, -104(s0)
	sw	t0, -16(s0)
	j	.main_ID15_for_condition
.main_ID15_for_condition:
	lw	t1, -16(s0)
	sw	t1, -108(s0)
	lw	t1, fuckLLVM_n
	sw	t1, -112(s0)
	lw	t0, -112(s0)
	lw	t1, -108(s0)
	slt	t2, t0, t1
	sw	t2, -116(s0)
	lw	t0, -116(s0)
	xori	t1, t0, 1
	sw	t1, -116(s0)
	lw	t0, -116(s0)
	bnez	t0, .main_ID15_for_suite
	j	.main_ID15_for_out
.main_ID15_for_suite:
	lw	t1, fuckLLVM_a
	sw	t1, -120(s0)
	lw	t1, -16(s0)
	sw	t1, -124(s0)
	li	t0, 4
	sw	t0, -128(s0)
	lw	t0, -124(s0)
	lw	t1, -128(s0)
	mul	t2, t0, t1
	sw	t2, -132(s0)
	lw	t0, -120(s0)
	lw	t1, -132(s0)
	add	t2, t0, t1
	sw	t2, -136(s0)
	lw	t0, -136(s0)
	lw	t1, 0(t0)
	sw	t1, -140(s0)
	lw	t0, -140(s0)
	mv	a0, t0
	call	toString
	mv	t1, a0
	sw	t1, -144(s0)
	lw	t0, -144(s0)
	mv	a0, t0
	call	print
	la	t0, fuckLLVM_.str.0
	sw	t0, -148(s0)
	lw	t0, -148(s0)
	mv	a0, t0
	call	print
	j	.main_ID15_for_incr
.main_ID15_for_incr:
	lw	t1, -16(s0)
	sw	t1, -152(s0)
	li	t0, 1
	sw	t0, -156(s0)
	lw	t0, -152(s0)
	lw	t1, -156(s0)
	add	t2, t0, t1
	sw	t2, -160(s0)
	lw	t0, -160(s0)
	sw	t0, -16(s0)
	j	.main_ID15_for_condition
.main_ID15_for_out:
	la	t0, fuckLLVM_.str.1
	sw	t0, -164(s0)
	lw	t0, -164(s0)
	mv	a0, t0
	call	print
	li	t0, 0
	sw	t0, -168(s0)
	lw	t0, -168(s0)
	sw	t0, -12(s0)
	j	.main_return
	j	.main_return
.main_return:
	lw	t1, -12(s0)
	sw	t1, -172(s0)
	lw	t0, -172(s0)
	mv	a0, t0
	lw	ra, 172(sp)
	lw	s0, 168(sp)
	addi	sp, sp, 176
	ret

	.section	.sbss
	.type	fuckLLVM_a,@object
	.globl	fuckLLVM_a
	.p2align	2
fuckLLVM_a:
	.word	0
	.size	fuckLLVM_a, 8

	.section	.sbss
	.type	fuckLLVM_n,@object
	.globl	fuckLLVM_n
	.p2align	2
fuckLLVM_n:
	.word	10000
	.size	fuckLLVM_n, 8

	.section	.rodata
	.type	fuckLLVM_.str.0,@object
fuckLLVM_.str.0:
	.asciz	"  "
	.size	fuckLLVM_.str.0, 2

	.section	.rodata
	.type	fuckLLVM_.str.1,@object
fuckLLVM_.str.1:
	.asciz	"\n "
	.size	fuckLLVM_.str.1, 3

