	.text

	.globl	__init
	.p2align	2
	.type	__init,@function
__init:
.__init_assemblyInit:
	addi	sp, sp, -48
	sw	ra, 44(sp)
	sw	s0, 40(sp)
	addi	s0, sp, 48
.__init_entry:
	addi	t1, zero, 4
	sw	t1, -12(s0)
	addi	t1, zero, 4
	sw	t1, -16(s0)
	lw	t0, -12(s0)
	lw	t1, -16(s0)
	mul	t2, t0, t1
	sw	t2, -20(s0)
	addi	t1, zero, 4
	sw	t1, -24(s0)
	lw	t0, -20(s0)
	lw	t1, -24(s0)
	add	t2, t0, t1
	sw	t2, -28(s0)
	lw	t0, -28(s0)
	mv	a0, t0
	call	malloc
	mv	t1, a0
	sw	t1, -32(s0)
	addi	t1, zero, 4
	sw	t1, -36(s0)
	lw	t0, -36(s0)
	lw	t1, -32(s0)
	sw	t0, 0(t1)
	lw	t0, -32(s0)
	addi	t1, t0, 4
	sw	t1, -40(s0)
	lw	t0, -40(s0)
	lw	t1, -44(s0)
	sw	t0, fuckLLVM_a, t1
	j	.__init_return
.__init_return:
	lw	ra, 44(sp)
	lw	s0, 40(sp)
	addi	sp, sp, 48
	ret

	.globl	main
	.p2align	2
	.type	main,@function
main:
.main_assemblyInit:
	addi	sp, sp, -352
	sw	ra, 348(sp)
	sw	s0, 344(sp)
	addi	s0, sp, 352
.main_entry:
	call	__init
	addi	t1, zero, 0
	sw	t1, -24(s0)
	lw	t0, -24(s0)
	sw	t0, -12(s0)
	lw	t1, fuckLLVM_a
	sw	t1, -28(s0)
	lw	t0, -28(s0)
	addi	t1, t0, -4
	sw	t1, -32(s0)
	lw	t0, -32(s0)
	lw	t1, 0(t0)
	sw	t1, -36(s0)
	lw	t0, -36(s0)
	mv	a0, t0
	call	printlnInt
	lw	t1, fuckLLVM_a
	sw	t1, -40(s0)
	lw	t0, -40(s0)
	addi	t1, t0, -4
	sw	t1, -44(s0)
	lw	t0, -44(s0)
	lw	t1, 0(t0)
	sw	t1, -48(s0)
	addi	t1, zero, 4
	sw	t1, -52(s0)
	lw	t0, -48(s0)
	lw	t1, -52(s0)
	mul	t2, t0, t1
	sw	t2, -56(s0)
	addi	t1, zero, 4
	sw	t1, -60(s0)
	lw	t0, -56(s0)
	lw	t1, -60(s0)
	add	t2, t0, t1
	sw	t2, -64(s0)
	lw	t0, -64(s0)
	mv	a0, t0
	call	malloc
	mv	t1, a0
	sw	t1, -68(s0)
	lw	t0, -48(s0)
	lw	t1, -68(s0)
	sw	t0, 0(t1)
	lw	t0, -68(s0)
	addi	t1, t0, 4
	sw	t1, -72(s0)
	lw	t0, -72(s0)
	sw	t0, -16(s0)
	lw	t1, -16(s0)
	sw	t1, -76(s0)
	lw	t0, -76(s0)
	addi	t1, t0, -4
	sw	t1, -80(s0)
	lw	t0, -80(s0)
	lw	t1, 0(t0)
	sw	t1, -84(s0)
	lw	t0, -84(s0)
	mv	a0, t0
	call	printlnInt
	addi	t1, zero, 0
	sw	t1, -88(s0)
	lw	t0, -88(s0)
	sw	t0, -20(s0)
	j	.ID24_for_condition
