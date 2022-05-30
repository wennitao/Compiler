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

	.globl	wpp
	.p2align	2
	.type	wpp,@function
wpp:
.wpp_assemblyInit:
	li	t0, 16
	sub	sp, sp, t0
	add	t1, sp, t0
	sw	ra, -4(t1)
	sw	s0, -8(t1)
	mv	s0, t1
	j	.wpp_entry
.wpp_entry:
	lw	ra, fuckLLVM_w
	addi	t0, ra, 1
	la	ra, fuckLLVM_w
	sw	t0, 0(ra)
	lw	ra, fuckLLVM_w
	addi	ra, ra, 1
	la	t0, fuckLLVM_w
	sw	ra, 0(t0)
	lw	a0, fuckLLVM_w
	j	.wpp_return
.wpp_return:
	li	t0, 16
	add	t1, sp, t0
	lw	ra, -4(t1)
	lw	s0, -8(t1)
	add	sp, sp, t0
	ret

	.globl	wppp
	.p2align	2
	.type	wppp,@function
wppp:
.wppp_assemblyInit:
	li	t0, 16
	sub	sp, sp, t0
	add	t1, sp, t0
	sw	ra, -4(t1)
	sw	s0, -8(t1)
	mv	s0, t1
	j	.wppp_entry
.wppp_entry:
	j	.wppp_call_wpp_0
.wppp_call_wpp_0:
	lw	ra, fuckLLVM_w
	addi	t0, ra, 1
	la	ra, fuckLLVM_w
	sw	t0, 0(ra)
	lw	ra, fuckLLVM_w
	addi	t0, ra, 1
	la	ra, fuckLLVM_w
	sw	t0, 0(ra)
	lw	ra, fuckLLVM_w
	lw	ra, fuckLLVM_w
	addi	ra, ra, 1
	la	t0, fuckLLVM_w
	sw	ra, 0(t0)
	lw	ra, fuckLLVM_w
	addi	t0, ra, 1
	la	ra, fuckLLVM_w
	sw	t0, 0(ra)
	lw	ra, fuckLLVM_w
	lw	ra, fuckLLVM_w
	addi	ra, ra, 1
	la	t0, fuckLLVM_w
	sw	ra, 0(t0)
	lw	ra, fuckLLVM_w
	addi	ra, ra, 1
	la	t0, fuckLLVM_w
	sw	ra, 0(t0)
	lw	ra, fuckLLVM_w
	lw	ra, fuckLLVM_w
	addi	ra, ra, 1
	la	t0, fuckLLVM_w
	sw	ra, 0(t0)
	lw	ra, fuckLLVM_w
	addi	ra, ra, 1
	la	t0, fuckLLVM_w
	sw	ra, 0(t0)
	lw	ra, fuckLLVM_w
	lw	ra, fuckLLVM_w
	addi	ra, ra, 1
	la	t0, fuckLLVM_w
	sw	ra, 0(t0)
	lw	ra, fuckLLVM_w
	addi	t0, ra, 1
	la	ra, fuckLLVM_w
	sw	t0, 0(ra)
	lw	ra, fuckLLVM_w
	lw	ra, fuckLLVM_w
	addi	ra, ra, 1
	la	t0, fuckLLVM_w
	sw	ra, 0(t0)
	lw	ra, fuckLLVM_w
	addi	t0, ra, 1
	la	ra, fuckLLVM_w
	sw	t0, 0(ra)
	lw	ra, fuckLLVM_w
	lw	ra, fuckLLVM_w
	addi	t0, ra, 1
	la	ra, fuckLLVM_w
	sw	t0, 0(ra)
	lw	ra, fuckLLVM_w
	addi	t0, ra, 1
	la	ra, fuckLLVM_w
	sw	t0, 0(ra)
	lw	ra, fuckLLVM_w
	lw	ra, fuckLLVM_w
	addi	t0, ra, 1
	la	ra, fuckLLVM_w
	sw	t0, 0(ra)
	lw	ra, fuckLLVM_w
	addi	t0, ra, 1
	la	ra, fuckLLVM_w
	sw	t0, 0(ra)
	lw	a0, fuckLLVM_w
	j	.wppp_return
.wppp_return:
	li	t0, 16
	add	t1, sp, t0
	lw	ra, -4(t1)
	lw	s0, -8(t1)
	add	sp, sp, t0
	ret

	.globl	wpppp
	.p2align	2
	.type	wpppp,@function
wpppp:
.wpppp_assemblyInit:
	li	t0, 16
	sub	sp, sp, t0
	add	t1, sp, t0
	sw	ra, -4(t1)
	sw	s0, -8(t1)
	mv	s0, t1
	j	.wpppp_entry
.wpppp_entry:
	j	.wpppp_call_wppp_8
.wpppp_call_wppp_8:
	lw	ra, fuckLLVM_w
	addi	t0, ra, 1
	la	ra, fuckLLVM_w
	sw	t0, 0(ra)
	lw	ra, fuckLLVM_w
	addi	ra, ra, 1
	la	t0, fuckLLVM_w
	sw	ra, 0(t0)
	lw	ra, fuckLLVM_w
	lw	ra, fuckLLVM_w
	addi	t0, ra, 1
	la	ra, fuckLLVM_w
	sw	t0, 0(ra)
	lw	ra, fuckLLVM_w
	addi	ra, ra, 1
	la	t0, fuckLLVM_w
	sw	ra, 0(t0)
	lw	ra, fuckLLVM_w
	lw	ra, fuckLLVM_w
	addi	t0, ra, 1
	la	ra, fuckLLVM_w
	sw	t0, 0(ra)
	lw	ra, fuckLLVM_w
	addi	ra, ra, 1
	la	t0, fuckLLVM_w
	sw	ra, 0(t0)
	lw	ra, fuckLLVM_w
	lw	ra, fuckLLVM_w
	addi	ra, ra, 1
	la	t0, fuckLLVM_w
	sw	ra, 0(t0)
	lw	ra, fuckLLVM_w
	addi	ra, ra, 1
	la	t0, fuckLLVM_w
	sw	ra, 0(t0)
	lw	ra, fuckLLVM_w
	lw	ra, fuckLLVM_w
	addi	ra, ra, 1
	la	t0, fuckLLVM_w
	sw	ra, 0(t0)
	lw	ra, fuckLLVM_w
	addi	ra, ra, 1
	la	t0, fuckLLVM_w
	sw	ra, 0(t0)
	lw	ra, fuckLLVM_w
	lw	ra, fuckLLVM_w
	addi	ra, ra, 1
	la	t0, fuckLLVM_w
	sw	ra, 0(t0)
	lw	ra, fuckLLVM_w
	addi	ra, ra, 1
	la	t0, fuckLLVM_w
	sw	ra, 0(t0)
	lw	ra, fuckLLVM_w
	lw	ra, fuckLLVM_w
	addi	t0, ra, 1
	la	ra, fuckLLVM_w
	sw	t0, 0(ra)
	lw	ra, fuckLLVM_w
	addi	t0, ra, 1
	la	ra, fuckLLVM_w
	sw	t0, 0(ra)
	lw	ra, fuckLLVM_w
	lw	ra, fuckLLVM_w
	addi	ra, ra, 1
	la	t0, fuckLLVM_w
	sw	ra, 0(t0)
	lw	ra, fuckLLVM_w
	addi	ra, ra, 1
	la	t0, fuckLLVM_w
	sw	ra, 0(t0)
	lw	ra, fuckLLVM_w
	lw	ra, fuckLLVM_w
	addi	ra, ra, 1
	la	t0, fuckLLVM_w
	sw	ra, 0(t0)
	lw	ra, fuckLLVM_w
	addi	t0, ra, 1
	la	ra, fuckLLVM_w
	sw	t0, 0(ra)
	lw	ra, fuckLLVM_w
	lw	ra, fuckLLVM_w
	addi	ra, ra, 1
	la	t0, fuckLLVM_w
	sw	ra, 0(t0)
	lw	ra, fuckLLVM_w
	addi	ra, ra, 1
	la	t0, fuckLLVM_w
	sw	ra, 0(t0)
	lw	ra, fuckLLVM_w
	lw	ra, fuckLLVM_w
	addi	t0, ra, 1
	la	ra, fuckLLVM_w
	sw	t0, 0(ra)
	lw	ra, fuckLLVM_w
	addi	t0, ra, 1
	la	ra, fuckLLVM_w
	sw	t0, 0(ra)
	lw	ra, fuckLLVM_w
	lw	ra, fuckLLVM_w
	addi	t0, ra, 1
	la	ra, fuckLLVM_w
	sw	t0, 0(ra)
	lw	ra, fuckLLVM_w
	addi	ra, ra, 1
	la	t0, fuckLLVM_w
	sw	ra, 0(t0)
	lw	ra, fuckLLVM_w
	lw	ra, fuckLLVM_w
	addi	t0, ra, 1
	la	ra, fuckLLVM_w
	sw	t0, 0(ra)
	lw	ra, fuckLLVM_w
	addi	t0, ra, 1
	la	ra, fuckLLVM_w
	sw	t0, 0(ra)
	lw	ra, fuckLLVM_w
	lw	ra, fuckLLVM_w
	addi	t0, ra, 1
	la	ra, fuckLLVM_w
	sw	t0, 0(ra)
	lw	ra, fuckLLVM_w
	addi	t0, ra, 1
	la	ra, fuckLLVM_w
	sw	t0, 0(ra)
	lw	ra, fuckLLVM_w
	lw	ra, fuckLLVM_w
	addi	t0, ra, 1
	la	ra, fuckLLVM_w
	sw	t0, 0(ra)
	lw	ra, fuckLLVM_w
	addi	t0, ra, 1
	la	ra, fuckLLVM_w
	sw	t0, 0(ra)
	lw	ra, fuckLLVM_w
	lw	ra, fuckLLVM_w
	addi	t0, ra, 1
	la	ra, fuckLLVM_w
	sw	t0, 0(ra)
	lw	ra, fuckLLVM_w
	addi	ra, ra, 1
	la	t0, fuckLLVM_w
	sw	ra, 0(t0)
	lw	ra, fuckLLVM_w
	lw	ra, fuckLLVM_w
	addi	t0, ra, 1
	la	ra, fuckLLVM_w
	sw	t0, 0(ra)
	lw	ra, fuckLLVM_w
	addi	ra, ra, 1
	la	t0, fuckLLVM_w
	sw	ra, 0(t0)
	lw	ra, fuckLLVM_w
	lw	ra, fuckLLVM_w
	addi	t0, ra, 1
	la	ra, fuckLLVM_w
	sw	t0, 0(ra)
	lw	ra, fuckLLVM_w
	addi	t0, ra, 1
	la	ra, fuckLLVM_w
	sw	t0, 0(ra)
	lw	ra, fuckLLVM_w
	lw	ra, fuckLLVM_w
	addi	t0, ra, 1
	la	ra, fuckLLVM_w
	sw	t0, 0(ra)
	lw	ra, fuckLLVM_w
	addi	ra, ra, 1
	la	t0, fuckLLVM_w
	sw	ra, 0(t0)
	lw	ra, fuckLLVM_w
	lw	ra, fuckLLVM_w
	addi	ra, ra, 1
	la	t0, fuckLLVM_w
	sw	ra, 0(t0)
	lw	ra, fuckLLVM_w
	addi	t0, ra, 1
	la	ra, fuckLLVM_w
	sw	t0, 0(ra)
	lw	ra, fuckLLVM_w
	lw	ra, fuckLLVM_w
	addi	t0, ra, 1
	la	ra, fuckLLVM_w
	sw	t0, 0(ra)
	lw	ra, fuckLLVM_w
	addi	ra, ra, 1
	la	t0, fuckLLVM_w
	sw	ra, 0(t0)
	lw	ra, fuckLLVM_w
	lw	ra, fuckLLVM_w
	addi	t0, ra, 1
	la	ra, fuckLLVM_w
	sw	t0, 0(ra)
	lw	ra, fuckLLVM_w
	addi	t0, ra, 1
	la	ra, fuckLLVM_w
	sw	t0, 0(ra)
	lw	ra, fuckLLVM_w
	lw	ra, fuckLLVM_w
	addi	ra, ra, 1
	la	t0, fuckLLVM_w
	sw	ra, 0(t0)
	lw	ra, fuckLLVM_w
	addi	ra, ra, 1
	la	t0, fuckLLVM_w
	sw	ra, 0(t0)
	lw	ra, fuckLLVM_w
	lw	ra, fuckLLVM_w
	addi	ra, ra, 1
	la	t0, fuckLLVM_w
	sw	ra, 0(t0)
	lw	ra, fuckLLVM_w
	addi	t0, ra, 1
	la	ra, fuckLLVM_w
	sw	t0, 0(ra)
	lw	ra, fuckLLVM_w
	lw	ra, fuckLLVM_w
	addi	ra, ra, 1
	la	t0, fuckLLVM_w
	sw	ra, 0(t0)
	lw	ra, fuckLLVM_w
	addi	t0, ra, 1
	la	ra, fuckLLVM_w
	sw	t0, 0(ra)
	lw	ra, fuckLLVM_w
	lw	ra, fuckLLVM_w
	addi	t0, ra, 1
	la	ra, fuckLLVM_w
	sw	t0, 0(ra)
	lw	ra, fuckLLVM_w
	addi	ra, ra, 1
	la	t0, fuckLLVM_w
	sw	ra, 0(t0)
	lw	ra, fuckLLVM_w
	lw	ra, fuckLLVM_w
	addi	t0, ra, 1
	la	ra, fuckLLVM_w
	sw	t0, 0(ra)
	lw	ra, fuckLLVM_w
	addi	t0, ra, 1
	la	ra, fuckLLVM_w
	sw	t0, 0(ra)
	lw	ra, fuckLLVM_w
	lw	ra, fuckLLVM_w
	addi	ra, ra, 1
	la	t0, fuckLLVM_w
	sw	ra, 0(t0)
	lw	ra, fuckLLVM_w
	addi	ra, ra, 1
	la	t0, fuckLLVM_w
	sw	ra, 0(t0)
	lw	ra, fuckLLVM_w
	lw	ra, fuckLLVM_w
	addi	t0, ra, 1
	la	ra, fuckLLVM_w
	sw	t0, 0(ra)
	lw	ra, fuckLLVM_w
	addi	t0, ra, 1
	la	ra, fuckLLVM_w
	sw	t0, 0(ra)
	lw	ra, fuckLLVM_w
	lw	ra, fuckLLVM_w
	addi	ra, ra, 1
	la	t0, fuckLLVM_w
	sw	ra, 0(t0)
	lw	ra, fuckLLVM_w
	addi	t0, ra, 1
	la	ra, fuckLLVM_w
	sw	t0, 0(ra)
	lw	ra, fuckLLVM_w
	lw	ra, fuckLLVM_w
	addi	ra, ra, 1
	la	t0, fuckLLVM_w
	sw	ra, 0(t0)
	lw	ra, fuckLLVM_w
	addi	ra, ra, 1
	la	t0, fuckLLVM_w
	sw	ra, 0(t0)
	lw	ra, fuckLLVM_w
	lw	ra, fuckLLVM_w
	addi	t0, ra, 1
	la	ra, fuckLLVM_w
	sw	t0, 0(ra)
	lw	ra, fuckLLVM_w
	addi	ra, ra, 1
	la	t0, fuckLLVM_w
	sw	ra, 0(t0)
	lw	ra, fuckLLVM_w
	lw	ra, fuckLLVM_w
	addi	ra, ra, 1
	la	t0, fuckLLVM_w
	sw	ra, 0(t0)
	lw	ra, fuckLLVM_w
	addi	ra, ra, 1
	la	t0, fuckLLVM_w
	sw	ra, 0(t0)
	lw	ra, fuckLLVM_w
	lw	ra, fuckLLVM_w
	addi	t0, ra, 1
	la	ra, fuckLLVM_w
	sw	t0, 0(ra)
	lw	ra, fuckLLVM_w
	addi	ra, ra, 1
	la	t0, fuckLLVM_w
	sw	ra, 0(t0)
	lw	ra, fuckLLVM_w
	lw	ra, fuckLLVM_w
	addi	ra, ra, 1
	la	t0, fuckLLVM_w
	sw	ra, 0(t0)
	lw	ra, fuckLLVM_w
	addi	t0, ra, 1
	la	ra, fuckLLVM_w
	sw	t0, 0(ra)
	lw	ra, fuckLLVM_w
	lw	ra, fuckLLVM_w
	addi	t0, ra, 1
	la	ra, fuckLLVM_w
	sw	t0, 0(ra)
	lw	ra, fuckLLVM_w
	addi	t0, ra, 1
	la	ra, fuckLLVM_w
	sw	t0, 0(ra)
	lw	ra, fuckLLVM_w
	lw	ra, fuckLLVM_w
	addi	ra, ra, 1
	la	t0, fuckLLVM_w
	sw	ra, 0(t0)
	lw	ra, fuckLLVM_w
	addi	t0, ra, 1
	la	ra, fuckLLVM_w
	sw	t0, 0(ra)
	lw	ra, fuckLLVM_w
	lw	ra, fuckLLVM_w
	addi	ra, ra, 1
	la	t0, fuckLLVM_w
	sw	ra, 0(t0)
	lw	ra, fuckLLVM_w
	addi	t0, ra, 1
	la	ra, fuckLLVM_w
	sw	t0, 0(ra)
	lw	ra, fuckLLVM_w
	lw	ra, fuckLLVM_w
	addi	t0, ra, 1
	la	ra, fuckLLVM_w
	sw	t0, 0(ra)
	lw	ra, fuckLLVM_w
	addi	ra, ra, 1
	la	t0, fuckLLVM_w
	sw	ra, 0(t0)
	lw	ra, fuckLLVM_w
	lw	ra, fuckLLVM_w
	addi	t0, ra, 1
	la	ra, fuckLLVM_w
	sw	t0, 0(ra)
	lw	ra, fuckLLVM_w
	addi	ra, ra, 1
	la	t0, fuckLLVM_w
	sw	ra, 0(t0)
	lw	ra, fuckLLVM_w
	lw	ra, fuckLLVM_w
	addi	t0, ra, 1
	la	ra, fuckLLVM_w
	sw	t0, 0(ra)
	lw	ra, fuckLLVM_w
	addi	t0, ra, 1
	la	ra, fuckLLVM_w
	sw	t0, 0(ra)
	lw	ra, fuckLLVM_w
	lw	ra, fuckLLVM_w
	addi	ra, ra, 1
	la	t0, fuckLLVM_w
	sw	ra, 0(t0)
	lw	ra, fuckLLVM_w
	addi	t0, ra, 1
	la	ra, fuckLLVM_w
	sw	t0, 0(ra)
	lw	ra, fuckLLVM_w
	lw	ra, fuckLLVM_w
	addi	t0, ra, 1
	la	ra, fuckLLVM_w
	sw	t0, 0(ra)
	lw	ra, fuckLLVM_w
	addi	ra, ra, 1
	la	t0, fuckLLVM_w
	sw	ra, 0(t0)
	lw	ra, fuckLLVM_w
	lw	ra, fuckLLVM_w
	addi	ra, ra, 1
	la	t0, fuckLLVM_w
	sw	ra, 0(t0)
	lw	ra, fuckLLVM_w
	addi	ra, ra, 1
	la	t0, fuckLLVM_w
	sw	ra, 0(t0)
	lw	ra, fuckLLVM_w
	lw	ra, fuckLLVM_w
	addi	ra, ra, 1
	la	t0, fuckLLVM_w
	sw	ra, 0(t0)
	lw	ra, fuckLLVM_w
	addi	t0, ra, 1
	la	ra, fuckLLVM_w
	sw	t0, 0(ra)
	lw	ra, fuckLLVM_w
	lw	ra, fuckLLVM_w
	addi	t0, ra, 1
	la	ra, fuckLLVM_w
	sw	t0, 0(ra)
	lw	ra, fuckLLVM_w
	addi	t0, ra, 1
	la	ra, fuckLLVM_w
	sw	t0, 0(ra)
	lw	ra, fuckLLVM_w
	lw	ra, fuckLLVM_w
	addi	ra, ra, 1
	la	t0, fuckLLVM_w
	sw	ra, 0(t0)
	lw	ra, fuckLLVM_w
	addi	ra, ra, 1
	la	t0, fuckLLVM_w
	sw	ra, 0(t0)
	lw	ra, fuckLLVM_w
	lw	ra, fuckLLVM_w
	addi	ra, ra, 1
	la	t0, fuckLLVM_w
	sw	ra, 0(t0)
	lw	ra, fuckLLVM_w
	addi	t0, ra, 1
	la	ra, fuckLLVM_w
	sw	t0, 0(ra)
	lw	ra, fuckLLVM_w
	lw	ra, fuckLLVM_w
	addi	t0, ra, 1
	la	ra, fuckLLVM_w
	sw	t0, 0(ra)
	lw	ra, fuckLLVM_w
	addi	t0, ra, 1
	la	ra, fuckLLVM_w
	sw	t0, 0(ra)
	lw	ra, fuckLLVM_w
	lw	ra, fuckLLVM_w
	addi	t0, ra, 1
	la	ra, fuckLLVM_w
	sw	t0, 0(ra)
	lw	ra, fuckLLVM_w
	addi	t0, ra, 1
	la	ra, fuckLLVM_w
	sw	t0, 0(ra)
	lw	ra, fuckLLVM_w
	lw	ra, fuckLLVM_w
	addi	ra, ra, 1
	la	t0, fuckLLVM_w
	sw	ra, 0(t0)
	lw	ra, fuckLLVM_w
	addi	t0, ra, 1
	la	ra, fuckLLVM_w
	sw	t0, 0(ra)
	lw	ra, fuckLLVM_w
	lw	ra, fuckLLVM_w
	addi	ra, ra, 1
	la	t0, fuckLLVM_w
	sw	ra, 0(t0)
	lw	ra, fuckLLVM_w
	addi	ra, ra, 1
	la	t0, fuckLLVM_w
	sw	ra, 0(t0)
	lw	ra, fuckLLVM_w
	lw	ra, fuckLLVM_w
	addi	ra, ra, 1
	la	t0, fuckLLVM_w
	sw	ra, 0(t0)
	lw	ra, fuckLLVM_w
	addi	ra, ra, 1
	la	t0, fuckLLVM_w
	sw	ra, 0(t0)
	lw	ra, fuckLLVM_w
	lw	ra, fuckLLVM_w
	addi	ra, ra, 1
	la	t0, fuckLLVM_w
	sw	ra, 0(t0)
	lw	ra, fuckLLVM_w
	addi	ra, ra, 1
	la	t0, fuckLLVM_w
	sw	ra, 0(t0)
	lw	ra, fuckLLVM_w
	lw	ra, fuckLLVM_w
	addi	t0, ra, 1
	la	ra, fuckLLVM_w
	sw	t0, 0(ra)
	lw	ra, fuckLLVM_w
	addi	ra, ra, 1
	la	t0, fuckLLVM_w
	sw	ra, 0(t0)
	lw	ra, fuckLLVM_w
	lw	ra, fuckLLVM_w
	addi	ra, ra, 1
	la	t0, fuckLLVM_w
	sw	ra, 0(t0)
	lw	ra, fuckLLVM_w
	addi	ra, ra, 1
	la	t0, fuckLLVM_w
	sw	ra, 0(t0)
	lw	a0, fuckLLVM_w
	j	.wpppp_return
.wpppp_return:
	li	t0, 16
	add	t1, sp, t0
	lw	ra, -4(t1)
	lw	s0, -8(t1)
	add	sp, sp, t0
	ret

	.globl	block
	.p2align	2
	.type	block,@function
block:
.block_assemblyInit:
	li	t0, 16
	sub	sp, sp, t0
	add	t1, sp, t0
	sw	ra, -4(t1)
	sw	s0, -8(t1)
	mv	s0, t1
	j	.block_entry
.block_entry:
	call	block
	j	.block_return
.block_return:
	li	t0, 16
	add	t1, sp, t0
	lw	ra, -4(t1)
	lw	s0, -8(t1)
	add	sp, sp, t0
	ret

	.globl	bblock
	.p2align	2
	.type	bblock,@function
bblock:
.bblock_assemblyInit:
	li	t0, 16
	sub	sp, sp, t0
	add	t1, sp, t0
	sw	ra, -4(t1)
	sw	s0, -8(t1)
	mv	s0, t1
	j	.bblock_entry
.bblock_entry:
	j	.bblock_call_wpppp_15
