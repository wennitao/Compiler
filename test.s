	.text
	.globl	__init
	.p2align	2
__init:
.__init_assemblyInit:
	addi	sp, sp, -8
	addi	s0, sp, 8
	sw	ra, -4(s0)
	sw	s0, -8(s0)
.__init_entry:
	j	__init_return
.__init_return:
	lw	ra, 4(sp)
	lw	s0, 0(sp)
	addi	sp, sp, 8
	ret

	.globl	main
	.p2align	2
main:
.main_assemblyInit:
	addi	sp, sp, -872
	addi	s0, sp, 872
	sw	ra, -4(s0)
	sw	s0, -8(s0)
.main_entry:
	call	__init
	lw	t0, -56(s0)
	addi	t1, t0, 3
	sw	t1, -56(s0)
	lw	t0, -60(s0)
	addi	t1, t0, 8
	sw	t1, -60(s0)
	lw	t0, -56(s0)
	lw	t1, -60(s0)
	mul	t2, t0, t1
	sw	t2, -64(s0)
	lw	t0, -68(s0)
	addi	t1, t0, 4
	sw	t1, -68(s0)
	lw	t0, -64(s0)
	lw	t1, -68(s0)
	add	t2, t0, t1
	sw	t2, -72(s0)
	lw	t0, -72(s0)
	mv	a0, t0
	call	malloc
	mv	t1, a0
	sw	t1, -76(s0)
	lw	t0, -80(s0)
	addi	t1, t0, 3
	sw	t1, -80(s0)
	lw	t0, -80(s0)
	sw	t0, 0(null)
	lw	t0, -84(s0)
	addi	t1, t0, 0
	sw	t1, -84(s0)
	lw	t0, -84(s0)
	sw	t0, -32(s0)
	j	ID11_for_condition
.ID11_for_condition:
	lw	t0, -32(s0)
	lw	t0, -92(s0)
	addi	t1, t0, 3
	sw	t1, -92(s0)
	lw	t0, -88(s0)
	lw	t1, -92(s0)
	slt	t2, t0, t1
	sw	t2, -96(s0)
	lw	t0, -92(s0)
	lw	t1, -88(s0)
	slt	t2, t0, t1
	sw	t2, -96(s0)
	lw	t0, -96(s0)
	xori	t1, t0, 1
	sw	t1, -96(s0)
	lw	t0, -92(s0)
	lw	t1, -88(s0)
	slt	t2, t0, t1
	sw	t2, -96(s0)
	lw	t0, -88(s0)
	lw	t1, -92(s0)
	slt	t2, t0, t1
	sw	t2, -96(s0)
	lw	t0, -96(s0)
	xori	t1, t0, 1
	sw	t1, -96(s0)
	lw	t0, -88(s0)
	lw	t1, -92(s0)
	xor	t2, t0, t1
	sw	t2, -96(s0)
	lw	t0, -96(s0)
	sltiu	t1, t0, 1
	sw	t1, -96(s0)
	lw	t0, -88(s0)
	lw	t1, -92(s0)
	xor	t2, t0, t1
	sw	t2, -96(s0)
	lw	t0, -96(s0)
	sltiu	t1, t0, 1
	sw	t1, -96(s0)
	lw	t0, -96(s0)
	xori	t1, t0, 1
	sw	t1, -96(s0)
	lw	t0, -88(s0)
	lw	t1, -92(s0)
	sll	t2, t0, t1
	sw	t2, -96(s0)
	lw	t0, -88(s0)
	lw	t1, -92(s0)
	sra	t2, t0, t1
	sw	t2, -96(s0)
	lw	t0, -88(s0)
	lw	t1, -92(s0)
	and	t2, t0, t1
	sw	t2, -96(s0)
	lw	t0, -88(s0)
	lw	t1, -92(s0)
	xor	t2, t0, t1
	sw	t2, -96(s0)
	lw	t0, -88(s0)
	lw	t1, -92(s0)
	or	t2, t0, t1
	sw	t2, -96(s0)
	lw	t0, -96(s0)
	bnez	t0, .ID11_for_suite
	j	ID11_for_out
.ID11_for_suite:
	lw	t0, -32(s0)
	lw	t0, -104(s0)
	addi	t1, t0, 4
	sw	t1, -104(s0)
	lw	t0, -108(s0)
	addi	t1, t0, 4
	sw	t1, -108(s0)
	lw	t0, -104(s0)
	lw	t1, -108(s0)
	mul	t2, t0, t1
	sw	t2, -112(s0)
	lw	t0, -116(s0)
	addi	t1, t0, 4
	sw	t1, -116(s0)
	lw	t0, -112(s0)
	lw	t1, -116(s0)
	add	t2, t0, t1
	sw	t2, -120(s0)
	lw	t0, -120(s0)
	mv	a0, t0
	call	malloc
	mv	t1, a0
	sw	t1, -124(s0)
	lw	t0, -128(s0)
	addi	t1, t0, 4
	sw	t1, -128(s0)
	lw	t0, -128(s0)
	sw	t0, 0(null)
	sw	null, 0(null)
	j	ID11_for_incr
.ID11_for_incr:
	lw	t0, -32(s0)
	lw	t0, -136(s0)
	addi	t1, t0, 1
	sw	t1, -136(s0)
	lw	t0, -132(s0)
	lw	t1, -136(s0)
	add	t2, t0, t1
	sw	t2, -140(s0)
	lw	t0, -140(s0)
	sw	t0, -32(s0)
	j	ID11_for_condition
.ID11_for_out:
	sw	null, -28(s0)
	lw	t0, -144(s0)
	addi	t1, t0, 4
	sw	t1, -144(s0)
	lw	t0, -148(s0)
	addi	t1, t0, 8
	sw	t1, -148(s0)
	lw	t0, -144(s0)
	lw	t1, -148(s0)
	mul	t2, t0, t1
	sw	t2, -152(s0)
	lw	t0, -156(s0)
	addi	t1, t0, 4
	sw	t1, -156(s0)
	lw	t0, -152(s0)
	lw	t1, -156(s0)
	add	t2, t0, t1
	sw	t2, -160(s0)
	lw	t0, -160(s0)
	mv	a0, t0
	call	malloc
	mv	t1, a0
	sw	t1, -164(s0)
	lw	t0, -168(s0)
	addi	t1, t0, 4
	sw	t1, -168(s0)
	lw	t0, -168(s0)
	sw	t0, 0(null)
	lw	t0, -172(s0)
	addi	t1, t0, 0
	sw	t1, -172(s0)
	lw	t0, -172(s0)
	sw	t0, -40(s0)
	j	ID32_for_condition