.ID24_for_condition:
	lw	t1, -20(s0)
	sw	t1, -92(s0)
	lw	t1, fuckLLVM_a
	sw	t1, -96(s0)
	lw	t0, -96(s0)
	addi	t1, t0, -4
	sw	t1, -100(s0)
	lw	t0, -100(s0)
	lw	t1, 0(t0)
	sw	t1, -104(s0)
	lw	t0, -92(s0)
	lw	t1, -104(s0)
	slt	t2, t0, t1
	sw	t2, -108(s0)
	lw	t0, -108(s0)
	bnez	t0, .ID24_for_suite
	j	.ID24_for_out
.ID24_for_suite:
	lw	t1, fuckLLVM_a
	sw	t1, -112(s0)
	lw	t1, -20(s0)
	sw	t1, -116(s0)
	addi	t1, zero, 4
	sw	t1, -120(s0)
	lw	t0, -116(s0)
	lw	t1, -120(s0)
	mul	t2, t0, t1
	sw	t2, -124(s0)
	lw	t0, -112(s0)
	lw	t1, -124(s0)
	add	t2, t0, t1
	sw	t2, -128(s0)
	addi	t1, zero, 0
	sw	t1, -132(s0)
	lw	t0, -132(s0)
	lw	t1, -128(s0)
	sw	t0, 0(t1)
	lw	t1, -16(s0)
	sw	t1, -136(s0)
	lw	t1, -20(s0)
	sw	t1, -140(s0)
	addi	t1, zero, 4
	sw	t1, -144(s0)
	lw	t0, -140(s0)
	lw	t1, -144(s0)
	mul	t2, t0, t1
	sw	t2, -148(s0)
	lw	t0, -136(s0)
	lw	t1, -148(s0)
	add	t2, t0, t1
	sw	t2, -152(s0)
	call	getInt
	mv	t1, a0
	sw	t1, -156(s0)
	lw	t0, -156(s0)
	lw	t1, -152(s0)
	sw	t0, 0(t1)
	lw	t1, -16(s0)
	sw	t1, -160(s0)
	lw	t1, -20(s0)
	sw	t1, -164(s0)
	addi	t1, zero, 4
	sw	t1, -168(s0)
	lw	t0, -164(s0)
	lw	t1, -168(s0)
	mul	t2, t0, t1
	sw	t2, -172(s0)
	lw	t0, -160(s0)
	lw	t1, -172(s0)
	add	t2, t0, t1
	sw	t2, -176(s0)
	lw	t0, -176(s0)
	lw	t1, 0(t0)
	sw	t1, -180(s0)
	lw	t0, -180(s0)
	mv	a0, t0
	call	printlnInt
	j	.ID24_for_incr
.ID24_for_incr:
	lw	t1, -20(s0)
	sw	t1, -184(s0)
	addi	t1, zero, 1
	sw	t1, -188(s0)
	lw	t0, -184(s0)
	lw	t1, -188(s0)
	add	t2, t0, t1
	sw	t2, -192(s0)
	lw	t0, -192(s0)
	sw	t0, -20(s0)
	j	.ID24_for_condition
.ID24_for_out:
	addi	t1, zero, 0
	sw	t1, -196(s0)
	lw	t0, -196(s0)
	sw	t0, -20(s0)
	j	.ID44_for_condition
.ID44_for_condition:
	lw	t1, -20(s0)
	sw	t1, -200(s0)
	lw	t1, fuckLLVM_a
	sw	t1, -204(s0)
	lw	t0, -204(s0)
	addi	t1, t0, -4
	sw	t1, -208(s0)
	lw	t0, -208(s0)
	lw	t1, 0(t0)
	sw	t1, -212(s0)
	lw	t0, -200(s0)
	lw	t1, -212(s0)
	slt	t2, t0, t1
	sw	t2, -216(s0)
	lw	t0, -216(s0)
	bnez	t0, .ID44_for_suite
	j	.ID44_for_out
.ID44_for_suite:
	lw	t1, fuckLLVM_a
	sw	t1, -220(s0)
	lw	t1, -20(s0)
	sw	t1, -224(s0)
	addi	t1, zero, 4
	sw	t1, -228(s0)
	lw	t0, -224(s0)
	lw	t1, -228(s0)
	mul	t2, t0, t1
	sw	t2, -232(s0)
	lw	t0, -220(s0)
	lw	t1, -232(s0)
	add	t2, t0, t1
	sw	t2, -236(s0)
	lw	t0, -236(s0)
	lw	t1, 0(t0)
	sw	t1, -240(s0)
	lw	t0, -240(s0)
	mv	a0, t0
	call	toString
	mv	t1, a0
	sw	t1, -244(s0)
	lw	t0, -244(s0)
	mv	a0, t0
	call	print
	j	.ID44_for_incr