.bblock_call_wpppp_15:
	lw	ra, fuckLLVM_w
	addi	t0, ra, 1
	la	ra, fuckLLVM_w
	sw	t0, 0(ra)
	lw	ra, fuckLLVM_w
	addi	ra, ra, 1
	la	t0, fuckLLVM_w
	sw	ra, 0(t0)
	lw	ra, fuckLLVM_w
	lw	ra, fuckLLVM_w
	addi	ra, ra, 1
	la	t0, fuckLLVM_w
	sw	ra, 0(t0)
	lw	ra, fuckLLVM_w
	addi	ra, ra, 1
	la	t0, fuckLLVM_w
	sw	ra, 0(t0)
	lw	ra, fuckLLVM_w
	lw	ra, fuckLLVM_w
	addi	t0, ra, 1
	la	ra, fuckLLVM_w
	sw	t0, 0(ra)
	lw	ra, fuckLLVM_w
	addi	ra, ra, 1
	la	t0, fuckLLVM_w
	sw	ra, 0(t0)
	lw	ra, fuckLLVM_w
	lw	ra, fuckLLVM_w
	addi	ra, ra, 1
	la	t0, fuckLLVM_w
	sw	ra, 0(t0)
	lw	ra, fuckLLVM_w
	addi	ra, ra, 1
	la	t0, fuckLLVM_w
	sw	ra, 0(t0)
	lw	ra, fuckLLVM_w
	lw	ra, fuckLLVM_w
	addi	ra, ra, 1
	la	t0, fuckLLVM_w
	sw	ra, 0(t0)
	lw	ra, fuckLLVM_w
	addi	t0, ra, 1
	la	ra, fuckLLVM_w
	sw	t0, 0(ra)
	lw	ra, fuckLLVM_w
	lw	ra, fuckLLVM_w
	addi	t0, ra, 1
	la	ra, fuckLLVM_w
	sw	t0, 0(ra)
	lw	ra, fuckLLVM_w
	addi	ra, ra, 1
	la	t0, fuckLLVM_w
	sw	ra, 0(t0)
	lw	ra, fuckLLVM_w
	lw	ra, fuckLLVM_w
	addi	ra, ra, 1
	la	t0, fuckLLVM_w
	sw	ra, 0(t0)
	lw	ra, fuckLLVM_w
	addi	ra, ra, 1
	la	t0, fuckLLVM_w
	sw	ra, 0(t0)
	lw	ra, fuckLLVM_w
	lw	ra, fuckLLVM_w
	addi	t0, ra, 1
	la	ra, fuckLLVM_w
	sw	t0, 0(ra)
	lw	ra, fuckLLVM_w
	addi	ra, ra, 1
	la	t0, fuckLLVM_w
	sw	ra, 0(t0)
	lw	ra, fuckLLVM_w
	lw	ra, fuckLLVM_w
	addi	ra, ra, 1
	la	t0, fuckLLVM_w
	sw	ra, 0(t0)
	lw	ra, fuckLLVM_w
	addi	ra, ra, 1
	la	t0, fuckLLVM_w
	sw	ra, 0(t0)
	lw	ra, fuckLLVM_w
	lw	ra, fuckLLVM_w
	addi	t0, ra, 1
	la	ra, fuckLLVM_w
	sw	t0, 0(ra)
	lw	ra, fuckLLVM_w
	addi	t0, ra, 1
	la	ra, fuckLLVM_w
	sw	t0, 0(ra)
	lw	ra, fuckLLVM_w
	lw	ra, fuckLLVM_w
	addi	ra, ra, 1
	la	t0, fuckLLVM_w
	sw	ra, 0(t0)
	lw	ra, fuckLLVM_w
	addi	t0, ra, 1
	la	ra, fuckLLVM_w
	sw	t0, 0(ra)
	lw	ra, fuckLLVM_w
	lw	ra, fuckLLVM_w
	addi	ra, ra, 1
	la	t0, fuckLLVM_w
	sw	ra, 0(t0)
	lw	ra, fuckLLVM_w
	addi	t0, ra, 1
	la	ra, fuckLLVM_w
	sw	t0, 0(ra)
	lw	ra, fuckLLVM_w
	lw	ra, fuckLLVM_w
	addi	ra, ra, 1
	la	t0, fuckLLVM_w
	sw	ra, 0(t0)
	lw	ra, fuckLLVM_w
	addi	t0, ra, 1
	la	ra, fuckLLVM_w
	sw	t0, 0(ra)
	lw	ra, fuckLLVM_w
	lw	ra, fuckLLVM_w
	addi	t0, ra, 1
	la	ra, fuckLLVM_w
	sw	t0, 0(ra)
	lw	ra, fuckLLVM_w
	addi	ra, ra, 1
	la	t0, fuckLLVM_w
	sw	ra, 0(t0)
	lw	ra, fuckLLVM_w
	lw	ra, fuckLLVM_w
	addi	t0, ra, 1
	la	ra, fuckLLVM_w
	sw	t0, 0(ra)
	lw	ra, fuckLLVM_w
	addi	ra, ra, 1
	la	t0, fuckLLVM_w
	sw	ra, 0(t0)
	lw	ra, fuckLLVM_w
	lw	ra, fuckLLVM_w
	addi	ra, ra, 1
	la	t0, fuckLLVM_w
	sw	ra, 0(t0)
	lw	ra, fuckLLVM_w
	addi	t0, ra, 1
	la	ra, fuckLLVM_w
	sw	t0, 0(ra)
	lw	ra, fuckLLVM_w
	lw	ra, fuckLLVM_w
	addi	ra, ra, 1
	la	t0, fuckLLVM_w
	sw	ra, 0(t0)
	lw	ra, fuckLLVM_w
	addi	ra, ra, 1
	la	t0, fuckLLVM_w
	sw	ra, 0(t0)
	lw	ra, fuckLLVM_w
	lw	ra, fuckLLVM_w
	addi	t0, ra, 1
	la	ra, fuckLLVM_w
	sw	t0, 0(ra)
	lw	ra, fuckLLVM_w
	addi	t0, ra, 1
	la	ra, fuckLLVM_w
	sw	t0, 0(ra)
	lw	ra, fuckLLVM_w
	lw	ra, fuckLLVM_w
	addi	ra, ra, 1
	la	t0, fuckLLVM_w
	sw	ra, 0(t0)
	lw	ra, fuckLLVM_w
	addi	ra, ra, 1
	la	t0, fuckLLVM_w
	sw	ra, 0(t0)
	lw	ra, fuckLLVM_w
	lw	ra, fuckLLVM_w
	addi	t0, ra, 1
	la	ra, fuckLLVM_w
	sw	t0, 0(ra)
	lw	ra, fuckLLVM_w
	addi	t0, ra, 1
	la	ra, fuckLLVM_w
	sw	t0, 0(ra)
	lw	ra, fuckLLVM_w
	lw	ra, fuckLLVM_w
	addi	ra, ra, 1
	la	t0, fuckLLVM_w
	sw	ra, 0(t0)
	lw	ra, fuckLLVM_w
	addi	t0, ra, 1
	la	ra, fuckLLVM_w
	sw	t0, 0(ra)
	lw	ra, fuckLLVM_w
	lw	ra, fuckLLVM_w
	addi	ra, ra, 1
	la	t0, fuckLLVM_w
	sw	ra, 0(t0)
	lw	ra, fuckLLVM_w
	addi	t0, ra, 1
	la	ra, fuckLLVM_w
	sw	t0, 0(ra)
	lw	ra, fuckLLVM_w
	lw	ra, fuckLLVM_w
	addi	t0, ra, 1
	la	ra, fuckLLVM_w
	sw	t0, 0(ra)
	lw	ra, fuckLLVM_w
	addi	t0, ra, 1
	la	ra, fuckLLVM_w
	sw	t0, 0(ra)
	lw	ra, fuckLLVM_w
	lw	ra, fuckLLVM_w
	addi	ra, ra, 1
	la	t0, fuckLLVM_w
	sw	ra, 0(t0)
	lw	ra, fuckLLVM_w
	addi	ra, ra, 1
	la	t0, fuckLLVM_w
	sw	ra, 0(t0)
	lw	ra, fuckLLVM_w
	lw	ra, fuckLLVM_w
	addi	ra, ra, 1
	la	t0, fuckLLVM_w
	sw	ra, 0(t0)
	lw	ra, fuckLLVM_w
	addi	ra, ra, 1
	la	t0, fuckLLVM_w
	sw	ra, 0(t0)
	lw	ra, fuckLLVM_w
	lw	ra, fuckLLVM_w
	addi	t0, ra, 1
	la	ra, fuckLLVM_w
	sw	t0, 0(ra)
	lw	ra, fuckLLVM_w
	addi	t0, ra, 1
	la	ra, fuckLLVM_w
	sw	t0, 0(ra)
	lw	ra, fuckLLVM_w
	lw	ra, fuckLLVM_w
	addi	t0, ra, 1
	la	ra, fuckLLVM_w
	sw	t0, 0(ra)
	lw	ra, fuckLLVM_w
	addi	ra, ra, 1
	la	t0, fuckLLVM_w
	sw	ra, 0(t0)
	lw	ra, fuckLLVM_w
	lw	ra, fuckLLVM_w
	addi	ra, ra, 1
	la	t0, fuckLLVM_w
	sw	ra, 0(t0)
	lw	ra, fuckLLVM_w
	addi	t0, ra, 1
	la	ra, fuckLLVM_w
	sw	t0, 0(ra)
	lw	ra, fuckLLVM_w
	lw	ra, fuckLLVM_w
	addi	ra, ra, 1
	la	t0, fuckLLVM_w
	sw	ra, 0(t0)
	lw	ra, fuckLLVM_w
	addi	t0, ra, 1
	la	ra, fuckLLVM_w
	sw	t0, 0(ra)
	lw	ra, fuckLLVM_w
	lw	ra, fuckLLVM_w
	addi	t0, ra, 1
	la	ra, fuckLLVM_w
	sw	t0, 0(ra)
	lw	ra, fuckLLVM_w
	addi	ra, ra, 1
	la	t0, fuckLLVM_w
	sw	ra, 0(t0)
	lw	ra, fuckLLVM_w
	lw	ra, fuckLLVM_w
	addi	t0, ra, 1
	la	ra, fuckLLVM_w
	sw	t0, 0(ra)
	lw	ra, fuckLLVM_w
	addi	ra, ra, 1
	la	t0, fuckLLVM_w
	sw	ra, 0(t0)
	lw	ra, fuckLLVM_w
	lw	ra, fuckLLVM_w
	addi	ra, ra, 1
	la	t0, fuckLLVM_w
	sw	ra, 0(t0)
	lw	ra, fuckLLVM_w
	addi	t0, ra, 1
	la	ra, fuckLLVM_w
	sw	t0, 0(ra)
	lw	ra, fuckLLVM_w
	lw	ra, fuckLLVM_w
	addi	t0, ra, 1
	la	ra, fuckLLVM_w
	sw	t0, 0(ra)
	lw	ra, fuckLLVM_w
	addi	ra, ra, 1
	la	t0, fuckLLVM_w
	sw	ra, 0(t0)
	lw	ra, fuckLLVM_w
	lw	ra, fuckLLVM_w
	addi	ra, ra, 1
	la	t0, fuckLLVM_w
	sw	ra, 0(t0)
	lw	ra, fuckLLVM_w
	addi	ra, ra, 1
	la	t0, fuckLLVM_w
	sw	ra, 0(t0)
	lw	ra, fuckLLVM_w
	lw	ra, fuckLLVM_w
	addi	t0, ra, 1
	la	ra, fuckLLVM_w
	sw	t0, 0(ra)
	lw	ra, fuckLLVM_w
	addi	ra, ra, 1
	la	t0, fuckLLVM_w
	sw	ra, 0(t0)
	lw	ra, fuckLLVM_w
	lw	ra, fuckLLVM_w
	addi	t0, ra, 1
	la	ra, fuckLLVM_w
	sw	t0, 0(ra)
	lw	ra, fuckLLVM_w
	addi	t0, ra, 1
	la	ra, fuckLLVM_w
	sw	t0, 0(ra)
	lw	ra, fuckLLVM_w
	lw	ra, fuckLLVM_w
	addi	t0, ra, 1
	la	ra, fuckLLVM_w
	sw	t0, 0(ra)
	lw	ra, fuckLLVM_w
	addi	ra, ra, 1
	la	t0, fuckLLVM_w
	sw	ra, 0(t0)
	lw	ra, fuckLLVM_w
	lw	ra, fuckLLVM_w
	addi	ra, ra, 1
	la	t0, fuckLLVM_w
	sw	ra, 0(t0)
	lw	ra, fuckLLVM_w
	addi	t0, ra, 1
	la	ra, fuckLLVM_w
	sw	t0, 0(ra)
	lw	ra, fuckLLVM_w
	lw	ra, fuckLLVM_w
	addi	ra, ra, 1
	la	t0, fuckLLVM_w
	sw	ra, 0(t0)
	lw	ra, fuckLLVM_w
	addi	ra, ra, 1
	la	t0, fuckLLVM_w
	sw	ra, 0(t0)
	lw	ra, fuckLLVM_w
	lw	ra, fuckLLVM_w
	addi	ra, ra, 1
	la	t0, fuckLLVM_w
	sw	ra, 0(t0)
	lw	ra, fuckLLVM_w
	addi	ra, ra, 1
	la	t0, fuckLLVM_w
	sw	ra, 0(t0)
	lw	ra, fuckLLVM_w
	lw	ra, fuckLLVM_w
	addi	ra, ra, 1
	la	t0, fuckLLVM_w
	sw	ra, 0(t0)
	lw	ra, fuckLLVM_w
	addi	t0, ra, 1
	la	ra, fuckLLVM_w
	sw	t0, 0(ra)
	lw	ra, fuckLLVM_w
	lw	ra, fuckLLVM_w
	addi	t0, ra, 1
	la	ra, fuckLLVM_w
	sw	t0, 0(ra)
	lw	ra, fuckLLVM_w
	addi	t0, ra, 1
	la	ra, fuckLLVM_w
	sw	t0, 0(ra)
	lw	ra, fuckLLVM_w
	lw	ra, fuckLLVM_w
	addi	ra, ra, 1
	la	t0, fuckLLVM_w
	sw	ra, 0(t0)
	lw	ra, fuckLLVM_w
	addi	t0, ra, 1
	la	ra, fuckLLVM_w
	sw	t0, 0(ra)
	lw	ra, fuckLLVM_w
	lw	ra, fuckLLVM_w
	addi	ra, ra, 1
	la	t0, fuckLLVM_w
	sw	ra, 0(t0)
	lw	ra, fuckLLVM_w
	addi	ra, ra, 1
	la	t0, fuckLLVM_w
	sw	ra, 0(t0)
	lw	ra, fuckLLVM_w
	lw	ra, fuckLLVM_w
	addi	ra, ra, 1
	la	t0, fuckLLVM_w
	sw	ra, 0(t0)
	lw	ra, fuckLLVM_w
	addi	t0, ra, 1
	la	ra, fuckLLVM_w
	sw	t0, 0(ra)
	lw	ra, fuckLLVM_w
	lw	ra, fuckLLVM_w
	addi	t0, ra, 1
	la	ra, fuckLLVM_w
	sw	t0, 0(ra)
	lw	ra, fuckLLVM_w
	addi	ra, ra, 1
	la	t0, fuckLLVM_w
	sw	ra, 0(t0)
	lw	ra, fuckLLVM_w
	lw	ra, fuckLLVM_w
	addi	ra, ra, 1
	la	t0, fuckLLVM_w
	sw	ra, 0(t0)
	lw	ra, fuckLLVM_w
	addi	ra, ra, 1
	la	t0, fuckLLVM_w
	sw	ra, 0(t0)
	lw	ra, fuckLLVM_w
	lw	ra, fuckLLVM_w
	addi	ra, ra, 1
	la	t0, fuckLLVM_w
	sw	ra, 0(t0)
	lw	ra, fuckLLVM_w
	addi	t0, ra, 1
	la	ra, fuckLLVM_w
	sw	t0, 0(ra)
	lw	ra, fuckLLVM_w
	lw	ra, fuckLLVM_w
	addi	t0, ra, 1
	la	ra, fuckLLVM_w
	sw	t0, 0(ra)
	lw	ra, fuckLLVM_w
	addi	t0, ra, 1
	la	ra, fuckLLVM_w
	sw	t0, 0(ra)
	lw	ra, fuckLLVM_w
	lw	ra, fuckLLVM_w
	addi	t0, ra, 1
	la	ra, fuckLLVM_w
	sw	t0, 0(ra)
	lw	ra, fuckLLVM_w
	addi	ra, ra, 1
	la	t0, fuckLLVM_w
	sw	ra, 0(t0)
	lw	ra, fuckLLVM_w
	lw	ra, fuckLLVM_w
	addi	ra, ra, 1
	la	t0, fuckLLVM_w
	sw	ra, 0(t0)
	lw	ra, fuckLLVM_w
	addi	ra, ra, 1
	la	t0, fuckLLVM_w
	sw	ra, 0(t0)
	lw	ra, fuckLLVM_w
	lw	ra, fuckLLVM_w
	addi	t0, ra, 1
	la	ra, fuckLLVM_w
	sw	t0, 0(ra)
	lw	ra, fuckLLVM_w
	addi	t0, ra, 1
	la	ra, fuckLLVM_w
	sw	t0, 0(ra)
	lw	ra, fuckLLVM_w
	lw	ra, fuckLLVM_w
	addi	ra, ra, 1
	la	t0, fuckLLVM_w
	sw	ra, 0(t0)
	lw	ra, fuckLLVM_w
	addi	t0, ra, 1
	la	ra, fuckLLVM_w
	sw	t0, 0(ra)
	lw	ra, fuckLLVM_w
	lw	ra, fuckLLVM_w
	addi	ra, ra, 1
	la	t0, fuckLLVM_w
	sw	ra, 0(t0)
	lw	ra, fuckLLVM_w
	addi	ra, ra, 1
	la	t0, fuckLLVM_w
	sw	ra, 0(t0)
	lw	ra, fuckLLVM_w
	lw	ra, fuckLLVM_w
	addi	ra, ra, 1
	la	t0, fuckLLVM_w
	sw	ra, 0(t0)
	lw	ra, fuckLLVM_w
	addi	ra, ra, 1
	la	t0, fuckLLVM_w
	sw	ra, 0(t0)
	lw	ra, fuckLLVM_w
	lw	ra, fuckLLVM_w
	addi	ra, ra, 1
	la	t0, fuckLLVM_w
	sw	ra, 0(t0)
	lw	ra, fuckLLVM_w
	addi	ra, ra, 1
	la	t0, fuckLLVM_w
	sw	ra, 0(t0)
	lw	ra, fuckLLVM_w
	lw	ra, fuckLLVM_w
	addi	ra, ra, 1
	la	t0, fuckLLVM_w
	sw	ra, 0(t0)
	lw	ra, fuckLLVM_w
	addi	t0, ra, 1
	la	ra, fuckLLVM_w
	sw	t0, 0(ra)
	lw	ra, fuckLLVM_w
	lw	ra, fuckLLVM_w
	addi	ra, ra, 1
	la	t0, fuckLLVM_w
	sw	ra, 0(t0)
	lw	ra, fuckLLVM_w
	addi	ra, ra, 1
	la	t0, fuckLLVM_w
	sw	ra, 0(t0)
	lw	ra, fuckLLVM_w
	lw	ra, fuckLLVM_w
	addi	ra, ra, 1
	la	t0, fuckLLVM_w
	sw	ra, 0(t0)
	lw	ra, fuckLLVM_w
	addi	t0, ra, 1
	la	ra, fuckLLVM_w
	sw	t0, 0(ra)
	lw	ra, fuckLLVM_w
	lw	ra, fuckLLVM_w
	addi	t0, ra, 1
	la	ra, fuckLLVM_w
	sw	t0, 0(ra)
	lw	ra, fuckLLVM_w
	addi	ra, ra, 1
	la	t0, fuckLLVM_w
	sw	ra, 0(t0)
	lw	ra, fuckLLVM_w
	lw	ra, fuckLLVM_w
	addi	ra, ra, 1
	la	t0, fuckLLVM_w
	sw	ra, 0(t0)
	lw	ra, fuckLLVM_w
	addi	t0, ra, 1
	la	ra, fuckLLVM_w
	sw	t0, 0(ra)
	lw	ra, fuckLLVM_w
	lw	ra, fuckLLVM_w
	addi	ra, ra, 1
	la	t0, fuckLLVM_w
	sw	ra, 0(t0)
	lw	ra, fuckLLVM_w
	addi	ra, ra, 1
	la	t0, fuckLLVM_w
	sw	ra, 0(t0)
	lw	ra, fuckLLVM_w
	lw	ra, fuckLLVM_w
	addi	t0, ra, 1
	la	ra, fuckLLVM_w
	sw	t0, 0(ra)
	lw	ra, fuckLLVM_w
	addi	t0, ra, 1
	la	ra, fuckLLVM_w
	sw	t0, 0(ra)
	lw	ra, fuckLLVM_w
	lw	ra, fuckLLVM_w
	addi	t0, ra, 1
	la	ra, fuckLLVM_w
	sw	t0, 0(ra)
	lw	ra, fuckLLVM_w
	addi	t0, ra, 1
	la	ra, fuckLLVM_w
	sw	t0, 0(ra)
	lw	ra, fuckLLVM_w
	lw	ra, fuckLLVM_w
	addi	t0, ra, 1
	la	ra, fuckLLVM_w
	sw	t0, 0(ra)
	lw	ra, fuckLLVM_w
	addi	ra, ra, 1
	la	t0, fuckLLVM_w
	sw	ra, 0(t0)
	lw	ra, fuckLLVM_w
	lw	ra, fuckLLVM_w
	addi	ra, ra, 1
	la	t0, fuckLLVM_w
	sw	ra, 0(t0)
	lw	ra, fuckLLVM_w
	addi	ra, ra, 1
	la	t0, fuckLLVM_w
	sw	ra, 0(t0)
	lw	ra, fuckLLVM_w
	lw	ra, fuckLLVM_w
	addi	t0, ra, 1
	la	ra, fuckLLVM_w
	sw	t0, 0(ra)
	lw	ra, fuckLLVM_w
	addi	t0, ra, 1
	la	ra, fuckLLVM_w
	sw	t0, 0(ra)
	lw	ra, fuckLLVM_w
	lw	ra, fuckLLVM_w
	addi	t0, ra, 1
	la	ra, fuckLLVM_w
	sw	t0, 0(ra)
	lw	ra, fuckLLVM_w
	addi	ra, ra, 1
	la	t0, fuckLLVM_w
	sw	ra, 0(t0)
	lw	ra, fuckLLVM_w
	lw	ra, fuckLLVM_w
	addi	ra, ra, 1
	la	t0, fuckLLVM_w
	sw	ra, 0(t0)
	lw	ra, fuckLLVM_w
	addi	ra, ra, 1
	la	t0, fuckLLVM_w
	sw	ra, 0(t0)
	lw	ra, fuckLLVM_w
	lw	ra, fuckLLVM_w
	addi	ra, ra, 1
	la	t0, fuckLLVM_w
	sw	ra, 0(t0)
	lw	ra, fuckLLVM_w
	addi	t0, ra, 1
	la	ra, fuckLLVM_w
	sw	t0, 0(ra)
	lw	ra, fuckLLVM_w
	lw	ra, fuckLLVM_w
	addi	t0, ra, 1
	la	ra, fuckLLVM_w
	sw	t0, 0(ra)
	lw	ra, fuckLLVM_w
	addi	t0, ra, 1
	la	ra, fuckLLVM_w
	sw	t0, 0(ra)
	lw	ra, fuckLLVM_w
	lw	ra, fuckLLVM_w
	addi	t0, ra, 1
	la	ra, fuckLLVM_w
	sw	t0, 0(ra)
	lw	ra, fuckLLVM_w
	addi	t0, ra, 1
	la	ra, fuckLLVM_w
	sw	t0, 0(ra)
	lw	ra, fuckLLVM_w
	lw	ra, fuckLLVM_w
	addi	ra, ra, 1
	la	t0, fuckLLVM_w
	sw	ra, 0(t0)
	lw	ra, fuckLLVM_w
	addi	t0, ra, 1
	la	ra, fuckLLVM_w
	sw	t0, 0(ra)
	lw	ra, fuckLLVM_w
	lw	ra, fuckLLVM_w
	addi	t0, ra, 1
	la	ra, fuckLLVM_w
	sw	t0, 0(ra)
	lw	ra, fuckLLVM_w
	addi	ra, ra, 1
	la	t0, fuckLLVM_w
	sw	ra, 0(t0)
	lw	ra, fuckLLVM_w
	lw	ra, fuckLLVM_w
	addi	t0, ra, 1
	la	ra, fuckLLVM_w
	sw	t0, 0(ra)
	lw	ra, fuckLLVM_w
	addi	ra, ra, 1
	la	t0, fuckLLVM_w
	sw	ra, 0(t0)
	lw	ra, fuckLLVM_w
	lw	ra, fuckLLVM_w
	addi	t0, ra, 1
	la	ra, fuckLLVM_w
	sw	t0, 0(ra)
	lw	ra, fuckLLVM_w
	addi	t0, ra, 1
	la	ra, fuckLLVM_w
	sw	t0, 0(ra)
	lw	ra, fuckLLVM_w
	lw	ra, fuckLLVM_w
	addi	ra, ra, 1
	la	t0, fuckLLVM_w
	sw	ra, 0(t0)
	lw	ra, fuckLLVM_w
	addi	ra, ra, 1
	la	t0, fuckLLVM_w
	sw	ra, 0(t0)
	lw	ra, fuckLLVM_w
	lw	ra, fuckLLVM_w
	addi	t0, ra, 1
	la	ra, fuckLLVM_w
	sw	t0, 0(ra)
	lw	ra, fuckLLVM_w
	addi	ra, ra, 1
	la	t0, fuckLLVM_w
	sw	ra, 0(t0)
	lw	ra, fuckLLVM_w
	lw	ra, fuckLLVM_w
	addi	t0, ra, 1
	la	ra, fuckLLVM_w
	sw	t0, 0(ra)
	lw	ra, fuckLLVM_w
	addi	ra, ra, 1
	la	t0, fuckLLVM_w
	sw	ra, 0(t0)
	lw	ra, fuckLLVM_w
	lw	ra, fuckLLVM_w
	addi	t0, ra, 1
	la	ra, fuckLLVM_w
	sw	t0, 0(ra)
	lw	ra, fuckLLVM_w
	addi	ra, ra, 1
	la	t0, fuckLLVM_w
	sw	ra, 0(t0)
	lw	ra, fuckLLVM_w
	lw	ra, fuckLLVM_w
	addi	ra, ra, 1
	la	t0, fuckLLVM_w
	sw	ra, 0(t0)
	lw	ra, fuckLLVM_w
	addi	t0, ra, 1
	la	ra, fuckLLVM_w
	sw	t0, 0(ra)
	lw	ra, fuckLLVM_w
	lw	ra, fuckLLVM_w
	addi	t0, ra, 1
	la	ra, fuckLLVM_w
	sw	t0, 0(ra)
	lw	ra, fuckLLVM_w
	addi	t0, ra, 1
	la	ra, fuckLLVM_w
	sw	t0, 0(ra)
	lw	ra, fuckLLVM_w
	lw	ra, fuckLLVM_w
	addi	t0, ra, 1
	la	ra, fuckLLVM_w
	sw	t0, 0(ra)
	lw	ra, fuckLLVM_w
	addi	t0, ra, 1
	la	ra, fuckLLVM_w
	sw	t0, 0(ra)
	lw	ra, fuckLLVM_w
	lw	ra, fuckLLVM_w
	addi	ra, ra, 1
	la	t0, fuckLLVM_w
	sw	ra, 0(t0)
	lw	ra, fuckLLVM_w
	addi	ra, ra, 1
	la	t0, fuckLLVM_w
	sw	ra, 0(t0)
	lw	ra, fuckLLVM_w
	lw	ra, fuckLLVM_w
	addi	t0, ra, 1
	la	ra, fuckLLVM_w
	sw	t0, 0(ra)
	lw	ra, fuckLLVM_w
	addi	t0, ra, 1
	la	ra, fuckLLVM_w
	sw	t0, 0(ra)
	lw	ra, fuckLLVM_w
	lw	ra, fuckLLVM_w
	addi	ra, ra, 1
	la	t0, fuckLLVM_w
	sw	ra, 0(t0)
	lw	ra, fuckLLVM_w
	addi	ra, ra, 1
	la	t0, fuckLLVM_w
	sw	ra, 0(t0)
	lw	ra, fuckLLVM_w
	lw	ra, fuckLLVM_w
	addi	ra, ra, 1
	la	t0, fuckLLVM_w
	sw	ra, 0(t0)
	lw	ra, fuckLLVM_w
	addi	t0, ra, 1
	la	ra, fuckLLVM_w
	sw	t0, 0(ra)
	lw	ra, fuckLLVM_w
	lw	ra, fuckLLVM_w
	addi	ra, ra, 1
	la	t0, fuckLLVM_w
	sw	ra, 0(t0)
	lw	ra, fuckLLVM_w
	addi	t0, ra, 1
	la	ra, fuckLLVM_w
	sw	t0, 0(ra)
	lw	ra, fuckLLVM_w
	lw	ra, fuckLLVM_w
	addi	t0, ra, 1
	la	ra, fuckLLVM_w
	sw	t0, 0(ra)
	lw	ra, fuckLLVM_w
	addi	t0, ra, 1
	la	ra, fuckLLVM_w
	sw	t0, 0(ra)
	lw	ra, fuckLLVM_w
	lw	ra, fuckLLVM_w
	addi	t0, ra, 1
	la	ra, fuckLLVM_w
	sw	t0, 0(ra)
	lw	ra, fuckLLVM_w
	addi	t0, ra, 1
	la	ra, fuckLLVM_w
	sw	t0, 0(ra)
	lw	ra, fuckLLVM_w
	lw	ra, fuckLLVM_w
	addi	t0, ra, 1
	la	ra, fuckLLVM_w
	sw	t0, 0(ra)
	lw	ra, fuckLLVM_w
	addi	ra, ra, 1
	la	t0, fuckLLVM_w
	sw	ra, 0(t0)
	lw	ra, fuckLLVM_w
	lw	ra, fuckLLVM_w
	addi	ra, ra, 1
	la	t0, fuckLLVM_w
	sw	ra, 0(t0)
	lw	ra, fuckLLVM_w
	addi	ra, ra, 1
	la	t0, fuckLLVM_w
	sw	ra, 0(t0)
	lw	ra, fuckLLVM_w
	lw	ra, fuckLLVM_w
	addi	ra, ra, 1
	la	t0, fuckLLVM_w
	sw	ra, 0(t0)
	lw	ra, fuckLLVM_w
	addi	ra, ra, 1
	la	t0, fuckLLVM_w
	sw	ra, 0(t0)
	lw	ra, fuckLLVM_w
	lw	ra, fuckLLVM_w
	addi	t0, ra, 1
	la	ra, fuckLLVM_w
	sw	t0, 0(ra)
	lw	ra, fuckLLVM_w
	addi	t0, ra, 1
	la	ra, fuckLLVM_w
	sw	t0, 0(ra)
	lw	ra, fuckLLVM_w
	lw	ra, fuckLLVM_w
	addi	ra, ra, 1
	la	t0, fuckLLVM_w
	sw	ra, 0(t0)
	lw	ra, fuckLLVM_w
	addi	t0, ra, 1
	la	ra, fuckLLVM_w
	sw	t0, 0(ra)
	lw	ra, fuckLLVM_w
	lw	ra, fuckLLVM_w
	addi	ra, ra, 1
	la	t0, fuckLLVM_w
	sw	ra, 0(t0)
	lw	ra, fuckLLVM_w
	addi	t0, ra, 1
	la	ra, fuckLLVM_w
	sw	t0, 0(ra)
	lw	ra, fuckLLVM_w
	lw	ra, fuckLLVM_w
	addi	t0, ra, 1
	la	ra, fuckLLVM_w
	sw	t0, 0(ra)
	lw	ra, fuckLLVM_w
	addi	ra, ra, 1
	la	t0, fuckLLVM_w
	sw	ra, 0(t0)
	lw	ra, fuckLLVM_w
	lw	ra, fuckLLVM_w
	addi	ra, ra, 1
	la	t0, fuckLLVM_w
	sw	ra, 0(t0)
	lw	ra, fuckLLVM_w
	addi	t0, ra, 1
	la	ra, fuckLLVM_w
	sw	t0, 0(ra)
	lw	ra, fuckLLVM_w
	lw	ra, fuckLLVM_w
	addi	ra, ra, 1
	la	t0, fuckLLVM_w
	sw	ra, 0(t0)
	lw	ra, fuckLLVM_w
	addi	ra, ra, 1
	la	t0, fuckLLVM_w
	sw	ra, 0(t0)
	lw	ra, fuckLLVM_w
	lw	ra, fuckLLVM_w
	addi	ra, ra, 1
	la	t0, fuckLLVM_w
	sw	ra, 0(t0)
	lw	ra, fuckLLVM_w
	addi	t0, ra, 1
	la	ra, fuckLLVM_w
	sw	t0, 0(ra)
	lw	ra, fuckLLVM_w
	lw	ra, fuckLLVM_w
	addi	t0, ra, 1
	la	ra, fuckLLVM_w
	sw	t0, 0(ra)
	lw	ra, fuckLLVM_w
	addi	t0, ra, 1
	la	ra, fuckLLVM_w
	sw	t0, 0(ra)
	lw	ra, fuckLLVM_w
	lw	ra, fuckLLVM_w
	addi	ra, ra, 1
	la	t0, fuckLLVM_w
	sw	ra, 0(t0)
	lw	ra, fuckLLVM_w
	addi	ra, ra, 1
	la	t0, fuckLLVM_w
	sw	ra, 0(t0)
	lw	ra, fuckLLVM_w
	lw	ra, fuckLLVM_w
	addi	t0, ra, 1
	la	ra, fuckLLVM_w
	sw	t0, 0(ra)
	lw	ra, fuckLLVM_w
	addi	ra, ra, 1
	la	t0, fuckLLVM_w
	sw	ra, 0(t0)
	lw	ra, fuckLLVM_w
	lw	ra, fuckLLVM_w
	addi	t0, ra, 1
	la	ra, fuckLLVM_w
	sw	t0, 0(ra)
	lw	ra, fuckLLVM_w
	addi	ra, ra, 1
	la	t0, fuckLLVM_w
	sw	ra, 0(t0)
	lw	ra, fuckLLVM_w
	lw	ra, fuckLLVM_w
	addi	ra, ra, 1
	la	t0, fuckLLVM_w
	sw	ra, 0(t0)
	lw	ra, fuckLLVM_w
	addi	ra, ra, 1
	la	t0, fuckLLVM_w
	sw	ra, 0(t0)
	lw	ra, fuckLLVM_w
	lw	ra, fuckLLVM_w
	addi	ra, ra, 1
	la	t0, fuckLLVM_w
	sw	ra, 0(t0)
	lw	ra, fuckLLVM_w
	addi	t0, ra, 1
	la	ra, fuckLLVM_w
	sw	t0, 0(ra)
	lw	ra, fuckLLVM_w
	lw	ra, fuckLLVM_w
	addi	ra, ra, 1
	la	t0, fuckLLVM_w
	sw	ra, 0(t0)
	lw	ra, fuckLLVM_w
	addi	t0, ra, 1
	la	ra, fuckLLVM_w
	sw	t0, 0(ra)
	lw	ra, fuckLLVM_w
	lw	ra, fuckLLVM_w
	addi	ra, ra, 1
	la	t0, fuckLLVM_w
	sw	ra, 0(t0)
	lw	ra, fuckLLVM_w
	addi	ra, ra, 1
	la	t0, fuckLLVM_w
	sw	ra, 0(t0)
	lw	ra, fuckLLVM_w
	lw	ra, fuckLLVM_w
	addi	t0, ra, 1
	la	ra, fuckLLVM_w
	sw	t0, 0(ra)
	lw	ra, fuckLLVM_w
	addi	t0, ra, 1
	la	ra, fuckLLVM_w
	sw	t0, 0(ra)
	lw	ra, fuckLLVM_w
	lw	ra, fuckLLVM_w
	addi	t0, ra, 1
	la	ra, fuckLLVM_w
	sw	t0, 0(ra)
	lw	ra, fuckLLVM_w
	addi	ra, ra, 1
	la	t0, fuckLLVM_w
	sw	ra, 0(t0)
	lw	ra, fuckLLVM_w
	lw	ra, fuckLLVM_w
	addi	ra, ra, 1
	la	t0, fuckLLVM_w
	sw	ra, 0(t0)
	lw	ra, fuckLLVM_w
	addi	ra, ra, 1
	la	t0, fuckLLVM_w
	sw	ra, 0(t0)
	lw	ra, fuckLLVM_w
	lw	ra, fuckLLVM_w
	addi	ra, ra, 1
	la	t0, fuckLLVM_w
	sw	ra, 0(t0)
	lw	ra, fuckLLVM_w
	addi	t0, ra, 1
	la	ra, fuckLLVM_w
	sw	t0, 0(ra)
	lw	ra, fuckLLVM_w
	call	bblock
	call	bblock
	j	.bblock_return
.bblock_return:
	li	t0, 16
	add	t1, sp, t0
	lw	ra, -4(t1)
	lw	s0, -8(t1)
	add	sp, sp, t0
	ret

	.globl	add1
	.p2align	2
	.type	add1,@function
add1:
.add1_assemblyInit:
	li	t0, 16
	sub	sp, sp, t0
	add	t1, sp, t0
	sw	ra, -4(t1)
	sw	s0, -8(t1)
	mv	s0, t1
	j	.add1_entry
.add1_entry:
	addi	a0, a0, 1
	j	.add1_return
.add1_return:
	li	t0, 16
	add	t1, sp, t0
	lw	ra, -4(t1)
	lw	s0, -8(t1)
	add	sp, sp, t0
	ret

	.globl	add2
	.p2align	2
	.type	add2,@function
add2:
.add2_assemblyInit:
	li	t0, 16
	sub	sp, sp, t0
	add	t1, sp, t0
	sw	ra, -4(t1)
	sw	s0, -8(t1)
	mv	s0, t1
	j	.add2_entry
.add2_entry:
	j	.add2_call_add1_17
.add2_call_add1_17:
	addi	a0, a0, 2
	j	.add2_return
.add2_return:
	li	t0, 16
	add	t1, sp, t0
	lw	ra, -4(t1)
	lw	s0, -8(t1)
	add	sp, sp, t0
	ret

	.globl	add4
	.p2align	2
	.type	add4,@function
add4:
.add4_assemblyInit:
	li	t0, 16
	sub	sp, sp, t0
	add	t1, sp, t0
	sw	ra, -4(t1)
	sw	s0, -8(t1)
	mv	s0, t1
	j	.add4_entry
.add4_entry:
	j	.add4_call_add2_19
.add4_call_add2_19:
	addi	a0, a0, 4
	j	.add4_return
.add4_return:
	li	t0, 16
	add	t1, sp, t0
	lw	ra, -4(t1)
	lw	s0, -8(t1)
	add	sp, sp, t0
	ret

	.globl	add8
	.p2align	2
	.type	add8,@function
add8:
.add8_assemblyInit:
	li	t0, 16
	sub	sp, sp, t0
	add	t1, sp, t0
	sw	ra, -4(t1)
	sw	s0, -8(t1)
	mv	s0, t1
	j	.add8_entry