.ID32_for_condition:
	lw	t0, -40(s0)
	lw	t0, -180(s0)
	addi	t1, t0, 4
	sw	t1, -180(s0)
	lw	t0, -176(s0)
	lw	t1, -180(s0)
	slt	t2, t0, t1
	sw	t2, -184(s0)
	lw	t0, -180(s0)
	lw	t1, -176(s0)
	slt	t2, t0, t1
	sw	t2, -184(s0)
	lw	t0, -184(s0)
	xori	t1, t0, 1
	sw	t1, -184(s0)
	lw	t0, -180(s0)
	lw	t1, -176(s0)
	slt	t2, t0, t1
	sw	t2, -184(s0)
	lw	t0, -176(s0)
	lw	t1, -180(s0)
	slt	t2, t0, t1
	sw	t2, -184(s0)
	lw	t0, -184(s0)
	xori	t1, t0, 1
	sw	t1, -184(s0)
	lw	t0, -176(s0)
	lw	t1, -180(s0)
	xor	t2, t0, t1
	sw	t2, -184(s0)
	lw	t0, -184(s0)
	sltiu	t1, t0, 1
	sw	t1, -184(s0)
	lw	t0, -176(s0)
	lw	t1, -180(s0)
	xor	t2, t0, t1
	sw	t2, -184(s0)
	lw	t0, -184(s0)
	sltiu	t1, t0, 1
	sw	t1, -184(s0)
	lw	t0, -184(s0)
	xori	t1, t0, 1
	sw	t1, -184(s0)
	lw	t0, -176(s0)
	lw	t1, -180(s0)
	sll	t2, t0, t1
	sw	t2, -184(s0)
	lw	t0, -176(s0)
	lw	t1, -180(s0)
	sra	t2, t0, t1
	sw	t2, -184(s0)
	lw	t0, -176(s0)
	lw	t1, -180(s0)
	and	t2, t0, t1
	sw	t2, -184(s0)
	lw	t0, -176(s0)
	lw	t1, -180(s0)
	xor	t2, t0, t1
	sw	t2, -184(s0)
	lw	t0, -176(s0)
	lw	t1, -180(s0)
	or	t2, t0, t1
	sw	t2, -184(s0)
	lw	t0, -184(s0)
	bnez	t0, .ID32_for_suite
	j	ID32_for_out
.ID32_for_suite:
	lw	t0, -40(s0)
	lw	t0, -192(s0)
	addi	t1, t0, 2
	sw	t1, -192(s0)
	lw	t0, -196(s0)
	addi	t1, t0, 4
	sw	t1, -196(s0)
	lw	t0, -192(s0)
	lw	t1, -196(s0)
	mul	t2, t0, t1
	sw	t2, -200(s0)
	lw	t0, -204(s0)
	addi	t1, t0, 4
	sw	t1, -204(s0)
	lw	t0, -200(s0)
	lw	t1, -204(s0)
	add	t2, t0, t1
	sw	t2, -208(s0)
	lw	t0, -208(s0)
	mv	a0, t0
	call	malloc
	mv	t1, a0
	sw	t1, -212(s0)
	lw	t0, -216(s0)
	addi	t1, t0, 2
	sw	t1, -216(s0)
	lw	t0, -216(s0)
	sw	t0, 0(null)
	sw	null, 0(null)
	j	ID32_for_incr
.ID32_for_incr:
	lw	t0, -40(s0)
	lw	t0, -224(s0)
	addi	t1, t0, 1
	sw	t1, -224(s0)
	lw	t0, -220(s0)
	lw	t1, -224(s0)
	add	t2, t0, t1
	sw	t2, -228(s0)
	lw	t0, -228(s0)
	sw	t0, -40(s0)
	j	ID32_for_condition
.ID32_for_out:
	sw	null, -36(s0)
	lw	t0, -232(s0)
	addi	t1, t0, 3
	sw	t1, -232(s0)
	lw	t0, -236(s0)
	addi	t1, t0, 8
	sw	t1, -236(s0)
	lw	t0, -232(s0)
	lw	t1, -236(s0)
	mul	t2, t0, t1
	sw	t2, -240(s0)
	lw	t0, -244(s0)
	addi	t1, t0, 4
	sw	t1, -244(s0)
	lw	t0, -240(s0)
	lw	t1, -244(s0)
	add	t2, t0, t1
	sw	t2, -248(s0)
	lw	t0, -248(s0)
	mv	a0, t0
	call	malloc
	mv	t1, a0
	sw	t1, -252(s0)
	lw	t0, -256(s0)
	addi	t1, t0, 3
	sw	t1, -256(s0)
	lw	t0, -256(s0)
	sw	t0, 0(null)
	lw	t0, -260(s0)
	addi	t1, t0, 0
	sw	t1, -260(s0)
	lw	t0, -260(s0)
	sw	t0, -48(s0)
	j	ID53_for_condition
.ID53_for_condition:
	lw	t0, -48(s0)
	lw	t0, -268(s0)
	addi	t1, t0, 3
	sw	t1, -268(s0)
	lw	t0, -264(s0)
	lw	t1, -268(s0)
	slt	t2, t0, t1
	sw	t2, -272(s0)
	lw	t0, -268(s0)
	lw	t1, -264(s0)
	slt	t2, t0, t1
	sw	t2, -272(s0)
	lw	t0, -272(s0)
	xori	t1, t0, 1
	sw	t1, -272(s0)
	lw	t0, -268(s0)
	lw	t1, -264(s0)
	slt	t2, t0, t1
	sw	t2, -272(s0)
	lw	t0, -264(s0)
	lw	t1, -268(s0)
	slt	t2, t0, t1
	sw	t2, -272(s0)
	lw	t0, -272(s0)
	xori	t1, t0, 1
	sw	t1, -272(s0)
	lw	t0, -264(s0)
	lw	t1, -268(s0)
	xor	t2, t0, t1
	sw	t2, -272(s0)
	lw	t0, -272(s0)
	sltiu	t1, t0, 1
	sw	t1, -272(s0)
	lw	t0, -264(s0)
	lw	t1, -268(s0)
	xor	t2, t0, t1
	sw	t2, -272(s0)
	lw	t0, -272(s0)
	sltiu	t1, t0, 1
	sw	t1, -272(s0)
	lw	t0, -272(s0)
	xori	t1, t0, 1
	sw	t1, -272(s0)
	lw	t0, -264(s0)
	lw	t1, -268(s0)
	sll	t2, t0, t1
	sw	t2, -272(s0)
	lw	t0, -264(s0)
	lw	t1, -268(s0)
	sra	t2, t0, t1
	sw	t2, -272(s0)
	lw	t0, -264(s0)
	lw	t1, -268(s0)
	and	t2, t0, t1
	sw	t2, -272(s0)
	lw	t0, -264(s0)
	lw	t1, -268(s0)
	xor	t2, t0, t1
	sw	t2, -272(s0)
	lw	t0, -264(s0)
	lw	t1, -268(s0)
	or	t2, t0, t1
	sw	t2, -272(s0)
	lw	t0, -272(s0)
	bnez	t0, .ID53_for_suite
	j	ID53_for_out
