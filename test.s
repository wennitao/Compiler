	.text

	.globl	__init
	.p2align	2
	.type	__init,@function
__init:
.__init_assemblyInit:
	addi	sp, sp, -8
	addi	s0, sp, 8
	sw	ra, -4(s0)
	sw	s0, -8(s0)
.__init_entry:
	j	.__init_return
.__init_return:
	lw	ra, 4(sp)
	lw	s0, 0(sp)
	addi	sp, sp, 8
	ret

	.globl	main
	.p2align	2
	.type	main,@function
main:
.main_assemblyInit:
	addi	sp, sp, -40
	addi	s0, sp, 40
	sw	ra, -4(s0)
	sw	s0, -8(s0)
.main_entry:
	call	__init
	lw	t0, -24(s0)
	addi	t1, t0, 1
	sw	t1, -24(s0)
	lw	t0, -24(s0)
	sw	t0, -16(s0)
	lw	t0, -28(s0)
	addi	t1, t0, 2
	sw	t1, -28(s0)
	lw	t0, -28(s0)
	sw	t0, -20(s0)
	lw	t0, -32(s0)
	addi	t1, t0, 123
	sw	t1, -32(s0)
	lw	t0, -32(s0)
	mv	a0, t0
	call	printInt
	lw	t0, -36(s0)
	addi	t1, t0, 0
	sw	t1, -36(s0)
	lw	t0, -36(s0)
	sw	t0, -12(s0)
	j	.main_return

.main_return:
	lw	t0, -40(s0)
	lw	t0, -12(s0)
	lw	t0, -40(s0)
	mv	a0, t0
	lw	ra, 36(sp)
	lw	s0, 32(sp)
	addi	sp, sp, 40
	ret