.add8_entry:
	j	.add8_call_add4_21
.add8_call_add4_21:
	addi	a0, a0, 8
	j	.add8_return
.add8_return:
	li	t0, 16
	add	t1, sp, t0
	lw	ra, -4(t1)
	lw	s0, -8(t1)
	add	sp, sp, t0
	ret

	.globl	add16
	.p2align	2
	.type	add16,@function
add16:
.add16_assemblyInit:
	li	t0, 16
	sub	sp, sp, t0
	add	t1, sp, t0
	sw	ra, -4(t1)
	sw	s0, -8(t1)
	mv	s0, t1
	j	.add16_entry
.add16_entry:
	j	.add16_call_add8_23
.add16_call_add8_23:
	addi	a0, a0, 16
	j	.add16_return
.add16_return:
	li	t0, 16
	add	t1, sp, t0
	lw	ra, -4(t1)
	lw	s0, -8(t1)
	add	sp, sp, t0
	ret

	.globl	add32
	.p2align	2
	.type	add32,@function
add32:
.add32_assemblyInit:
	li	t0, 16
	sub	sp, sp, t0
	add	t1, sp, t0
	sw	ra, -4(t1)
	sw	s0, -8(t1)
	mv	s0, t1
	j	.add32_entry
.add32_entry:
	j	.add32_call_add16_25
.add32_call_add16_25:
	addi	a0, a0, 32
	j	.add32_return
.add32_return:
	li	t0, 16
	add	t1, sp, t0
	lw	ra, -4(t1)
	lw	s0, -8(t1)
	add	sp, sp, t0
	ret

	.globl	add64
	.p2align	2
	.type	add64,@function
add64:
.add64_assemblyInit:
	li	t0, 16
	sub	sp, sp, t0
	add	t1, sp, t0
	sw	ra, -4(t1)
	sw	s0, -8(t1)
	mv	s0, t1
	j	.add64_entry
.add64_entry:
	j	.add64_call_add32_27
.add64_call_add32_27:
	addi	a0, a0, 64
	j	.add64_return
.add64_return:
	li	t0, 16
	add	t1, sp, t0
	lw	ra, -4(t1)
	lw	s0, -8(t1)
	add	sp, sp, t0
	ret

	.globl	add128
	.p2align	2
	.type	add128,@function
add128:
.add128_assemblyInit:
	li	t0, 16
	sub	sp, sp, t0
	add	t1, sp, t0
	sw	ra, -4(t1)
	sw	s0, -8(t1)
	mv	s0, t1
	j	.add128_entry
.add128_entry:
	j	.add128_call_add64_29
.add128_call_add64_29:
	addi	a0, a0, 128
	j	.add128_return
.add128_return:
	li	t0, 16
	add	t1, sp, t0
	lw	ra, -4(t1)
	lw	s0, -8(t1)
	add	sp, sp, t0
	ret

	.globl	add256
	.p2align	2
	.type	add256,@function
add256:
.add256_assemblyInit:
	li	t0, 16
	sub	sp, sp, t0
	add	t1, sp, t0
	sw	ra, -4(t1)
	sw	s0, -8(t1)
	mv	s0, t1
	j	.add256_entry
.add256_entry:
	j	.add256_call_add128_31
.add256_call_add128_31:
	addi	a0, a0, 256
	j	.add256_return
.add256_return:
	li	t0, 16
	add	t1, sp, t0
	lw	ra, -4(t1)
	lw	s0, -8(t1)
	add	sp, sp, t0
	ret

	.globl	add512
	.p2align	2
	.type	add512,@function
add512:
.add512_assemblyInit:
	li	t0, 16
	sub	sp, sp, t0
	add	t1, sp, t0
	sw	ra, -4(t1)
	sw	s0, -8(t1)
	mv	s0, t1
	j	.add512_entry
.add512_entry:
	j	.add512_call_add256_33
.add512_call_add256_33:
	addi	a0, a0, 512
	j	.add512_return
.add512_return:
	li	t0, 16
	add	t1, sp, t0
	lw	ra, -4(t1)
	lw	s0, -8(t1)
	add	sp, sp, t0
	ret

	.globl	add1024
	.p2align	2
	.type	add1024,@function
add1024:
.add1024_assemblyInit:
	li	t0, 16
	sub	sp, sp, t0
	add	t1, sp, t0
	sw	ra, -4(t1)
	sw	s0, -8(t1)
	mv	s0, t1
	j	.add1024_entry
.add1024_entry:
	j	.add1024_call_add512_35
.add1024_call_add512_35:
	addi	a0, a0, 1024
	j	.add1024_return
.add1024_return:
	li	t0, 16
	add	t1, sp, t0
	lw	ra, -4(t1)
	lw	s0, -8(t1)
	add	sp, sp, t0
	ret

	.globl	add2048
	.p2align	2
	.type	add2048,@function
add2048:
.add2048_assemblyInit:
	li	t0, 16
	sub	sp, sp, t0
	add	t1, sp, t0
	sw	ra, -4(t1)
	sw	s0, -8(t1)
	mv	s0, t1
	j	.add2048_entry
.add2048_entry:
	j	.add2048_call_add1024_37
.add2048_call_add1024_37:
	addi	ra, a0, 2047
	addi	a0, ra, 1
	j	.add2048_return
.add2048_return:
	li	t0, 16
	add	t1, sp, t0
	lw	ra, -4(t1)
	lw	s0, -8(t1)
	add	sp, sp, t0
	ret

	.globl	add4096
	.p2align	2
	.type	add4096,@function
add4096:
.add4096_assemblyInit:
	li	t0, 16
	sub	sp, sp, t0
	add	t1, sp, t0
	sw	ra, -4(t1)
	sw	s0, -8(t1)
	mv	s0, t1
	j	.add4096_entry
.add4096_entry:
	call	add2048
	call	add2048
	j	.add4096_return
.add4096_return:
	li	t0, 16
	add	t1, sp, t0
	lw	ra, -4(t1)
	lw	s0, -8(t1)
	add	sp, sp, t0
	ret

	.globl	add8192
	.p2align	2
	.type	add8192,@function
add8192:
.add8192_assemblyInit:
	li	t0, 16
	sub	sp, sp, t0
	add	t1, sp, t0
	sw	ra, -4(t1)
	sw	s0, -8(t1)
	mv	s0, t1
	j	.add8192_entry
.add8192_entry:
	j	.add8192_call_add4096_39
.add8192_call_add4096_39:
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	j	.add8192_return
.add8192_return:
	li	t0, 16
	add	t1, sp, t0
	lw	ra, -4(t1)
	lw	s0, -8(t1)
	add	sp, sp, t0
	ret

	.globl	add16384
	.p2align	2
	.type	add16384,@function
add16384:
.add16384_assemblyInit:
	li	t0, 16
	sub	sp, sp, t0
	add	t1, sp, t0
	sw	ra, -4(t1)
	sw	s0, -8(t1)
	mv	s0, t1
	j	.add16384_entry
.add16384_entry:
	j	.add16384_call_add8192_41
.add16384_call_add8192_41:
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	j	.add16384_return
.add16384_return:
	li	t0, 16
	add	t1, sp, t0
	lw	ra, -4(t1)
	lw	s0, -8(t1)
	add	sp, sp, t0
	ret

	.globl	add32768
	.p2align	2
	.type	add32768,@function
add32768:
.add32768_assemblyInit:
	li	t0, 16
	sub	sp, sp, t0
	add	t1, sp, t0
	sw	ra, -4(t1)
	sw	s0, -8(t1)
	mv	s0, t1
	j	.add32768_entry
.add32768_entry:
	j	.add32768_call_add16384_43
.add32768_call_add16384_43:
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	j	.add32768_return
.add32768_return:
	li	t0, 16
	add	t1, sp, t0
	lw	ra, -4(t1)
	lw	s0, -8(t1)
	add	sp, sp, t0
	ret

	.globl	add65536
	.p2align	2
	.type	add65536,@function
add65536:
.add65536_assemblyInit:
	li	t0, 16
	sub	sp, sp, t0
	add	t1, sp, t0
	sw	ra, -4(t1)
	sw	s0, -8(t1)
	mv	s0, t1
	j	.add65536_entry
.add65536_entry:
	j	.add65536_call_add32768_45
.add65536_call_add32768_45:
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	j	.add65536_return
.add65536_return:
	li	t0, 16
	add	t1, sp, t0
	lw	ra, -4(t1)
	lw	s0, -8(t1)
	add	sp, sp, t0
	ret

	.globl	add131072
	.p2align	2
	.type	add131072,@function
add131072:
.add131072_assemblyInit:
	li	t0, 16
	sub	sp, sp, t0
	add	t1, sp, t0
	sw	ra, -4(t1)
	sw	s0, -8(t1)
	mv	s0, t1
	j	.add131072_entry
.add131072_entry:
	j	.add131072_call_add65536_47
.add131072_call_add65536_47:
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	j	.add131072_return
.add131072_return:
	li	t0, 16
	add	t1, sp, t0
	lw	ra, -4(t1)
	lw	s0, -8(t1)
	add	sp, sp, t0
	ret

	.globl	add262144
	.p2align	2
	.type	add262144,@function
add262144:
.add262144_assemblyInit:
	li	t0, 16
	sub	sp, sp, t0
	add	t1, sp, t0
	sw	ra, -4(t1)
	sw	s0, -8(t1)
	mv	s0, t1
	j	.add262144_entry
.add262144_entry:
	j	.add262144_call_add131072_49
.add262144_call_add131072_49:
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	j	.add262144_return
.add262144_return:
	li	t0, 16
	add	t1, sp, t0
	lw	ra, -4(t1)
	lw	s0, -8(t1)
	add	sp, sp, t0
	ret

	.globl	add524288
	.p2align	2
	.type	add524288,@function
add524288:
.add524288_assemblyInit:
	li	t0, 16
	sub	sp, sp, t0
	add	t1, sp, t0
	sw	ra, -4(t1)
	sw	s0, -8(t1)
	mv	s0, t1
	j	.add524288_entry
.add524288_entry:
	j	.add524288_call_add262144_51
.add524288_call_add262144_51:
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	j	.add524288_return
.add524288_return:
	li	t0, 16
	add	t1, sp, t0
	lw	ra, -4(t1)
	lw	s0, -8(t1)
	add	sp, sp, t0
	ret

	.globl	wP
	.p2align	2
	.type	wP,@function
wP:
.wP_assemblyInit:
	li	t0, 16
	sub	sp, sp, t0
	add	t1, sp, t0
	sw	ra, -4(t1)
	sw	s0, -8(t1)
	mv	s0, t1
	j	.wP_entry
.wP_entry:
	li	ra, 3
	j	.wP_ID4_for_suite
.wP_ID4_for_suite:
	li	t0, 1
	sra	t1, ra, t0
	li	t0, 2
	j	.wP_ID6_for_condition
.wP_ID6_for_condition:
	slt	t2, t0, t1
	bnez	t2, .wP_ID6_for_suite
	j	.wP_ID6_for_condition_mid
.wP_ID6_for_condition_mid:
	li	t1, 1
	j	.wP_ID6_for_out
.wP_ID6_for_suite:
	rem	a0, ra, t0
	li	t2, 0
	xor	t2, a0, t2
	sltiu	t2, t2, 1
	bnez	t2, .wP_ID13_if_true
	j	.wP_ID6_for_incr
.wP_ID13_if_true:
	addi	ra, ra, 1
	li	t1, 0
	j	.wP_ID6_for_out
.wP_ID6_for_incr:
	addi	t0, t0, 1
	j	.wP_ID6_for_condition
.wP_ID6_for_out_mid:
	li	t0, 0
	j	.wP_ID19_AndAnd_out
.wP_ID6_for_out:
	li	t0, 0
	slt	t0, t0, ra
	bnez	t0, .wP_ID19_AndAnd_true
	j	.wP_ID6_for_out_mid
.wP_ID19_AndAnd_true:
	add	t0, ra, t1
	li	t2, 9
	rem	t2, t0, t2
	li	t0, 0
	xor	t0, t2, t0
	sltiu	t0, t0, 1
	j	.wP_ID19_AndAnd_out
.wP_ID19_AndAnd_out:
	bnez	t0, .wP_ID4_for_out
	j	.wP_ID25_if_out
.wP_ID25_if_out:
	lw	t0, fuckLLVM_N
	add	t0, t0, t1
	la	t2, fuckLLVM_N
	sw	t0, 0(t2)
	add	ra, ra, t1
	addi	ra, ra, 1
	j	.wP_ID4_for_suite
.wP_ID4_for_out:
	lw	t0, fuckLLVM_N
	lw	ra, fuckLLVM_w
	addi	ra, ra, 1
	la	t1, fuckLLVM_w
	sw	ra, 0(t1)
	lw	ra, fuckLLVM_w
	addi	ra, ra, 1
	la	t1, fuckLLVM_w
	sw	ra, 0(t1)
	lw	ra, fuckLLVM_w
	lw	ra, fuckLLVM_w
	addi	ra, ra, 1
	la	t1, fuckLLVM_w
	sw	ra, 0(t1)
	lw	ra, fuckLLVM_w
	addi	t1, ra, 1
	la	ra, fuckLLVM_w
	sw	t1, 0(ra)
	lw	ra, fuckLLVM_w
	lw	ra, fuckLLVM_w
	addi	ra, ra, 1
	la	t1, fuckLLVM_w
	sw	ra, 0(t1)
	lw	ra, fuckLLVM_w
	addi	ra, ra, 1
	la	t1, fuckLLVM_w
	sw	ra, 0(t1)
	lw	ra, fuckLLVM_w
	lw	ra, fuckLLVM_w
	addi	t1, ra, 1
	la	ra, fuckLLVM_w
	sw	t1, 0(ra)
	lw	ra, fuckLLVM_w
	addi	t1, ra, 1
	la	ra, fuckLLVM_w
	sw	t1, 0(ra)
	lw	ra, fuckLLVM_w
	lw	ra, fuckLLVM_w
	addi	ra, ra, 1
	la	t1, fuckLLVM_w
	sw	ra, 0(t1)
	lw	ra, fuckLLVM_w
	addi	ra, ra, 1
	la	t1, fuckLLVM_w
	sw	ra, 0(t1)
	lw	ra, fuckLLVM_w
	lw	ra, fuckLLVM_w
	addi	t1, ra, 1
	la	ra, fuckLLVM_w
	sw	t1, 0(ra)
	lw	ra, fuckLLVM_w
	addi	ra, ra, 1
	la	t1, fuckLLVM_w
	sw	ra, 0(t1)
	lw	ra, fuckLLVM_w
	lw	ra, fuckLLVM_w
	addi	t1, ra, 1
	la	ra, fuckLLVM_w
	sw	t1, 0(ra)
	lw	ra, fuckLLVM_w
	addi	ra, ra, 1
	la	t1, fuckLLVM_w
	sw	ra, 0(t1)
	lw	ra, fuckLLVM_w
	lw	ra, fuckLLVM_w
	addi	t1, ra, 1
	la	ra, fuckLLVM_w
	sw	t1, 0(ra)
	lw	ra, fuckLLVM_w
	addi	ra, ra, 1
	la	t1, fuckLLVM_w
	sw	ra, 0(t1)
	lw	ra, fuckLLVM_w
	lw	ra, fuckLLVM_w
	addi	ra, ra, 1
	la	t1, fuckLLVM_w
	sw	ra, 0(t1)
	lw	ra, fuckLLVM_w
	addi	ra, ra, 1
	la	t1, fuckLLVM_w
	sw	ra, 0(t1)
	lw	ra, fuckLLVM_w
	lw	ra, fuckLLVM_w
	addi	ra, ra, 1
	la	t1, fuckLLVM_w
	sw	ra, 0(t1)
	lw	ra, fuckLLVM_w
	addi	t1, ra, 1
	la	ra, fuckLLVM_w
	sw	t1, 0(ra)
	lw	ra, fuckLLVM_w
	lw	ra, fuckLLVM_w
	addi	t1, ra, 1
	la	ra, fuckLLVM_w
	sw	t1, 0(ra)
	lw	ra, fuckLLVM_w
	addi	ra, ra, 1
	la	t1, fuckLLVM_w
	sw	ra, 0(t1)
	lw	ra, fuckLLVM_w
	lw	ra, fuckLLVM_w
	addi	t1, ra, 1
	la	ra, fuckLLVM_w
	sw	t1, 0(ra)
	lw	ra, fuckLLVM_w
	addi	ra, ra, 1
	la	t1, fuckLLVM_w
	sw	ra, 0(t1)
	lw	ra, fuckLLVM_w
	lw	ra, fuckLLVM_w
	addi	ra, ra, 1
	la	t1, fuckLLVM_w
	sw	ra, 0(t1)
	lw	ra, fuckLLVM_w
	addi	ra, ra, 1
	la	t1, fuckLLVM_w
	sw	ra, 0(t1)
	lw	ra, fuckLLVM_w
	lw	ra, fuckLLVM_w
	addi	t1, ra, 1
	la	ra, fuckLLVM_w
	sw	t1, 0(ra)
	lw	ra, fuckLLVM_w
	addi	t1, ra, 1
	la	ra, fuckLLVM_w
	sw	t1, 0(ra)
	lw	ra, fuckLLVM_w
	lw	ra, fuckLLVM_w
	addi	ra, ra, 1
	la	t1, fuckLLVM_w
	sw	ra, 0(t1)
	lw	ra, fuckLLVM_w
	addi	ra, ra, 1
	la	t1, fuckLLVM_w
	sw	ra, 0(t1)
	lw	ra, fuckLLVM_w
	lw	ra, fuckLLVM_w
	addi	t1, ra, 1
	la	ra, fuckLLVM_w
	sw	t1, 0(ra)
	lw	ra, fuckLLVM_w
	addi	ra, ra, 1
	la	t1, fuckLLVM_w
	sw	ra, 0(t1)
	lw	ra, fuckLLVM_w
	lw	ra, fuckLLVM_w
	addi	ra, ra, 1
	la	t1, fuckLLVM_w
	sw	ra, 0(t1)
	lw	ra, fuckLLVM_w
	addi	t1, ra, 1
	la	ra, fuckLLVM_w
	sw	t1, 0(ra)
	lw	ra, fuckLLVM_w
	lw	ra, fuckLLVM_w
	addi	t1, ra, 1
	la	ra, fuckLLVM_w
	sw	t1, 0(ra)
	lw	ra, fuckLLVM_w
	addi	t1, ra, 1
	la	ra, fuckLLVM_w
	sw	t1, 0(ra)
	lw	ra, fuckLLVM_w
	lw	ra, fuckLLVM_w
	addi	ra, ra, 1
	la	t1, fuckLLVM_w
	sw	ra, 0(t1)
	lw	ra, fuckLLVM_w
	addi	t1, ra, 1
	la	ra, fuckLLVM_w
	sw	t1, 0(ra)
	lw	ra, fuckLLVM_w
	lw	ra, fuckLLVM_w
	addi	ra, ra, 1
	la	t1, fuckLLVM_w
	sw	ra, 0(t1)
	lw	ra, fuckLLVM_w
	addi	t1, ra, 1
	la	ra, fuckLLVM_w
	sw	t1, 0(ra)
	lw	ra, fuckLLVM_w
	lw	ra, fuckLLVM_w
	addi	t1, ra, 1
	la	ra, fuckLLVM_w
	sw	t1, 0(ra)
	lw	ra, fuckLLVM_w
	addi	ra, ra, 1
	la	t1, fuckLLVM_w
	sw	ra, 0(t1)
	lw	ra, fuckLLVM_w
	lw	ra, fuckLLVM_w
	addi	t1, ra, 1
	la	ra, fuckLLVM_w
	sw	t1, 0(ra)
	lw	ra, fuckLLVM_w
	addi	t1, ra, 1
	la	ra, fuckLLVM_w
	sw	t1, 0(ra)
	lw	ra, fuckLLVM_w
	lw	ra, fuckLLVM_w
	addi	ra, ra, 1
	la	t1, fuckLLVM_w
	sw	ra, 0(t1)
	lw	ra, fuckLLVM_w
	addi	ra, ra, 1
	la	t1, fuckLLVM_w
	sw	ra, 0(t1)
	lw	ra, fuckLLVM_w
	lw	ra, fuckLLVM_w
	addi	ra, ra, 1
	la	t1, fuckLLVM_w
	sw	ra, 0(t1)
	lw	ra, fuckLLVM_w
	addi	ra, ra, 1
	la	t1, fuckLLVM_w
	sw	ra, 0(t1)
	lw	ra, fuckLLVM_w
	lw	ra, fuckLLVM_w
	addi	t1, ra, 1
	la	ra, fuckLLVM_w
	sw	t1, 0(ra)
	lw	ra, fuckLLVM_w
	addi	ra, ra, 1
	la	t1, fuckLLVM_w
	sw	ra, 0(t1)
	lw	ra, fuckLLVM_w
	lw	ra, fuckLLVM_w
	addi	ra, ra, 1
	la	t1, fuckLLVM_w
	sw	ra, 0(t1)
	lw	ra, fuckLLVM_w
	addi	ra, ra, 1
	la	t1, fuckLLVM_w
	sw	ra, 0(t1)
	lw	ra, fuckLLVM_w
	lw	ra, fuckLLVM_w
	addi	t1, ra, 1
	la	ra, fuckLLVM_w
	sw	t1, 0(ra)
	lw	ra, fuckLLVM_w
	addi	t1, ra, 1
	la	ra, fuckLLVM_w
	sw	t1, 0(ra)
	lw	ra, fuckLLVM_w
	lw	ra, fuckLLVM_w
	addi	t1, ra, 1
	la	ra, fuckLLVM_w
	sw	t1, 0(ra)
	lw	ra, fuckLLVM_w
	addi	ra, ra, 1
	la	t1, fuckLLVM_w
	sw	ra, 0(t1)
	lw	ra, fuckLLVM_w
	lw	ra, fuckLLVM_w
	addi	ra, ra, 1
	la	t1, fuckLLVM_w
	sw	ra, 0(t1)
	lw	ra, fuckLLVM_w
	addi	t1, ra, 1
	la	ra, fuckLLVM_w
	sw	t1, 0(ra)
	lw	ra, fuckLLVM_w
	lw	ra, fuckLLVM_w
	addi	t1, ra, 1
	la	ra, fuckLLVM_w
	sw	t1, 0(ra)
	lw	ra, fuckLLVM_w
	addi	t1, ra, 1
	la	ra, fuckLLVM_w
	sw	t1, 0(ra)
	lw	ra, fuckLLVM_w
	lw	ra, fuckLLVM_w
	addi	t1, ra, 1
	la	ra, fuckLLVM_w
	sw	t1, 0(ra)
	lw	ra, fuckLLVM_w
	addi	ra, ra, 1
	la	t1, fuckLLVM_w
	sw	ra, 0(t1)
	lw	ra, fuckLLVM_w
	lw	ra, fuckLLVM_w
	addi	t1, ra, 1
	la	ra, fuckLLVM_w
	sw	t1, 0(ra)
	lw	ra, fuckLLVM_w
	addi	t1, ra, 1
	la	ra, fuckLLVM_w
	sw	t1, 0(ra)
	lw	ra, fuckLLVM_w
	lw	ra, fuckLLVM_w
	addi	t1, ra, 1
	la	ra, fuckLLVM_w
	sw	t1, 0(ra)
	lw	ra, fuckLLVM_w
	addi	ra, ra, 1
	la	t1, fuckLLVM_w
	sw	ra, 0(t1)
	lw	ra, fuckLLVM_w
	lw	ra, fuckLLVM_w
	addi	t1, ra, 1
	la	ra, fuckLLVM_w
	sw	t1, 0(ra)
	lw	ra, fuckLLVM_w
	addi	ra, ra, 1
	la	t1, fuckLLVM_w
	sw	ra, 0(t1)
	lw	ra, fuckLLVM_w
	lw	ra, fuckLLVM_w
	addi	t1, ra, 1
	la	ra, fuckLLVM_w
	sw	t1, 0(ra)
	lw	ra, fuckLLVM_w
	addi	ra, ra, 1
	la	t1, fuckLLVM_w
	sw	ra, 0(t1)
	lw	ra, fuckLLVM_w
	lw	ra, fuckLLVM_w
	addi	ra, ra, 1
	la	t1, fuckLLVM_w
	sw	ra, 0(t1)
	lw	ra, fuckLLVM_w
	addi	t1, ra, 1
	la	ra, fuckLLVM_w
	sw	t1, 0(ra)
	lw	ra, fuckLLVM_w
	lw	ra, fuckLLVM_w
	addi	t1, ra, 1
	la	ra, fuckLLVM_w
	sw	t1, 0(ra)
	lw	ra, fuckLLVM_w
	addi	ra, ra, 1
	la	t1, fuckLLVM_w
	sw	ra, 0(t1)
	lw	ra, fuckLLVM_w
	lw	ra, fuckLLVM_w
	addi	t1, ra, 1
	la	ra, fuckLLVM_w
	sw	t1, 0(ra)
	lw	ra, fuckLLVM_w
	addi	t1, ra, 1
	la	ra, fuckLLVM_w
	sw	t1, 0(ra)
	lw	ra, fuckLLVM_w
	lw	ra, fuckLLVM_w
	addi	t1, ra, 1
	la	ra, fuckLLVM_w
	sw	t1, 0(ra)
	lw	ra, fuckLLVM_w
	addi	t1, ra, 1
	la	ra, fuckLLVM_w
	sw	t1, 0(ra)
	lw	ra, fuckLLVM_w
	lw	ra, fuckLLVM_w
	addi	ra, ra, 1
	la	t1, fuckLLVM_w
	sw	ra, 0(t1)
	lw	ra, fuckLLVM_w
	addi	t1, ra, 1
	la	ra, fuckLLVM_w
	sw	t1, 0(ra)
	lw	ra, fuckLLVM_w
	lw	ra, fuckLLVM_w
	addi	ra, ra, 1
	la	t1, fuckLLVM_w
	sw	ra, 0(t1)
	lw	ra, fuckLLVM_w
	addi	t1, ra, 1
	la	ra, fuckLLVM_w
	sw	t1, 0(ra)
	lw	ra, fuckLLVM_w
	lw	ra, fuckLLVM_w
	addi	ra, ra, 1
	la	t1, fuckLLVM_w
	sw	ra, 0(t1)
	lw	ra, fuckLLVM_w
	addi	t1, ra, 1
	la	ra, fuckLLVM_w
	sw	t1, 0(ra)
	lw	ra, fuckLLVM_w
	lw	ra, fuckLLVM_w
	addi	t1, ra, 1
	la	ra, fuckLLVM_w
	sw	t1, 0(ra)
	lw	ra, fuckLLVM_w
	addi	ra, ra, 1
	la	t1, fuckLLVM_w
	sw	ra, 0(t1)
	lw	ra, fuckLLVM_w
	lw	ra, fuckLLVM_w
	addi	t1, ra, 1
	la	ra, fuckLLVM_w
	sw	t1, 0(ra)
	lw	ra, fuckLLVM_w
	addi	t1, ra, 1
	la	ra, fuckLLVM_w
	sw	t1, 0(ra)
	lw	ra, fuckLLVM_w
	lw	ra, fuckLLVM_w
	addi	t1, ra, 1
	la	ra, fuckLLVM_w
	sw	t1, 0(ra)
	lw	ra, fuckLLVM_w
	addi	ra, ra, 1
	la	t1, fuckLLVM_w
	sw	ra, 0(t1)
	lw	ra, fuckLLVM_w
	lw	ra, fuckLLVM_w
	addi	t1, ra, 1
	la	ra, fuckLLVM_w
	sw	t1, 0(ra)
	lw	ra, fuckLLVM_w
	addi	ra, ra, 1
	la	t1, fuckLLVM_w
	sw	ra, 0(t1)
	lw	ra, fuckLLVM_w
	lw	ra, fuckLLVM_w
	addi	t1, ra, 1
	la	ra, fuckLLVM_w
	sw	t1, 0(ra)
	lw	ra, fuckLLVM_w
	addi	ra, ra, 1
	la	t1, fuckLLVM_w
	sw	ra, 0(t1)
	lw	ra, fuckLLVM_w
	lw	ra, fuckLLVM_w
	addi	t1, ra, 1
	la	ra, fuckLLVM_w
	sw	t1, 0(ra)
	lw	ra, fuckLLVM_w
	addi	t1, ra, 1
	la	ra, fuckLLVM_w
	sw	t1, 0(ra)
	lw	ra, fuckLLVM_w
	lw	ra, fuckLLVM_w
	addi	ra, ra, 1
	la	t1, fuckLLVM_w
	sw	ra, 0(t1)
	lw	ra, fuckLLVM_w
	addi	t1, ra, 1
	la	ra, fuckLLVM_w
	sw	t1, 0(ra)
	lw	ra, fuckLLVM_w
	lw	ra, fuckLLVM_w
	addi	ra, ra, 1
	la	t1, fuckLLVM_w
	sw	ra, 0(t1)
	lw	ra, fuckLLVM_w
	addi	ra, ra, 1
	la	t1, fuckLLVM_w
	sw	ra, 0(t1)
	lw	ra, fuckLLVM_w
	lw	ra, fuckLLVM_w
	addi	ra, ra, 1
	la	t1, fuckLLVM_w
	sw	ra, 0(t1)
	lw	ra, fuckLLVM_w
	addi	t1, ra, 1
	la	ra, fuckLLVM_w
	sw	t1, 0(ra)
	lw	ra, fuckLLVM_w
	lw	ra, fuckLLVM_w
	addi	ra, ra, 1
	la	t1, fuckLLVM_w
	sw	ra, 0(t1)
	lw	ra, fuckLLVM_w
	addi	ra, ra, 1
	la	t1, fuckLLVM_w
	sw	ra, 0(t1)
	lw	ra, fuckLLVM_w
	lw	ra, fuckLLVM_w
	addi	ra, ra, 1
	la	t1, fuckLLVM_w
	sw	ra, 0(t1)
	lw	ra, fuckLLVM_w
	addi	t1, ra, 1
	la	ra, fuckLLVM_w
	sw	t1, 0(ra)
	lw	ra, fuckLLVM_w
	lw	ra, fuckLLVM_w
	addi	t1, ra, 1
	la	ra, fuckLLVM_w
	sw	t1, 0(ra)
	lw	ra, fuckLLVM_w
	addi	t1, ra, 1
	la	ra, fuckLLVM_w
	sw	t1, 0(ra)
	lw	ra, fuckLLVM_w
	lw	ra, fuckLLVM_w
	addi	t1, ra, 1
	la	ra, fuckLLVM_w
	sw	t1, 0(ra)
	lw	ra, fuckLLVM_w
	addi	t1, ra, 1
	la	ra, fuckLLVM_w
	sw	t1, 0(ra)
	lw	ra, fuckLLVM_w
	lw	ra, fuckLLVM_w
	addi	t1, ra, 1
	la	ra, fuckLLVM_w
	sw	t1, 0(ra)
	lw	ra, fuckLLVM_w
	addi	t1, ra, 1
	la	ra, fuckLLVM_w
	sw	t1, 0(ra)
	lw	ra, fuckLLVM_w
	j	.wP_call_wpppp_53_out
.wP_call_wpppp_53_out:
	add	t0, t0, ra
	li	ra, 2
	rem	t0, t0, ra
	li	ra, 0
	xor	ra, t0, ra
	sltiu	ra, ra, 1
	bnez	ra, .wP_ID38_if_true
	j	.wP_ID38_if_out
.wP_ID38_if_true:
	lw	a0, fuckLLVM_N
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	li	ra, 524288
	sub	t0, a0, ra
	li	ra, 4
	sub	a0, t0, ra
	j	.wP_return