.ID53_for_suite:
	lw	t0, -48(s0)
	lw	t0, -280(s0)
	addi	t1, t0, 2
	sw	t1, -280(s0)
	lw	t0, -284(s0)
	addi	t1, t0, 4
	sw	t1, -284(s0)
	lw	t0, -280(s0)
	lw	t1, -284(s0)
	mul	t2, t0, t1
	sw	t2, -288(s0)
	lw	t0, -292(s0)
	addi	t1, t0, 4
	sw	t1, -292(s0)
	lw	t0, -288(s0)
	lw	t1, -292(s0)
	add	t2, t0, t1
	sw	t2, -296(s0)
	lw	t0, -296(s0)
	mv	a0, t0
	call	malloc
	mv	t1, a0
	sw	t1, -300(s0)
	lw	t0, -304(s0)
	addi	t1, t0, 2
	sw	t1, -304(s0)
	lw	t0, -304(s0)
	sw	t0, 0(null)
	sw	null, 0(null)
	j	ID53_for_incr
.ID53_for_incr:
	lw	t0, -48(s0)
	lw	t0, -312(s0)
	addi	t1, t0, 1
	sw	t1, -312(s0)
	lw	t0, -308(s0)
	lw	t1, -312(s0)
	add	t2, t0, t1
	sw	t2, -316(s0)
	lw	t0, -316(s0)
	sw	t0, -48(s0)
	j	ID53_for_condition
.ID53_for_out:
	sw	null, -44(s0)
	lw	t0, -320(s0)
	addi	t1, t0, 0
	sw	t1, -320(s0)
	lw	t0, -320(s0)
	sw	t0, -16(s0)
	j	ID66_for_condition
.ID66_for_condition:
	lw	t0, -16(s0)
	lw	t0, -328(s0)
	addi	t1, t0, 3
	sw	t1, -328(s0)
	lw	t0, -324(s0)
	lw	t1, -328(s0)
	slt	t2, t0, t1
	sw	t2, -332(s0)
	lw	t0, -328(s0)
	lw	t1, -324(s0)
	slt	t2, t0, t1
	sw	t2, -332(s0)
	lw	t0, -332(s0)
	xori	t1, t0, 1
	sw	t1, -332(s0)
	lw	t0, -328(s0)
	lw	t1, -324(s0)
	slt	t2, t0, t1
	sw	t2, -332(s0)
	lw	t0, -324(s0)
	lw	t1, -328(s0)
	slt	t2, t0, t1
	sw	t2, -332(s0)
	lw	t0, -332(s0)
	xori	t1, t0, 1
	sw	t1, -332(s0)
	lw	t0, -324(s0)
	lw	t1, -328(s0)
	xor	t2, t0, t1
	sw	t2, -332(s0)
	lw	t0, -332(s0)
	sltiu	t1, t0, 1
	sw	t1, -332(s0)
	lw	t0, -324(s0)
	lw	t1, -328(s0)
	xor	t2, t0, t1
	sw	t2, -332(s0)
	lw	t0, -332(s0)
	sltiu	t1, t0, 1
	sw	t1, -332(s0)
	lw	t0, -332(s0)
	xori	t1, t0, 1
	sw	t1, -332(s0)
	lw	t0, -324(s0)
	lw	t1, -328(s0)
	sll	t2, t0, t1
	sw	t2, -332(s0)
	lw	t0, -324(s0)
	lw	t1, -328(s0)
	sra	t2, t0, t1
	sw	t2, -332(s0)
	lw	t0, -324(s0)
	lw	t1, -328(s0)
	and	t2, t0, t1
	sw	t2, -332(s0)
	lw	t0, -324(s0)
	lw	t1, -328(s0)
	xor	t2, t0, t1
	sw	t2, -332(s0)
	lw	t0, -324(s0)
	lw	t1, -328(s0)
	or	t2, t0, t1
	sw	t2, -332(s0)
	lw	t0, -332(s0)
	bnez	t0, .ID66_for_suite
	j	ID66_for_out
.ID66_for_suite:
	addi	t1, t0, 0
	sw	t1, -336(s0)
	lw	t0, -336(s0)
	sw	t0, -20(s0)
	j	ID68_for_condition
.ID68_for_condition:
	lw	t0, -20(s0)
	lw	t0, -344(s0)
	addi	t1, t0, 4
	sw	t1, -344(s0)
	lw	t0, -340(s0)
	lw	t1, -344(s0)
	slt	t2, t0, t1
	sw	t2, -348(s0)
	lw	t0, -344(s0)
	lw	t1, -340(s0)
	slt	t2, t0, t1
	sw	t2, -348(s0)
	lw	t0, -348(s0)
	xori	t1, t0, 1
	sw	t1, -348(s0)
	lw	t0, -344(s0)
	lw	t1, -340(s0)
	slt	t2, t0, t1
	sw	t2, -348(s0)
	lw	t0, -340(s0)
	lw	t1, -344(s0)
	slt	t2, t0, t1
	sw	t2, -348(s0)
	lw	t0, -348(s0)
	xori	t1, t0, 1
	sw	t1, -348(s0)
	lw	t0, -340(s0)
	lw	t1, -344(s0)
	xor	t2, t0, t1
	sw	t2, -348(s0)
	lw	t0, -348(s0)
	sltiu	t1, t0, 1
	sw	t1, -348(s0)
	lw	t0, -340(s0)
	lw	t1, -344(s0)
	xor	t2, t0, t1
	sw	t2, -348(s0)
	lw	t0, -348(s0)
	sltiu	t1, t0, 1
	sw	t1, -348(s0)
	lw	t0, -348(s0)
	xori	t1, t0, 1
	sw	t1, -348(s0)
	lw	t0, -340(s0)
	lw	t1, -344(s0)
	sll	t2, t0, t1
	sw	t2, -348(s0)
	lw	t0, -340(s0)
	lw	t1, -344(s0)
	sra	t2, t0, t1
	sw	t2, -348(s0)
	lw	t0, -340(s0)
	lw	t1, -344(s0)
	and	t2, t0, t1
	sw	t2, -348(s0)
	lw	t0, -340(s0)
	lw	t1, -344(s0)
	xor	t2, t0, t1
	sw	t2, -348(s0)
	lw	t0, -340(s0)
	lw	t1, -344(s0)
	or	t2, t0, t1
	sw	t2, -348(s0)
	lw	t0, -348(s0)
	bnez	t0, .ID68_for_suite
	j	ID68_for_out
