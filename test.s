	.text

	.globl	__init
	.p2align	2
	.type	__init,@function
__init:
.__init_assemblyInit:
	addi	sp, sp, -16
	addi	s0, sp, 16
	sw	ra, -4(s0)
	sw	s0, -8(s0)
.__init_entry:
	j	.__init_return
.__init_return:
	lw	ra, 12(sp)
	lw	s0, 8(sp)
	addi	sp, sp, 16
	ret

	.globl	main
	.p2align	2
	.type	main,@function
main:
.main_assemblyInit:
	addi	sp, sp, -192
	addi	s0, sp, 192
	sw	ra, -4(s0)
	sw	s0, -8(s0)
.main_entry:
	call	__init
	call	getInt
	mv	t1, a0
	sw	t1, -16(s0)
	la	t0, fuckLLVM_n
	sw	t0, -20(s0)
	lw	t0, -16(s0)
	lw	t1, -20(s0)
	sw	t0, 0(t1)
	la	t0, fuckLLVM_n
	sw	t0, -24(s0)
	lw	t0, -24(s0)
	lw	t1, 0(t0)
	sw	t1, -28(s0)
	addi	t1, zero, 4
	sw	t1, -32(s0)
	lw	t0, -28(s0)
	lw	t1, -32(s0)
	rem	t2, t0, t1
	sw	t2, -36(s0)
	addi	t1, zero, 0
	sw	t1, -40(s0)
	lw	t0, -36(s0)
	lw	t1, -40(s0)
	xor	t2, t0, t1
	sw	t2, -44(s0)
	lw	t0, -44(s0)
	sltiu	t1, t0, 1
	sw	t1, -44(s0)
	lw	t0, -48(s0)
	mv	t1, t0
	sw	t1, -52(s0)
	lw	t0, -44(s0)
	bnez	t0, .ID4_OrOr_out
	lw	t0, -48(s0)
	mv	t1, t0
	sw	t1, -52(s0)
	j	.ID4_OrOr_false
.ID4_OrOr_false:
	la	t0, fuckLLVM_n
	sw	t0, -56(s0)
	lw	t0, -56(s0)
	lw	t1, 0(t0)
	sw	t1, -60(s0)
	addi	t1, zero, 7
	sw	t1, -64(s0)
	lw	t0, -60(s0)
	lw	t1, -64(s0)
	rem	t2, t0, t1
	sw	t2, -68(s0)
	addi	t1, zero, 0
	sw	t1, -72(s0)
	lw	t0, -68(s0)
	lw	t1, -72(s0)
	xor	t2, t0, t1
	sw	t2, -76(s0)
	lw	t0, -76(s0)
	sltiu	t1, t0, 1
	sw	t1, -76(s0)
	lw	t0, -76(s0)
	mv	t1, t0
	sw	t1, -52(s0)
	j	.ID4_OrOr_out
.ID4_OrOr_out:
	addi	t1, zero, 1
	sw	t1, -48(s0)
	lw	t0, -80(s0)
	mv	t1, t0
	sw	t1, -84(s0)
	lw	t0, -52(s0)
	bnez	t0, .ID8_OrOr_out
	lw	t0, -80(s0)
	mv	t1, t0
	sw	t1, -84(s0)
	j	.ID8_OrOr_false
.ID8_OrOr_false:
	la	t0, fuckLLVM_n
	sw	t0, -88(s0)
	lw	t0, -88(s0)
	lw	t1, 0(t0)
	sw	t1, -92(s0)
	addi	t1, zero, 47
	sw	t1, -96(s0)
	lw	t0, -92(s0)
	lw	t1, -96(s0)
	rem	t2, t0, t1
	sw	t2, -100(s0)
	addi	t1, zero, 0
	sw	t1, -104(s0)
	lw	t0, -100(s0)
	lw	t1, -104(s0)
	xor	t2, t0, t1
	sw	t2, -108(s0)
	lw	t0, -108(s0)
	sltiu	t1, t0, 1
	sw	t1, -108(s0)
	lw	t0, -108(s0)
	mv	t1, t0
	sw	t1, -84(s0)
	j	.ID8_OrOr_out