.wP_ID38_if_out:
	call	block
	call	block
	call	block
	call	block
	lw	ra, fuckLLVM_w
	addi	ra, ra, 1
	la	t0, fuckLLVM_w
	sw	ra, 0(t0)
	lw	ra, fuckLLVM_w
	addi	ra, ra, 1
	la	t0, fuckLLVM_w
	sw	ra, 0(t0)
	lw	ra, fuckLLVM_w
	lw	ra, fuckLLVM_w
	addi	ra, ra, 1
	la	t0, fuckLLVM_w
	sw	ra, 0(t0)
	lw	ra, fuckLLVM_w
	addi	t0, ra, 1
	la	ra, fuckLLVM_w
	sw	t0, 0(ra)
	lw	ra, fuckLLVM_w
	lw	ra, fuckLLVM_w
	addi	t0, ra, 1
	la	ra, fuckLLVM_w
	sw	t0, 0(ra)
	lw	ra, fuckLLVM_w
	addi	ra, ra, 1
	la	t0, fuckLLVM_w
	sw	ra, 0(t0)
	lw	ra, fuckLLVM_w
	lw	ra, fuckLLVM_w
	addi	ra, ra, 1
	la	t0, fuckLLVM_w
	sw	ra, 0(t0)
	lw	ra, fuckLLVM_w
	addi	ra, ra, 1
	la	t0, fuckLLVM_w
	sw	ra, 0(t0)
	lw	ra, fuckLLVM_w
	lw	ra, fuckLLVM_w
	addi	ra, ra, 1
	la	t0, fuckLLVM_w
	sw	ra, 0(t0)
	lw	ra, fuckLLVM_w
	addi	ra, ra, 1
	la	t0, fuckLLVM_w
	sw	ra, 0(t0)
	lw	ra, fuckLLVM_w
	lw	ra, fuckLLVM_w
	addi	ra, ra, 1
	la	t0, fuckLLVM_w
	sw	ra, 0(t0)
	lw	ra, fuckLLVM_w
	addi	t0, ra, 1
	la	ra, fuckLLVM_w
	sw	t0, 0(ra)
	lw	ra, fuckLLVM_w
	lw	ra, fuckLLVM_w
	addi	ra, ra, 1
	la	t0, fuckLLVM_w
	sw	ra, 0(t0)
	lw	ra, fuckLLVM_w
	addi	ra, ra, 1
	la	t0, fuckLLVM_w
	sw	ra, 0(t0)
	lw	ra, fuckLLVM_w
	lw	ra, fuckLLVM_w
	addi	t0, ra, 1
	la	ra, fuckLLVM_w
	sw	t0, 0(ra)
	lw	ra, fuckLLVM_w
	addi	t0, ra, 1
	la	ra, fuckLLVM_w
	sw	t0, 0(ra)
	lw	ra, fuckLLVM_w
	lw	ra, fuckLLVM_w
	addi	t0, ra, 1
	la	ra, fuckLLVM_w
	sw	t0, 0(ra)
	lw	ra, fuckLLVM_w
	addi	ra, ra, 1
	la	t0, fuckLLVM_w
	sw	ra, 0(t0)
	lw	ra, fuckLLVM_w
	lw	ra, fuckLLVM_w
	addi	ra, ra, 1
	la	t0, fuckLLVM_w
	sw	ra, 0(t0)
	lw	ra, fuckLLVM_w
	addi	ra, ra, 1
	la	t0, fuckLLVM_w
	sw	ra, 0(t0)
	lw	ra, fuckLLVM_w
	lw	ra, fuckLLVM_w
	addi	t0, ra, 1
	la	ra, fuckLLVM_w
	sw	t0, 0(ra)
	lw	ra, fuckLLVM_w
	addi	ra, ra, 1
	la	t0, fuckLLVM_w
	sw	ra, 0(t0)
	lw	ra, fuckLLVM_w
	lw	ra, fuckLLVM_w
	addi	t0, ra, 1
	la	ra, fuckLLVM_w
	sw	t0, 0(ra)
	lw	ra, fuckLLVM_w
	addi	t0, ra, 1
	la	ra, fuckLLVM_w
	sw	t0, 0(ra)
	lw	ra, fuckLLVM_w
	lw	ra, fuckLLVM_w
	addi	t0, ra, 1
	la	ra, fuckLLVM_w
	sw	t0, 0(ra)
	lw	ra, fuckLLVM_w
	addi	t0, ra, 1
	la	ra, fuckLLVM_w
	sw	t0, 0(ra)
	lw	ra, fuckLLVM_w
	lw	ra, fuckLLVM_w
	addi	t0, ra, 1
	la	ra, fuckLLVM_w
	sw	t0, 0(ra)
	lw	ra, fuckLLVM_w
	addi	t0, ra, 1
	la	ra, fuckLLVM_w
	sw	t0, 0(ra)
	lw	ra, fuckLLVM_w
	lw	ra, fuckLLVM_w
	addi	ra, ra, 1
	la	t0, fuckLLVM_w
	sw	ra, 0(t0)
	lw	ra, fuckLLVM_w
	addi	t0, ra, 1
	la	ra, fuckLLVM_w
	sw	t0, 0(ra)
	lw	ra, fuckLLVM_w
	lw	ra, fuckLLVM_w
	addi	t0, ra, 1
	la	ra, fuckLLVM_w
	sw	t0, 0(ra)
	lw	ra, fuckLLVM_w
	addi	ra, ra, 1
	la	t0, fuckLLVM_w
	sw	ra, 0(t0)
	lw	ra, fuckLLVM_w
	lw	ra, fuckLLVM_w
	addi	ra, ra, 1
	la	t0, fuckLLVM_w
	sw	ra, 0(t0)
	lw	ra, fuckLLVM_w
	addi	t0, ra, 1
	la	ra, fuckLLVM_w
	sw	t0, 0(ra)
	lw	ra, fuckLLVM_w
	lw	ra, fuckLLVM_w
	addi	t0, ra, 1
	la	ra, fuckLLVM_w
	sw	t0, 0(ra)
	lw	ra, fuckLLVM_w
	addi	ra, ra, 1
	la	t0, fuckLLVM_w
	sw	ra, 0(t0)
	lw	ra, fuckLLVM_w
	lw	ra, fuckLLVM_w
	addi	ra, ra, 1
	la	t0, fuckLLVM_w
	sw	ra, 0(t0)
	lw	ra, fuckLLVM_w
	addi	ra, ra, 1
	la	t0, fuckLLVM_w
	sw	ra, 0(t0)
	lw	ra, fuckLLVM_w
	lw	ra, fuckLLVM_w
	addi	t0, ra, 1
	la	ra, fuckLLVM_w
	sw	t0, 0(ra)
	lw	ra, fuckLLVM_w
	addi	t0, ra, 1
	la	ra, fuckLLVM_w
	sw	t0, 0(ra)
	lw	ra, fuckLLVM_w
	lw	ra, fuckLLVM_w
	addi	t0, ra, 1
	la	ra, fuckLLVM_w
	sw	t0, 0(ra)
	lw	ra, fuckLLVM_w
	addi	ra, ra, 1
	la	t0, fuckLLVM_w
	sw	ra, 0(t0)
	lw	ra, fuckLLVM_w
	lw	ra, fuckLLVM_w
	addi	ra, ra, 1
	la	t0, fuckLLVM_w
	sw	ra, 0(t0)
	lw	ra, fuckLLVM_w
	addi	ra, ra, 1
	la	t0, fuckLLVM_w
	sw	ra, 0(t0)
	lw	ra, fuckLLVM_w
	lw	ra, fuckLLVM_w
	addi	ra, ra, 1
	la	t0, fuckLLVM_w
	sw	ra, 0(t0)
	lw	ra, fuckLLVM_w
	addi	ra, ra, 1
	la	t0, fuckLLVM_w
	sw	ra, 0(t0)
	lw	ra, fuckLLVM_w
	lw	ra, fuckLLVM_w
	addi	t0, ra, 1
	la	ra, fuckLLVM_w
	sw	t0, 0(ra)
	lw	ra, fuckLLVM_w
	addi	ra, ra, 1
	la	t0, fuckLLVM_w
	sw	ra, 0(t0)
	lw	ra, fuckLLVM_w
	lw	ra, fuckLLVM_w
	addi	t0, ra, 1
	la	ra, fuckLLVM_w
	sw	t0, 0(ra)
	lw	ra, fuckLLVM_w
	addi	t0, ra, 1
	la	ra, fuckLLVM_w
	sw	t0, 0(ra)
	lw	ra, fuckLLVM_w
	lw	ra, fuckLLVM_w
	addi	ra, ra, 1
	la	t0, fuckLLVM_w
	sw	ra, 0(t0)
	lw	ra, fuckLLVM_w
	addi	ra, ra, 1
	la	t0, fuckLLVM_w
	sw	ra, 0(t0)
	lw	ra, fuckLLVM_w
	lw	ra, fuckLLVM_w
	addi	t0, ra, 1
	la	ra, fuckLLVM_w
	sw	t0, 0(ra)
	lw	ra, fuckLLVM_w
	addi	ra, ra, 1
	la	t0, fuckLLVM_w
	sw	ra, 0(t0)
	lw	ra, fuckLLVM_w
	lw	ra, fuckLLVM_w
	addi	t0, ra, 1
	la	ra, fuckLLVM_w
	sw	t0, 0(ra)
	lw	ra, fuckLLVM_w
	addi	ra, ra, 1
	la	t0, fuckLLVM_w
	sw	ra, 0(t0)
	lw	ra, fuckLLVM_w
	lw	ra, fuckLLVM_w
	addi	ra, ra, 1
	la	t0, fuckLLVM_w
	sw	ra, 0(t0)
	lw	ra, fuckLLVM_w
	addi	ra, ra, 1
	la	t0, fuckLLVM_w
	sw	ra, 0(t0)
	lw	ra, fuckLLVM_w
	lw	ra, fuckLLVM_w
	addi	t0, ra, 1
	la	ra, fuckLLVM_w
	sw	t0, 0(ra)
	lw	ra, fuckLLVM_w
	addi	t0, ra, 1
	la	ra, fuckLLVM_w
	sw	t0, 0(ra)
	lw	ra, fuckLLVM_w
	lw	ra, fuckLLVM_w
	addi	ra, ra, 1
	la	t0, fuckLLVM_w
	sw	ra, 0(t0)
	lw	ra, fuckLLVM_w
	addi	ra, ra, 1
	la	t0, fuckLLVM_w
	sw	ra, 0(t0)
	lw	ra, fuckLLVM_w
	lw	ra, fuckLLVM_w
	addi	ra, ra, 1
	la	t0, fuckLLVM_w
	sw	ra, 0(t0)
	lw	ra, fuckLLVM_w
	addi	ra, ra, 1
	la	t0, fuckLLVM_w
	sw	ra, 0(t0)
	lw	ra, fuckLLVM_w
	lw	ra, fuckLLVM_w
	addi	ra, ra, 1
	la	t0, fuckLLVM_w
	sw	ra, 0(t0)
	lw	ra, fuckLLVM_w
	addi	t0, ra, 1
	la	ra, fuckLLVM_w
	sw	t0, 0(ra)
	lw	ra, fuckLLVM_w
	lw	ra, fuckLLVM_w
	addi	t0, ra, 1
	la	ra, fuckLLVM_w
	sw	t0, 0(ra)
	lw	ra, fuckLLVM_w
	addi	t0, ra, 1
	la	ra, fuckLLVM_w
	sw	t0, 0(ra)
	lw	ra, fuckLLVM_w
	lw	ra, fuckLLVM_w
	addi	ra, ra, 1
	la	t0, fuckLLVM_w
	sw	ra, 0(t0)
	lw	ra, fuckLLVM_w
	addi	t0, ra, 1
	la	ra, fuckLLVM_w
	sw	t0, 0(ra)
	lw	ra, fuckLLVM_w
	lw	ra, fuckLLVM_w
	addi	ra, ra, 1
	la	t0, fuckLLVM_w
	sw	ra, 0(t0)
	lw	ra, fuckLLVM_w
	addi	t0, ra, 1
	la	ra, fuckLLVM_w
	sw	t0, 0(ra)
	lw	ra, fuckLLVM_w
	lw	ra, fuckLLVM_w
	addi	t0, ra, 1
	la	ra, fuckLLVM_w
	sw	t0, 0(ra)
	lw	ra, fuckLLVM_w
	addi	t0, ra, 1
	la	ra, fuckLLVM_w
	sw	t0, 0(ra)
	lw	ra, fuckLLVM_w
	lw	ra, fuckLLVM_w
	addi	ra, ra, 1
	la	t0, fuckLLVM_w
	sw	ra, 0(t0)
	lw	ra, fuckLLVM_w
	addi	t0, ra, 1
	la	ra, fuckLLVM_w
	sw	t0, 0(ra)
	lw	ra, fuckLLVM_w
	lw	ra, fuckLLVM_w
	addi	ra, ra, 1
	la	t0, fuckLLVM_w
	sw	ra, 0(t0)
	lw	ra, fuckLLVM_w
	addi	t0, ra, 1
	la	ra, fuckLLVM_w
	sw	t0, 0(ra)
	lw	ra, fuckLLVM_w
	lw	ra, fuckLLVM_w
	addi	t0, ra, 1
	la	ra, fuckLLVM_w
	sw	t0, 0(ra)
	lw	ra, fuckLLVM_w
	addi	t0, ra, 1
	la	ra, fuckLLVM_w
	sw	t0, 0(ra)
	lw	ra, fuckLLVM_w
	lw	ra, fuckLLVM_w
	addi	t0, ra, 1
	la	ra, fuckLLVM_w
	sw	t0, 0(ra)
	lw	ra, fuckLLVM_w
	addi	ra, ra, 1
	la	t0, fuckLLVM_w
	sw	ra, 0(t0)
	lw	ra, fuckLLVM_w
	lw	ra, fuckLLVM_w
	addi	ra, ra, 1
	la	t0, fuckLLVM_w
	sw	ra, 0(t0)
	lw	ra, fuckLLVM_w
	addi	t0, ra, 1
	la	ra, fuckLLVM_w
	sw	t0, 0(ra)
	lw	ra, fuckLLVM_w
	lw	ra, fuckLLVM_w
	addi	ra, ra, 1
	la	t0, fuckLLVM_w
	sw	ra, 0(t0)
	lw	ra, fuckLLVM_w
	addi	t0, ra, 1
	la	ra, fuckLLVM_w
	sw	t0, 0(ra)
	lw	ra, fuckLLVM_w
	lw	ra, fuckLLVM_w
	addi	ra, ra, 1
	la	t0, fuckLLVM_w
	sw	ra, 0(t0)
	lw	ra, fuckLLVM_w
	addi	ra, ra, 1
	la	t0, fuckLLVM_w
	sw	ra, 0(t0)
	lw	ra, fuckLLVM_w
	lw	ra, fuckLLVM_w
	addi	t0, ra, 1
	la	ra, fuckLLVM_w
	sw	t0, 0(ra)
	lw	ra, fuckLLVM_w
	addi	t0, ra, 1
	la	ra, fuckLLVM_w
	sw	t0, 0(ra)
	lw	ra, fuckLLVM_w
	lw	ra, fuckLLVM_w
	addi	ra, ra, 1
	la	t0, fuckLLVM_w
	sw	ra, 0(t0)
	lw	ra, fuckLLVM_w
	addi	ra, ra, 1
	la	t0, fuckLLVM_w
	sw	ra, 0(t0)
	lw	ra, fuckLLVM_w
	lw	ra, fuckLLVM_w
	addi	ra, ra, 1
	la	t0, fuckLLVM_w
	sw	ra, 0(t0)
	lw	ra, fuckLLVM_w
	addi	ra, ra, 1
	la	t0, fuckLLVM_w
	sw	ra, 0(t0)
	lw	ra, fuckLLVM_w
	lw	ra, fuckLLVM_w
	addi	ra, ra, 1
	la	t0, fuckLLVM_w
	sw	ra, 0(t0)
	lw	ra, fuckLLVM_w
	addi	ra, ra, 1
	la	t0, fuckLLVM_w
	sw	ra, 0(t0)
	lw	ra, fuckLLVM_w
	lw	ra, fuckLLVM_w
	addi	t0, ra, 1
	la	ra, fuckLLVM_w
	sw	t0, 0(ra)
	lw	ra, fuckLLVM_w
	addi	ra, ra, 1
	la	t0, fuckLLVM_w
	sw	ra, 0(t0)
	lw	ra, fuckLLVM_w
	lw	ra, fuckLLVM_w
	addi	t0, ra, 1
	la	ra, fuckLLVM_w
	sw	t0, 0(ra)
	lw	ra, fuckLLVM_w
	addi	t0, ra, 1
	la	ra, fuckLLVM_w
	sw	t0, 0(ra)
	lw	ra, fuckLLVM_w
	lw	ra, fuckLLVM_w
	addi	ra, ra, 1
	la	t0, fuckLLVM_w
	sw	ra, 0(t0)
	lw	ra, fuckLLVM_w
	addi	ra, ra, 1
	la	t0, fuckLLVM_w
	sw	ra, 0(t0)
	lw	ra, fuckLLVM_w
	lw	ra, fuckLLVM_w
	addi	t0, ra, 1
	la	ra, fuckLLVM_w
	sw	t0, 0(ra)
	lw	ra, fuckLLVM_w
	addi	t0, ra, 1
	la	ra, fuckLLVM_w
	sw	t0, 0(ra)
	lw	ra, fuckLLVM_w
	lw	ra, fuckLLVM_w
	addi	t0, ra, 1
	la	ra, fuckLLVM_w
	sw	t0, 0(ra)
	lw	ra, fuckLLVM_w
	addi	t0, ra, 1
	la	ra, fuckLLVM_w
	sw	t0, 0(ra)
	lw	ra, fuckLLVM_w
	lw	ra, fuckLLVM_w
	addi	t0, ra, 1
	la	ra, fuckLLVM_w
	sw	t0, 0(ra)
	lw	ra, fuckLLVM_w
	addi	ra, ra, 1
	la	t0, fuckLLVM_w
	sw	ra, 0(t0)
	lw	ra, fuckLLVM_w
	lw	ra, fuckLLVM_w
	addi	ra, ra, 1
	la	t0, fuckLLVM_w
	sw	ra, 0(t0)
	lw	ra, fuckLLVM_w
	addi	t0, ra, 1
	la	ra, fuckLLVM_w
	sw	t0, 0(ra)
	lw	ra, fuckLLVM_w
	lw	ra, fuckLLVM_w
	addi	ra, ra, 1
	la	t0, fuckLLVM_w
	sw	ra, 0(t0)
	lw	ra, fuckLLVM_w
	addi	ra, ra, 1
	la	t0, fuckLLVM_w
	sw	ra, 0(t0)
	lw	ra, fuckLLVM_w
	lw	ra, fuckLLVM_w
	addi	ra, ra, 1
	la	t0, fuckLLVM_w
	sw	ra, 0(t0)
	lw	ra, fuckLLVM_w
	addi	ra, ra, 1
	la	t0, fuckLLVM_w
	sw	ra, 0(t0)
	lw	ra, fuckLLVM_w
	lw	ra, fuckLLVM_w
	addi	t0, ra, 1
	la	ra, fuckLLVM_w
	sw	t0, 0(ra)
	lw	ra, fuckLLVM_w
	addi	ra, ra, 1
	la	t0, fuckLLVM_w
	sw	ra, 0(t0)
	lw	ra, fuckLLVM_w
	lw	ra, fuckLLVM_w
	addi	ra, ra, 1
	la	t0, fuckLLVM_w
	sw	ra, 0(t0)
	lw	ra, fuckLLVM_w
	addi	ra, ra, 1
	la	t0, fuckLLVM_w
	sw	ra, 0(t0)
	lw	ra, fuckLLVM_w
	lw	ra, fuckLLVM_w
	addi	ra, ra, 1
	la	t0, fuckLLVM_w
	sw	ra, 0(t0)
	lw	ra, fuckLLVM_w
	addi	t0, ra, 1
	la	ra, fuckLLVM_w
	sw	t0, 0(ra)
	lw	ra, fuckLLVM_w
	lw	ra, fuckLLVM_w
	addi	ra, ra, 1
	la	t0, fuckLLVM_w
	sw	ra, 0(t0)
	lw	ra, fuckLLVM_w
	addi	t0, ra, 1
	la	ra, fuckLLVM_w
	sw	t0, 0(ra)
	lw	ra, fuckLLVM_w
	lw	ra, fuckLLVM_w
	addi	ra, ra, 1
	la	t0, fuckLLVM_w
	sw	ra, 0(t0)
	lw	ra, fuckLLVM_w
	addi	t0, ra, 1
	la	ra, fuckLLVM_w
	sw	t0, 0(ra)
	lw	ra, fuckLLVM_w
	lw	ra, fuckLLVM_w
	addi	t0, ra, 1
	la	ra, fuckLLVM_w
	sw	t0, 0(ra)
	lw	ra, fuckLLVM_w
	addi	t0, ra, 1
	la	ra, fuckLLVM_w
	sw	t0, 0(ra)
	lw	ra, fuckLLVM_w
	lw	ra, fuckLLVM_w
	addi	t0, ra, 1
	la	ra, fuckLLVM_w
	sw	t0, 0(ra)
	lw	ra, fuckLLVM_w
	addi	ra, ra, 1
	la	t0, fuckLLVM_w
	sw	ra, 0(t0)
	lw	ra, fuckLLVM_w
	lw	ra, fuckLLVM_w
	addi	t0, ra, 1
	la	ra, fuckLLVM_w
	sw	t0, 0(ra)
	lw	ra, fuckLLVM_w
	addi	ra, ra, 1
	la	t0, fuckLLVM_w
	sw	ra, 0(t0)
	lw	ra, fuckLLVM_w
	lw	ra, fuckLLVM_w
	addi	t0, ra, 1
	la	ra, fuckLLVM_w
	sw	t0, 0(ra)
	lw	ra, fuckLLVM_w
	addi	t0, ra, 1
	la	ra, fuckLLVM_w
	sw	t0, 0(ra)
	lw	ra, fuckLLVM_w
	lw	ra, fuckLLVM_w
	addi	ra, ra, 1
	la	t0, fuckLLVM_w
	sw	ra, 0(t0)
	lw	ra, fuckLLVM_w
	addi	t0, ra, 1
	la	ra, fuckLLVM_w
	sw	t0, 0(ra)
	lw	ra, fuckLLVM_w
	lw	ra, fuckLLVM_w
	addi	t0, ra, 1
	la	ra, fuckLLVM_w
	sw	t0, 0(ra)
	lw	ra, fuckLLVM_w
	addi	ra, ra, 1
	la	t0, fuckLLVM_w
	sw	ra, 0(t0)
	lw	ra, fuckLLVM_w
	lw	ra, fuckLLVM_w
	addi	ra, ra, 1
	la	t0, fuckLLVM_w
	sw	ra, 0(t0)
	lw	ra, fuckLLVM_w
	addi	ra, ra, 1
	la	t0, fuckLLVM_w
	sw	ra, 0(t0)
	lw	ra, fuckLLVM_w
	lw	ra, fuckLLVM_w
	addi	t0, ra, 1
	la	ra, fuckLLVM_w
	sw	t0, 0(ra)
	lw	ra, fuckLLVM_w
	addi	ra, ra, 1
	la	t0, fuckLLVM_w
	sw	ra, 0(t0)
	lw	ra, fuckLLVM_w
	lw	ra, fuckLLVM_w
	addi	t0, ra, 1
	la	ra, fuckLLVM_w
	sw	t0, 0(ra)
	lw	ra, fuckLLVM_w
	addi	t0, ra, 1
	la	ra, fuckLLVM_w
	sw	t0, 0(ra)
	lw	ra, fuckLLVM_w
	lw	ra, fuckLLVM_w
	addi	t0, ra, 1
	la	ra, fuckLLVM_w
	sw	t0, 0(ra)
	lw	ra, fuckLLVM_w
	addi	t0, ra, 1
	la	ra, fuckLLVM_w
	sw	t0, 0(ra)
	lw	ra, fuckLLVM_w
	lw	ra, fuckLLVM_w
	addi	t0, ra, 1
	la	ra, fuckLLVM_w
	sw	t0, 0(ra)
	lw	ra, fuckLLVM_w
	addi	t0, ra, 1
	la	ra, fuckLLVM_w
	sw	t0, 0(ra)
	lw	ra, fuckLLVM_w
	lw	ra, fuckLLVM_w
	addi	ra, ra, 1
	la	t0, fuckLLVM_w
	sw	ra, 0(t0)
	lw	ra, fuckLLVM_w
	addi	ra, ra, 1
	la	t0, fuckLLVM_w
	sw	ra, 0(t0)
	lw	ra, fuckLLVM_w
	lw	ra, fuckLLVM_w
	addi	ra, ra, 1
	la	t0, fuckLLVM_w
	sw	ra, 0(t0)
	lw	ra, fuckLLVM_w
	addi	t0, ra, 1
	la	ra, fuckLLVM_w
	sw	t0, 0(ra)
	lw	ra, fuckLLVM_w
	lw	ra, fuckLLVM_w
	addi	t0, ra, 1
	la	ra, fuckLLVM_w
	sw	t0, 0(ra)
	lw	ra, fuckLLVM_w
	addi	ra, ra, 1
	la	t0, fuckLLVM_w
	sw	ra, 0(t0)
	lw	ra, fuckLLVM_w
	lw	ra, fuckLLVM_w
	addi	ra, ra, 1
	la	t0, fuckLLVM_w
	sw	ra, 0(t0)
	lw	ra, fuckLLVM_w
	addi	ra, ra, 1
	la	t0, fuckLLVM_w
	sw	ra, 0(t0)
	lw	ra, fuckLLVM_w
	lw	ra, fuckLLVM_w
	addi	ra, ra, 1
	la	t0, fuckLLVM_w
	sw	ra, 0(t0)
	lw	ra, fuckLLVM_w
	addi	t0, ra, 1
	la	ra, fuckLLVM_w
	sw	t0, 0(ra)
	lw	ra, fuckLLVM_w
	lw	ra, fuckLLVM_w
	addi	ra, ra, 1
	la	t0, fuckLLVM_w
	sw	ra, 0(t0)
	lw	ra, fuckLLVM_w
	addi	ra, ra, 1
	la	t0, fuckLLVM_w
	sw	ra, 0(t0)
	lw	ra, fuckLLVM_w
	lw	ra, fuckLLVM_w
	addi	t0, ra, 1
	la	ra, fuckLLVM_w
	sw	t0, 0(ra)
	lw	ra, fuckLLVM_w
	addi	t0, ra, 1
	la	ra, fuckLLVM_w
	sw	t0, 0(ra)
	lw	ra, fuckLLVM_w
	lw	ra, fuckLLVM_w
	addi	t0, ra, 1
	la	ra, fuckLLVM_w
	sw	t0, 0(ra)
	lw	ra, fuckLLVM_w
	addi	ra, ra, 1
	la	t0, fuckLLVM_w
	sw	ra, 0(t0)
	lw	ra, fuckLLVM_w
	lw	ra, fuckLLVM_w
	addi	ra, ra, 1
	la	t0, fuckLLVM_w
	sw	ra, 0(t0)
	lw	ra, fuckLLVM_w
	addi	t0, ra, 1
	la	ra, fuckLLVM_w
	sw	t0, 0(ra)
	lw	ra, fuckLLVM_w
	lw	ra, fuckLLVM_w
	addi	ra, ra, 1
	la	t0, fuckLLVM_w
	sw	ra, 0(t0)
	lw	ra, fuckLLVM_w
	addi	t0, ra, 1
	la	ra, fuckLLVM_w
	sw	t0, 0(ra)
	lw	ra, fuckLLVM_w
	lw	ra, fuckLLVM_w
	addi	t0, ra, 1
	la	ra, fuckLLVM_w
	sw	t0, 0(ra)
	lw	ra, fuckLLVM_w
	addi	t0, ra, 1
	la	ra, fuckLLVM_w
	sw	t0, 0(ra)
	lw	ra, fuckLLVM_w
	lw	ra, fuckLLVM_w
	addi	ra, ra, 1
	la	t0, fuckLLVM_w
	sw	ra, 0(t0)
	lw	ra, fuckLLVM_w
	addi	ra, ra, 1
	la	t0, fuckLLVM_w
	sw	ra, 0(t0)
	lw	ra, fuckLLVM_w
	lw	ra, fuckLLVM_w
	addi	t0, ra, 1
	la	ra, fuckLLVM_w
	sw	t0, 0(ra)
	lw	ra, fuckLLVM_w
	addi	ra, ra, 1
	la	t0, fuckLLVM_w
	sw	ra, 0(t0)
	lw	ra, fuckLLVM_w
	lw	ra, fuckLLVM_w
	addi	t0, ra, 1
	la	ra, fuckLLVM_w
	sw	t0, 0(ra)
	lw	ra, fuckLLVM_w
	addi	t0, ra, 1
	la	ra, fuckLLVM_w
	sw	t0, 0(ra)
	lw	ra, fuckLLVM_w
	lw	ra, fuckLLVM_w
	addi	t0, ra, 1
	la	ra, fuckLLVM_w
	sw	t0, 0(ra)
	lw	ra, fuckLLVM_w
	addi	ra, ra, 1
	la	t0, fuckLLVM_w
	sw	ra, 0(t0)
	lw	ra, fuckLLVM_w
	lw	ra, fuckLLVM_w
	addi	t0, ra, 1
	la	ra, fuckLLVM_w
	sw	t0, 0(ra)
	lw	ra, fuckLLVM_w
	addi	t0, ra, 1
	la	ra, fuckLLVM_w
	sw	t0, 0(ra)
	lw	ra, fuckLLVM_w
	lw	ra, fuckLLVM_w
	addi	t0, ra, 1
	la	ra, fuckLLVM_w
	sw	t0, 0(ra)
	lw	ra, fuckLLVM_w
	addi	ra, ra, 1
	la	t0, fuckLLVM_w
	sw	ra, 0(t0)
	lw	ra, fuckLLVM_w
	lw	ra, fuckLLVM_w
	addi	ra, ra, 1
	la	t0, fuckLLVM_w
	sw	ra, 0(t0)
	lw	ra, fuckLLVM_w
	addi	t0, ra, 1
	la	ra, fuckLLVM_w
	sw	t0, 0(ra)
	lw	ra, fuckLLVM_w
	lw	ra, fuckLLVM_w
	addi	t0, ra, 1
	la	ra, fuckLLVM_w
	sw	t0, 0(ra)
	lw	ra, fuckLLVM_w
	addi	ra, ra, 1
	la	t0, fuckLLVM_w
	sw	ra, 0(t0)
	lw	ra, fuckLLVM_w
	lw	ra, fuckLLVM_w
	addi	t0, ra, 1
	la	ra, fuckLLVM_w
	sw	t0, 0(ra)
	lw	ra, fuckLLVM_w
	addi	t0, ra, 1
	la	ra, fuckLLVM_w
	sw	t0, 0(ra)
	lw	ra, fuckLLVM_w
	lw	ra, fuckLLVM_w
	addi	ra, ra, 1
	la	t0, fuckLLVM_w
	sw	ra, 0(t0)
	lw	ra, fuckLLVM_w
	addi	t0, ra, 1
	la	ra, fuckLLVM_w
	sw	t0, 0(ra)
	lw	ra, fuckLLVM_w
	lw	ra, fuckLLVM_w
	addi	ra, ra, 1
	la	t0, fuckLLVM_w
	sw	ra, 0(t0)
	lw	ra, fuckLLVM_w
	addi	t0, ra, 1
	la	ra, fuckLLVM_w
	sw	t0, 0(ra)
	lw	ra, fuckLLVM_w
	lw	ra, fuckLLVM_w
	addi	ra, ra, 1
	la	t0, fuckLLVM_w
	sw	ra, 0(t0)
	lw	ra, fuckLLVM_w
	addi	t0, ra, 1
	la	ra, fuckLLVM_w
	sw	t0, 0(ra)
	lw	ra, fuckLLVM_w
	lw	ra, fuckLLVM_w
	addi	t0, ra, 1
	la	ra, fuckLLVM_w
	sw	t0, 0(ra)
	lw	ra, fuckLLVM_w
	addi	ra, ra, 1
	la	t0, fuckLLVM_w
	sw	ra, 0(t0)
	lw	ra, fuckLLVM_w
	lw	ra, fuckLLVM_w
	addi	ra, ra, 1
	la	t0, fuckLLVM_w
	sw	ra, 0(t0)
	lw	ra, fuckLLVM_w
	addi	ra, ra, 1
	la	t0, fuckLLVM_w
	sw	ra, 0(t0)
	lw	ra, fuckLLVM_w
	lw	ra, fuckLLVM_w
	addi	t0, ra, 1
	la	ra, fuckLLVM_w
	sw	t0, 0(ra)
	lw	ra, fuckLLVM_w
	addi	t0, ra, 1
	la	ra, fuckLLVM_w
	sw	t0, 0(ra)
	lw	ra, fuckLLVM_w
	lw	ra, fuckLLVM_w
	addi	ra, ra, 1
	la	t0, fuckLLVM_w
	sw	ra, 0(t0)
	lw	ra, fuckLLVM_w
	addi	t0, ra, 1
	la	ra, fuckLLVM_w
	sw	t0, 0(ra)
	lw	ra, fuckLLVM_w
	lw	ra, fuckLLVM_w
	addi	ra, ra, 1
	la	t0, fuckLLVM_w
	sw	ra, 0(t0)
	lw	ra, fuckLLVM_w
	addi	t0, ra, 1
	la	ra, fuckLLVM_w
	sw	t0, 0(ra)
	lw	ra, fuckLLVM_w
	lw	ra, fuckLLVM_w
	addi	t0, ra, 1
	la	ra, fuckLLVM_w
	sw	t0, 0(ra)
	lw	ra, fuckLLVM_w
	addi	ra, ra, 1
	la	t0, fuckLLVM_w
	sw	ra, 0(t0)
	lw	ra, fuckLLVM_w
	lw	ra, fuckLLVM_w
	addi	ra, ra, 1
	la	t0, fuckLLVM_w
	sw	ra, 0(t0)
	lw	ra, fuckLLVM_w
	addi	t0, ra, 1
	la	ra, fuckLLVM_w
	sw	t0, 0(ra)
	lw	ra, fuckLLVM_w
	lw	ra, fuckLLVM_w
	addi	t0, ra, 1
	la	ra, fuckLLVM_w
	sw	t0, 0(ra)
	lw	ra, fuckLLVM_w
	addi	ra, ra, 1
	la	t0, fuckLLVM_w
	sw	ra, 0(t0)
	lw	ra, fuckLLVM_w
	lw	ra, fuckLLVM_w
	addi	t0, ra, 1
	la	ra, fuckLLVM_w
	sw	t0, 0(ra)
	lw	ra, fuckLLVM_w
	addi	t0, ra, 1
	la	ra, fuckLLVM_w
	sw	t0, 0(ra)
	lw	ra, fuckLLVM_w
	lw	ra, fuckLLVM_w
	addi	ra, ra, 1
	la	t0, fuckLLVM_w
	sw	ra, 0(t0)
	lw	ra, fuckLLVM_w
	addi	t0, ra, 1
	la	ra, fuckLLVM_w
	sw	t0, 0(ra)
	lw	ra, fuckLLVM_w
	lw	ra, fuckLLVM_w
	addi	ra, ra, 1
	la	t0, fuckLLVM_w
	sw	ra, 0(t0)
	lw	ra, fuckLLVM_w
	addi	ra, ra, 1
	la	t0, fuckLLVM_w
	sw	ra, 0(t0)
	lw	ra, fuckLLVM_w
	lw	ra, fuckLLVM_w
	addi	ra, ra, 1
	la	t0, fuckLLVM_w
	sw	ra, 0(t0)
	lw	ra, fuckLLVM_w
	addi	ra, ra, 1
	la	t0, fuckLLVM_w
	sw	ra, 0(t0)
	lw	ra, fuckLLVM_w
	lw	ra, fuckLLVM_w
	addi	ra, ra, 1
	la	t0, fuckLLVM_w
	sw	ra, 0(t0)
	lw	ra, fuckLLVM_w
	addi	t0, ra, 1
	la	ra, fuckLLVM_w
	sw	t0, 0(ra)
	lw	ra, fuckLLVM_w
	lw	ra, fuckLLVM_w
	addi	t0, ra, 1
	la	ra, fuckLLVM_w
	sw	t0, 0(ra)
	lw	ra, fuckLLVM_w
	addi	t0, ra, 1
	la	ra, fuckLLVM_w
	sw	t0, 0(ra)
	lw	ra, fuckLLVM_w
	lw	ra, fuckLLVM_w
	addi	t0, ra, 1
	la	ra, fuckLLVM_w
	sw	t0, 0(ra)
	lw	ra, fuckLLVM_w
	addi	t0, ra, 1
	la	ra, fuckLLVM_w
	sw	t0, 0(ra)
	lw	ra, fuckLLVM_w
	lw	ra, fuckLLVM_w
	addi	t0, ra, 1
	la	ra, fuckLLVM_w
	sw	t0, 0(ra)
	lw	ra, fuckLLVM_w
	addi	t0, ra, 1
	la	ra, fuckLLVM_w
	sw	t0, 0(ra)
	lw	ra, fuckLLVM_w
	call	bblock
	call	bblock
	j	.wP_return