.ID68_for_suite:
	lw	t0, -28(s0)
	lw	t0, -356(s0)
	lw	t0, -16(s0)
	lw	t0, -360(s0)
	lw	t0, 0(null)
	lw	t0, -364(s0)
	lw	t0, -20(s0)
	lw	t0, -368(s0)
	lw	t0, -16(s0)
	lw	t0, -372(s0)
	lw	t0, -20(s0)
	lw	t0, -368(s0)
	lw	t1, -372(s0)
	add	t2, t0, t1
	sw	t2, -376(s0)
	lw	t0, -376(s0)
	sw	t0, 0(null)
	j	ID68_for_incr
.ID68_for_incr:
	lw	t0, -20(s0)
	lw	t0, -384(s0)
	addi	t1, t0, 1
	sw	t1, -384(s0)
	lw	t0, -380(s0)
	lw	t1, -384(s0)
	add	t2, t0, t1
	sw	t2, -388(s0)
	lw	t0, -388(s0)
	sw	t0, -20(s0)
	lw	t0, -392(s0)
	lw	t0, -20(s0)
	j	ID68_for_condition
.ID68_for_out:
	j	ID66_for_incr
.ID66_for_incr:
	lw	t0, -16(s0)
	lw	t0, -400(s0)
	addi	t1, t0, 1
	sw	t1, -400(s0)
	lw	t0, -396(s0)
	lw	t1, -400(s0)
	add	t2, t0, t1
	sw	t2, -404(s0)
	lw	t0, -404(s0)
	sw	t0, -16(s0)
	lw	t0, -408(s0)
	lw	t0, -16(s0)
	j	ID66_for_condition
.ID66_for_out:
	addi	t1, t0, 0
	sw	t1, -412(s0)
	lw	t0, -412(s0)
	sw	t0, -16(s0)
	j	ID85_for_condition
.ID85_for_condition:
	lw	t0, -16(s0)
	lw	t0, -420(s0)
	addi	t1, t0, 4
	sw	t1, -420(s0)
	lw	t0, -416(s0)
	lw	t1, -420(s0)
	slt	t2, t0, t1
	sw	t2, -424(s0)
	lw	t0, -420(s0)
	lw	t1, -416(s0)
	slt	t2, t0, t1
	sw	t2, -424(s0)
	lw	t0, -424(s0)
	xori	t1, t0, 1
	sw	t1, -424(s0)
	lw	t0, -420(s0)
	lw	t1, -416(s0)
	slt	t2, t0, t1
	sw	t2, -424(s0)
	lw	t0, -416(s0)
	lw	t1, -420(s0)
	slt	t2, t0, t1
	sw	t2, -424(s0)
	lw	t0, -424(s0)
	xori	t1, t0, 1
	sw	t1, -424(s0)
	lw	t0, -416(s0)
	lw	t1, -420(s0)
	xor	t2, t0, t1
	sw	t2, -424(s0)
	lw	t0, -424(s0)
	sltiu	t1, t0, 1
	sw	t1, -424(s0)
	lw	t0, -416(s0)
	lw	t1, -420(s0)
	xor	t2, t0, t1
	sw	t2, -424(s0)
	lw	t0, -424(s0)
	sltiu	t1, t0, 1
	sw	t1, -424(s0)
	lw	t0, -424(s0)
	xori	t1, t0, 1
	sw	t1, -424(s0)
	lw	t0, -416(s0)
	lw	t1, -420(s0)
	sll	t2, t0, t1
	sw	t2, -424(s0)
	lw	t0, -416(s0)
	lw	t1, -420(s0)
	sra	t2, t0, t1
	sw	t2, -424(s0)
	lw	t0, -416(s0)
	lw	t1, -420(s0)
	and	t2, t0, t1
	sw	t2, -424(s0)
	lw	t0, -416(s0)
	lw	t1, -420(s0)
	xor	t2, t0, t1
	sw	t2, -424(s0)
	lw	t0, -416(s0)
	lw	t1, -420(s0)
	or	t2, t0, t1
	sw	t2, -424(s0)
	lw	t0, -424(s0)
	bnez	t0, .ID85_for_suite
	j	ID85_for_out
.ID85_for_suite:
	addi	t1, t0, 0
	sw	t1, -428(s0)
	lw	t0, -428(s0)
	sw	t0, -20(s0)
	j	ID87_for_condition
.ID87_for_condition:
	lw	t0, -20(s0)
	lw	t0, -436(s0)
	addi	t1, t0, 2
	sw	t1, -436(s0)
	lw	t0, -432(s0)
	lw	t1, -436(s0)
	slt	t2, t0, t1
	sw	t2, -440(s0)
	lw	t0, -436(s0)
	lw	t1, -432(s0)
	slt	t2, t0, t1
	sw	t2, -440(s0)
	lw	t0, -440(s0)
	xori	t1, t0, 1
	sw	t1, -440(s0)
	lw	t0, -436(s0)
	lw	t1, -432(s0)
	slt	t2, t0, t1
	sw	t2, -440(s0)
	lw	t0, -432(s0)
	lw	t1, -436(s0)
	slt	t2, t0, t1
	sw	t2, -440(s0)
	lw	t0, -440(s0)
	xori	t1, t0, 1
	sw	t1, -440(s0)
	lw	t0, -432(s0)
	lw	t1, -436(s0)
	xor	t2, t0, t1
	sw	t2, -440(s0)
	lw	t0, -440(s0)
	sltiu	t1, t0, 1
	sw	t1, -440(s0)
	lw	t0, -432(s0)
	lw	t1, -436(s0)
	xor	t2, t0, t1
	sw	t2, -440(s0)
	lw	t0, -440(s0)
	sltiu	t1, t0, 1
	sw	t1, -440(s0)
	lw	t0, -440(s0)
	xori	t1, t0, 1
	sw	t1, -440(s0)
	lw	t0, -432(s0)
	lw	t1, -436(s0)
	sll	t2, t0, t1
	sw	t2, -440(s0)
	lw	t0, -432(s0)
	lw	t1, -436(s0)
	sra	t2, t0, t1
	sw	t2, -440(s0)
	lw	t0, -432(s0)
	lw	t1, -436(s0)
	and	t2, t0, t1
	sw	t2, -440(s0)
	lw	t0, -432(s0)
	lw	t1, -436(s0)
	xor	t2, t0, t1
	sw	t2, -440(s0)
	lw	t0, -432(s0)
	lw	t1, -436(s0)
	or	t2, t0, t1
	sw	t2, -440(s0)
	lw	t0, -440(s0)
	bnez	t0, .ID87_for_suite
	j	ID87_for_out