.ID8_OrOr_out:
	addi	t1, zero, 1
	sw	t1, -80(s0)
	lw	t0, -112(s0)
	mv	t1, t0
	sw	t1, -116(s0)
	lw	t0, -84(s0)
	bnez	t0, .ID12_OrOr_out
	lw	t0, -112(s0)
	mv	t1, t0
	sw	t1, -116(s0)
	j	.ID12_OrOr_false
.ID12_OrOr_false:
	la	t0, fuckLLVM_n
	sw	t0, -120(s0)
	lw	t0, -120(s0)
	lw	t1, 0(t0)
	sw	t1, -124(s0)
	addi	t1, zero, 74
	sw	t1, -128(s0)
	lw	t0, -124(s0)
	lw	t1, -128(s0)
	rem	t2, t0, t1
	sw	t2, -132(s0)
	addi	t1, zero, 0
	sw	t1, -136(s0)
	lw	t0, -132(s0)
	lw	t1, -136(s0)
	xor	t2, t0, t1
	sw	t2, -140(s0)
	lw	t0, -140(s0)
	sltiu	t1, t0, 1
	sw	t1, -140(s0)
	lw	t0, -140(s0)
	mv	t1, t0
	sw	t1, -116(s0)
	j	.ID12_OrOr_out
.ID12_OrOr_out:
	addi	t1, zero, 1
	sw	t1, -112(s0)
	lw	t0, -144(s0)
	mv	t1, t0
	sw	t1, -148(s0)
	lw	t0, -116(s0)
	bnez	t0, .ID16_OrOr_out
	lw	t0, -144(s0)
	mv	t1, t0
	sw	t1, -148(s0)
	j	.ID16_OrOr_false
.ID16_OrOr_false:
	la	t0, fuckLLVM_n
	sw	t0, -152(s0)
	lw	t0, -152(s0)
	lw	t1, 0(t0)
	sw	t1, -156(s0)
	addi	t1, zero, 477
	sw	t1, -160(s0)
	lw	t0, -156(s0)
	lw	t1, -160(s0)
	rem	t2, t0, t1
	sw	t2, -164(s0)
	addi	t1, zero, 0
	sw	t1, -168(s0)
	lw	t0, -164(s0)
	lw	t1, -168(s0)
	xor	t2, t0, t1
	sw	t2, -172(s0)
	lw	t0, -172(s0)
	sltiu	t1, t0, 1
	sw	t1, -172(s0)
	lw	t0, -172(s0)
	mv	t1, t0
	sw	t1, -148(s0)
	j	.ID16_OrOr_out
.ID16_OrOr_out:
	addi	t1, zero, 1
	sw	t1, -144(s0)
	lw	t0, -148(s0)
	bnez	t0, .ID20_if_true
	j	.ID20_if_false
.ID20_if_true:
	la	t0, fuckLLVM_.str.0
	sw	t0, -176(s0)
	lw	t0, -176(s0)
	mv	a0, t0
	call	print
	j	.ID20_if_out
.ID20_if_false:
	la	t0, fuckLLVM_.str.1
	sw	t0, -180(s0)
	lw	t0, -180(s0)
	mv	a0, t0
	call	print
	j	.ID20_if_out
.ID20_if_out:
	j	.main_return
.main_return:
	lw	t1, -12(s0)
	sw	t1, -184(s0)
	lw	t0, -184(s0)
	mv	a0, t0
	lw	ra, 188(sp)
	lw	s0, 184(sp)
	addi	sp, sp, 192
	ret

	.section	.sbss
	.type	fuckLLVM_n,@object
	.globl	fuckLLVM_n
	.p2align	2
fuckLLVM_n:
	.word	0
	.size	fuckLLVM_n, 8

	.section	.rodata
	.type	fuckLLVM_.str.0,@object
fuckLLVM_.str.0:
	.asciz	"YES "
	.size	fuckLLVM_.str.0, 4

	.section	.rodata
	.type	fuckLLVM_.str.1,@object
fuckLLVM_.str.1:
	.asciz	"NO "
	.size	fuckLLVM_.str.1, 3