.wP_return:
	li	t0, 16
	add	t1, sp, t0
	lw	ra, -4(t1)
	lw	s0, -8(t1)
	add	sp, sp, t0
	ret

	.globl	sanity_check
	.p2align	2
	.type	sanity_check,@function
sanity_check:
.sanity_check_assemblyInit:
	li	t0, 16
	sub	sp, sp, t0
	add	t1, sp, t0
	sw	ra, -4(t1)
	sw	s0, -8(t1)
	mv	s0, t1
	j	.sanity_check_entry
.sanity_check_entry:
	j	.sanity_check_call_wP_60
.sanity_check_call_wP_60_out:
	addi	a0, a0, 1
	j	.sanity_check_return
.sanity_check_call_wP_60_wP_ID4_for_suite:
	li	ra, 1
	sra	a0, t0, ra
	li	ra, 2
	j	.sanity_check_call_wP_60_wP_ID6_for_condition
.sanity_check_call_wP_60_wP_ID6_for_condition:
	slt	t1, ra, a0
	bnez	t1, .sanity_check_call_wP_60_wP_ID6_for_suite
	j	.sanity_check_call_wP_60_wP_ID6_for_condition_mid
.sanity_check_call_wP_60_wP_ID6_for_condition_mid:
	li	ra, 1
	j	.sanity_check_call_wP_60_wP_ID6_for_out
.sanity_check_call_wP_60_wP_ID6_for_suite:
	rem	t2, t0, ra
	li	t1, 0
	xor	t1, t2, t1
	sltiu	t1, t1, 1
	bnez	t1, .sanity_check_call_wP_60_wP_ID13_if_true
	j	.sanity_check_call_wP_60_wP_ID6_for_incr
.sanity_check_call_wP_60_wP_ID13_if_true:
	addi	t0, t0, 1
	li	ra, 0
	j	.sanity_check_call_wP_60_wP_ID6_for_out
.sanity_check_call_wP_60_wP_ID6_for_incr:
	addi	ra, ra, 1
	j	.sanity_check_call_wP_60_wP_ID6_for_condition
.sanity_check_call_wP_60_wP_ID6_for_out_mid:
	li	t1, 0
	j	.sanity_check_call_wP_60_wP_ID19_AndAnd_out
.sanity_check_call_wP_60_wP_ID6_for_out:
	li	t1, 0
	slt	t1, t1, t0
	bnez	t1, .sanity_check_call_wP_60_wP_ID19_AndAnd_true
	j	.sanity_check_call_wP_60_wP_ID6_for_out_mid
.sanity_check_call_wP_60_wP_ID19_AndAnd_true:
	add	t2, t0, ra
	li	t1, 9
	rem	t1, t2, t1
	li	t2, 0
	xor	t1, t1, t2
	sltiu	t1, t1, 1
	j	.sanity_check_call_wP_60_wP_ID19_AndAnd_out
.sanity_check_call_wP_60_wP_ID19_AndAnd_out:
	bnez	t1, .sanity_check_call_wP_60_wP_ID4_for_out
	j	.sanity_check_call_wP_60_wP_ID25_if_out
.sanity_check_call_wP_60_wP_ID25_if_out:
	lw	t1, fuckLLVM_N
	add	t1, t1, ra
	la	t2, fuckLLVM_N
	sw	t1, 0(t2)
	add	ra, t0, ra
	addi	t0, ra, 1
	j	.sanity_check_call_wP_60_wP_ID4_for_suite
.sanity_check_call_wP_60_wP_ID4_for_out:
	lw	t1, fuckLLVM_N
	lw	ra, fuckLLVM_w
	addi	t0, ra, 1
	la	ra, fuckLLVM_w
	sw	t0, 0(ra)
	lw	ra, fuckLLVM_w
	addi	ra, ra, 1
	la	t0, fuckLLVM_w
	sw	ra, 0(t0)
	lw	ra, fuckLLVM_w
	lw	ra, fuckLLVM_w
	addi	t0, ra, 1
	la	ra, fuckLLVM_w
	sw	t0, 0(ra)
	lw	ra, fuckLLVM_w
	addi	t0, ra, 1
	la	ra, fuckLLVM_w
	sw	t0, 0(ra)
	lw	ra, fuckLLVM_w
	lw	ra, fuckLLVM_w
	addi	ra, ra, 1
	la	t0, fuckLLVM_w
	sw	ra, 0(t0)
	lw	ra, fuckLLVM_w
	addi	t0, ra, 1
	la	ra, fuckLLVM_w
	sw	t0, 0(ra)
	lw	ra, fuckLLVM_w
	lw	ra, fuckLLVM_w
	addi	t0, ra, 1
	la	ra, fuckLLVM_w
	sw	t0, 0(ra)
	lw	ra, fuckLLVM_w
	addi	t0, ra, 1
	la	ra, fuckLLVM_w
	sw	t0, 0(ra)
	lw	ra, fuckLLVM_w
	lw	ra, fuckLLVM_w
	addi	ra, ra, 1
	la	t0, fuckLLVM_w
	sw	ra, 0(t0)
	lw	ra, fuckLLVM_w
	addi	t0, ra, 1
	la	ra, fuckLLVM_w
	sw	t0, 0(ra)
	lw	ra, fuckLLVM_w
	lw	ra, fuckLLVM_w
	addi	ra, ra, 1
	la	t0, fuckLLVM_w
	sw	ra, 0(t0)
	lw	ra, fuckLLVM_w
	addi	t0, ra, 1
	la	ra, fuckLLVM_w
	sw	t0, 0(ra)
	lw	ra, fuckLLVM_w
	lw	ra, fuckLLVM_w
	addi	ra, ra, 1
	la	t0, fuckLLVM_w
	sw	ra, 0(t0)
	lw	ra, fuckLLVM_w
	addi	t0, ra, 1
	la	ra, fuckLLVM_w
	sw	t0, 0(ra)
	lw	ra, fuckLLVM_w
	lw	ra, fuckLLVM_w
	addi	ra, ra, 1
	la	t0, fuckLLVM_w
	sw	ra, 0(t0)
	lw	ra, fuckLLVM_w
	addi	ra, ra, 1
	la	t0, fuckLLVM_w
	sw	ra, 0(t0)
	lw	ra, fuckLLVM_w
	lw	ra, fuckLLVM_w
	addi	ra, ra, 1
	la	t0, fuckLLVM_w
	sw	ra, 0(t0)
	lw	ra, fuckLLVM_w
	addi	t0, ra, 1
	la	ra, fuckLLVM_w
	sw	t0, 0(ra)
	lw	ra, fuckLLVM_w
	lw	ra, fuckLLVM_w
	addi	ra, ra, 1
	la	t0, fuckLLVM_w
	sw	ra, 0(t0)
	lw	ra, fuckLLVM_w
	addi	t0, ra, 1
	la	ra, fuckLLVM_w
	sw	t0, 0(ra)
	lw	ra, fuckLLVM_w
	lw	ra, fuckLLVM_w
	addi	t0, ra, 1
	la	ra, fuckLLVM_w
	sw	t0, 0(ra)
	lw	ra, fuckLLVM_w
	addi	ra, ra, 1
	la	t0, fuckLLVM_w
	sw	ra, 0(t0)
	lw	ra, fuckLLVM_w
	lw	ra, fuckLLVM_w
	addi	t0, ra, 1
	la	ra, fuckLLVM_w
	sw	t0, 0(ra)
	lw	ra, fuckLLVM_w
	addi	ra, ra, 1
	la	t0, fuckLLVM_w
	sw	ra, 0(t0)
	lw	ra, fuckLLVM_w
	lw	ra, fuckLLVM_w
	addi	ra, ra, 1
	la	t0, fuckLLVM_w
	sw	ra, 0(t0)
	lw	ra, fuckLLVM_w
	addi	t0, ra, 1
	la	ra, fuckLLVM_w
	sw	t0, 0(ra)
	lw	ra, fuckLLVM_w
	lw	ra, fuckLLVM_w
	addi	ra, ra, 1
	la	t0, fuckLLVM_w
	sw	ra, 0(t0)
	lw	ra, fuckLLVM_w
	addi	ra, ra, 1
	la	t0, fuckLLVM_w
	sw	ra, 0(t0)
	lw	ra, fuckLLVM_w
	lw	ra, fuckLLVM_w
	addi	ra, ra, 1
	la	t0, fuckLLVM_w
	sw	ra, 0(t0)
	lw	ra, fuckLLVM_w
	addi	ra, ra, 1
	la	t0, fuckLLVM_w
	sw	ra, 0(t0)
	lw	ra, fuckLLVM_w
	lw	ra, fuckLLVM_w
	addi	ra, ra, 1
	la	t0, fuckLLVM_w
	sw	ra, 0(t0)
	lw	ra, fuckLLVM_w
	addi	t0, ra, 1
	la	ra, fuckLLVM_w
	sw	t0, 0(ra)
	lw	ra, fuckLLVM_w
	lw	ra, fuckLLVM_w
	addi	t0, ra, 1
	la	ra, fuckLLVM_w
	sw	t0, 0(ra)
	lw	ra, fuckLLVM_w
	addi	ra, ra, 1
	la	t0, fuckLLVM_w
	sw	ra, 0(t0)
	lw	ra, fuckLLVM_w
	lw	ra, fuckLLVM_w
	addi	t0, ra, 1
	la	ra, fuckLLVM_w
	sw	t0, 0(ra)
	lw	ra, fuckLLVM_w
	addi	ra, ra, 1
	la	t0, fuckLLVM_w
	sw	ra, 0(t0)
	lw	ra, fuckLLVM_w
	lw	ra, fuckLLVM_w
	addi	ra, ra, 1
	la	t0, fuckLLVM_w
	sw	ra, 0(t0)
	lw	ra, fuckLLVM_w
	addi	ra, ra, 1
	la	t0, fuckLLVM_w
	sw	ra, 0(t0)
	lw	ra, fuckLLVM_w
	lw	ra, fuckLLVM_w
	addi	ra, ra, 1
	la	t0, fuckLLVM_w
	sw	ra, 0(t0)
	lw	ra, fuckLLVM_w
	addi	ra, ra, 1
	la	t0, fuckLLVM_w
	sw	ra, 0(t0)
	lw	ra, fuckLLVM_w
	lw	ra, fuckLLVM_w
	addi	ra, ra, 1
	la	t0, fuckLLVM_w
	sw	ra, 0(t0)
	lw	ra, fuckLLVM_w
	addi	t0, ra, 1
	la	ra, fuckLLVM_w
	sw	t0, 0(ra)
	lw	ra, fuckLLVM_w
	lw	ra, fuckLLVM_w
	addi	t0, ra, 1
	la	ra, fuckLLVM_w
	sw	t0, 0(ra)
	lw	ra, fuckLLVM_w
	addi	t0, ra, 1
	la	ra, fuckLLVM_w
	sw	t0, 0(ra)
	lw	ra, fuckLLVM_w
	lw	ra, fuckLLVM_w
	addi	ra, ra, 1
	la	t0, fuckLLVM_w
	sw	ra, 0(t0)
	lw	ra, fuckLLVM_w
	addi	t0, ra, 1
	la	ra, fuckLLVM_w
	sw	t0, 0(ra)
	lw	ra, fuckLLVM_w
	lw	ra, fuckLLVM_w
	addi	t0, ra, 1
	la	ra, fuckLLVM_w
	sw	t0, 0(ra)
	lw	ra, fuckLLVM_w
	addi	ra, ra, 1
	la	t0, fuckLLVM_w
	sw	ra, 0(t0)
	lw	ra, fuckLLVM_w
	lw	ra, fuckLLVM_w
	addi	ra, ra, 1
	la	t0, fuckLLVM_w
	sw	ra, 0(t0)
	lw	ra, fuckLLVM_w
	addi	t0, ra, 1
	la	ra, fuckLLVM_w
	sw	t0, 0(ra)
	lw	ra, fuckLLVM_w
	lw	ra, fuckLLVM_w
	addi	ra, ra, 1
	la	t0, fuckLLVM_w
	sw	ra, 0(t0)
	lw	ra, fuckLLVM_w
	addi	t0, ra, 1
	la	ra, fuckLLVM_w
	sw	t0, 0(ra)
	lw	ra, fuckLLVM_w
	lw	ra, fuckLLVM_w
	addi	ra, ra, 1
	la	t0, fuckLLVM_w
	sw	ra, 0(t0)
	lw	ra, fuckLLVM_w
	addi	t0, ra, 1
	la	ra, fuckLLVM_w
	sw	t0, 0(ra)
	lw	ra, fuckLLVM_w
	lw	ra, fuckLLVM_w
	addi	t0, ra, 1
	la	ra, fuckLLVM_w
	sw	t0, 0(ra)
	lw	ra, fuckLLVM_w
	addi	t0, ra, 1
	la	ra, fuckLLVM_w
	sw	t0, 0(ra)
	lw	ra, fuckLLVM_w
	lw	ra, fuckLLVM_w
	addi	t0, ra, 1
	la	ra, fuckLLVM_w
	sw	t0, 0(ra)
	lw	ra, fuckLLVM_w
	addi	t0, ra, 1
	la	ra, fuckLLVM_w
	sw	t0, 0(ra)
	lw	ra, fuckLLVM_w
	lw	ra, fuckLLVM_w
	addi	t0, ra, 1
	la	ra, fuckLLVM_w
	sw	t0, 0(ra)
	lw	ra, fuckLLVM_w
	addi	ra, ra, 1
	la	t0, fuckLLVM_w
	sw	ra, 0(t0)
	lw	ra, fuckLLVM_w
	lw	ra, fuckLLVM_w
	addi	t0, ra, 1
	la	ra, fuckLLVM_w
	sw	t0, 0(ra)
	lw	ra, fuckLLVM_w
	addi	t0, ra, 1
	la	ra, fuckLLVM_w
	sw	t0, 0(ra)
	lw	ra, fuckLLVM_w
	lw	ra, fuckLLVM_w
	addi	ra, ra, 1
	la	t0, fuckLLVM_w
	sw	ra, 0(t0)
	lw	ra, fuckLLVM_w
	addi	ra, ra, 1
	la	t0, fuckLLVM_w
	sw	ra, 0(t0)
	lw	ra, fuckLLVM_w
	lw	ra, fuckLLVM_w
	addi	t0, ra, 1
	la	ra, fuckLLVM_w
	sw	t0, 0(ra)
	lw	ra, fuckLLVM_w
	addi	t0, ra, 1
	la	ra, fuckLLVM_w
	sw	t0, 0(ra)
	lw	ra, fuckLLVM_w
	lw	ra, fuckLLVM_w
	addi	t0, ra, 1
	la	ra, fuckLLVM_w
	sw	t0, 0(ra)
	lw	ra, fuckLLVM_w
	addi	ra, ra, 1
	la	t0, fuckLLVM_w
	sw	ra, 0(t0)
	lw	ra, fuckLLVM_w
	lw	ra, fuckLLVM_w
	addi	ra, ra, 1
	la	t0, fuckLLVM_w
	sw	ra, 0(t0)
	lw	ra, fuckLLVM_w
	addi	t0, ra, 1
	la	ra, fuckLLVM_w
	sw	t0, 0(ra)
	lw	ra, fuckLLVM_w
	lw	ra, fuckLLVM_w
	addi	ra, ra, 1
	la	t0, fuckLLVM_w
	sw	ra, 0(t0)
	lw	ra, fuckLLVM_w
	addi	ra, ra, 1
	la	t0, fuckLLVM_w
	sw	ra, 0(t0)
	lw	ra, fuckLLVM_w
	lw	ra, fuckLLVM_w
	addi	ra, ra, 1
	la	t0, fuckLLVM_w
	sw	ra, 0(t0)
	lw	ra, fuckLLVM_w
	addi	ra, ra, 1
	la	t0, fuckLLVM_w
	sw	ra, 0(t0)
	lw	ra, fuckLLVM_w
	lw	ra, fuckLLVM_w
	addi	ra, ra, 1
	la	t0, fuckLLVM_w
	sw	ra, 0(t0)
	lw	ra, fuckLLVM_w
	addi	ra, ra, 1
	la	t0, fuckLLVM_w
	sw	ra, 0(t0)
	lw	ra, fuckLLVM_w
	lw	ra, fuckLLVM_w
	addi	ra, ra, 1
	la	t0, fuckLLVM_w
	sw	ra, 0(t0)
	lw	ra, fuckLLVM_w
	addi	ra, ra, 1
	la	t0, fuckLLVM_w
	sw	ra, 0(t0)
	lw	ra, fuckLLVM_w
	lw	ra, fuckLLVM_w
	addi	t0, ra, 1
	la	ra, fuckLLVM_w
	sw	t0, 0(ra)
	lw	ra, fuckLLVM_w
	addi	ra, ra, 1
	la	t0, fuckLLVM_w
	sw	ra, 0(t0)
	lw	ra, fuckLLVM_w
	lw	ra, fuckLLVM_w
	addi	ra, ra, 1
	la	t0, fuckLLVM_w
	sw	ra, 0(t0)
	lw	ra, fuckLLVM_w
	addi	t0, ra, 1
	la	ra, fuckLLVM_w
	sw	t0, 0(ra)
	lw	ra, fuckLLVM_w
	lw	ra, fuckLLVM_w
	addi	ra, ra, 1
	la	t0, fuckLLVM_w
	sw	ra, 0(t0)
	lw	ra, fuckLLVM_w
	addi	ra, ra, 1
	la	t0, fuckLLVM_w
	sw	ra, 0(t0)
	lw	ra, fuckLLVM_w
	lw	ra, fuckLLVM_w
	addi	ra, ra, 1
	la	t0, fuckLLVM_w
	sw	ra, 0(t0)
	lw	ra, fuckLLVM_w
	addi	ra, ra, 1
	la	t0, fuckLLVM_w
	sw	ra, 0(t0)
	lw	ra, fuckLLVM_w
	lw	ra, fuckLLVM_w
	addi	t0, ra, 1
	la	ra, fuckLLVM_w
	sw	t0, 0(ra)
	lw	ra, fuckLLVM_w
	addi	ra, ra, 1
	la	t0, fuckLLVM_w
	sw	ra, 0(t0)
	lw	ra, fuckLLVM_w
	lw	ra, fuckLLVM_w
	addi	t0, ra, 1
	la	ra, fuckLLVM_w
	sw	t0, 0(ra)
	lw	ra, fuckLLVM_w
	addi	t0, ra, 1
	la	ra, fuckLLVM_w
	sw	t0, 0(ra)
	lw	ra, fuckLLVM_w
	lw	ra, fuckLLVM_w
	addi	ra, ra, 1
	la	t0, fuckLLVM_w
	sw	ra, 0(t0)
	lw	ra, fuckLLVM_w
	addi	t0, ra, 1
	la	ra, fuckLLVM_w
	sw	t0, 0(ra)
	lw	ra, fuckLLVM_w
	lw	ra, fuckLLVM_w
	addi	ra, ra, 1
	la	t0, fuckLLVM_w
	sw	ra, 0(t0)
	lw	ra, fuckLLVM_w
	addi	t0, ra, 1
	la	ra, fuckLLVM_w
	sw	t0, 0(ra)
	lw	ra, fuckLLVM_w
	lw	ra, fuckLLVM_w
	addi	ra, ra, 1
	la	t0, fuckLLVM_w
	sw	ra, 0(t0)
	lw	ra, fuckLLVM_w
	addi	ra, ra, 1
	la	t0, fuckLLVM_w
	sw	ra, 0(t0)
	lw	ra, fuckLLVM_w
	lw	ra, fuckLLVM_w
	addi	ra, ra, 1
	la	t0, fuckLLVM_w
	sw	ra, 0(t0)
	lw	ra, fuckLLVM_w
	addi	t0, ra, 1
	la	ra, fuckLLVM_w
	sw	t0, 0(ra)
	lw	ra, fuckLLVM_w
	lw	ra, fuckLLVM_w
	addi	t0, ra, 1
	la	ra, fuckLLVM_w
	sw	t0, 0(ra)
	lw	ra, fuckLLVM_w
	addi	ra, ra, 1
	la	t0, fuckLLVM_w
	sw	ra, 0(t0)
	lw	ra, fuckLLVM_w
	lw	ra, fuckLLVM_w
	addi	t0, ra, 1
	la	ra, fuckLLVM_w
	sw	t0, 0(ra)
	lw	ra, fuckLLVM_w
	addi	t0, ra, 1
	la	ra, fuckLLVM_w
	sw	t0, 0(ra)
	lw	ra, fuckLLVM_w
	lw	ra, fuckLLVM_w
	addi	t0, ra, 1
	la	ra, fuckLLVM_w
	sw	t0, 0(ra)
	lw	ra, fuckLLVM_w
	addi	ra, ra, 1
	la	t0, fuckLLVM_w
	sw	ra, 0(t0)
	lw	ra, fuckLLVM_w
	lw	ra, fuckLLVM_w
	addi	ra, ra, 1
	la	t0, fuckLLVM_w
	sw	ra, 0(t0)
	lw	ra, fuckLLVM_w
	addi	t0, ra, 1
	la	ra, fuckLLVM_w
	sw	t0, 0(ra)
	lw	ra, fuckLLVM_w
	lw	ra, fuckLLVM_w
	addi	t0, ra, 1
	la	ra, fuckLLVM_w
	sw	t0, 0(ra)
	lw	ra, fuckLLVM_w
	addi	t0, ra, 1
	la	ra, fuckLLVM_w
	sw	t0, 0(ra)
	lw	ra, fuckLLVM_w
	lw	ra, fuckLLVM_w
	addi	ra, ra, 1
	la	t0, fuckLLVM_w
	sw	ra, 0(t0)
	lw	ra, fuckLLVM_w
	addi	t0, ra, 1
	la	ra, fuckLLVM_w
	sw	t0, 0(ra)
	lw	ra, fuckLLVM_w
	lw	ra, fuckLLVM_w
	addi	t0, ra, 1
	la	ra, fuckLLVM_w
	sw	t0, 0(ra)
	lw	ra, fuckLLVM_w
	addi	t0, ra, 1
	la	ra, fuckLLVM_w
	sw	t0, 0(ra)
	lw	ra, fuckLLVM_w
	j	.sanity_check_call_wP_60_wP_call_wpppp_53_out
.sanity_check_call_wP_60_wP_call_wpppp_53_out:
	add	ra, t1, ra
	li	t0, 2
	rem	ra, ra, t0
	li	t0, 0
	xor	ra, ra, t0
	sltiu	ra, ra, 1
	bnez	ra, .sanity_check_call_wP_60_wP_ID38_if_true
	j	.sanity_check_call_wP_60_wP_ID38_if_out
.sanity_check_call_wP_60_wP_ID38_if_true:
	lw	a0, fuckLLVM_N
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	li	ra, 524288
	sub	t0, a0, ra
	li	ra, 4
	sub	a0, t0, ra
	j	.sanity_check_call_wP_60_wP_return