.ID87_for_suite:
	lw	t0, -36(s0)
	lw	t0, -448(s0)
	lw	t0, -16(s0)
	lw	t0, -452(s0)
	lw	t0, 0(null)
	lw	t0, -456(s0)
	lw	t0, -20(s0)
	lw	t0, -460(s0)
	lw	t0, -16(s0)
	lw	t0, -464(s0)
	lw	t0, -20(s0)
	lw	t0, -460(s0)
	lw	t1, -464(s0)
	mul	t2, t0, t1
	sw	t2, -468(s0)
	lw	t0, -468(s0)
	sw	t0, 0(null)
	j	ID87_for_incr
.ID87_for_incr:
	lw	t0, -20(s0)
	lw	t0, -476(s0)
	addi	t1, t0, 1
	sw	t1, -476(s0)
	lw	t0, -472(s0)
	lw	t1, -476(s0)
	add	t2, t0, t1
	sw	t2, -480(s0)
	lw	t0, -480(s0)
	sw	t0, -20(s0)
	lw	t0, -484(s0)
	lw	t0, -20(s0)
	j	ID87_for_condition
.ID87_for_out:
	j	ID85_for_incr
.ID85_for_incr:
	lw	t0, -16(s0)
	lw	t0, -492(s0)
	addi	t1, t0, 1
	sw	t1, -492(s0)
	lw	t0, -488(s0)
	lw	t1, -492(s0)
	add	t2, t0, t1
	sw	t2, -496(s0)
	lw	t0, -496(s0)
	sw	t0, -16(s0)
	lw	t0, -500(s0)
	lw	t0, -16(s0)
	j	ID85_for_condition
.ID85_for_out:
	addi	t1, t0, 0
	sw	t1, -504(s0)
	lw	t0, -504(s0)
	sw	t0, -16(s0)
	j	ID104_for_condition
.ID104_for_condition:
	lw	t0, -16(s0)
	lw	t0, -512(s0)
	addi	t1, t0, 3
	sw	t1, -512(s0)
	lw	t0, -508(s0)
	lw	t1, -512(s0)
	slt	t2, t0, t1
	sw	t2, -516(s0)
	lw	t0, -512(s0)
	lw	t1, -508(s0)
	slt	t2, t0, t1
	sw	t2, -516(s0)
	lw	t0, -516(s0)
	xori	t1, t0, 1
	sw	t1, -516(s0)
	lw	t0, -512(s0)
	lw	t1, -508(s0)
	slt	t2, t0, t1
	sw	t2, -516(s0)
	lw	t0, -508(s0)
	lw	t1, -512(s0)
	slt	t2, t0, t1
	sw	t2, -516(s0)
	lw	t0, -516(s0)
	xori	t1, t0, 1
	sw	t1, -516(s0)
	lw	t0, -508(s0)
	lw	t1, -512(s0)
	xor	t2, t0, t1
	sw	t2, -516(s0)
	lw	t0, -516(s0)
	sltiu	t1, t0, 1
	sw	t1, -516(s0)
	lw	t0, -508(s0)
	lw	t1, -512(s0)
	xor	t2, t0, t1
	sw	t2, -516(s0)
	lw	t0, -516(s0)
	sltiu	t1, t0, 1
	sw	t1, -516(s0)
	lw	t0, -516(s0)
	xori	t1, t0, 1
	sw	t1, -516(s0)
	lw	t0, -508(s0)
	lw	t1, -512(s0)
	sll	t2, t0, t1
	sw	t2, -516(s0)
	lw	t0, -508(s0)
	lw	t1, -512(s0)
	sra	t2, t0, t1
	sw	t2, -516(s0)
	lw	t0, -508(s0)
	lw	t1, -512(s0)
	and	t2, t0, t1
	sw	t2, -516(s0)
	lw	t0, -508(s0)
	lw	t1, -512(s0)
	xor	t2, t0, t1
	sw	t2, -516(s0)
	lw	t0, -508(s0)
	lw	t1, -512(s0)
	or	t2, t0, t1
	sw	t2, -516(s0)
	lw	t0, -516(s0)
	bnez	t0, .ID104_for_suite
	j	ID104_for_out
.ID104_for_suite:
	addi	t1, t0, 0
	sw	t1, -520(s0)
	lw	t0, -520(s0)
	sw	t0, -20(s0)
	j	ID106_for_condition
.ID106_for_condition:
	lw	t0, -20(s0)
	lw	t0, -528(s0)
	addi	t1, t0, 2
	sw	t1, -528(s0)
	lw	t0, -524(s0)
	lw	t1, -528(s0)
	slt	t2, t0, t1
	sw	t2, -532(s0)
	lw	t0, -528(s0)
	lw	t1, -524(s0)
	slt	t2, t0, t1
	sw	t2, -532(s0)
	lw	t0, -532(s0)
	xori	t1, t0, 1
	sw	t1, -532(s0)
	lw	t0, -528(s0)
	lw	t1, -524(s0)
	slt	t2, t0, t1
	sw	t2, -532(s0)
	lw	t0, -524(s0)
	lw	t1, -528(s0)
	slt	t2, t0, t1
	sw	t2, -532(s0)
	lw	t0, -532(s0)
	xori	t1, t0, 1
	sw	t1, -532(s0)
	lw	t0, -524(s0)
	lw	t1, -528(s0)
	xor	t2, t0, t1
	sw	t2, -532(s0)
	lw	t0, -532(s0)
	sltiu	t1, t0, 1
	sw	t1, -532(s0)
	lw	t0, -524(s0)
	lw	t1, -528(s0)
	xor	t2, t0, t1
	sw	t2, -532(s0)
	lw	t0, -532(s0)
	sltiu	t1, t0, 1
	sw	t1, -532(s0)
	lw	t0, -532(s0)
	xori	t1, t0, 1
	sw	t1, -532(s0)
	lw	t0, -524(s0)
	lw	t1, -528(s0)
	sll	t2, t0, t1
	sw	t2, -532(s0)
	lw	t0, -524(s0)
	lw	t1, -528(s0)
	sra	t2, t0, t1
	sw	t2, -532(s0)
	lw	t0, -524(s0)
	lw	t1, -528(s0)
	and	t2, t0, t1
	sw	t2, -532(s0)
	lw	t0, -524(s0)
	lw	t1, -528(s0)
	xor	t2, t0, t1
	sw	t2, -532(s0)
	lw	t0, -524(s0)
	lw	t1, -528(s0)
	or	t2, t0, t1
	sw	t2, -532(s0)
	lw	t0, -532(s0)
	bnez	t0, .ID106_for_suite
	j	ID106_for_out
