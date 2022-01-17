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
	addi	sp, sp, -76
	addi	s0, sp, 76
	sw	ra, -4(s0)
	sw	s0, -8(s0)
.main_entry:
	call	__init
	lw	t0, -28(s0)
	addi	t1, t0, 1
	sw	t1, -28(s0)
	lw	t0, -28(s0)
	sw	t0, -16(s0)
	lw	t0, -32(s0)
	addi	t1, t0, 2
	sw	t1, -32(s0)
	lw	t0, -32(s0)
	sw	t0, -20(s0)
	lw	t0, -36(s0)
	lw	t0, -16(s0)
	lw	t0, -40(s0)
	addi	t1, t0, 1
	sw	t1, -40(s0)
	lw	t0, -36(s0)
	lw	t1, -40(s0)
	add	t2, t0, t1
	sw	t2, -44(s0)
	lw	t0, -44(s0)
	sw	t0, -16(s0)
	lw	t0, -48(s0)
	lw	t0, -16(s0)
	lw	t0, -52(s0)
	addi	t1, t0, 1
	sw	t1, -52(s0)
	lw	t0, -48(s0)
	lw	t1, -52(s0)
	add	t2, t0, t1
	sw	t2, -56(s0)
	lw	t0, -56(s0)
	sw	t0, -16(s0)
	lw	t0, -60(s0)
	lw	t0, -16(s0)
	lw	t0, -36(s0)
	lw	t1, -60(s0)
	add	t2, t0, t1
	sw	t2, -64(s0)
	lw	t0, -64(s0)
	sw	t0, -24(s0)
	lw	t0, -68(s0)
	lw	t0, -24(s0)
	lw	t0, -68(s0)
	mv	a0, t0
	call	printlnInt
	lw	t0, -72(s0)
	addi	t1, t0, 0
	sw	t1, -72(s0)
	lw	t0, -72(s0)
	sw	t0, -12(s0)
	j	main_return
	j	main_return
.main_return:
	lw	t0, -76(s0)
	lw	t0, -12(s0)
	lw	t0, -76(s0)
	mv	a0, t0
	lw	ra, 72(sp)
	lw	s0, 68(sp)
	addi	sp, sp, 76
	ret