.sanity_check_call_wP_60_wP_ID38_if_out:
	call	block
	call	block
	call	block
	call	block
	lw	ra, fuckLLVM_w
	addi	t0, ra, 1
	la	ra, fuckLLVM_w
	sw	t0, 0(ra)
	lw	ra, fuckLLVM_w
	addi	ra, ra, 1
	la	t0, fuckLLVM_w
	sw	ra, 0(t0)
	lw	ra, fuckLLVM_w
	lw	ra, fuckLLVM_w
	addi	t0, ra, 1
	la	ra, fuckLLVM_w
	sw	t0, 0(ra)
	lw	ra, fuckLLVM_w
	addi	t0, ra, 1
	la	ra, fuckLLVM_w
	sw	t0, 0(ra)
	lw	ra, fuckLLVM_w
	lw	ra, fuckLLVM_w
	addi	ra, ra, 1
	la	t0, fuckLLVM_w
	sw	ra, 0(t0)
	lw	ra, fuckLLVM_w
	addi	ra, ra, 1
	la	t0, fuckLLVM_w
	sw	ra, 0(t0)
	lw	ra, fuckLLVM_w
	lw	ra, fuckLLVM_w
	addi	t0, ra, 1
	la	ra, fuckLLVM_w
	sw	t0, 0(ra)
	lw	ra, fuckLLVM_w
	addi	t0, ra, 1
	la	ra, fuckLLVM_w
	sw	t0, 0(ra)
	lw	ra, fuckLLVM_w
	lw	ra, fuckLLVM_w
	addi	t0, ra, 1
	la	ra, fuckLLVM_w
	sw	t0, 0(ra)
	lw	ra, fuckLLVM_w
	addi	t0, ra, 1
	la	ra, fuckLLVM_w
	sw	t0, 0(ra)
	lw	ra, fuckLLVM_w
	lw	ra, fuckLLVM_w
	addi	t0, ra, 1
	la	ra, fuckLLVM_w
	sw	t0, 0(ra)
	lw	ra, fuckLLVM_w
	addi	t0, ra, 1
	la	ra, fuckLLVM_w
	sw	t0, 0(ra)
	lw	ra, fuckLLVM_w
	lw	ra, fuckLLVM_w
	addi	t0, ra, 1
	la	ra, fuckLLVM_w
	sw	t0, 0(ra)
	lw	ra, fuckLLVM_w
	addi	t0, ra, 1
	la	ra, fuckLLVM_w
	sw	t0, 0(ra)
	lw	ra, fuckLLVM_w
	lw	ra, fuckLLVM_w
	addi	ra, ra, 1
	la	t0, fuckLLVM_w
	sw	ra, 0(t0)
	lw	ra, fuckLLVM_w
	addi	ra, ra, 1
	la	t0, fuckLLVM_w
	sw	ra, 0(t0)
	lw	ra, fuckLLVM_w
	lw	ra, fuckLLVM_w
	addi	t0, ra, 1
	la	ra, fuckLLVM_w
	sw	t0, 0(ra)
	lw	ra, fuckLLVM_w
	addi	t0, ra, 1
	la	ra, fuckLLVM_w
	sw	t0, 0(ra)
	lw	ra, fuckLLVM_w
	lw	ra, fuckLLVM_w
	addi	t0, ra, 1
	la	ra, fuckLLVM_w
	sw	t0, 0(ra)
	lw	ra, fuckLLVM_w
	addi	ra, ra, 1
	la	t0, fuckLLVM_w
	sw	ra, 0(t0)
	lw	ra, fuckLLVM_w
	lw	ra, fuckLLVM_w
	addi	ra, ra, 1
	la	t0, fuckLLVM_w
	sw	ra, 0(t0)
	lw	ra, fuckLLVM_w
	addi	ra, ra, 1
	la	t0, fuckLLVM_w
	sw	ra, 0(t0)
	lw	ra, fuckLLVM_w
	lw	ra, fuckLLVM_w
	addi	ra, ra, 1
	la	t0, fuckLLVM_w
	sw	ra, 0(t0)
	lw	ra, fuckLLVM_w
	addi	ra, ra, 1
	la	t0, fuckLLVM_w
	sw	ra, 0(t0)
	lw	ra, fuckLLVM_w
	lw	ra, fuckLLVM_w
	addi	t0, ra, 1
	la	ra, fuckLLVM_w
	sw	t0, 0(ra)
	lw	ra, fuckLLVM_w
	addi	ra, ra, 1
	la	t0, fuckLLVM_w
	sw	ra, 0(t0)
	lw	ra, fuckLLVM_w
	lw	ra, fuckLLVM_w
	addi	t0, ra, 1
	la	ra, fuckLLVM_w
	sw	t0, 0(ra)
	lw	ra, fuckLLVM_w
	addi	t0, ra, 1
	la	ra, fuckLLVM_w
	sw	t0, 0(ra)
	lw	ra, fuckLLVM_w
	lw	ra, fuckLLVM_w
	addi	ra, ra, 1
	la	t0, fuckLLVM_w
	sw	ra, 0(t0)
	lw	ra, fuckLLVM_w
	addi	t0, ra, 1
	la	ra, fuckLLVM_w
	sw	t0, 0(ra)
	lw	ra, fuckLLVM_w
	lw	ra, fuckLLVM_w
	addi	t0, ra, 1
	la	ra, fuckLLVM_w
	sw	t0, 0(ra)
	lw	ra, fuckLLVM_w
	addi	ra, ra, 1
	la	t0, fuckLLVM_w
	sw	ra, 0(t0)
	lw	ra, fuckLLVM_w
	lw	ra, fuckLLVM_w
	addi	ra, ra, 1
	la	t0, fuckLLVM_w
	sw	ra, 0(t0)
	lw	ra, fuckLLVM_w
	addi	t0, ra, 1
	la	ra, fuckLLVM_w
	sw	t0, 0(ra)
	lw	ra, fuckLLVM_w
	lw	ra, fuckLLVM_w
	addi	ra, ra, 1
	la	t0, fuckLLVM_w
	sw	ra, 0(t0)
	lw	ra, fuckLLVM_w
	addi	t0, ra, 1
	la	ra, fuckLLVM_w
	sw	t0, 0(ra)
	lw	ra, fuckLLVM_w
	lw	ra, fuckLLVM_w
	addi	t0, ra, 1
	la	ra, fuckLLVM_w
	sw	t0, 0(ra)
	lw	ra, fuckLLVM_w
	addi	t0, ra, 1
	la	ra, fuckLLVM_w
	sw	t0, 0(ra)
	lw	ra, fuckLLVM_w
	lw	ra, fuckLLVM_w
	addi	t0, ra, 1
	la	ra, fuckLLVM_w
	sw	t0, 0(ra)
	lw	ra, fuckLLVM_w
	addi	t0, ra, 1
	la	ra, fuckLLVM_w
	sw	t0, 0(ra)
	lw	ra, fuckLLVM_w
	lw	ra, fuckLLVM_w
	addi	t0, ra, 1
	la	ra, fuckLLVM_w
	sw	t0, 0(ra)
	lw	ra, fuckLLVM_w
	addi	ra, ra, 1
	la	t0, fuckLLVM_w
	sw	ra, 0(t0)
	lw	ra, fuckLLVM_w
	lw	ra, fuckLLVM_w
	addi	ra, ra, 1
	la	t0, fuckLLVM_w
	sw	ra, 0(t0)
	lw	ra, fuckLLVM_w
	addi	ra, ra, 1
	la	t0, fuckLLVM_w
	sw	ra, 0(t0)
	lw	ra, fuckLLVM_w
	lw	ra, fuckLLVM_w
	addi	t0, ra, 1
	la	ra, fuckLLVM_w
	sw	t0, 0(ra)
	lw	ra, fuckLLVM_w
	addi	ra, ra, 1
	la	t0, fuckLLVM_w
	sw	ra, 0(t0)
	lw	ra, fuckLLVM_w
	lw	ra, fuckLLVM_w
	addi	ra, ra, 1
	la	t0, fuckLLVM_w
	sw	ra, 0(t0)
	lw	ra, fuckLLVM_w
	addi	ra, ra, 1
	la	t0, fuckLLVM_w
	sw	ra, 0(t0)
	lw	ra, fuckLLVM_w
	lw	ra, fuckLLVM_w
	addi	t0, ra, 1
	la	ra, fuckLLVM_w
	sw	t0, 0(ra)
	lw	ra, fuckLLVM_w
	addi	t0, ra, 1
	la	ra, fuckLLVM_w
	sw	t0, 0(ra)
	lw	ra, fuckLLVM_w
	lw	ra, fuckLLVM_w
	addi	t0, ra, 1
	la	ra, fuckLLVM_w
	sw	t0, 0(ra)
	lw	ra, fuckLLVM_w
	addi	t0, ra, 1
	la	ra, fuckLLVM_w
	sw	t0, 0(ra)
	lw	ra, fuckLLVM_w
	lw	ra, fuckLLVM_w
	addi	ra, ra, 1
	la	t0, fuckLLVM_w
	sw	ra, 0(t0)
	lw	ra, fuckLLVM_w
	addi	ra, ra, 1
	la	t0, fuckLLVM_w
	sw	ra, 0(t0)
	lw	ra, fuckLLVM_w
	lw	ra, fuckLLVM_w
	addi	ra, ra, 1
	la	t0, fuckLLVM_w
	sw	ra, 0(t0)
	lw	ra, fuckLLVM_w
	addi	t0, ra, 1
	la	ra, fuckLLVM_w
	sw	t0, 0(ra)
	lw	ra, fuckLLVM_w
	lw	ra, fuckLLVM_w
	addi	ra, ra, 1
	la	t0, fuckLLVM_w
	sw	ra, 0(t0)
	lw	ra, fuckLLVM_w
	addi	ra, ra, 1
	la	t0, fuckLLVM_w
	sw	ra, 0(t0)
	lw	ra, fuckLLVM_w
	lw	ra, fuckLLVM_w
	addi	ra, ra, 1
	la	t0, fuckLLVM_w
	sw	ra, 0(t0)
	lw	ra, fuckLLVM_w
	addi	t0, ra, 1
	la	ra, fuckLLVM_w
	sw	t0, 0(ra)
	lw	ra, fuckLLVM_w
	lw	ra, fuckLLVM_w
	addi	t0, ra, 1
	la	ra, fuckLLVM_w
	sw	t0, 0(ra)
	lw	ra, fuckLLVM_w
	addi	ra, ra, 1
	la	t0, fuckLLVM_w
	sw	ra, 0(t0)
	lw	ra, fuckLLVM_w
	lw	ra, fuckLLVM_w
	addi	t0, ra, 1
	la	ra, fuckLLVM_w
	sw	t0, 0(ra)
	lw	ra, fuckLLVM_w
	addi	ra, ra, 1
	la	t0, fuckLLVM_w
	sw	ra, 0(t0)
	lw	ra, fuckLLVM_w
	lw	ra, fuckLLVM_w
	addi	t0, ra, 1
	la	ra, fuckLLVM_w
	sw	t0, 0(ra)
	lw	ra, fuckLLVM_w
	addi	t0, ra, 1
	la	ra, fuckLLVM_w
	sw	t0, 0(ra)
	lw	ra, fuckLLVM_w
	lw	ra, fuckLLVM_w
	addi	t0, ra, 1
	la	ra, fuckLLVM_w
	sw	t0, 0(ra)
	lw	ra, fuckLLVM_w
	addi	t0, ra, 1
	la	ra, fuckLLVM_w
	sw	t0, 0(ra)
	lw	ra, fuckLLVM_w
	lw	ra, fuckLLVM_w
	addi	ra, ra, 1
	la	t0, fuckLLVM_w
	sw	ra, 0(t0)
	lw	ra, fuckLLVM_w
	addi	t0, ra, 1
	la	ra, fuckLLVM_w
	sw	t0, 0(ra)
	lw	ra, fuckLLVM_w
	lw	ra, fuckLLVM_w
	addi	t0, ra, 1
	la	ra, fuckLLVM_w
	sw	t0, 0(ra)
	lw	ra, fuckLLVM_w
	addi	t0, ra, 1
	la	ra, fuckLLVM_w
	sw	t0, 0(ra)
	lw	ra, fuckLLVM_w
	lw	ra, fuckLLVM_w
	addi	t0, ra, 1
	la	ra, fuckLLVM_w
	sw	t0, 0(ra)
	lw	ra, fuckLLVM_w
	addi	ra, ra, 1
	la	t0, fuckLLVM_w
	sw	ra, 0(t0)
	lw	ra, fuckLLVM_w
	lw	ra, fuckLLVM_w
	addi	t0, ra, 1
	la	ra, fuckLLVM_w
	sw	t0, 0(ra)
	lw	ra, fuckLLVM_w
	addi	ra, ra, 1
	la	t0, fuckLLVM_w
	sw	ra, 0(t0)
	lw	ra, fuckLLVM_w
	lw	ra, fuckLLVM_w
	addi	t0, ra, 1
	la	ra, fuckLLVM_w
	sw	t0, 0(ra)
	lw	ra, fuckLLVM_w
	addi	ra, ra, 1
	la	t0, fuckLLVM_w
	sw	ra, 0(t0)
	lw	ra, fuckLLVM_w
	lw	ra, fuckLLVM_w
	addi	ra, ra, 1
	la	t0, fuckLLVM_w
	sw	ra, 0(t0)
	lw	ra, fuckLLVM_w
	addi	ra, ra, 1
	la	t0, fuckLLVM_w
	sw	ra, 0(t0)
	lw	ra, fuckLLVM_w
	lw	ra, fuckLLVM_w
	addi	t0, ra, 1
	la	ra, fuckLLVM_w
	sw	t0, 0(ra)
	lw	ra, fuckLLVM_w
	addi	t0, ra, 1
	la	ra, fuckLLVM_w
	sw	t0, 0(ra)
	lw	ra, fuckLLVM_w
	lw	ra, fuckLLVM_w
	addi	ra, ra, 1
	la	t0, fuckLLVM_w
	sw	ra, 0(t0)
	lw	ra, fuckLLVM_w
	addi	ra, ra, 1
	la	t0, fuckLLVM_w
	sw	ra, 0(t0)
	lw	ra, fuckLLVM_w
	lw	ra, fuckLLVM_w
	addi	ra, ra, 1
	la	t0, fuckLLVM_w
	sw	ra, 0(t0)
	lw	ra, fuckLLVM_w
	addi	t0, ra, 1
	la	ra, fuckLLVM_w
	sw	t0, 0(ra)
	lw	ra, fuckLLVM_w
	lw	ra, fuckLLVM_w
	addi	t0, ra, 1
	la	ra, fuckLLVM_w
	sw	t0, 0(ra)
	lw	ra, fuckLLVM_w
	addi	ra, ra, 1
	la	t0, fuckLLVM_w
	sw	ra, 0(t0)
	lw	ra, fuckLLVM_w
	lw	ra, fuckLLVM_w
	addi	ra, ra, 1
	la	t0, fuckLLVM_w
	sw	ra, 0(t0)
	lw	ra, fuckLLVM_w
	addi	t0, ra, 1
	la	ra, fuckLLVM_w
	sw	t0, 0(ra)
	lw	ra, fuckLLVM_w
	lw	ra, fuckLLVM_w
	addi	ra, ra, 1
	la	t0, fuckLLVM_w
	sw	ra, 0(t0)
	lw	ra, fuckLLVM_w
	addi	t0, ra, 1
	la	ra, fuckLLVM_w
	sw	t0, 0(ra)
	lw	ra, fuckLLVM_w
	lw	ra, fuckLLVM_w
	addi	t0, ra, 1
	la	ra, fuckLLVM_w
	sw	t0, 0(ra)
	lw	ra, fuckLLVM_w
	addi	ra, ra, 1
	la	t0, fuckLLVM_w
	sw	ra, 0(t0)
	lw	ra, fuckLLVM_w
	lw	ra, fuckLLVM_w
	addi	ra, ra, 1
	la	t0, fuckLLVM_w
	sw	ra, 0(t0)
	lw	ra, fuckLLVM_w
	addi	ra, ra, 1
	la	t0, fuckLLVM_w
	sw	ra, 0(t0)
	lw	ra, fuckLLVM_w
	lw	ra, fuckLLVM_w
	addi	t0, ra, 1
	la	ra, fuckLLVM_w
	sw	t0, 0(ra)
	lw	ra, fuckLLVM_w
	addi	t0, ra, 1
	la	ra, fuckLLVM_w
	sw	t0, 0(ra)
	lw	ra, fuckLLVM_w
	lw	ra, fuckLLVM_w
	addi	ra, ra, 1
	la	t0, fuckLLVM_w
	sw	ra, 0(t0)
	lw	ra, fuckLLVM_w
	addi	ra, ra, 1
	la	t0, fuckLLVM_w
	sw	ra, 0(t0)
	lw	ra, fuckLLVM_w
	lw	ra, fuckLLVM_w
	addi	ra, ra, 1
	la	t0, fuckLLVM_w
	sw	ra, 0(t0)
	lw	ra, fuckLLVM_w
	addi	t0, ra, 1
	la	ra, fuckLLVM_w
	sw	t0, 0(ra)
	lw	ra, fuckLLVM_w
	lw	ra, fuckLLVM_w
	addi	t0, ra, 1
	la	ra, fuckLLVM_w
	sw	t0, 0(ra)
	lw	ra, fuckLLVM_w
	addi	t0, ra, 1
	la	ra, fuckLLVM_w
	sw	t0, 0(ra)
	lw	ra, fuckLLVM_w
	lw	ra, fuckLLVM_w
	addi	t0, ra, 1
	la	ra, fuckLLVM_w
	sw	t0, 0(ra)
	lw	ra, fuckLLVM_w
	addi	ra, ra, 1
	la	t0, fuckLLVM_w
	sw	ra, 0(t0)
	lw	ra, fuckLLVM_w
	lw	ra, fuckLLVM_w
	addi	ra, ra, 1
	la	t0, fuckLLVM_w
	sw	ra, 0(t0)
	lw	ra, fuckLLVM_w
	addi	t0, ra, 1
	la	ra, fuckLLVM_w
	sw	t0, 0(ra)
	lw	ra, fuckLLVM_w
	lw	ra, fuckLLVM_w
	addi	ra, ra, 1
	la	t0, fuckLLVM_w
	sw	ra, 0(t0)
	lw	ra, fuckLLVM_w
	addi	t0, ra, 1
	la	ra, fuckLLVM_w
	sw	t0, 0(ra)
	lw	ra, fuckLLVM_w
	lw	ra, fuckLLVM_w
	addi	ra, ra, 1
	la	t0, fuckLLVM_w
	sw	ra, 0(t0)
	lw	ra, fuckLLVM_w
	addi	ra, ra, 1
	la	t0, fuckLLVM_w
	sw	ra, 0(t0)
	lw	ra, fuckLLVM_w
	lw	ra, fuckLLVM_w
	addi	t0, ra, 1
	la	ra, fuckLLVM_w
	sw	t0, 0(ra)
	lw	ra, fuckLLVM_w
	addi	t0, ra, 1
	la	ra, fuckLLVM_w
	sw	t0, 0(ra)
	lw	ra, fuckLLVM_w
	lw	ra, fuckLLVM_w
	addi	t0, ra, 1
	la	ra, fuckLLVM_w
	sw	t0, 0(ra)
	lw	ra, fuckLLVM_w
	addi	ra, ra, 1
	la	t0, fuckLLVM_w
	sw	ra, 0(t0)
	lw	ra, fuckLLVM_w
	lw	ra, fuckLLVM_w
	addi	ra, ra, 1
	la	t0, fuckLLVM_w
	sw	ra, 0(t0)
	lw	ra, fuckLLVM_w
	addi	ra, ra, 1
	la	t0, fuckLLVM_w
	sw	ra, 0(t0)
	lw	ra, fuckLLVM_w
	lw	ra, fuckLLVM_w
	addi	ra, ra, 1
	la	t0, fuckLLVM_w
	sw	ra, 0(t0)
	lw	ra, fuckLLVM_w
	addi	ra, ra, 1
	la	t0, fuckLLVM_w
	sw	ra, 0(t0)
	lw	ra, fuckLLVM_w
	lw	ra, fuckLLVM_w
	addi	t0, ra, 1
	la	ra, fuckLLVM_w
	sw	t0, 0(ra)
	lw	ra, fuckLLVM_w
	addi	ra, ra, 1
	la	t0, fuckLLVM_w
	sw	ra, 0(t0)
	lw	ra, fuckLLVM_w
	lw	ra, fuckLLVM_w
	addi	t0, ra, 1
	la	ra, fuckLLVM_w
	sw	t0, 0(ra)
	lw	ra, fuckLLVM_w
	addi	t0, ra, 1
	la	ra, fuckLLVM_w
	sw	t0, 0(ra)
	lw	ra, fuckLLVM_w
	lw	ra, fuckLLVM_w
	addi	t0, ra, 1
	la	ra, fuckLLVM_w
	sw	t0, 0(ra)
	lw	ra, fuckLLVM_w
	addi	t0, ra, 1
	la	ra, fuckLLVM_w
	sw	t0, 0(ra)
	lw	ra, fuckLLVM_w
	lw	ra, fuckLLVM_w
	addi	ra, ra, 1
	la	t0, fuckLLVM_w
	sw	ra, 0(t0)
	lw	ra, fuckLLVM_w
	addi	ra, ra, 1
	la	t0, fuckLLVM_w
	sw	ra, 0(t0)
	lw	ra, fuckLLVM_w
	lw	ra, fuckLLVM_w
	addi	ra, ra, 1
	la	t0, fuckLLVM_w
	sw	ra, 0(t0)
	lw	ra, fuckLLVM_w
	addi	ra, ra, 1
	la	t0, fuckLLVM_w
	sw	ra, 0(t0)
	lw	ra, fuckLLVM_w
	lw	ra, fuckLLVM_w
	addi	t0, ra, 1
	la	ra, fuckLLVM_w
	sw	t0, 0(ra)
	lw	ra, fuckLLVM_w
	addi	t0, ra, 1
	la	ra, fuckLLVM_w
	sw	t0, 0(ra)
	lw	ra, fuckLLVM_w
	lw	ra, fuckLLVM_w
	addi	ra, ra, 1
	la	t0, fuckLLVM_w
	sw	ra, 0(t0)
	lw	ra, fuckLLVM_w
	addi	t0, ra, 1
	la	ra, fuckLLVM_w
	sw	t0, 0(ra)
	lw	ra, fuckLLVM_w
	lw	ra, fuckLLVM_w
	addi	t0, ra, 1
	la	ra, fuckLLVM_w
	sw	t0, 0(ra)
	lw	ra, fuckLLVM_w
	addi	ra, ra, 1
	la	t0, fuckLLVM_w
	sw	ra, 0(t0)
	lw	ra, fuckLLVM_w
	lw	ra, fuckLLVM_w
	addi	t0, ra, 1
	la	ra, fuckLLVM_w
	sw	t0, 0(ra)
	lw	ra, fuckLLVM_w
	addi	t0, ra, 1
	la	ra, fuckLLVM_w
	sw	t0, 0(ra)
	lw	ra, fuckLLVM_w
	lw	ra, fuckLLVM_w
	addi	ra, ra, 1
	la	t0, fuckLLVM_w
	sw	ra, 0(t0)
	lw	ra, fuckLLVM_w
	addi	ra, ra, 1
	la	t0, fuckLLVM_w
	sw	ra, 0(t0)
	lw	ra, fuckLLVM_w
	lw	ra, fuckLLVM_w
	addi	ra, ra, 1
	la	t0, fuckLLVM_w
	sw	ra, 0(t0)
	lw	ra, fuckLLVM_w
	addi	ra, ra, 1
	la	t0, fuckLLVM_w
	sw	ra, 0(t0)
	lw	ra, fuckLLVM_w
	lw	ra, fuckLLVM_w
	addi	t0, ra, 1
	la	ra, fuckLLVM_w
	sw	t0, 0(ra)
	lw	ra, fuckLLVM_w
	addi	ra, ra, 1
	la	t0, fuckLLVM_w
	sw	ra, 0(t0)
	lw	ra, fuckLLVM_w
	lw	ra, fuckLLVM_w
	addi	ra, ra, 1
	la	t0, fuckLLVM_w
	sw	ra, 0(t0)
	lw	ra, fuckLLVM_w
	addi	t0, ra, 1
	la	ra, fuckLLVM_w
	sw	t0, 0(ra)
	lw	ra, fuckLLVM_w
	lw	ra, fuckLLVM_w
	addi	t0, ra, 1
	la	ra, fuckLLVM_w
	sw	t0, 0(ra)
	lw	ra, fuckLLVM_w
	addi	ra, ra, 1
	la	t0, fuckLLVM_w
	sw	ra, 0(t0)
	lw	ra, fuckLLVM_w
	lw	ra, fuckLLVM_w
	addi	ra, ra, 1
	la	t0, fuckLLVM_w
	sw	ra, 0(t0)
	lw	ra, fuckLLVM_w
	addi	t0, ra, 1
	la	ra, fuckLLVM_w
	sw	t0, 0(ra)
	lw	ra, fuckLLVM_w
	lw	ra, fuckLLVM_w
	addi	t0, ra, 1
	la	ra, fuckLLVM_w
	sw	t0, 0(ra)
	lw	ra, fuckLLVM_w
	addi	t0, ra, 1
	la	ra, fuckLLVM_w
	sw	t0, 0(ra)
	lw	ra, fuckLLVM_w
	lw	ra, fuckLLVM_w
	addi	t0, ra, 1
	la	ra, fuckLLVM_w
	sw	t0, 0(ra)
	lw	ra, fuckLLVM_w
	addi	t0, ra, 1
	la	ra, fuckLLVM_w
	sw	t0, 0(ra)
	lw	ra, fuckLLVM_w
	lw	ra, fuckLLVM_w
	addi	t0, ra, 1
	la	ra, fuckLLVM_w
	sw	t0, 0(ra)
	lw	ra, fuckLLVM_w
	addi	ra, ra, 1
	la	t0, fuckLLVM_w
	sw	ra, 0(t0)
	lw	ra, fuckLLVM_w
	lw	ra, fuckLLVM_w
	addi	t0, ra, 1
	la	ra, fuckLLVM_w
	sw	t0, 0(ra)
	lw	ra, fuckLLVM_w
	addi	t0, ra, 1
	la	ra, fuckLLVM_w
	sw	t0, 0(ra)
	lw	ra, fuckLLVM_w
	lw	ra, fuckLLVM_w
	addi	t0, ra, 1
	la	ra, fuckLLVM_w
	sw	t0, 0(ra)
	lw	ra, fuckLLVM_w
	addi	ra, ra, 1
	la	t0, fuckLLVM_w
	sw	ra, 0(t0)
	lw	ra, fuckLLVM_w
	lw	ra, fuckLLVM_w
	addi	ra, ra, 1
	la	t0, fuckLLVM_w
	sw	ra, 0(t0)
	lw	ra, fuckLLVM_w
	addi	ra, ra, 1
	la	t0, fuckLLVM_w
	sw	ra, 0(t0)
	lw	ra, fuckLLVM_w
	lw	ra, fuckLLVM_w
	addi	t0, ra, 1
	la	ra, fuckLLVM_w
	sw	t0, 0(ra)
	lw	ra, fuckLLVM_w
	addi	t0, ra, 1
	la	ra, fuckLLVM_w
	sw	t0, 0(ra)
	lw	ra, fuckLLVM_w
	lw	ra, fuckLLVM_w
	addi	t0, ra, 1
	la	ra, fuckLLVM_w
	sw	t0, 0(ra)
	lw	ra, fuckLLVM_w
	addi	t0, ra, 1
	la	ra, fuckLLVM_w
	sw	t0, 0(ra)
	lw	ra, fuckLLVM_w
	lw	ra, fuckLLVM_w
	addi	ra, ra, 1
	la	t0, fuckLLVM_w
	sw	ra, 0(t0)
	lw	ra, fuckLLVM_w
	addi	t0, ra, 1
	la	ra, fuckLLVM_w
	sw	t0, 0(ra)
	lw	ra, fuckLLVM_w
	lw	ra, fuckLLVM_w
	addi	t0, ra, 1
	la	ra, fuckLLVM_w
	sw	t0, 0(ra)
	lw	ra, fuckLLVM_w
	addi	t0, ra, 1
	la	ra, fuckLLVM_w
	sw	t0, 0(ra)
	lw	ra, fuckLLVM_w
	lw	ra, fuckLLVM_w
	addi	ra, ra, 1
	la	t0, fuckLLVM_w
	sw	ra, 0(t0)
	lw	ra, fuckLLVM_w
	addi	t0, ra, 1
	la	ra, fuckLLVM_w
	sw	t0, 0(ra)
	lw	ra, fuckLLVM_w
	lw	ra, fuckLLVM_w
	addi	ra, ra, 1
	la	t0, fuckLLVM_w
	sw	ra, 0(t0)
	lw	ra, fuckLLVM_w
	addi	ra, ra, 1
	la	t0, fuckLLVM_w
	sw	ra, 0(t0)
	lw	ra, fuckLLVM_w
	lw	ra, fuckLLVM_w
	addi	ra, ra, 1
	la	t0, fuckLLVM_w
	sw	ra, 0(t0)
	lw	ra, fuckLLVM_w
	addi	t0, ra, 1
	la	ra, fuckLLVM_w
	sw	t0, 0(ra)
	lw	ra, fuckLLVM_w
	lw	ra, fuckLLVM_w
	addi	ra, ra, 1
	la	t0, fuckLLVM_w
	sw	ra, 0(t0)
	lw	ra, fuckLLVM_w
	addi	t0, ra, 1
	la	ra, fuckLLVM_w
	sw	t0, 0(ra)
	lw	ra, fuckLLVM_w
	lw	ra, fuckLLVM_w
	addi	t0, ra, 1
	la	ra, fuckLLVM_w
	sw	t0, 0(ra)
	lw	ra, fuckLLVM_w
	addi	ra, ra, 1
	la	t0, fuckLLVM_w
	sw	ra, 0(t0)
	lw	ra, fuckLLVM_w
	lw	ra, fuckLLVM_w
	addi	t0, ra, 1
	la	ra, fuckLLVM_w
	sw	t0, 0(ra)
	lw	ra, fuckLLVM_w
	addi	ra, ra, 1
	la	t0, fuckLLVM_w
	sw	ra, 0(t0)
	lw	ra, fuckLLVM_w
	lw	ra, fuckLLVM_w
	addi	t0, ra, 1
	la	ra, fuckLLVM_w
	sw	t0, 0(ra)
	lw	ra, fuckLLVM_w
	addi	ra, ra, 1
	la	t0, fuckLLVM_w
	sw	ra, 0(t0)
	lw	ra, fuckLLVM_w
	lw	ra, fuckLLVM_w
	addi	t0, ra, 1
	la	ra, fuckLLVM_w
	sw	t0, 0(ra)
	lw	ra, fuckLLVM_w
	addi	t0, ra, 1
	la	ra, fuckLLVM_w
	sw	t0, 0(ra)
	lw	ra, fuckLLVM_w
	lw	ra, fuckLLVM_w
	addi	ra, ra, 1
	la	t0, fuckLLVM_w
	sw	ra, 0(t0)
	lw	ra, fuckLLVM_w
	addi	t0, ra, 1
	la	ra, fuckLLVM_w
	sw	t0, 0(ra)
	lw	ra, fuckLLVM_w
	lw	ra, fuckLLVM_w
	addi	ra, ra, 1
	la	t0, fuckLLVM_w
	sw	ra, 0(t0)
	lw	ra, fuckLLVM_w
	addi	t0, ra, 1
	la	ra, fuckLLVM_w
	sw	t0, 0(ra)
	lw	ra, fuckLLVM_w
	lw	ra, fuckLLVM_w
	addi	t0, ra, 1
	la	ra, fuckLLVM_w
	sw	t0, 0(ra)
	lw	ra, fuckLLVM_w
	addi	ra, ra, 1
	la	t0, fuckLLVM_w
	sw	ra, 0(t0)
	lw	ra, fuckLLVM_w
	lw	ra, fuckLLVM_w
	addi	ra, ra, 1
	la	t0, fuckLLVM_w
	sw	ra, 0(t0)
	lw	ra, fuckLLVM_w
	addi	t0, ra, 1
	la	ra, fuckLLVM_w
	sw	t0, 0(ra)
	lw	ra, fuckLLVM_w
	lw	ra, fuckLLVM_w
	addi	ra, ra, 1
	la	t0, fuckLLVM_w
	sw	ra, 0(t0)
	lw	ra, fuckLLVM_w
	addi	t0, ra, 1
	la	ra, fuckLLVM_w
	sw	t0, 0(ra)
	lw	ra, fuckLLVM_w
	lw	ra, fuckLLVM_w
	addi	t0, ra, 1
	la	ra, fuckLLVM_w
	sw	t0, 0(ra)
	lw	ra, fuckLLVM_w
	addi	ra, ra, 1
	la	t0, fuckLLVM_w
	sw	ra, 0(t0)
	lw	ra, fuckLLVM_w
	lw	ra, fuckLLVM_w
	addi	ra, ra, 1
	la	t0, fuckLLVM_w
	sw	ra, 0(t0)
	lw	ra, fuckLLVM_w
	addi	t0, ra, 1
	la	ra, fuckLLVM_w
	sw	t0, 0(ra)
	lw	ra, fuckLLVM_w
	lw	ra, fuckLLVM_w
	addi	t0, ra, 1
	la	ra, fuckLLVM_w
	sw	t0, 0(ra)
	lw	ra, fuckLLVM_w
	addi	t0, ra, 1
	la	ra, fuckLLVM_w
	sw	t0, 0(ra)
	lw	ra, fuckLLVM_w
	lw	ra, fuckLLVM_w
	addi	ra, ra, 1
	la	t0, fuckLLVM_w
	sw	ra, 0(t0)
	lw	ra, fuckLLVM_w
	addi	t0, ra, 1
	la	ra, fuckLLVM_w
	sw	t0, 0(ra)
	lw	ra, fuckLLVM_w
	lw	ra, fuckLLVM_w
	addi	t0, ra, 1
	la	ra, fuckLLVM_w
	sw	t0, 0(ra)
	lw	ra, fuckLLVM_w
	addi	t0, ra, 1
	la	ra, fuckLLVM_w
	sw	t0, 0(ra)
	lw	ra, fuckLLVM_w
	lw	ra, fuckLLVM_w
	addi	t0, ra, 1
	la	ra, fuckLLVM_w
	sw	t0, 0(ra)
	lw	ra, fuckLLVM_w
	addi	t0, ra, 1
	la	ra, fuckLLVM_w
	sw	t0, 0(ra)
	lw	ra, fuckLLVM_w
	lw	ra, fuckLLVM_w
	addi	t0, ra, 1
	la	ra, fuckLLVM_w
	sw	t0, 0(ra)
	lw	ra, fuckLLVM_w
	addi	ra, ra, 1
	la	t0, fuckLLVM_w
	sw	ra, 0(t0)
	lw	ra, fuckLLVM_w
	lw	ra, fuckLLVM_w
	addi	ra, ra, 1
	la	t0, fuckLLVM_w
	sw	ra, 0(t0)
	lw	ra, fuckLLVM_w
	addi	ra, ra, 1
	la	t0, fuckLLVM_w
	sw	ra, 0(t0)
	lw	ra, fuckLLVM_w
	lw	ra, fuckLLVM_w
	addi	ra, ra, 1
	la	t0, fuckLLVM_w
	sw	ra, 0(t0)
	lw	ra, fuckLLVM_w
	addi	ra, ra, 1
	la	t0, fuckLLVM_w
	sw	ra, 0(t0)
	lw	ra, fuckLLVM_w
	lw	ra, fuckLLVM_w
	addi	t0, ra, 1
	la	ra, fuckLLVM_w
	sw	t0, 0(ra)
	lw	ra, fuckLLVM_w
	addi	ra, ra, 1
	la	t0, fuckLLVM_w
	sw	ra, 0(t0)
	lw	ra, fuckLLVM_w
	lw	ra, fuckLLVM_w
	addi	t0, ra, 1
	la	ra, fuckLLVM_w
	sw	t0, 0(ra)
	lw	ra, fuckLLVM_w
	addi	t0, ra, 1
	la	ra, fuckLLVM_w
	sw	t0, 0(ra)
	lw	ra, fuckLLVM_w
	lw	ra, fuckLLVM_w
	addi	ra, ra, 1
	la	t0, fuckLLVM_w
	sw	ra, 0(t0)
	lw	ra, fuckLLVM_w
	addi	t0, ra, 1
	la	ra, fuckLLVM_w
	sw	t0, 0(ra)
	lw	ra, fuckLLVM_w
	lw	ra, fuckLLVM_w
	addi	t0, ra, 1
	la	ra, fuckLLVM_w
	sw	t0, 0(ra)
	lw	ra, fuckLLVM_w
	addi	t0, ra, 1
	la	ra, fuckLLVM_w
	sw	t0, 0(ra)
	lw	ra, fuckLLVM_w
	lw	ra, fuckLLVM_w
	addi	t0, ra, 1
	la	ra, fuckLLVM_w
	sw	t0, 0(ra)
	lw	ra, fuckLLVM_w
	addi	ra, ra, 1
	la	t0, fuckLLVM_w
	sw	ra, 0(t0)
	lw	ra, fuckLLVM_w
	call	bblock
	call	bblock
	j	.sanity_check_call_wP_60_wP_return