.ID106_for_suite:
	lw	t0, -44(s0)
	lw	t0, -540(s0)
	lw	t0, -16(s0)
	lw	t0, -544(s0)
	lw	t0, 0(null)
	lw	t0, -548(s0)
	lw	t0, -20(s0)
	lw	t0, -552(s0)
	addi	t1, t0, 0
	sw	t1, -552(s0)
	lw	t0, -552(s0)
	sw	t0, 0(null)
	j	ID106_for_incr
.ID106_for_incr:
	lw	t0, -20(s0)
	lw	t0, -560(s0)
	addi	t1, t0, 1
	sw	t1, -560(s0)
	lw	t0, -556(s0)
	lw	t1, -560(s0)
	add	t2, t0, t1
	sw	t2, -564(s0)
	lw	t0, -564(s0)
	sw	t0, -20(s0)
	lw	t0, -568(s0)
	lw	t0, -20(s0)
	j	ID106_for_condition
.ID106_for_out:
	j	ID104_for_incr
.ID104_for_incr:
	lw	t0, -16(s0)
	lw	t0, -576(s0)
	addi	t1, t0, 1
	sw	t1, -576(s0)
	lw	t0, -572(s0)
	lw	t1, -576(s0)
	add	t2, t0, t1
	sw	t2, -580(s0)
	lw	t0, -580(s0)
	sw	t0, -16(s0)
	lw	t0, -584(s0)
	lw	t0, -16(s0)
	j	ID104_for_condition
.ID104_for_out:
	addi	t1, t0, 0
	sw	t1, -588(s0)
	lw	t0, -588(s0)
	sw	t0, -16(s0)
	j	ID120_for_condition
.ID120_for_condition:
	lw	t0, -16(s0)
	lw	t0, -596(s0)
	addi	t1, t0, 3
	sw	t1, -596(s0)
	lw	t0, -592(s0)
	lw	t1, -596(s0)
	slt	t2, t0, t1
	sw	t2, -600(s0)
	lw	t0, -596(s0)
	lw	t1, -592(s0)
	slt	t2, t0, t1
	sw	t2, -600(s0)
	lw	t0, -600(s0)
	xori	t1, t0, 1
	sw	t1, -600(s0)
	lw	t0, -596(s0)
	lw	t1, -592(s0)
	slt	t2, t0, t1
	sw	t2, -600(s0)
	lw	t0, -592(s0)
	lw	t1, -596(s0)
	slt	t2, t0, t1
	sw	t2, -600(s0)
	lw	t0, -600(s0)
	xori	t1, t0, 1
	sw	t1, -600(s0)
	lw	t0, -592(s0)
	lw	t1, -596(s0)
	xor	t2, t0, t1
	sw	t2, -600(s0)
	lw	t0, -600(s0)
	sltiu	t1, t0, 1
	sw	t1, -600(s0)
	lw	t0, -592(s0)
	lw	t1, -596(s0)
	xor	t2, t0, t1
	sw	t2, -600(s0)
	lw	t0, -600(s0)
	sltiu	t1, t0, 1
	sw	t1, -600(s0)
	lw	t0, -600(s0)
	xori	t1, t0, 1
	sw	t1, -600(s0)
	lw	t0, -592(s0)
	lw	t1, -596(s0)
	sll	t2, t0, t1
	sw	t2, -600(s0)
	lw	t0, -592(s0)
	lw	t1, -596(s0)
	sra	t2, t0, t1
	sw	t2, -600(s0)
	lw	t0, -592(s0)
	lw	t1, -596(s0)
	and	t2, t0, t1
	sw	t2, -600(s0)
	lw	t0, -592(s0)
	lw	t1, -596(s0)
	xor	t2, t0, t1
	sw	t2, -600(s0)
	lw	t0, -592(s0)
	lw	t1, -596(s0)
	or	t2, t0, t1
	sw	t2, -600(s0)
	lw	t0, -600(s0)
	bnez	t0, .ID120_for_suite
	j	ID120_for_out
.ID120_for_suite:
	addi	t1, t0, 0
	sw	t1, -604(s0)
	lw	t0, -604(s0)
	sw	t0, -20(s0)
	j	ID122_for_condition
.ID122_for_condition:
	lw	t0, -20(s0)
	lw	t0, -612(s0)
	addi	t1, t0, 2
	sw	t1, -612(s0)
	lw	t0, -608(s0)
	lw	t1, -612(s0)
	slt	t2, t0, t1
	sw	t2, -616(s0)
	lw	t0, -612(s0)
	lw	t1, -608(s0)
	slt	t2, t0, t1
	sw	t2, -616(s0)
	lw	t0, -616(s0)
	xori	t1, t0, 1
	sw	t1, -616(s0)
	lw	t0, -612(s0)
	lw	t1, -608(s0)
	slt	t2, t0, t1
	sw	t2, -616(s0)
	lw	t0, -608(s0)
	lw	t1, -612(s0)
	slt	t2, t0, t1
	sw	t2, -616(s0)
	lw	t0, -616(s0)
	xori	t1, t0, 1
	sw	t1, -616(s0)
	lw	t0, -608(s0)
	lw	t1, -612(s0)
	xor	t2, t0, t1
	sw	t2, -616(s0)
	lw	t0, -616(s0)
	sltiu	t1, t0, 1
	sw	t1, -616(s0)
	lw	t0, -608(s0)
	lw	t1, -612(s0)
	xor	t2, t0, t1
	sw	t2, -616(s0)
	lw	t0, -616(s0)
	sltiu	t1, t0, 1
	sw	t1, -616(s0)
	lw	t0, -616(s0)
	xori	t1, t0, 1
	sw	t1, -616(s0)
	lw	t0, -608(s0)
	lw	t1, -612(s0)
	sll	t2, t0, t1
	sw	t2, -616(s0)
	lw	t0, -608(s0)
	lw	t1, -612(s0)
	sra	t2, t0, t1
	sw	t2, -616(s0)
	lw	t0, -608(s0)
	lw	t1, -612(s0)
	and	t2, t0, t1
	sw	t2, -616(s0)
	lw	t0, -608(s0)
	lw	t1, -612(s0)
	xor	t2, t0, t1
	sw	t2, -616(s0)
	lw	t0, -608(s0)
	lw	t1, -612(s0)
	or	t2, t0, t1
	sw	t2, -616(s0)
	lw	t0, -616(s0)
	bnez	t0, .ID122_for_suite
	j	ID122_for_out