.ID44_for_incr:
	lw	t1, -20(s0)
	sw	t1, -248(s0)
	addi	t1, zero, 1
	sw	t1, -252(s0)
	lw	t0, -248(s0)
	lw	t1, -252(s0)
	add	t2, t0, t1
	sw	t2, -256(s0)
	lw	t0, -256(s0)
	sw	t0, -20(s0)
	j	.ID44_for_condition
.ID44_for_out:
	la	t0, fuckLLVM_.str.0
	sw	t0, -260(s0)
	lw	t0, -260(s0)
	mv	a0, t0
	call	println
	lw	t1, -16(s0)
	sw	t1, -264(s0)
	lw	t0, -264(s0)
	lw	t1, -268(s0)
	sw	t0, fuckLLVM_a, t1
	addi	t1, zero, 0
	sw	t1, -272(s0)
	lw	t0, -272(s0)
	sw	t0, -20(s0)
	j	.ID63_for_condition
.ID63_for_condition:
	lw	t1, -20(s0)
	sw	t1, -276(s0)
	lw	t1, fuckLLVM_a
	sw	t1, -280(s0)
	lw	t0, -280(s0)
	addi	t1, t0, -4
	sw	t1, -284(s0)
	lw	t0, -284(s0)
	lw	t1, 0(t0)
	sw	t1, -288(s0)
	lw	t0, -276(s0)
	lw	t1, -288(s0)
	slt	t2, t0, t1
	sw	t2, -292(s0)
	lw	t0, -292(s0)
	bnez	t0, .ID63_for_suite
	j	.ID63_for_out
.ID63_for_suite:
	lw	t1, fuckLLVM_a
	sw	t1, -296(s0)
	lw	t1, -20(s0)
	sw	t1, -300(s0)
	addi	t1, zero, 4
	sw	t1, -304(s0)
	lw	t0, -300(s0)
	lw	t1, -304(s0)
	mul	t2, t0, t1
	sw	t2, -308(s0)
	lw	t0, -296(s0)
	lw	t1, -308(s0)
	add	t2, t0, t1
	sw	t2, -312(s0)
	lw	t0, -312(s0)
	lw	t1, 0(t0)
	sw	t1, -316(s0)
	lw	t0, -316(s0)
	mv	a0, t0
	call	toString
	mv	t1, a0
	sw	t1, -320(s0)
	lw	t0, -320(s0)
	mv	a0, t0
	call	print
	j	.ID63_for_incr
.ID63_for_incr:
	lw	t1, -20(s0)
	sw	t1, -324(s0)
	addi	t1, zero, 1
	sw	t1, -328(s0)
	lw	t0, -324(s0)
	lw	t1, -328(s0)
	add	t2, t0, t1
	sw	t2, -332(s0)
	lw	t0, -332(s0)
	sw	t0, -20(s0)
	j	.ID63_for_condition
.ID63_for_out:
	addi	t1, zero, 0
	sw	t1, -336(s0)
	lw	t0, -336(s0)
	sw	t0, -12(s0)
	j	.main_return
	j	.main_return
.main_return:
	lw	t1, -12(s0)
	sw	t1, -340(s0)
	lw	t0, -340(s0)
	mv	a0, t0
	lw	ra, 348(sp)
	lw	s0, 344(sp)
	addi	sp, sp, 352
	ret

	.section	.sbss
	.type	fuckLLVM_a,@object
	.globl	fuckLLVM_a
	.p2align	2
fuckLLVM_a:
	.word	0
	.size	fuckLLVM_a, 8

	.section	.rodata
	.type	fuckLLVM_.str.0,@object
fuckLLVM_.str.0:
	.asciz	" "
	.size	fuckLLVM_.str.0, 1