.sanity_check_call_wP_60_wP_return:
	j	.sanity_check_call_wP_60_out
.sanity_check_call_wP_60:
	li	t0, 3
	j	.sanity_check_call_wP_60_wP_ID4_for_suite
.sanity_check_return:
	li	t0, 16
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
	li	t0, 16
	sub	sp, sp, t0
	add	t1, sp, t0
	sw	ra, -4(t1)
	sw	s0, -8(t1)
	mv	s0, t1
	j	.main_entry
.main_entry:
	j	.main_call___init_61
.main_call___init_61:
	li	ra, 3
	j	.main_call_sanity_check_62_sanity_check_call_wP_60_wP_ID4_for_suite
.main_call_sanity_check_62_sanity_check_call_wP_60_out:
	addi	t0, a0, 1
	li	ra, 3
	sub	a0, t0, ra
	j	.main_return
.main_call_sanity_check_62_sanity_check_call_wP_60_wP_ID4_for_suite:
	li	t0, 1
	sra	t2, ra, t0
	li	t0, 2
	j	.main_call_sanity_check_62_sanity_check_call_wP_60_wP_ID6_for_condition
.main_call_sanity_check_62_sanity_check_call_wP_60_wP_ID6_for_condition:
	slt	t1, t0, t2
	bnez	t1, .main_call_sanity_check_62_sanity_check_call_wP_60_wP_ID6_for_suite
	j	.main_call_sanity_check_62_sanity_check_call_wP_60_wP_ID6_for_condition_mid
.main_call_sanity_check_62_sanity_check_call_wP_60_wP_ID6_for_condition_mid:
	li	t1, 1
	j	.main_call_sanity_check_62_sanity_check_call_wP_60_wP_ID6_for_out
.main_call_sanity_check_62_sanity_check_call_wP_60_wP_ID6_for_suite:
	rem	a0, ra, t0
	li	t1, 0
	xor	t1, a0, t1
	sltiu	t1, t1, 1
	bnez	t1, .main_call_sanity_check_62_sanity_check_call_wP_60_wP_ID13_if_true
	j	.main_call_sanity_check_62_sanity_check_call_wP_60_wP_ID6_for_incr
.main_call_sanity_check_62_sanity_check_call_wP_60_wP_ID13_if_true:
	addi	ra, ra, 1
	li	t1, 0
	j	.main_call_sanity_check_62_sanity_check_call_wP_60_wP_ID6_for_out
.main_call_sanity_check_62_sanity_check_call_wP_60_wP_ID6_for_incr:
	addi	t0, t0, 1
	j	.main_call_sanity_check_62_sanity_check_call_wP_60_wP_ID6_for_condition
.main_call_sanity_check_62_sanity_check_call_wP_60_wP_ID6_for_out_mid:
	li	t0, 0
	j	.main_call_sanity_check_62_sanity_check_call_wP_60_wP_ID19_AndAnd_out
.main_call_sanity_check_62_sanity_check_call_wP_60_wP_ID6_for_out:
	li	t0, 0
	slt	t0, t0, ra
	bnez	t0, .main_call_sanity_check_62_sanity_check_call_wP_60_wP_ID19_AndAnd_true
	j	.main_call_sanity_check_62_sanity_check_call_wP_60_wP_ID6_for_out_mid
.main_call_sanity_check_62_sanity_check_call_wP_60_wP_ID19_AndAnd_true:
	add	t0, ra, t1
	li	t2, 9
	rem	t2, t0, t2
	li	t0, 0
	xor	t0, t2, t0
	sltiu	t0, t0, 1
	j	.main_call_sanity_check_62_sanity_check_call_wP_60_wP_ID19_AndAnd_out
.main_call_sanity_check_62_sanity_check_call_wP_60_wP_ID19_AndAnd_out:
	bnez	t0, .main_call_sanity_check_62_sanity_check_call_wP_60_wP_ID4_for_out
	j	.main_call_sanity_check_62_sanity_check_call_wP_60_wP_ID25_if_out
.main_call_sanity_check_62_sanity_check_call_wP_60_wP_ID25_if_out:
	lw	t0, fuckLLVM_N
	add	t2, t0, t1
	la	t0, fuckLLVM_N
	sw	t2, 0(t0)
	add	ra, ra, t1
	addi	ra, ra, 1
	j	.main_call_sanity_check_62_sanity_check_call_wP_60_wP_ID4_for_suite
.main_call_sanity_check_62_sanity_check_call_wP_60_wP_ID4_for_out:
	lw	t0, fuckLLVM_N
	lw	ra, fuckLLVM_w
	addi	t1, ra, 1
	la	ra, fuckLLVM_w
	sw	t1, 0(ra)
	lw	ra, fuckLLVM_w
	addi	ra, ra, 1
	la	t1, fuckLLVM_w
	sw	ra, 0(t1)
	lw	ra, fuckLLVM_w
	lw	ra, fuckLLVM_w
	addi	ra, ra, 1
	la	t1, fuckLLVM_w
	sw	ra, 0(t1)
	lw	ra, fuckLLVM_w
	addi	ra, ra, 1
	la	t1, fuckLLVM_w
	sw	ra, 0(t1)
	lw	ra, fuckLLVM_w
	lw	ra, fuckLLVM_w
	addi	t1, ra, 1
	la	ra, fuckLLVM_w
	sw	t1, 0(ra)
	lw	ra, fuckLLVM_w
	addi	t1, ra, 1
	la	ra, fuckLLVM_w
	sw	t1, 0(ra)
	lw	ra, fuckLLVM_w
	lw	ra, fuckLLVM_w
	addi	t1, ra, 1
	la	ra, fuckLLVM_w
	sw	t1, 0(ra)
	lw	ra, fuckLLVM_w
	addi	ra, ra, 1
	la	t1, fuckLLVM_w
	sw	ra, 0(t1)
	lw	ra, fuckLLVM_w
	lw	ra, fuckLLVM_w
	addi	ra, ra, 1
	la	t1, fuckLLVM_w
	sw	ra, 0(t1)
	lw	ra, fuckLLVM_w
	addi	t1, ra, 1
	la	ra, fuckLLVM_w
	sw	t1, 0(ra)
	lw	ra, fuckLLVM_w
	lw	ra, fuckLLVM_w
	addi	t1, ra, 1
	la	ra, fuckLLVM_w
	sw	t1, 0(ra)
	lw	ra, fuckLLVM_w
	addi	ra, ra, 1
	la	t1, fuckLLVM_w
	sw	ra, 0(t1)
	lw	ra, fuckLLVM_w
	lw	ra, fuckLLVM_w
	addi	t1, ra, 1
	la	ra, fuckLLVM_w
	sw	t1, 0(ra)
	lw	ra, fuckLLVM_w
	addi	ra, ra, 1
	la	t1, fuckLLVM_w
	sw	ra, 0(t1)
	lw	ra, fuckLLVM_w
	lw	ra, fuckLLVM_w
	addi	t1, ra, 1
	la	ra, fuckLLVM_w
	sw	t1, 0(ra)
	lw	ra, fuckLLVM_w
	addi	t1, ra, 1
	la	ra, fuckLLVM_w
	sw	t1, 0(ra)
	lw	ra, fuckLLVM_w
	lw	ra, fuckLLVM_w
	addi	t1, ra, 1
	la	ra, fuckLLVM_w
	sw	t1, 0(ra)
	lw	ra, fuckLLVM_w
	addi	t1, ra, 1
	la	ra, fuckLLVM_w
	sw	t1, 0(ra)
	lw	ra, fuckLLVM_w
	lw	ra, fuckLLVM_w
	addi	ra, ra, 1
	la	t1, fuckLLVM_w
	sw	ra, 0(t1)
	lw	ra, fuckLLVM_w
	addi	t1, ra, 1
	la	ra, fuckLLVM_w
	sw	t1, 0(ra)
	lw	ra, fuckLLVM_w
	lw	ra, fuckLLVM_w
	addi	t1, ra, 1
	la	ra, fuckLLVM_w
	sw	t1, 0(ra)
	lw	ra, fuckLLVM_w
	addi	ra, ra, 1
	la	t1, fuckLLVM_w
	sw	ra, 0(t1)
	lw	ra, fuckLLVM_w
	lw	ra, fuckLLVM_w
	addi	t1, ra, 1
	la	ra, fuckLLVM_w
	sw	t1, 0(ra)
	lw	ra, fuckLLVM_w
	addi	t1, ra, 1
	la	ra, fuckLLVM_w
	sw	t1, 0(ra)
	lw	ra, fuckLLVM_w
	lw	ra, fuckLLVM_w
	addi	t1, ra, 1
	la	ra, fuckLLVM_w
	sw	t1, 0(ra)
	lw	ra, fuckLLVM_w
	addi	t1, ra, 1
	la	ra, fuckLLVM_w
	sw	t1, 0(ra)
	lw	ra, fuckLLVM_w
	lw	ra, fuckLLVM_w
	addi	ra, ra, 1
	la	t1, fuckLLVM_w
	sw	ra, 0(t1)
	lw	ra, fuckLLVM_w
	addi	t1, ra, 1
	la	ra, fuckLLVM_w
	sw	t1, 0(ra)
	lw	ra, fuckLLVM_w
	lw	ra, fuckLLVM_w
	addi	t1, ra, 1
	la	ra, fuckLLVM_w
	sw	t1, 0(ra)
	lw	ra, fuckLLVM_w
	addi	ra, ra, 1
	la	t1, fuckLLVM_w
	sw	ra, 0(t1)
	lw	ra, fuckLLVM_w
	lw	ra, fuckLLVM_w
	addi	ra, ra, 1
	la	t1, fuckLLVM_w
	sw	ra, 0(t1)
	lw	ra, fuckLLVM_w
	addi	t1, ra, 1
	la	ra, fuckLLVM_w
	sw	t1, 0(ra)
	lw	ra, fuckLLVM_w
	lw	ra, fuckLLVM_w
	addi	t1, ra, 1
	la	ra, fuckLLVM_w
	sw	t1, 0(ra)
	lw	ra, fuckLLVM_w
	addi	ra, ra, 1
	la	t1, fuckLLVM_w
	sw	ra, 0(t1)
	lw	ra, fuckLLVM_w
	lw	ra, fuckLLVM_w
	addi	ra, ra, 1
	la	t1, fuckLLVM_w
	sw	ra, 0(t1)
	lw	ra, fuckLLVM_w
	addi	ra, ra, 1
	la	t1, fuckLLVM_w
	sw	ra, 0(t1)
	lw	ra, fuckLLVM_w
	lw	ra, fuckLLVM_w
	addi	ra, ra, 1
	la	t1, fuckLLVM_w
	sw	ra, 0(t1)
	lw	ra, fuckLLVM_w
	addi	ra, ra, 1
	la	t1, fuckLLVM_w
	sw	ra, 0(t1)
	lw	ra, fuckLLVM_w
	lw	ra, fuckLLVM_w
	addi	t1, ra, 1
	la	ra, fuckLLVM_w
	sw	t1, 0(ra)
	lw	ra, fuckLLVM_w
	addi	t1, ra, 1
	la	ra, fuckLLVM_w
	sw	t1, 0(ra)
	lw	ra, fuckLLVM_w
	lw	ra, fuckLLVM_w
	addi	t1, ra, 1
	la	ra, fuckLLVM_w
	sw	t1, 0(ra)
	lw	ra, fuckLLVM_w
	addi	ra, ra, 1
	la	t1, fuckLLVM_w
	sw	ra, 0(t1)
	lw	ra, fuckLLVM_w
	lw	ra, fuckLLVM_w
	addi	ra, ra, 1
	la	t1, fuckLLVM_w
	sw	ra, 0(t1)
	lw	ra, fuckLLVM_w
	addi	ra, ra, 1
	la	t1, fuckLLVM_w
	sw	ra, 0(t1)
	lw	ra, fuckLLVM_w
	lw	ra, fuckLLVM_w
	addi	t1, ra, 1
	la	ra, fuckLLVM_w
	sw	t1, 0(ra)
	lw	ra, fuckLLVM_w
	addi	ra, ra, 1
	la	t1, fuckLLVM_w
	sw	ra, 0(t1)
	lw	ra, fuckLLVM_w
	lw	ra, fuckLLVM_w
	addi	ra, ra, 1
	la	t1, fuckLLVM_w
	sw	ra, 0(t1)
	lw	ra, fuckLLVM_w
	addi	t1, ra, 1
	la	ra, fuckLLVM_w
	sw	t1, 0(ra)
	lw	ra, fuckLLVM_w
	lw	ra, fuckLLVM_w
	addi	ra, ra, 1
	la	t1, fuckLLVM_w
	sw	ra, 0(t1)
	lw	ra, fuckLLVM_w
	addi	ra, ra, 1
	la	t1, fuckLLVM_w
	sw	ra, 0(t1)
	lw	ra, fuckLLVM_w
	lw	ra, fuckLLVM_w
	addi	ra, ra, 1
	la	t1, fuckLLVM_w
	sw	ra, 0(t1)
	lw	ra, fuckLLVM_w
	addi	t1, ra, 1
	la	ra, fuckLLVM_w
	sw	t1, 0(ra)
	lw	ra, fuckLLVM_w
	lw	ra, fuckLLVM_w
	addi	t1, ra, 1
	la	ra, fuckLLVM_w
	sw	t1, 0(ra)
	lw	ra, fuckLLVM_w
	addi	t1, ra, 1
	la	ra, fuckLLVM_w
	sw	t1, 0(ra)
	lw	ra, fuckLLVM_w
	lw	ra, fuckLLVM_w
	addi	t1, ra, 1
	la	ra, fuckLLVM_w
	sw	t1, 0(ra)
	lw	ra, fuckLLVM_w
	addi	t1, ra, 1
	la	ra, fuckLLVM_w
	sw	t1, 0(ra)
	lw	ra, fuckLLVM_w
	lw	ra, fuckLLVM_w
	addi	t1, ra, 1
	la	ra, fuckLLVM_w
	sw	t1, 0(ra)
	lw	ra, fuckLLVM_w
	addi	t1, ra, 1
	la	ra, fuckLLVM_w
	sw	t1, 0(ra)
	lw	ra, fuckLLVM_w
	lw	ra, fuckLLVM_w
	addi	t1, ra, 1
	la	ra, fuckLLVM_w
	sw	t1, 0(ra)
	lw	ra, fuckLLVM_w
	addi	ra, ra, 1
	la	t1, fuckLLVM_w
	sw	ra, 0(t1)
	lw	ra, fuckLLVM_w
	lw	ra, fuckLLVM_w
	addi	ra, ra, 1
	la	t1, fuckLLVM_w
	sw	ra, 0(t1)
	lw	ra, fuckLLVM_w
	addi	ra, ra, 1
	la	t1, fuckLLVM_w
	sw	ra, 0(t1)
	lw	ra, fuckLLVM_w
	lw	ra, fuckLLVM_w
	addi	ra, ra, 1
	la	t1, fuckLLVM_w
	sw	ra, 0(t1)
	lw	ra, fuckLLVM_w
	addi	t1, ra, 1
	la	ra, fuckLLVM_w
	sw	t1, 0(ra)
	lw	ra, fuckLLVM_w
	lw	ra, fuckLLVM_w
	addi	ra, ra, 1
	la	t1, fuckLLVM_w
	sw	ra, 0(t1)
	lw	ra, fuckLLVM_w
	addi	t1, ra, 1
	la	ra, fuckLLVM_w
	sw	t1, 0(ra)
	lw	ra, fuckLLVM_w
	lw	ra, fuckLLVM_w
	addi	ra, ra, 1
	la	t1, fuckLLVM_w
	sw	ra, 0(t1)
	lw	ra, fuckLLVM_w
	addi	t1, ra, 1
	la	ra, fuckLLVM_w
	sw	t1, 0(ra)
	lw	ra, fuckLLVM_w
	lw	ra, fuckLLVM_w
	addi	ra, ra, 1
	la	t1, fuckLLVM_w
	sw	ra, 0(t1)
	lw	ra, fuckLLVM_w
	addi	ra, ra, 1
	la	t1, fuckLLVM_w
	sw	ra, 0(t1)
	lw	ra, fuckLLVM_w
	lw	ra, fuckLLVM_w
	addi	ra, ra, 1
	la	t1, fuckLLVM_w
	sw	ra, 0(t1)
	lw	ra, fuckLLVM_w
	addi	t1, ra, 1
	la	ra, fuckLLVM_w
	sw	t1, 0(ra)
	lw	ra, fuckLLVM_w
	lw	ra, fuckLLVM_w
	addi	t1, ra, 1
	la	ra, fuckLLVM_w
	sw	t1, 0(ra)
	lw	ra, fuckLLVM_w
	addi	t1, ra, 1
	la	ra, fuckLLVM_w
	sw	t1, 0(ra)
	lw	ra, fuckLLVM_w
	lw	ra, fuckLLVM_w
	addi	t1, ra, 1
	la	ra, fuckLLVM_w
	sw	t1, 0(ra)
	lw	ra, fuckLLVM_w
	addi	t1, ra, 1
	la	ra, fuckLLVM_w
	sw	t1, 0(ra)
	lw	ra, fuckLLVM_w
	lw	ra, fuckLLVM_w
	addi	t1, ra, 1
	la	ra, fuckLLVM_w
	sw	t1, 0(ra)
	lw	ra, fuckLLVM_w
	addi	ra, ra, 1
	la	t1, fuckLLVM_w
	sw	ra, 0(t1)
	lw	ra, fuckLLVM_w
	lw	ra, fuckLLVM_w
	addi	ra, ra, 1
	la	t1, fuckLLVM_w
	sw	ra, 0(t1)
	lw	ra, fuckLLVM_w
	addi	ra, ra, 1
	la	t1, fuckLLVM_w
	sw	ra, 0(t1)
	lw	ra, fuckLLVM_w
	lw	ra, fuckLLVM_w
	addi	t1, ra, 1
	la	ra, fuckLLVM_w
	sw	t1, 0(ra)
	lw	ra, fuckLLVM_w
	addi	ra, ra, 1
	la	t1, fuckLLVM_w
	sw	ra, 0(t1)
	lw	ra, fuckLLVM_w
	lw	ra, fuckLLVM_w
	addi	ra, ra, 1
	la	t1, fuckLLVM_w
	sw	ra, 0(t1)
	lw	ra, fuckLLVM_w
	addi	ra, ra, 1
	la	t1, fuckLLVM_w
	sw	ra, 0(t1)
	lw	ra, fuckLLVM_w
	lw	ra, fuckLLVM_w
	addi	ra, ra, 1
	la	t1, fuckLLVM_w
	sw	ra, 0(t1)
	lw	ra, fuckLLVM_w
	addi	ra, ra, 1
	la	t1, fuckLLVM_w
	sw	ra, 0(t1)
	lw	ra, fuckLLVM_w
	lw	ra, fuckLLVM_w
	addi	ra, ra, 1
	la	t1, fuckLLVM_w
	sw	ra, 0(t1)
	lw	ra, fuckLLVM_w
	addi	t1, ra, 1
	la	ra, fuckLLVM_w
	sw	t1, 0(ra)
	lw	ra, fuckLLVM_w
	lw	ra, fuckLLVM_w
	addi	ra, ra, 1
	la	t1, fuckLLVM_w
	sw	ra, 0(t1)
	lw	ra, fuckLLVM_w
	addi	ra, ra, 1
	la	t1, fuckLLVM_w
	sw	ra, 0(t1)
	lw	ra, fuckLLVM_w
	lw	ra, fuckLLVM_w
	addi	ra, ra, 1
	la	t1, fuckLLVM_w
	sw	ra, 0(t1)
	lw	ra, fuckLLVM_w
	addi	t1, ra, 1
	la	ra, fuckLLVM_w
	sw	t1, 0(ra)
	lw	ra, fuckLLVM_w
	lw	ra, fuckLLVM_w
	addi	ra, ra, 1
	la	t1, fuckLLVM_w
	sw	ra, 0(t1)
	lw	ra, fuckLLVM_w
	addi	t1, ra, 1
	la	ra, fuckLLVM_w
	sw	t1, 0(ra)
	lw	ra, fuckLLVM_w
	lw	ra, fuckLLVM_w
	addi	t1, ra, 1
	la	ra, fuckLLVM_w
	sw	t1, 0(ra)
	lw	ra, fuckLLVM_w
	addi	t1, ra, 1
	la	ra, fuckLLVM_w
	sw	t1, 0(ra)
	lw	ra, fuckLLVM_w
	lw	ra, fuckLLVM_w
	addi	t1, ra, 1
	la	ra, fuckLLVM_w
	sw	t1, 0(ra)
	lw	ra, fuckLLVM_w
	addi	t1, ra, 1
	la	ra, fuckLLVM_w
	sw	t1, 0(ra)
	lw	ra, fuckLLVM_w
	lw	ra, fuckLLVM_w
	addi	t1, ra, 1
	la	ra, fuckLLVM_w
	sw	t1, 0(ra)
	lw	ra, fuckLLVM_w
	addi	t1, ra, 1
	la	ra, fuckLLVM_w
	sw	t1, 0(ra)
	lw	ra, fuckLLVM_w
	lw	ra, fuckLLVM_w
	addi	ra, ra, 1
	la	t1, fuckLLVM_w
	sw	ra, 0(t1)
	lw	ra, fuckLLVM_w
	addi	t1, ra, 1
	la	ra, fuckLLVM_w
	sw	t1, 0(ra)
	lw	ra, fuckLLVM_w
	lw	ra, fuckLLVM_w
	addi	t1, ra, 1
	la	ra, fuckLLVM_w
	sw	t1, 0(ra)
	lw	ra, fuckLLVM_w
	addi	t1, ra, 1
	la	ra, fuckLLVM_w
	sw	t1, 0(ra)
	lw	ra, fuckLLVM_w
	lw	ra, fuckLLVM_w
	addi	t1, ra, 1
	la	ra, fuckLLVM_w
	sw	t1, 0(ra)
	lw	ra, fuckLLVM_w
	addi	ra, ra, 1
	la	t1, fuckLLVM_w
	sw	ra, 0(t1)
	lw	ra, fuckLLVM_w
	lw	ra, fuckLLVM_w
	addi	t1, ra, 1
	la	ra, fuckLLVM_w
	sw	t1, 0(ra)
	lw	ra, fuckLLVM_w
	addi	t1, ra, 1
	la	ra, fuckLLVM_w
	sw	t1, 0(ra)
	lw	ra, fuckLLVM_w
	lw	ra, fuckLLVM_w
	addi	t1, ra, 1
	la	ra, fuckLLVM_w
	sw	t1, 0(ra)
	lw	ra, fuckLLVM_w
	addi	t1, ra, 1
	la	ra, fuckLLVM_w
	sw	t1, 0(ra)
	lw	ra, fuckLLVM_w
	lw	ra, fuckLLVM_w
	addi	ra, ra, 1
	la	t1, fuckLLVM_w
	sw	ra, 0(t1)
	lw	ra, fuckLLVM_w
	addi	t1, ra, 1
	la	ra, fuckLLVM_w
	sw	t1, 0(ra)
	lw	ra, fuckLLVM_w
	j	.main_call_sanity_check_62_sanity_check_call_wP_60_wP_call_wpppp_53_out
.main_call_sanity_check_62_sanity_check_call_wP_60_wP_call_wpppp_53_out:
	add	t0, t0, ra
	li	ra, 2
	rem	ra, t0, ra
	li	t0, 0
	xor	ra, ra, t0
	sltiu	ra, ra, 1
	bnez	ra, .main_call_sanity_check_62_sanity_check_call_wP_60_wP_ID38_if_true
	j	.main_call_sanity_check_62_sanity_check_call_wP_60_wP_ID38_if_out
.main_call_sanity_check_62_sanity_check_call_wP_60_wP_ID38_if_true:
	lw	a0, fuckLLVM_N
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	call	add2048
	li	ra, 524288
	sub	ra, a0, ra
	li	t0, 4
	sub	a0, ra, t0
	j	.main_call_sanity_check_62_sanity_check_call_wP_60_wP_return