.ID122_for_suite:
	addi	t1, t0, 0
	sw	t1, -620(s0)
	lw	t0, -620(s0)
	sw	t0, -24(s0)
	j	ID124_for_condition
.ID124_for_condition:
	lw	t0, -24(s0)
	lw	t0, -628(s0)
	addi	t1, t0, 4
	sw	t1, -628(s0)
	lw	t0, -624(s0)
	lw	t1, -628(s0)
	slt	t2, t0, t1
	sw	t2, -632(s0)
	lw	t0, -628(s0)
	lw	t1, -624(s0)
	slt	t2, t0, t1
	sw	t2, -632(s0)
	lw	t0, -632(s0)
	xori	t1, t0, 1
	sw	t1, -632(s0)
	lw	t0, -628(s0)
	lw	t1, -624(s0)
	slt	t2, t0, t1
	sw	t2, -632(s0)
	lw	t0, -624(s0)
	lw	t1, -628(s0)
	slt	t2, t0, t1
	sw	t2, -632(s0)
	lw	t0, -632(s0)
	xori	t1, t0, 1
	sw	t1, -632(s0)
	lw	t0, -624(s0)
	lw	t1, -628(s0)
	xor	t2, t0, t1
	sw	t2, -632(s0)
	lw	t0, -632(s0)
	sltiu	t1, t0, 1
	sw	t1, -632(s0)
	lw	t0, -624(s0)
	lw	t1, -628(s0)
	xor	t2, t0, t1
	sw	t2, -632(s0)
	lw	t0, -632(s0)
	sltiu	t1, t0, 1
	sw	t1, -632(s0)
	lw	t0, -632(s0)
	xori	t1, t0, 1
	sw	t1, -632(s0)
	lw	t0, -624(s0)
	lw	t1, -628(s0)
	sll	t2, t0, t1
	sw	t2, -632(s0)
	lw	t0, -624(s0)
	lw	t1, -628(s0)
	sra	t2, t0, t1
	sw	t2, -632(s0)
	lw	t0, -624(s0)
	lw	t1, -628(s0)
	and	t2, t0, t1
	sw	t2, -632(s0)
	lw	t0, -624(s0)
	lw	t1, -628(s0)
	xor	t2, t0, t1
	sw	t2, -632(s0)
	lw	t0, -624(s0)
	lw	t1, -628(s0)
	or	t2, t0, t1
	sw	t2, -632(s0)
	lw	t0, -632(s0)
	bnez	t0, .ID124_for_suite
	j	ID124_for_out
.ID124_for_suite:
	lw	t0, -44(s0)
	lw	t0, -640(s0)
	lw	t0, -16(s0)
	lw	t0, -644(s0)
	lw	t0, 0(null)
	lw	t0, -648(s0)
	lw	t0, -20(s0)
	lw	t0, -652(s0)
	lw	t0, -44(s0)
	lw	t0, -656(s0)
	lw	t0, -16(s0)
	lw	t0, -660(s0)
	lw	t0, 0(null)
	lw	t0, -664(s0)
	lw	t0, -20(s0)
	lw	t0, -668(s0)
	lw	t0, 0(null)
	lw	t0, -672(s0)
	lw	t0, -28(s0)
	lw	t0, -676(s0)
	lw	t0, -16(s0)
	lw	t0, -680(s0)
	lw	t0, 0(null)
	lw	t0, -684(s0)
	lw	t0, -24(s0)
	lw	t0, -688(s0)
	lw	t0, 0(null)
	lw	t0, -692(s0)
	lw	t0, -36(s0)
	lw	t0, -696(s0)
	lw	t0, -24(s0)
	lw	t0, -700(s0)
	lw	t0, 0(null)
	lw	t0, -704(s0)
	lw	t0, -20(s0)
	lw	t0, -708(s0)
	lw	t0, 0(null)
	lw	t0, -688(s0)
	lw	t1, -708(s0)
	mul	t2, t0, t1
	sw	t2, -712(s0)
	lw	t0, -668(s0)
	lw	t1, -712(s0)
	add	t2, t0, t1
	sw	t2, -716(s0)
	lw	t0, -716(s0)
	sw	t0, 0(null)
	j	ID124_for_incr
.ID124_for_incr:
	lw	t0, -24(s0)
	lw	t0, -724(s0)
	addi	t1, t0, 1
	sw	t1, -724(s0)
	lw	t0, -720(s0)
	lw	t1, -724(s0)
	add	t2, t0, t1
	sw	t2, -728(s0)
	lw	t0, -728(s0)
	sw	t0, -24(s0)
	lw	t0, -732(s0)
	lw	t0, -24(s0)
	j	ID124_for_condition
.ID124_for_out:
	j	ID122_for_incr
.ID122_for_incr:
	lw	t0, -20(s0)
	lw	t0, -740(s0)
	addi	t1, t0, 1
	sw	t1, -740(s0)
	lw	t0, -736(s0)
	lw	t1, -740(s0)
	add	t2, t0, t1
	sw	t2, -744(s0)
	lw	t0, -744(s0)
	sw	t0, -20(s0)
	lw	t0, -748(s0)
	lw	t0, -20(s0)
	j	ID122_for_condition
.ID122_for_out:
	j	ID120_for_incr
.ID120_for_incr:
	lw	t0, -16(s0)
	lw	t0, -756(s0)
	addi	t1, t0, 1
	sw	t1, -756(s0)
	lw	t0, -752(s0)
	lw	t1, -756(s0)
	add	t2, t0, t1
	sw	t2, -760(s0)
	lw	t0, -760(s0)
	sw	t0, -16(s0)
	lw	t0, -764(s0)
	lw	t0, -16(s0)
	j	ID120_for_condition
.ID120_for_out:
	addi	t1, t0, 0
	sw	t1, -768(s0)
	lw	t0, -768(s0)
	sw	t0, -52(s0)
	lw	t0, -772(s0)
	addi	t1, t0, 0
	sw	t1, -772(s0)
	lw	t0, -772(s0)
	sw	t0, -16(s0)
	j	ID165_for_condition