.main_call_sanity_check_62_sanity_check_call_wP_60_wP_ID38_if_out:
	call	block
	call	block
	call	block
	call	block
	lw	ra, fuckLLVM_w
	addi	t0, ra, 1
	la	ra, fuckLLVM_w
	sw	t0, 0(ra)
	lw	ra, fuckLLVM_w
	addi	ra, ra, 1
	la	t0, fuckLLVM_w
	sw	ra, 0(t0)
	lw	ra, fuckLLVM_w
	lw	ra, fuckLLVM_w
	addi	t0, ra, 1
	la	ra, fuckLLVM_w
	sw	t0, 0(ra)
	lw	ra, fuckLLVM_w
	addi	t0, ra, 1
	la	ra, fuckLLVM_w
	sw	t0, 0(ra)
	lw	ra, fuckLLVM_w
	lw	ra, fuckLLVM_w
	addi	t0, ra, 1
	la	ra, fuckLLVM_w
	sw	t0, 0(ra)
	lw	ra, fuckLLVM_w
	addi	t0, ra, 1
	la	ra, fuckLLVM_w
	sw	t0, 0(ra)
	lw	ra, fuckLLVM_w
	lw	ra, fuckLLVM_w
	addi	ra, ra, 1
	la	t0, fuckLLVM_w
	sw	ra, 0(t0)
	lw	ra, fuckLLVM_w
	addi	ra, ra, 1
	la	t0, fuckLLVM_w
	sw	ra, 0(t0)
	lw	ra, fuckLLVM_w
	lw	ra, fuckLLVM_w
	addi	ra, ra, 1
	la	t0, fuckLLVM_w
	sw	ra, 0(t0)
	lw	ra, fuckLLVM_w
	addi	ra, ra, 1
	la	t0, fuckLLVM_w
	sw	ra, 0(t0)
	lw	ra, fuckLLVM_w
	lw	ra, fuckLLVM_w
	addi	t0, ra, 1
	la	ra, fuckLLVM_w
	sw	t0, 0(ra)
	lw	ra, fuckLLVM_w
	addi	t0, ra, 1
	la	ra, fuckLLVM_w
	sw	t0, 0(ra)
	lw	ra, fuckLLVM_w
	lw	ra, fuckLLVM_w
	addi	t0, ra, 1
	la	ra, fuckLLVM_w
	sw	t0, 0(ra)
	lw	ra, fuckLLVM_w
	addi	ra, ra, 1
	la	t0, fuckLLVM_w
	sw	ra, 0(t0)
	lw	ra, fuckLLVM_w
	lw	ra, fuckLLVM_w
	addi	t0, ra, 1
	la	ra, fuckLLVM_w
	sw	t0, 0(ra)
	lw	ra, fuckLLVM_w
	addi	t0, ra, 1
	la	ra, fuckLLVM_w
	sw	t0, 0(ra)
	lw	ra, fuckLLVM_w
	lw	ra, fuckLLVM_w
	addi	ra, ra, 1
	la	t0, fuckLLVM_w
	sw	ra, 0(t0)
	lw	ra, fuckLLVM_w
	addi	ra, ra, 1
	la	t0, fuckLLVM_w
	sw	ra, 0(t0)
	lw	ra, fuckLLVM_w
	lw	ra, fuckLLVM_w
	addi	t0, ra, 1
	la	ra, fuckLLVM_w
	sw	t0, 0(ra)
	lw	ra, fuckLLVM_w
	addi	t0, ra, 1
	la	ra, fuckLLVM_w
	sw	t0, 0(ra)
	lw	ra, fuckLLVM_w
	lw	ra, fuckLLVM_w
	addi	ra, ra, 1
	la	t0, fuckLLVM_w
	sw	ra, 0(t0)
	lw	ra, fuckLLVM_w
	addi	ra, ra, 1
	la	t0, fuckLLVM_w
	sw	ra, 0(t0)
	lw	ra, fuckLLVM_w
	lw	ra, fuckLLVM_w
	addi	t0, ra, 1
	la	ra, fuckLLVM_w
	sw	t0, 0(ra)
	lw	ra, fuckLLVM_w
	addi	ra, ra, 1
	la	t0, fuckLLVM_w
	sw	ra, 0(t0)
	lw	ra, fuckLLVM_w
	lw	ra, fuckLLVM_w
	addi	t0, ra, 1
	la	ra, fuckLLVM_w
	sw	t0, 0(ra)
	lw	ra, fuckLLVM_w
	addi	ra, ra, 1
	la	t0, fuckLLVM_w
	sw	ra, 0(t0)
	lw	ra, fuckLLVM_w
	lw	ra, fuckLLVM_w
	addi	ra, ra, 1
	la	t0, fuckLLVM_w
	sw	ra, 0(t0)
	lw	ra, fuckLLVM_w
	addi	t0, ra, 1
	la	ra, fuckLLVM_w
	sw	t0, 0(ra)
	lw	ra, fuckLLVM_w
	lw	ra, fuckLLVM_w
	addi	ra, ra, 1
	la	t0, fuckLLVM_w
	sw	ra, 0(t0)
	lw	ra, fuckLLVM_w
	addi	t0, ra, 1
	la	ra, fuckLLVM_w
	sw	t0, 0(ra)
	lw	ra, fuckLLVM_w
	lw	ra, fuckLLVM_w
	addi	ra, ra, 1
	la	t0, fuckLLVM_w
	sw	ra, 0(t0)
	lw	ra, fuckLLVM_w
	addi	ra, ra, 1
	la	t0, fuckLLVM_w
	sw	ra, 0(t0)
	lw	ra, fuckLLVM_w
	lw	ra, fuckLLVM_w
	addi	ra, ra, 1
	la	t0, fuckLLVM_w
	sw	ra, 0(t0)
	lw	ra, fuckLLVM_w
	addi	ra, ra, 1
	la	t0, fuckLLVM_w
	sw	ra, 0(t0)
	lw	ra, fuckLLVM_w
	lw	ra, fuckLLVM_w
	addi	ra, ra, 1
	la	t0, fuckLLVM_w
	sw	ra, 0(t0)
	lw	ra, fuckLLVM_w
	addi	ra, ra, 1
	la	t0, fuckLLVM_w
	sw	ra, 0(t0)
	lw	ra, fuckLLVM_w
	lw	ra, fuckLLVM_w
	addi	t0, ra, 1
	la	ra, fuckLLVM_w
	sw	t0, 0(ra)
	lw	ra, fuckLLVM_w
	addi	ra, ra, 1
	la	t0, fuckLLVM_w
	sw	ra, 0(t0)
	lw	ra, fuckLLVM_w
	lw	ra, fuckLLVM_w
	addi	t0, ra, 1
	la	ra, fuckLLVM_w
	sw	t0, 0(ra)
	lw	ra, fuckLLVM_w
	addi	ra, ra, 1
	la	t0, fuckLLVM_w
	sw	ra, 0(t0)
	lw	ra, fuckLLVM_w
	lw	ra, fuckLLVM_w
	addi	ra, ra, 1
	la	t0, fuckLLVM_w
	sw	ra, 0(t0)
	lw	ra, fuckLLVM_w
	addi	ra, ra, 1
	la	t0, fuckLLVM_w
	sw	ra, 0(t0)
	lw	ra, fuckLLVM_w
	lw	ra, fuckLLVM_w
	addi	t0, ra, 1
	la	ra, fuckLLVM_w
	sw	t0, 0(ra)
	lw	ra, fuckLLVM_w
	addi	ra, ra, 1
	la	t0, fuckLLVM_w
	sw	ra, 0(t0)
	lw	ra, fuckLLVM_w
	lw	ra, fuckLLVM_w
	addi	ra, ra, 1
	la	t0, fuckLLVM_w
	sw	ra, 0(t0)
	lw	ra, fuckLLVM_w
	addi	ra, ra, 1
	la	t0, fuckLLVM_w
	sw	ra, 0(t0)
	lw	ra, fuckLLVM_w
	lw	ra, fuckLLVM_w
	addi	ra, ra, 1
	la	t0, fuckLLVM_w
	sw	ra, 0(t0)
	lw	ra, fuckLLVM_w
	addi	ra, ra, 1
	la	t0, fuckLLVM_w
	sw	ra, 0(t0)
	lw	ra, fuckLLVM_w
	lw	ra, fuckLLVM_w
	addi	ra, ra, 1
	la	t0, fuckLLVM_w
	sw	ra, 0(t0)
	lw	ra, fuckLLVM_w
	addi	ra, ra, 1
	la	t0, fuckLLVM_w
	sw	ra, 0(t0)
	lw	ra, fuckLLVM_w
	lw	ra, fuckLLVM_w
	addi	t0, ra, 1
	la	ra, fuckLLVM_w
	sw	t0, 0(ra)
	lw	ra, fuckLLVM_w
	addi	ra, ra, 1
	la	t0, fuckLLVM_w
	sw	ra, 0(t0)
	lw	ra, fuckLLVM_w
	lw	ra, fuckLLVM_w
	addi	t0, ra, 1
	la	ra, fuckLLVM_w
	sw	t0, 0(ra)
	lw	ra, fuckLLVM_w
	addi	ra, ra, 1
	la	t0, fuckLLVM_w
	sw	ra, 0(t0)
	lw	ra, fuckLLVM_w
	lw	ra, fuckLLVM_w
	addi	ra, ra, 1
	la	t0, fuckLLVM_w
	sw	ra, 0(t0)
	lw	ra, fuckLLVM_w
	addi	ra, ra, 1
	la	t0, fuckLLVM_w
	sw	ra, 0(t0)
	lw	ra, fuckLLVM_w
	lw	ra, fuckLLVM_w
	addi	t0, ra, 1
	la	ra, fuckLLVM_w
	sw	t0, 0(ra)
	lw	ra, fuckLLVM_w
	addi	ra, ra, 1
	la	t0, fuckLLVM_w
	sw	ra, 0(t0)
	lw	ra, fuckLLVM_w
	lw	ra, fuckLLVM_w
	addi	ra, ra, 1
	la	t0, fuckLLVM_w
	sw	ra, 0(t0)
	lw	ra, fuckLLVM_w
	addi	t0, ra, 1
	la	ra, fuckLLVM_w
	sw	t0, 0(ra)
	lw	ra, fuckLLVM_w
	lw	ra, fuckLLVM_w
	addi	t0, ra, 1
	la	ra, fuckLLVM_w
	sw	t0, 0(ra)
	lw	ra, fuckLLVM_w
	addi	t0, ra, 1
	la	ra, fuckLLVM_w
	sw	t0, 0(ra)
	lw	ra, fuckLLVM_w
	lw	ra, fuckLLVM_w
	addi	ra, ra, 1
	la	t0, fuckLLVM_w
	sw	ra, 0(t0)
	lw	ra, fuckLLVM_w
	addi	t0, ra, 1
	la	ra, fuckLLVM_w
	sw	t0, 0(ra)
	lw	ra, fuckLLVM_w
	lw	ra, fuckLLVM_w
	addi	t0, ra, 1
	la	ra, fuckLLVM_w
	sw	t0, 0(ra)
	lw	ra, fuckLLVM_w
	addi	ra, ra, 1
	la	t0, fuckLLVM_w
	sw	ra, 0(t0)
	lw	ra, fuckLLVM_w
	lw	ra, fuckLLVM_w
	addi	t0, ra, 1
	la	ra, fuckLLVM_w
	sw	t0, 0(ra)
	lw	ra, fuckLLVM_w
	addi	t0, ra, 1
	la	ra, fuckLLVM_w
	sw	t0, 0(ra)
	lw	ra, fuckLLVM_w
	lw	ra, fuckLLVM_w
	addi	t0, ra, 1
	la	ra, fuckLLVM_w
	sw	t0, 0(ra)
	lw	ra, fuckLLVM_w
	addi	t0, ra, 1
	la	ra, fuckLLVM_w
	sw	t0, 0(ra)
	lw	ra, fuckLLVM_w
	lw	ra, fuckLLVM_w
	addi	t0, ra, 1
	la	ra, fuckLLVM_w
	sw	t0, 0(ra)
	lw	ra, fuckLLVM_w
	addi	ra, ra, 1
	la	t0, fuckLLVM_w
	sw	ra, 0(t0)
	lw	ra, fuckLLVM_w
	lw	ra, fuckLLVM_w
	addi	ra, ra, 1
	la	t0, fuckLLVM_w
	sw	ra, 0(t0)
	lw	ra, fuckLLVM_w
	addi	t0, ra, 1
	la	ra, fuckLLVM_w
	sw	t0, 0(ra)
	lw	ra, fuckLLVM_w
	lw	ra, fuckLLVM_w
	addi	t0, ra, 1
	la	ra, fuckLLVM_w
	sw	t0, 0(ra)
	lw	ra, fuckLLVM_w
	addi	ra, ra, 1
	la	t0, fuckLLVM_w
	sw	ra, 0(t0)
	lw	ra, fuckLLVM_w
	lw	ra, fuckLLVM_w
	addi	t0, ra, 1
	la	ra, fuckLLVM_w
	sw	t0, 0(ra)
	lw	ra, fuckLLVM_w
	addi	t0, ra, 1
	la	ra, fuckLLVM_w
	sw	t0, 0(ra)
	lw	ra, fuckLLVM_w
	lw	ra, fuckLLVM_w
	addi	t0, ra, 1
	la	ra, fuckLLVM_w
	sw	t0, 0(ra)
	lw	ra, fuckLLVM_w
	addi	t0, ra, 1
	la	ra, fuckLLVM_w
	sw	t0, 0(ra)
	lw	ra, fuckLLVM_w
	lw	ra, fuckLLVM_w
	addi	t0, ra, 1
	la	ra, fuckLLVM_w
	sw	t0, 0(ra)
	lw	ra, fuckLLVM_w
	addi	t0, ra, 1
	la	ra, fuckLLVM_w
	sw	t0, 0(ra)
	lw	ra, fuckLLVM_w
	lw	ra, fuckLLVM_w
	addi	ra, ra, 1
	la	t0, fuckLLVM_w
	sw	ra, 0(t0)
	lw	ra, fuckLLVM_w
	addi	ra, ra, 1
	la	t0, fuckLLVM_w
	sw	ra, 0(t0)
	lw	ra, fuckLLVM_w
	lw	ra, fuckLLVM_w
	addi	t0, ra, 1
	la	ra, fuckLLVM_w
	sw	t0, 0(ra)
	lw	ra, fuckLLVM_w
	addi	t0, ra, 1
	la	ra, fuckLLVM_w
	sw	t0, 0(ra)
	lw	ra, fuckLLVM_w
	lw	ra, fuckLLVM_w
	addi	t0, ra, 1
	la	ra, fuckLLVM_w
	sw	t0, 0(ra)
	lw	ra, fuckLLVM_w
	addi	t0, ra, 1
	la	ra, fuckLLVM_w
	sw	t0, 0(ra)
	lw	ra, fuckLLVM_w
	lw	ra, fuckLLVM_w
	addi	t0, ra, 1
	la	ra, fuckLLVM_w
	sw	t0, 0(ra)
	lw	ra, fuckLLVM_w
	addi	ra, ra, 1
	la	t0, fuckLLVM_w
	sw	ra, 0(t0)
	lw	ra, fuckLLVM_w
	lw	ra, fuckLLVM_w
	addi	t0, ra, 1
	la	ra, fuckLLVM_w
	sw	t0, 0(ra)
	lw	ra, fuckLLVM_w
	addi	ra, ra, 1
	la	t0, fuckLLVM_w
	sw	ra, 0(t0)
	lw	ra, fuckLLVM_w
	lw	ra, fuckLLVM_w
	addi	t0, ra, 1
	la	ra, fuckLLVM_w
	sw	t0, 0(ra)
	lw	ra, fuckLLVM_w
	addi	t0, ra, 1
	la	ra, fuckLLVM_w
	sw	t0, 0(ra)
	lw	ra, fuckLLVM_w
	lw	ra, fuckLLVM_w
	addi	ra, ra, 1
	la	t0, fuckLLVM_w
	sw	ra, 0(t0)
	lw	ra, fuckLLVM_w
	addi	ra, ra, 1
	la	t0, fuckLLVM_w
	sw	ra, 0(t0)
	lw	ra, fuckLLVM_w
	lw	ra, fuckLLVM_w
	addi	ra, ra, 1
	la	t0, fuckLLVM_w
	sw	ra, 0(t0)
	lw	ra, fuckLLVM_w
	addi	ra, ra, 1
	la	t0, fuckLLVM_w
	sw	ra, 0(t0)
	lw	ra, fuckLLVM_w
	lw	ra, fuckLLVM_w
	addi	ra, ra, 1
	la	t0, fuckLLVM_w
	sw	ra, 0(t0)
	lw	ra, fuckLLVM_w
	addi	ra, ra, 1
	la	t0, fuckLLVM_w
	sw	ra, 0(t0)
	lw	ra, fuckLLVM_w
	lw	ra, fuckLLVM_w
	addi	ra, ra, 1
	la	t0, fuckLLVM_w
	sw	ra, 0(t0)
	lw	ra, fuckLLVM_w
	addi	t0, ra, 1
	la	ra, fuckLLVM_w
	sw	t0, 0(ra)
	lw	ra, fuckLLVM_w
	lw	ra, fuckLLVM_w
	addi	ra, ra, 1
	la	t0, fuckLLVM_w
	sw	ra, 0(t0)
	lw	ra, fuckLLVM_w
	addi	ra, ra, 1
	la	t0, fuckLLVM_w
	sw	ra, 0(t0)
	lw	ra, fuckLLVM_w
	lw	ra, fuckLLVM_w
	addi	t0, ra, 1
	la	ra, fuckLLVM_w
	sw	t0, 0(ra)
	lw	ra, fuckLLVM_w
	addi	ra, ra, 1
	la	t0, fuckLLVM_w
	sw	ra, 0(t0)
	lw	ra, fuckLLVM_w
	lw	ra, fuckLLVM_w
	addi	t0, ra, 1
	la	ra, fuckLLVM_w
	sw	t0, 0(ra)
	lw	ra, fuckLLVM_w
	addi	ra, ra, 1
	la	t0, fuckLLVM_w
	sw	ra, 0(t0)
	lw	ra, fuckLLVM_w
	lw	ra, fuckLLVM_w
	addi	t0, ra, 1
	la	ra, fuckLLVM_w
	sw	t0, 0(ra)
	lw	ra, fuckLLVM_w
	addi	t0, ra, 1
	la	ra, fuckLLVM_w
	sw	t0, 0(ra)
	lw	ra, fuckLLVM_w
	lw	ra, fuckLLVM_w
	addi	t0, ra, 1
	la	ra, fuckLLVM_w
	sw	t0, 0(ra)
	lw	ra, fuckLLVM_w
	addi	t0, ra, 1
	la	ra, fuckLLVM_w
	sw	t0, 0(ra)
	lw	ra, fuckLLVM_w
	lw	ra, fuckLLVM_w
	addi	t0, ra, 1
	la	ra, fuckLLVM_w
	sw	t0, 0(ra)
	lw	ra, fuckLLVM_w
	addi	t0, ra, 1
	la	ra, fuckLLVM_w
	sw	t0, 0(ra)
	lw	ra, fuckLLVM_w
	lw	ra, fuckLLVM_w
	addi	ra, ra, 1
	la	t0, fuckLLVM_w
	sw	ra, 0(t0)
	lw	ra, fuckLLVM_w
	addi	t0, ra, 1
	la	ra, fuckLLVM_w
	sw	t0, 0(ra)
	lw	ra, fuckLLVM_w
	lw	ra, fuckLLVM_w
	addi	ra, ra, 1
	la	t0, fuckLLVM_w
	sw	ra, 0(t0)
	lw	ra, fuckLLVM_w
	addi	ra, ra, 1
	la	t0, fuckLLVM_w
	sw	ra, 0(t0)
	lw	ra, fuckLLVM_w
	lw	ra, fuckLLVM_w
	addi	t0, ra, 1
	la	ra, fuckLLVM_w
	sw	t0, 0(ra)
	lw	ra, fuckLLVM_w
	addi	ra, ra, 1
	la	t0, fuckLLVM_w
	sw	ra, 0(t0)
	lw	ra, fuckLLVM_w
	lw	ra, fuckLLVM_w
	addi	ra, ra, 1
	la	t0, fuckLLVM_w
	sw	ra, 0(t0)
	lw	ra, fuckLLVM_w
	addi	ra, ra, 1
	la	t0, fuckLLVM_w
	sw	ra, 0(t0)
	lw	ra, fuckLLVM_w
	lw	ra, fuckLLVM_w
	addi	t0, ra, 1
	la	ra, fuckLLVM_w
	sw	t0, 0(ra)
	lw	ra, fuckLLVM_w
	addi	t0, ra, 1
	la	ra, fuckLLVM_w
	sw	t0, 0(ra)
	lw	ra, fuckLLVM_w
	lw	ra, fuckLLVM_w
	addi	t0, ra, 1
	la	ra, fuckLLVM_w
	sw	t0, 0(ra)
	lw	ra, fuckLLVM_w
	addi	t0, ra, 1
	la	ra, fuckLLVM_w
	sw	t0, 0(ra)
	lw	ra, fuckLLVM_w
	lw	ra, fuckLLVM_w
	addi	ra, ra, 1
	la	t0, fuckLLVM_w
	sw	ra, 0(t0)
	lw	ra, fuckLLVM_w
	addi	ra, ra, 1
	la	t0, fuckLLVM_w
	sw	ra, 0(t0)
	lw	ra, fuckLLVM_w
	lw	ra, fuckLLVM_w
	addi	ra, ra, 1
	la	t0, fuckLLVM_w
	sw	ra, 0(t0)
	lw	ra, fuckLLVM_w
	addi	t0, ra, 1
	la	ra, fuckLLVM_w
	sw	t0, 0(ra)
	lw	ra, fuckLLVM_w
	lw	ra, fuckLLVM_w
	addi	t0, ra, 1
	la	ra, fuckLLVM_w
	sw	t0, 0(ra)
	lw	ra, fuckLLVM_w
	addi	ra, ra, 1
	la	t0, fuckLLVM_w
	sw	ra, 0(t0)
	lw	ra, fuckLLVM_w
	lw	ra, fuckLLVM_w
	addi	ra, ra, 1
	la	t0, fuckLLVM_w
	sw	ra, 0(t0)
	lw	ra, fuckLLVM_w
	addi	t0, ra, 1
	la	ra, fuckLLVM_w
	sw	t0, 0(ra)
	lw	ra, fuckLLVM_w
	lw	ra, fuckLLVM_w
	addi	ra, ra, 1
	la	t0, fuckLLVM_w
	sw	ra, 0(t0)
	lw	ra, fuckLLVM_w
	addi	ra, ra, 1
	la	t0, fuckLLVM_w
	sw	ra, 0(t0)
	lw	ra, fuckLLVM_w
	lw	ra, fuckLLVM_w
	addi	t0, ra, 1
	la	ra, fuckLLVM_w
	sw	t0, 0(ra)
	lw	ra, fuckLLVM_w
	addi	t0, ra, 1
	la	ra, fuckLLVM_w
	sw	t0, 0(ra)
	lw	ra, fuckLLVM_w
	lw	ra, fuckLLVM_w
	addi	t0, ra, 1
	la	ra, fuckLLVM_w
	sw	t0, 0(ra)
	lw	ra, fuckLLVM_w
	addi	ra, ra, 1
	la	t0, fuckLLVM_w
	sw	ra, 0(t0)
	lw	ra, fuckLLVM_w
	lw	ra, fuckLLVM_w
	addi	ra, ra, 1
	la	t0, fuckLLVM_w
	sw	ra, 0(t0)
	lw	ra, fuckLLVM_w
	addi	t0, ra, 1
	la	ra, fuckLLVM_w
	sw	t0, 0(ra)
	lw	ra, fuckLLVM_w
	lw	ra, fuckLLVM_w
	addi	ra, ra, 1
	la	t0, fuckLLVM_w
	sw	ra, 0(t0)
	lw	ra, fuckLLVM_w
	addi	t0, ra, 1
	la	ra, fuckLLVM_w
	sw	t0, 0(ra)
	lw	ra, fuckLLVM_w
	lw	ra, fuckLLVM_w
	addi	t0, ra, 1
	la	ra, fuckLLVM_w
	sw	t0, 0(ra)
	lw	ra, fuckLLVM_w
	addi	t0, ra, 1
	la	ra, fuckLLVM_w
	sw	t0, 0(ra)
	lw	ra, fuckLLVM_w
	lw	ra, fuckLLVM_w
	addi	t0, ra, 1
	la	ra, fuckLLVM_w
	sw	t0, 0(ra)
	lw	ra, fuckLLVM_w
	addi	ra, ra, 1
	la	t0, fuckLLVM_w
	sw	ra, 0(t0)
	lw	ra, fuckLLVM_w
	lw	ra, fuckLLVM_w
	addi	ra, ra, 1
	la	t0, fuckLLVM_w
	sw	ra, 0(t0)
	lw	ra, fuckLLVM_w
	addi	ra, ra, 1
	la	t0, fuckLLVM_w
	sw	ra, 0(t0)
	lw	ra, fuckLLVM_w
	lw	ra, fuckLLVM_w
	addi	t0, ra, 1
	la	ra, fuckLLVM_w
	sw	t0, 0(ra)
	lw	ra, fuckLLVM_w
	addi	ra, ra, 1
	la	t0, fuckLLVM_w
	sw	ra, 0(t0)
	lw	ra, fuckLLVM_w
	lw	ra, fuckLLVM_w
	addi	ra, ra, 1
	la	t0, fuckLLVM_w
	sw	ra, 0(t0)
	lw	ra, fuckLLVM_w
	addi	t0, ra, 1
	la	ra, fuckLLVM_w
	sw	t0, 0(ra)
	lw	ra, fuckLLVM_w
	lw	ra, fuckLLVM_w
	addi	ra, ra, 1
	la	t0, fuckLLVM_w
	sw	ra, 0(t0)
	lw	ra, fuckLLVM_w
	addi	ra, ra, 1
	la	t0, fuckLLVM_w
	sw	ra, 0(t0)
	lw	ra, fuckLLVM_w
	lw	ra, fuckLLVM_w
	addi	ra, ra, 1
	la	t0, fuckLLVM_w
	sw	ra, 0(t0)
	lw	ra, fuckLLVM_w
	addi	t0, ra, 1
	la	ra, fuckLLVM_w
	sw	t0, 0(ra)
	lw	ra, fuckLLVM_w
	lw	ra, fuckLLVM_w
	addi	t0, ra, 1
	la	ra, fuckLLVM_w
	sw	t0, 0(ra)
	lw	ra, fuckLLVM_w
	addi	ra, ra, 1
	la	t0, fuckLLVM_w
	sw	ra, 0(t0)
	lw	ra, fuckLLVM_w
	lw	ra, fuckLLVM_w
	addi	ra, ra, 1
	la	t0, fuckLLVM_w
	sw	ra, 0(t0)
	lw	ra, fuckLLVM_w
	addi	ra, ra, 1
	la	t0, fuckLLVM_w
	sw	ra, 0(t0)
	lw	ra, fuckLLVM_w
	lw	ra, fuckLLVM_w
	addi	t0, ra, 1
	la	ra, fuckLLVM_w
	sw	t0, 0(ra)
	lw	ra, fuckLLVM_w
	addi	t0, ra, 1
	la	ra, fuckLLVM_w
	sw	t0, 0(ra)
	lw	ra, fuckLLVM_w
	lw	ra, fuckLLVM_w
	addi	ra, ra, 1
	la	t0, fuckLLVM_w
	sw	ra, 0(t0)
	lw	ra, fuckLLVM_w
	addi	t0, ra, 1
	la	ra, fuckLLVM_w
	sw	t0, 0(ra)
	lw	ra, fuckLLVM_w
	lw	ra, fuckLLVM_w
	addi	ra, ra, 1
	la	t0, fuckLLVM_w
	sw	ra, 0(t0)
	lw	ra, fuckLLVM_w
	addi	ra, ra, 1
	la	t0, fuckLLVM_w
	sw	ra, 0(t0)
	lw	ra, fuckLLVM_w
	lw	ra, fuckLLVM_w
	addi	ra, ra, 1
	la	t0, fuckLLVM_w
	sw	ra, 0(t0)
	lw	ra, fuckLLVM_w
	addi	t0, ra, 1
	la	ra, fuckLLVM_w
	sw	t0, 0(ra)
	lw	ra, fuckLLVM_w
	lw	ra, fuckLLVM_w
	addi	t0, ra, 1
	la	ra, fuckLLVM_w
	sw	t0, 0(ra)
	lw	ra, fuckLLVM_w
	addi	t0, ra, 1
	la	ra, fuckLLVM_w
	sw	t0, 0(ra)
	lw	ra, fuckLLVM_w
	lw	ra, fuckLLVM_w
	addi	ra, ra, 1
	la	t0, fuckLLVM_w
	sw	ra, 0(t0)
	lw	ra, fuckLLVM_w
	addi	t0, ra, 1
	la	ra, fuckLLVM_w
	sw	t0, 0(ra)
	lw	ra, fuckLLVM_w
	lw	ra, fuckLLVM_w
	addi	t0, ra, 1
	la	ra, fuckLLVM_w
	sw	t0, 0(ra)
	lw	ra, fuckLLVM_w
	addi	ra, ra, 1
	la	t0, fuckLLVM_w
	sw	ra, 0(t0)
	lw	ra, fuckLLVM_w
	lw	ra, fuckLLVM_w
	addi	ra, ra, 1
	la	t0, fuckLLVM_w
	sw	ra, 0(t0)
	lw	ra, fuckLLVM_w
	addi	t0, ra, 1
	la	ra, fuckLLVM_w
	sw	t0, 0(ra)
	lw	ra, fuckLLVM_w
	lw	ra, fuckLLVM_w
	addi	t0, ra, 1
	la	ra, fuckLLVM_w
	sw	t0, 0(ra)
	lw	ra, fuckLLVM_w
	addi	ra, ra, 1
	la	t0, fuckLLVM_w
	sw	ra, 0(t0)
	lw	ra, fuckLLVM_w
	lw	ra, fuckLLVM_w
	addi	t0, ra, 1
	la	ra, fuckLLVM_w
	sw	t0, 0(ra)
	lw	ra, fuckLLVM_w
	addi	t0, ra, 1
	la	ra, fuckLLVM_w
	sw	t0, 0(ra)
	lw	ra, fuckLLVM_w
	lw	ra, fuckLLVM_w
	addi	t0, ra, 1
	la	ra, fuckLLVM_w
	sw	t0, 0(ra)
	lw	ra, fuckLLVM_w
	addi	t0, ra, 1
	la	ra, fuckLLVM_w
	sw	t0, 0(ra)
	lw	ra, fuckLLVM_w
	lw	ra, fuckLLVM_w
	addi	ra, ra, 1
	la	t0, fuckLLVM_w
	sw	ra, 0(t0)
	lw	ra, fuckLLVM_w
	addi	t0, ra, 1
	la	ra, fuckLLVM_w
	sw	t0, 0(ra)
	lw	ra, fuckLLVM_w
	lw	ra, fuckLLVM_w
	addi	ra, ra, 1
	la	t0, fuckLLVM_w
	sw	ra, 0(t0)
	lw	ra, fuckLLVM_w
	addi	ra, ra, 1
	la	t0, fuckLLVM_w
	sw	ra, 0(t0)
	lw	ra, fuckLLVM_w
	lw	ra, fuckLLVM_w
	addi	ra, ra, 1
	la	t0, fuckLLVM_w
	sw	ra, 0(t0)
	lw	ra, fuckLLVM_w
	addi	t0, ra, 1
	la	ra, fuckLLVM_w
	sw	t0, 0(ra)
	lw	ra, fuckLLVM_w
	lw	ra, fuckLLVM_w
	addi	t0, ra, 1
	la	ra, fuckLLVM_w
	sw	t0, 0(ra)
	lw	ra, fuckLLVM_w
	addi	ra, ra, 1
	la	t0, fuckLLVM_w
	sw	ra, 0(t0)
	lw	ra, fuckLLVM_w
	lw	ra, fuckLLVM_w
	addi	t0, ra, 1
	la	ra, fuckLLVM_w
	sw	t0, 0(ra)
	lw	ra, fuckLLVM_w
	addi	ra, ra, 1
	la	t0, fuckLLVM_w
	sw	ra, 0(t0)
	lw	ra, fuckLLVM_w
	lw	ra, fuckLLVM_w
	addi	t0, ra, 1
	la	ra, fuckLLVM_w
	sw	t0, 0(ra)
	lw	ra, fuckLLVM_w
	addi	ra, ra, 1
	la	t0, fuckLLVM_w
	sw	ra, 0(t0)
	lw	ra, fuckLLVM_w
	lw	ra, fuckLLVM_w
	addi	ra, ra, 1
	la	t0, fuckLLVM_w
	sw	ra, 0(t0)
	lw	ra, fuckLLVM_w
	addi	ra, ra, 1
	la	t0, fuckLLVM_w
	sw	ra, 0(t0)
	lw	ra, fuckLLVM_w
	lw	ra, fuckLLVM_w
	addi	t0, ra, 1
	la	ra, fuckLLVM_w
	sw	t0, 0(ra)
	lw	ra, fuckLLVM_w
	addi	t0, ra, 1
	la	ra, fuckLLVM_w
	sw	t0, 0(ra)
	lw	ra, fuckLLVM_w
	lw	ra, fuckLLVM_w
	addi	ra, ra, 1
	la	t0, fuckLLVM_w
	sw	ra, 0(t0)
	lw	ra, fuckLLVM_w
	addi	t0, ra, 1
	la	ra, fuckLLVM_w
	sw	t0, 0(ra)
	lw	ra, fuckLLVM_w
	lw	ra, fuckLLVM_w
	addi	t0, ra, 1
	la	ra, fuckLLVM_w
	sw	t0, 0(ra)
	lw	ra, fuckLLVM_w
	addi	ra, ra, 1
	la	t0, fuckLLVM_w
	sw	ra, 0(t0)
	lw	ra, fuckLLVM_w
	lw	ra, fuckLLVM_w
	addi	ra, ra, 1
	la	t0, fuckLLVM_w
	sw	ra, 0(t0)
	lw	ra, fuckLLVM_w
	addi	ra, ra, 1
	la	t0, fuckLLVM_w
	sw	ra, 0(t0)
	lw	ra, fuckLLVM_w
	lw	ra, fuckLLVM_w
	addi	ra, ra, 1
	la	t0, fuckLLVM_w
	sw	ra, 0(t0)
	lw	ra, fuckLLVM_w
	addi	ra, ra, 1
	la	t0, fuckLLVM_w
	sw	ra, 0(t0)
	lw	ra, fuckLLVM_w
	lw	ra, fuckLLVM_w
	addi	t0, ra, 1
	la	ra, fuckLLVM_w
	sw	t0, 0(ra)
	lw	ra, fuckLLVM_w
	addi	ra, ra, 1
	la	t0, fuckLLVM_w
	sw	ra, 0(t0)
	lw	ra, fuckLLVM_w
	lw	ra, fuckLLVM_w
	addi	ra, ra, 1
	la	t0, fuckLLVM_w
	sw	ra, 0(t0)
	lw	ra, fuckLLVM_w
	addi	ra, ra, 1
	la	t0, fuckLLVM_w
	sw	ra, 0(t0)
	lw	ra, fuckLLVM_w
	lw	ra, fuckLLVM_w
	addi	t0, ra, 1
	la	ra, fuckLLVM_w
	sw	t0, 0(ra)
	lw	ra, fuckLLVM_w
	addi	t0, ra, 1
	la	ra, fuckLLVM_w
	sw	t0, 0(ra)
	lw	ra, fuckLLVM_w
	lw	ra, fuckLLVM_w
	addi	t0, ra, 1
	la	ra, fuckLLVM_w
	sw	t0, 0(ra)
	lw	ra, fuckLLVM_w
	addi	t0, ra, 1
	la	ra, fuckLLVM_w
	sw	t0, 0(ra)
	lw	ra, fuckLLVM_w
	lw	ra, fuckLLVM_w
	addi	ra, ra, 1
	la	t0, fuckLLVM_w
	sw	ra, 0(t0)
	lw	ra, fuckLLVM_w
	addi	ra, ra, 1
	la	t0, fuckLLVM_w
	sw	ra, 0(t0)
	lw	ra, fuckLLVM_w
	lw	ra, fuckLLVM_w
	addi	t0, ra, 1
	la	ra, fuckLLVM_w
	sw	t0, 0(ra)
	lw	ra, fuckLLVM_w
	addi	ra, ra, 1
	la	t0, fuckLLVM_w
	sw	ra, 0(t0)
	lw	ra, fuckLLVM_w
	lw	ra, fuckLLVM_w
	addi	t0, ra, 1
	la	ra, fuckLLVM_w
	sw	t0, 0(ra)
	lw	ra, fuckLLVM_w
	addi	t0, ra, 1
	la	ra, fuckLLVM_w
	sw	t0, 0(ra)
	lw	ra, fuckLLVM_w
	lw	ra, fuckLLVM_w
	addi	t0, ra, 1
	la	ra, fuckLLVM_w
	sw	t0, 0(ra)
	lw	ra, fuckLLVM_w
	addi	ra, ra, 1
	la	t0, fuckLLVM_w
	sw	ra, 0(t0)
	lw	ra, fuckLLVM_w
	call	bblock
	call	bblock
	j	.main_call_sanity_check_62_sanity_check_call_wP_60_wP_return
.main_call_sanity_check_62_sanity_check_call_wP_60_wP_return:
	j	.main_call_sanity_check_62_sanity_check_call_wP_60_out
.main_return:
	li	t0, 16
	add	t1, sp, t0
	lw	ra, -4(t1)
	lw	s0, -8(t1)
	add	sp, sp, t0
	ret

	.section	.sbss
	.type	fuckLLVM_w,@object
	.globl	fuckLLVM_w
	.p2align	2
fuckLLVM_w:
	.word	0
	.size	fuckLLVM_w, 8

	.section	.sbss
	.type	fuckLLVM_N,@object
	.globl	fuckLLVM_N
	.p2align	2
fuckLLVM_N:
	.word	1
	.size	fuckLLVM_N, 8