.ID165_for_condition:
	lw	t0, -16(s0)
	lw	t0, -780(s0)
	addi	t1, t0, 3
	sw	t1, -780(s0)
	lw	t0, -776(s0)
	lw	t1, -780(s0)
	slt	t2, t0, t1
	sw	t2, -784(s0)
	lw	t0, -780(s0)
	lw	t1, -776(s0)
	slt	t2, t0, t1
	sw	t2, -784(s0)
	lw	t0, -784(s0)
	xori	t1, t0, 1
	sw	t1, -784(s0)
	lw	t0, -780(s0)
	lw	t1, -776(s0)
	slt	t2, t0, t1
	sw	t2, -784(s0)
	lw	t0, -776(s0)
	lw	t1, -780(s0)
	slt	t2, t0, t1
	sw	t2, -784(s0)
	lw	t0, -784(s0)
	xori	t1, t0, 1
	sw	t1, -784(s0)
	lw	t0, -776(s0)
	lw	t1, -780(s0)
	xor	t2, t0, t1
	sw	t2, -784(s0)
	lw	t0, -784(s0)
	sltiu	t1, t0, 1
	sw	t1, -784(s0)
	lw	t0, -776(s0)
	lw	t1, -780(s0)
	xor	t2, t0, t1
	sw	t2, -784(s0)
	lw	t0, -784(s0)
	sltiu	t1, t0, 1
	sw	t1, -784(s0)
	lw	t0, -784(s0)
	xori	t1, t0, 1
	sw	t1, -784(s0)
	lw	t0, -776(s0)
	lw	t1, -780(s0)
	sll	t2, t0, t1
	sw	t2, -784(s0)
	lw	t0, -776(s0)
	lw	t1, -780(s0)
	sra	t2, t0, t1
	sw	t2, -784(s0)
	lw	t0, -776(s0)
	lw	t1, -780(s0)
	and	t2, t0, t1
	sw	t2, -784(s0)
	lw	t0, -776(s0)
	lw	t1, -780(s0)
	xor	t2, t0, t1
	sw	t2, -784(s0)
	lw	t0, -776(s0)
	lw	t1, -780(s0)
	or	t2, t0, t1
	sw	t2, -784(s0)
	lw	t0, -784(s0)
	bnez	t0, .ID165_for_suite
	j	ID165_for_out
.ID165_for_suite:
	addi	t1, t0, 0
	sw	t1, -788(s0)
	lw	t0, -788(s0)
	sw	t0, -20(s0)
	j	ID167_for_condition
.ID167_for_condition:
	lw	t0, -20(s0)
	lw	t0, -796(s0)
	addi	t1, t0, 2
	sw	t1, -796(s0)
	lw	t0, -792(s0)
	lw	t1, -796(s0)
	slt	t2, t0, t1
	sw	t2, -800(s0)
	lw	t0, -796(s0)
	lw	t1, -792(s0)
	slt	t2, t0, t1
	sw	t2, -800(s0)
	lw	t0, -800(s0)
	xori	t1, t0, 1
	sw	t1, -800(s0)
	lw	t0, -796(s0)
	lw	t1, -792(s0)
	slt	t2, t0, t1
	sw	t2, -800(s0)
	lw	t0, -792(s0)
	lw	t1, -796(s0)
	slt	t2, t0, t1
	sw	t2, -800(s0)
	lw	t0, -800(s0)
	xori	t1, t0, 1
	sw	t1, -800(s0)
	lw	t0, -792(s0)
	lw	t1, -796(s0)
	xor	t2, t0, t1
	sw	t2, -800(s0)
	lw	t0, -800(s0)
	sltiu	t1, t0, 1
	sw	t1, -800(s0)
	lw	t0, -792(s0)
	lw	t1, -796(s0)
	xor	t2, t0, t1
	sw	t2, -800(s0)
	lw	t0, -800(s0)
	sltiu	t1, t0, 1
	sw	t1, -800(s0)
	lw	t0, -800(s0)
	xori	t1, t0, 1
	sw	t1, -800(s0)
	lw	t0, -792(s0)
	lw	t1, -796(s0)
	sll	t2, t0, t1
	sw	t2, -800(s0)
	lw	t0, -792(s0)
	lw	t1, -796(s0)
	sra	t2, t0, t1
	sw	t2, -800(s0)
	lw	t0, -792(s0)
	lw	t1, -796(s0)
	and	t2, t0, t1
	sw	t2, -800(s0)
	lw	t0, -792(s0)
	lw	t1, -796(s0)
	xor	t2, t0, t1
	sw	t2, -800(s0)
	lw	t0, -792(s0)
	lw	t1, -796(s0)
	or	t2, t0, t1
	sw	t2, -800(s0)
	lw	t0, -800(s0)
	bnez	t0, .ID167_for_suite
	j	ID167_for_out
.ID167_for_suite:
	lw	t0, -52(s0)
	lw	t0, -808(s0)
	lw	t0, -44(s0)
	lw	t0, -812(s0)
	lw	t0, -16(s0)
	lw	t0, -816(s0)
	lw	t0, 0(null)
	lw	t0, -820(s0)
	lw	t0, -20(s0)
	lw	t0, -824(s0)
	lw	t0, 0(null)
	lw	t0, -804(s0)
	lw	t1, -824(s0)
	add	t2, t0, t1
	sw	t2, -828(s0)
	lw	t0, -828(s0)
	sw	t0, -52(s0)
	j	ID167_for_incr
.ID167_for_incr:
	lw	t0, -20(s0)
	lw	t0, -836(s0)
	addi	t1, t0, 1
	sw	t1, -836(s0)
	lw	t0, -832(s0)
	lw	t1, -836(s0)
	add	t2, t0, t1
	sw	t2, -840(s0)
	lw	t0, -840(s0)
	sw	t0, -20(s0)
	lw	t0, -844(s0)
	lw	t0, -20(s0)
	j	ID167_for_condition
.ID167_for_out:
	j	ID165_for_incr
.ID165_for_incr:
	lw	t0, -16(s0)
	lw	t0, -852(s0)
	addi	t1, t0, 1
	sw	t1, -852(s0)
	lw	t0, -848(s0)
	lw	t1, -852(s0)
	add	t2, t0, t1
	sw	t2, -856(s0)
	lw	t0, -856(s0)
	sw	t0, -16(s0)
	lw	t0, -860(s0)
	lw	t0, -16(s0)
	j	ID165_for_condition
.ID165_for_out:
	lw	t0, -52(s0)
	lw	t0, -864(s0)
	mv	a0, t0
	call	toString
	mv	t1, a0
	sw	t1, -868(s0)
	mv	a0, null
	call	print
	lw	t0, -872(s0)
	addi	t1, t0, 0
	sw	t1, -872(s0)
	lw	t0, -872(s0)
	sw	t0, -12(s0)
	j	main_return
	j	main_return
.main_return:
	lw	t0, -864(s0)
	lw	t0, -52(s0)
	lw	t0, -864(s0)
	mv	a0, t0
	call	toString
	mv	t1, a0
	sw	t1, -868(s0)
	mv	a0, null
	call	print
	lw	t0, -872(s0)
	addi	t1, t0, 0
	sw	t1, -872(s0)
	lw	t0, -872(s0)
	sw	t0, -12(s0)
	j	main_return
	j	main_return

