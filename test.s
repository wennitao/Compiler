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
	li	t0, 1001
	li	t1, 4
	mul	t0, t0, t1
	li	t1, 4
	add	a0, t0, t1
	call	malloc
	li	t0, 1001
	sw	t0, 0(a0)
	li	t0, 1
	li	t1, 4
	mul	t0, t0, t1
	add	t1, a0, t0
	li	t0, 0
	sw	t1, fuckLLVM_b, t0
	li	t0, 170
	li	t1, 4
	mul	t1, t0, t1
	li	t0, 4
	add	a0, t1, t0
	call	malloc
	li	t0, 170
	sw	t0, 0(a0)
	li	t0, 1
	li	t1, 4
	mul	t0, t0, t1
	add	t1, a0, t0
	li	t0, 0
	sw	t1, fuckLLVM_prime, t0
	li	t1, 1001
	li	t0, 4
	mul	t1, t1, t0
	li	t0, 4
	add	a0, t1, t0
	call	malloc
	li	t0, 1001
	sw	t0, 0(a0)
	li	t0, 1
	li	t1, 4
	mul	t0, t0, t1
	add	t0, a0, t0
	li	t1, 0
	sw	t0, fuckLLVM_gps, t1
	li	t0, 1
	li	t1, 4
	mul	t1, t0, t1
	li	t0, 4
	add	a0, t1, t0
	call	malloc
	li	t0, 1
	sw	t0, 0(a0)
	li	t1, 1
	li	t0, 4
	mul	t0, t1, t0
	add	t1, a0, t0
	li	t0, 0
	sw	t1, fuckLLVM_tmp, t0
	j	.__init_return
.__init_return:
	li	t0, 16
	add	t1, sp, t0
	lw	ra, -4(t1)
	lw	s0, -8(t1)
	add	sp, sp, t0
	ret

	.globl	origin
	.p2align	2
	.type	origin,@function
origin:
.origin_assemblyInit:
	li	t0, 32
	sub	sp, sp, t0
	add	t1, sp, t0
	sw	ra, -4(t1)
	sw	s0, -8(t1)
	mv	s0, t1
	li	t1, -20
	add	t1, s0, t1
	sw	s4, 0(t1)
	li	t1, -16
	add	t1, s0, t1
	sw	s8, 0(t1)
	j	.origin_entry
.origin_entry:
	li	t1, -12
	add	t1, s0, t1
	sw	a0, 0(t1)
	li	t1, -12
	add	t1, s0, t1
	lw	s4, 0(t1)
	li	t1, 8
	mul	t2, s4, t1
	li	t1, 4
	add	a0, t2, t1
	call	malloc
	sw	s4, 0(a0)
	li	t2, 1
	li	t1, 4
	mul	t1, t2, t1
	add	t1, a0, t1
	li	t2, 0
	sw	t1, fuckLLVM_result, t2
	li	t1, 0
	li	t2, 0
	sw	t1, fuckLLVM_i, t2
	j	.origin_ID11_for_condition
.origin_ID11_for_condition:
	lw	t2, fuckLLVM_i
	li	t1, -12
	add	t1, s0, t1
	lw	t1, 0(t1)
	slt	t1, t2, t1
	bnez	t1, .origin_ID11_for_suite
	j	.origin_ID11_for_out
.origin_ID11_for_suite:
	lw	t2, fuckLLVM_result
	lw	a0, fuckLLVM_i
	li	t1, 8
	mul	t1, a0, t1
	add	s8, t2, t1
	li	t1, -12
	add	t1, s0, t1
	lw	s4, 0(t1)
	li	t1, 4
	mul	t1, s4, t1
	li	t2, 4
	add	a0, t1, t2
	call	malloc
	sw	s4, 0(a0)
	li	t1, 1
	li	t2, 4
	mul	t1, t1, t2
	add	t1, a0, t1
	sw	t1, 0(s8)
	li	t2, 0
	li	t1, 0
	sw	t2, fuckLLVM_j, t1
	j	.origin_ID26_for_condition
.origin_ID26_for_condition:
	lw	t2, fuckLLVM_j
	li	t1, -12
	add	t1, s0, t1
	lw	t1, 0(t1)
	slt	t1, t2, t1
	bnez	t1, .origin_ID26_for_suite
	j	.origin_ID26_for_out
.origin_ID26_for_suite:
	lw	t1, fuckLLVM_result
	lw	a0, fuckLLVM_i
	li	t2, 8
	mul	t2, a0, t2
	add	t1, t1, t2
	lw	t2, 0(t1)
	lw	t1, fuckLLVM_j
	li	a0, 4
	mul	t1, t1, a0
	add	t2, t2, t1
	li	t1, 0
	sw	t1, 0(t2)
	j	.origin_ID26_for_incr
.origin_ID26_for_incr:
	lw	t2, fuckLLVM_j
	li	t1, 1
	add	t2, t2, t1
	li	t1, 0
	sw	t2, fuckLLVM_j, t1
	j	.origin_ID26_for_condition
.origin_ID26_for_out:
	j	.origin_ID11_for_incr
.origin_ID11_for_incr:
	lw	t1, fuckLLVM_i
	li	t2, 1
	add	t2, t1, t2
	li	t1, 0
	sw	t2, fuckLLVM_i, t1
	j	.origin_ID11_for_condition
.origin_ID11_for_out:
	j	.origin_return
.origin_return:
	li	t1, -20
	add	t1, s0, t1
	lw	s4, 0(t1)
	li	t1, -16
	add	t1, s0, t1
	lw	s8, 0(t1)
	li	t0, 32
	add	t1, sp, t0
	lw	ra, -4(t1)
	lw	s0, -8(t1)
	add	sp, sp, t0
	ret

	.globl	getPrime
	.p2align	2
	.type	getPrime,@function
getPrime:
.getPrime_assemblyInit:
	li	t0, 32
	sub	sp, sp, t0
	add	t1, sp, t0
	sw	ra, -4(t1)
	sw	s0, -8(t1)
	mv	s0, t1
	j	.getPrime_entry
.getPrime_entry:
	li	t1, -12
	add	t1, s0, t1
	sw	a0, 0(t1)
	li	t1, 2
	li	t2, -16
	add	t2, s0, t2
	sw	t1, 0(t2)
	li	t1, 2
	li	t2, -20
	add	t2, s0, t2
	sw	t1, 0(t2)
	j	.getPrime_ID4_for_condition
.getPrime_ID4_for_condition:
	li	t1, -20
	add	t1, s0, t1
	lw	t1, 0(t1)
	li	t2, -12
	add	t2, s0, t2
	lw	t2, 0(t2)
	slt	t1, t2, t1
	xori	t1, t1, 1
	bnez	t1, .getPrime_ID4_for_suite
	j	.getPrime_ID4_for_out
.getPrime_ID4_for_suite:
	lw	t1, fuckLLVM_b
	li	t2, -20
	add	t2, s0, t2
	lw	t2, 0(t2)
	li	a0, 4
	mul	t2, t2, a0
	add	t1, t1, t2
	lw	t2, 0(t1)
	li	t1, 1
	xor	t1, t2, t1
	sltiu	t1, t1, 1
	bnez	t1, .getPrime_ID12_if_true
	j	.getPrime_ID12_if_out
.getPrime_ID12_if_true:
	lw	t2, fuckLLVM_tmp
	li	t1, 0
	li	a0, 4
	mul	t1, t1, a0
	add	t2, t2, t1
	lw	a0, fuckLLVM_tmp
	li	a1, 0
	li	t1, 4
	mul	t1, a1, t1
	add	t1, a0, t1
	lw	a0, 0(t1)
	li	t1, 1
	add	t1, a0, t1
	sw	t1, 0(t2)
	lw	t1, fuckLLVM_prime
	lw	t2, fuckLLVM_tmp
	li	a0, 0
	li	a1, 4
	mul	a0, a0, a1
	add	t2, t2, a0
	lw	t2, 0(t2)
	li	a0, 4
	mul	t2, t2, a0
	add	t2, t1, t2
	li	t1, -20
	add	t1, s0, t1
	lw	t1, 0(t1)
	sw	t1, 0(t2)
	lw	a0, fuckLLVM_gps
	li	t1, -20
	add	t1, s0, t1
	lw	t2, 0(t1)
	li	t1, 4
	mul	t1, t2, t1
	add	t2, a0, t1
	lw	a0, fuckLLVM_tmp
	li	a1, 0
	li	t1, 4
	mul	t1, a1, t1
	add	t1, a0, t1
	lw	t1, 0(t1)
	sw	t1, 0(t2)
	j	.getPrime_ID12_if_out
.getPrime_ID12_if_out:
	j	.getPrime_ID31_while_condition
.getPrime_ID31_while_condition:
	li	t1, -20
	add	t1, s0, t1
	lw	t2, 0(t1)
	li	t1, -16
	add	t1, s0, t1
	lw	t1, 0(t1)
	mul	t2, t2, t1
	li	t1, -12
	add	t1, s0, t1
	lw	t1, 0(t1)
	slt	t1, t1, t2
	xori	t1, t1, 1
	bnez	t1, .getPrime_ID36_while_suite
	j	.getPrime_ID36_while_out
.getPrime_ID36_while_suite:
	lw	a0, fuckLLVM_b
	li	t1, -20
	add	t1, s0, t1
	lw	t1, 0(t1)
	li	t2, -16
	add	t2, s0, t2
	lw	t2, 0(t2)
	mul	t2, t1, t2
	li	t1, 4
	mul	t1, t2, t1
	add	t1, a0, t1
	li	t2, 0
	sw	t2, 0(t1)
	li	t1, -16
	add	t1, s0, t1
	lw	t2, 0(t1)
	li	t1, 1
	add	t1, t2, t1
	li	t2, -16
	add	t2, s0, t2
	sw	t1, 0(t2)
	j	.getPrime_ID31_while_condition
.getPrime_ID36_while_out:
	li	t1, 2
	li	t2, -16
	add	t2, s0, t2
	sw	t1, 0(t2)
	j	.getPrime_ID4_for_incr
.getPrime_ID4_for_incr:
	li	t1, -20
	add	t1, s0, t1
	lw	t1, 0(t1)
	li	t2, 1
	add	t1, t1, t2
	li	t2, -20
	add	t2, s0, t2
	sw	t1, 0(t2)
	j	.getPrime_ID4_for_condition
.getPrime_ID4_for_out:
	j	.getPrime_return
.getPrime_return:
	li	t0, 32
	add	t1, sp, t0
	lw	ra, -4(t1)
	lw	s0, -8(t1)
	add	sp, sp, t0
	ret

	.globl	getResult
	.p2align	2
	.type	getResult,@function
getResult:
.getResult_assemblyInit:
	li	t0, 32
	sub	sp, sp, t0
	add	t1, sp, t0
	sw	ra, -4(t1)
	sw	s0, -8(t1)
	mv	s0, t1
	li	t1, -28
	add	t1, s0, t1
	sw	s4, 0(t1)
	j	.getResult_entry
.getResult_entry:
	li	t1, -12
	add	t1, s0, t1
	sw	a0, 0(t1)
	li	t1, -16
	add	t1, s0, t1
	sw	a1, 0(t1)
	li	t1, -20
	add	t1, s0, t1
	sw	a2, 0(t1)
	lw	t2, fuckLLVM_result
	li	t1, -16
	add	t1, s0, t1
	lw	t1, 0(t1)
	li	a0, 8
	mul	t1, t1, a0
	add	t1, t2, t1
	lw	t2, 0(t1)
	li	t1, -20
	add	t1, s0, t1
	lw	a0, 0(t1)
	li	t1, 4
	mul	t1, a0, t1
	add	t1, t2, t1
	lw	t1, 0(t1)
	li	a0, 0
	li	t2, 1
	sub	t2, a0, t2
	xor	t1, t1, t2
	sltiu	t1, t1, 1
	bnez	t1, .getResult_ID15_if_true
	j	.getResult_ID15_if_out
.getResult_ID41_if_true:
	lw	t2, fuckLLVM_result
	li	t1, -16
	add	t1, s0, t1
	lw	t1, 0(t1)
	li	a0, 8
	mul	t1, t1, a0
	add	t1, t2, t1
	lw	t2, 0(t1)
	li	t1, -20
	add	t1, s0, t1
	lw	a0, 0(t1)
	li	t1, 4
	mul	t1, a0, t1
	add	s4, t2, t1
	li	t1, -12
	add	t1, s0, t1
	lw	a0, 0(t1)
	li	t1, -20
	add	t1, s0, t1
	lw	a1, 0(t1)
	lw	a2, fuckLLVM_gps
	lw	a3, fuckLLVM_prime
	li	t1, -20
	add	t1, s0, t1
	lw	t1, 0(t1)
	li	t2, 4
	mul	t1, t1, t2
	add	t1, a3, t1
	lw	t2, 0(t1)
	li	t1, 2
	mul	a3, t2, t1
	lw	t2, fuckLLVM_prime
	li	t1, -16
	add	t1, s0, t1
	lw	a4, 0(t1)
	li	t1, 4
	mul	t1, a4, t1
	add	t1, t2, t1
	lw	t1, 0(t1)
	sub	t2, a3, t1
	li	t1, 4
	mul	t1, t2, t1
	add	t1, a2, t1
	lw	a2, 0(t1)
	call	getResult
	li	t1, 1
	add	t1, a0, t1
	sw	t1, 0(s4)
	j	.getResult_ID41_if_out
.getResult_ID41_if_out:
	j	.getResult_ID27_if_out
.getResult_ID27_if_true:
	lw	a2, fuckLLVM_b
	lw	t2, fuckLLVM_prime
	li	t1, -20
	add	t1, s0, t1
	lw	t1, 0(t1)
	li	a0, 4
	mul	t1, t1, a0
	add	t1, t2, t1
	lw	t2, 0(t1)
	li	t1, 2
	mul	t2, t2, t1
	lw	a0, fuckLLVM_prime
	li	t1, -16
	add	t1, s0, t1
	lw	t1, 0(t1)
	li	a1, 4
	mul	t1, t1, a1
	add	t1, a0, t1
	lw	t1, 0(t1)
	sub	t1, t2, t1
	li	t2, 4
	mul	t1, t1, t2
	add	t1, a2, t1
	lw	t2, 0(t1)
	li	t1, 0
	xor	t1, t2, t1
	sltiu	t1, t1, 1
	xori	t1, t1, 1
	bnez	t1, .getResult_ID41_if_true
	j	.getResult_ID41_if_out
.getResult_ID27_if_out:
	j	.getResult_ID15_if_out
.getResult_ID15_if_true:
	lw	t1, fuckLLVM_prime
	li	t2, -20
	add	t2, s0, t2
	lw	t2, 0(t2)
	li	a0, 4
	mul	t2, t2, a0
	add	t1, t1, t2
	lw	t1, 0(t1)
	li	t2, 2
	mul	a0, t1, t2
	lw	t2, fuckLLVM_prime
	li	t1, -16
	add	t1, s0, t1
	lw	t1, 0(t1)
	li	a1, 4
	mul	t1, t1, a1
	add	t1, t2, t1
	lw	t1, 0(t1)
	sub	t2, a0, t1
	li	t1, -12
	add	t1, s0, t1
	lw	t1, 0(t1)
	slt	t1, t1, t2
	xori	t1, t1, 1
	bnez	t1, .getResult_ID27_if_true
	j	.getResult_ID27_if_out
.getResult_ID15_if_out:
	lw	t2, fuckLLVM_result
	li	t1, -16
	add	t1, s0, t1
	lw	t1, 0(t1)
	li	a0, 8
	mul	t1, t1, a0
	add	t1, t2, t1
	lw	a0, 0(t1)
	li	t1, -20
	add	t1, s0, t1
	lw	t1, 0(t1)
	li	t2, 4
	mul	t1, t1, t2
	add	t1, a0, t1
	lw	a0, 0(t1)
	li	t2, 0
	li	t1, 1
	sub	t1, t2, t1
	xor	t1, a0, t1
	sltiu	t1, t1, 1
	bnez	t1, .getResult_ID73_if_true
	j	.getResult_ID73_if_out
.getResult_ID73_if_true:
	lw	t2, fuckLLVM_result
	li	t1, -16
	add	t1, s0, t1
	lw	t1, 0(t1)
	li	a0, 8
	mul	t1, t1, a0
	add	t1, t2, t1
	lw	t2, 0(t1)
	li	t1, -20
	add	t1, s0, t1
	lw	t1, 0(t1)
	li	a0, 4
	mul	t1, t1, a0
	add	t1, t2, t1
	li	t2, 1
	sw	t2, 0(t1)
	j	.getResult_ID73_if_out
.getResult_ID73_if_out:
	lw	a0, fuckLLVM_result
	li	t1, -16
	add	t1, s0, t1
	lw	t1, 0(t1)
	li	t2, 8
	mul	t1, t1, t2
	add	t1, a0, t1
	lw	t2, 0(t1)
	li	t1, -20
	add	t1, s0, t1
	lw	t1, 0(t1)
	li	a0, 4
	mul	t1, t1, a0
	add	t1, t2, t1
	lw	t1, 0(t1)
	li	t2, -24
	add	t2, s0, t2
	sw	t1, 0(t2)
	j	.getResult_return
.getResult_return:
	li	t1, -24
	add	t1, s0, t1
	lw	a0, 0(t1)
	li	t1, -28
	add	t1, s0, t1
	lw	s4, 0(t1)
	li	t0, 32
	add	t1, sp, t0
	lw	ra, -4(t1)
	lw	s0, -8(t1)
	add	sp, sp, t0
	ret

	.globl	printF
	.p2align	2
	.type	printF,@function
printF:
.printF_assemblyInit:
	li	t0, 32
	sub	sp, sp, t0
	add	t1, sp, t0
	sw	ra, -4(t1)
	sw	s0, -8(t1)
	mv	s0, t1
	j	.printF_entry
.printF_entry:
	li	t1, -12
	add	t1, s0, t1
	sw	a0, 0(t1)
	li	t1, -16
	add	t1, s0, t1
	sw	a1, 0(t1)
	li	t1, -20
	add	t1, s0, t1
	sw	a2, 0(t1)
	li	t1, -12
	add	t1, s0, t1
	lw	a0, 0(t1)
	call	toString
	call	print
	j	.printF_ID11_while_condition
.printF_ID11_while_condition:
	li	t1, -20
	add	t1, s0, t1
	lw	t2, 0(t1)
	li	t1, 0
	slt	t1, t1, t2
	bnez	t1, .printF_ID13_while_suite
	j	.printF_ID13_while_out
.printF_ID13_while_suite:
	la	a0, fuckLLVM_.str.0
	call	print
	li	t1, -16
	add	t1, s0, t1
	lw	a0, 0(t1)
	call	toString
	call	print
	li	t1, -16
	add	t1, s0, t1
	lw	t2, 0(t1)
	li	t1, 2
	mul	t2, t2, t1
	li	t1, -12
	add	t1, s0, t1
	lw	t1, 0(t1)
	sub	t2, t2, t1
	li	t1, -16
	add	t1, s0, t1
	sw	t2, 0(t1)
	li	t1, -12
	add	t1, s0, t1
	lw	t2, 0(t1)
	li	t1, -16
	add	t1, s0, t1
	lw	t1, 0(t1)
	add	t1, t2, t1
	li	t2, 2
	div	t2, t1, t2
	li	t1, -12
	add	t1, s0, t1
	sw	t2, 0(t1)
	li	t1, -20
	add	t1, s0, t1
	lw	t2, 0(t1)
	li	t1, 1
	sub	t2, t2, t1
	li	t1, -20
	add	t1, s0, t1
	sw	t2, 0(t1)
	j	.printF_ID11_while_condition
.printF_ID13_while_out:
	la	a0, fuckLLVM_.str.1
	call	print
	j	.printF_return
.printF_return:
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
	li	t0, 16
	sub	sp, sp, t0
	add	t1, sp, t0
	sw	ra, -4(t1)
	sw	s0, -8(t1)
	mv	s0, t1
	li	t1, -16
	add	t1, s0, t1
	sw	s1, 0(t1)
	j	.main_entry
.main_entry:
	call	__init
	li	t1, 0
	li	t2, -12
	add	t2, s0, t2
	sw	t1, 0(t2)
	li	a0, 170
	call	origin
	li	t1, 1000
	li	t2, 0
	sw	t1, fuckLLVM_N, t2
	call	getInt
	li	t1, 0
	sw	a0, fuckLLVM_M, t1
	li	t1, 0
	li	t2, 0
	sw	t1, fuckLLVM_primeCount, t2
	li	t1, 0
	li	t2, 0
	sw	t1, fuckLLVM_resultCount, t2
	lw	s1, fuckLLVM_tmp
	li	t2, 0
	li	t1, 4
	mul	t1, t2, t1
	add	t1, s1, t1
	li	t2, 0
	sw	t2, 0(t1)
	li	t1, 0
	li	t2, 0
	sw	t1, fuckLLVM_i, t2
	j	.main_ID4_for_condition
.main_ID4_for_condition:
	lw	t2, fuckLLVM_i
	lw	s1, fuckLLVM_N
	li	t1, 1
	add	t1, s1, t1
	slt	t1, t2, t1
	bnez	t1, .main_ID4_for_suite
	j	.main_ID4_for_out
.main_ID4_for_suite:
	lw	s1, fuckLLVM_b
	lw	t1, fuckLLVM_i
	li	t2, 4
	mul	t1, t1, t2
	add	t1, s1, t1
	li	t2, 1
	sw	t2, 0(t1)
	lw	t1, fuckLLVM_gps
	lw	s1, fuckLLVM_i
	li	t2, 4
	mul	t2, s1, t2
	add	t1, t1, t2
	li	t2, 0
	sw	t2, 0(t1)
	j	.main_ID4_for_incr
.main_ID4_for_incr:
	lw	t1, fuckLLVM_i
	li	t2, 1
	add	t2, t1, t2
	li	t1, 0
	sw	t2, fuckLLVM_i, t1
	j	.main_ID4_for_condition
.main_ID4_for_out:
	li	t2, 0
	li	t1, 0
	sw	t2, fuckLLVM_i, t1
	j	.main_ID16_for_condition
.main_ID16_for_condition:
	lw	t2, fuckLLVM_i
	lw	s1, fuckLLVM_M
	li	t1, 1
	add	t1, s1, t1
	slt	t1, t2, t1
	bnez	t1, .main_ID16_for_suite
	j	.main_ID16_for_out
.main_ID16_for_suite:
	lw	t2, fuckLLVM_prime
	lw	t1, fuckLLVM_i
	li	s1, 4
	mul	t1, t1, s1
	add	t1, t2, t1
	li	t2, 0
	sw	t2, 0(t1)
	j	.main_ID16_for_incr
.main_ID16_for_incr:
	lw	t1, fuckLLVM_i
	li	t2, 1
	add	t1, t1, t2
	li	t2, 0
	sw	t1, fuckLLVM_i, t2
	j	.main_ID16_for_condition
.main_ID16_for_out:
	li	t1, 0
	li	t2, 0
	sw	t1, fuckLLVM_i, t2
	j	.main_ID25_for_condition
.main_ID25_for_condition:
	lw	t1, fuckLLVM_i
	lw	t2, fuckLLVM_M
	slt	t1, t2, t1
	xori	t1, t1, 1
	bnez	t1, .main_ID25_for_suite
	j	.main_ID25_for_out
.main_ID25_for_suite:
	li	t2, 0
	li	t1, 0
	sw	t2, fuckLLVM_j, t1
	j	.main_ID28_for_condition
.main_ID28_for_condition:
	lw	t1, fuckLLVM_j
	lw	t2, fuckLLVM_M
	slt	t1, t2, t1
	xori	t1, t1, 1
	bnez	t1, .main_ID28_for_suite
	j	.main_ID28_for_out
.main_ID28_for_suite:
	lw	t2, fuckLLVM_result
	lw	s1, fuckLLVM_i
	li	t1, 8
	mul	t1, s1, t1
	add	t1, t2, t1
	lw	t2, 0(t1)
	lw	s1, fuckLLVM_j
	li	t1, 4
	mul	t1, s1, t1
	add	s1, t2, t1
	li	t2, 0
	li	t1, 1
	sub	t1, t2, t1
	sw	t1, 0(s1)
	j	.main_ID28_for_incr
.main_ID28_for_incr:
	lw	t2, fuckLLVM_j
	li	t1, 1
	add	t1, t2, t1
	li	t2, 0
	sw	t1, fuckLLVM_j, t2
	j	.main_ID28_for_condition
.main_ID28_for_out:
	j	.main_ID25_for_incr
.main_ID25_for_incr:
	lw	t2, fuckLLVM_i
	li	t1, 1
	add	t1, t2, t1
	li	t2, 0
	sw	t1, fuckLLVM_i, t2
	j	.main_ID25_for_condition
.main_ID25_for_out:
	lw	a0, fuckLLVM_N
	call	getPrime
	lw	t2, fuckLLVM_tmp
	li	t1, 0
	li	s1, 4
	mul	t1, t1, s1
	add	t1, t2, t1
	lw	t1, 0(t1)
	li	t2, 0
	sw	t1, fuckLLVM_primeCount, t2
	li	t1, 1
	li	t2, 0
	sw	t1, fuckLLVM_i, t2
	j	.main_ID47_for_condition
.main_ID47_for_condition:
	lw	t1, fuckLLVM_i
	lw	t2, fuckLLVM_primeCount
	slt	t1, t1, t2
	bnez	t1, .main_ID47_for_suite
	j	.main_ID47_for_out
.main_ID47_for_suite:
	lw	t2, fuckLLVM_i
	li	t1, 1
	add	t2, t2, t1
	li	t1, 0
	sw	t2, fuckLLVM_j, t1
	j	.main_ID52_for_condition
.main_ID52_for_condition:
	lw	t1, fuckLLVM_j
	lw	t2, fuckLLVM_primeCount
	slt	t1, t2, t1
	xori	t1, t1, 1
	bnez	t1, .main_ID52_for_suite
	j	.main_ID52_for_out
.main_ID52_for_suite:
	lw	t2, fuckLLVM_result
	lw	t1, fuckLLVM_i
	li	s1, 8
	mul	t1, t1, s1
	add	t1, t2, t1
	lw	t2, 0(t1)
	lw	s1, fuckLLVM_j
	li	t1, 4
	mul	t1, s1, t1
	add	t1, t2, t1
	lw	t2, 0(t1)
	li	t1, 0
	li	s1, 1
	sub	t1, t1, s1
	xor	t1, t2, t1
	sltiu	t1, t1, 1
	bnez	t1, .main_ID64_if_true
	j	.main_ID64_if_out
.main_ID82_if_true:
	lw	s1, fuckLLVM_prime
	lw	t1, fuckLLVM_i
	li	t2, 4
	mul	t1, t1, t2
	add	t1, s1, t1
	lw	a0, 0(t1)
	lw	t2, fuckLLVM_prime
	lw	t1, fuckLLVM_j
	li	s1, 4
	mul	t1, t1, s1
	add	t1, t2, t1
	lw	a1, 0(t1)
	lw	s1, fuckLLVM_result
	lw	t2, fuckLLVM_i
	li	t1, 8
	mul	t1, t2, t1
	add	t1, s1, t1
	lw	s1, 0(t1)
	lw	t1, fuckLLVM_j
	li	t2, 4
	mul	t1, t1, t2
	add	t1, s1, t1
	lw	a2, 0(t1)
	call	printF
	lw	t1, fuckLLVM_resultCount
	li	t2, 1
	add	t1, t1, t2
	li	t2, 0
	sw	t1, fuckLLVM_resultCount, t2
	j	.main_ID82_if_out
.main_ID82_if_out:
	j	.main_ID64_if_out
.main_ID64_if_true:
	lw	t2, fuckLLVM_result
	lw	s1, fuckLLVM_i
	li	t1, 8
	mul	t1, s1, t1
	add	t1, t2, t1
	lw	t2, 0(t1)
	lw	t1, fuckLLVM_j
	li	s1, 4
	mul	t1, t1, s1
	add	s1, t2, t1
	lw	a0, fuckLLVM_N
	lw	a1, fuckLLVM_i
	lw	a2, fuckLLVM_j
	call	getResult
	sw	a0, 0(s1)
	lw	t2, fuckLLVM_result
	lw	s1, fuckLLVM_i
	li	t1, 8
	mul	t1, s1, t1
	add	t1, t2, t1
	lw	t1, 0(t1)
	lw	t2, fuckLLVM_j
	li	s1, 4
	mul	t2, t2, s1
	add	t1, t1, t2
	lw	t2, 0(t1)
	li	t1, 1
	slt	t1, t1, t2
	bnez	t1, .main_ID82_if_true
	j	.main_ID82_if_out
.main_ID64_if_out:
	j	.main_ID52_for_incr
.main_ID52_for_incr:
	lw	t2, fuckLLVM_j
	li	t1, 1
	add	t2, t2, t1
	li	t1, 0
	sw	t2, fuckLLVM_j, t1
	j	.main_ID52_for_condition
.main_ID52_for_out:
	j	.main_ID47_for_incr
.main_ID47_for_incr:
	lw	t2, fuckLLVM_i
	li	t1, 1
	add	t1, t2, t1
	li	t2, 0
	sw	t1, fuckLLVM_i, t2
	j	.main_ID47_for_condition
.main_ID47_for_out:
	la	a0, fuckLLVM_.str.2
	call	print
	lw	a0, fuckLLVM_resultCount
	call	toString
	call	println
	li	t2, 0
	li	t1, -12
	add	t1, s0, t1
	sw	t2, 0(t1)
	j	.main_return
.main_return:
	li	t1, -12
	add	t1, s0, t1
	lw	a0, 0(t1)
	li	t1, -16
	add	t1, s0, t1
	lw	s1, 0(t1)
	li	t0, 16
	add	t1, sp, t0
	lw	ra, -4(t1)
	lw	s0, -8(t1)
	add	sp, sp, t0
	ret

	.section	.sbss
	.type	fuckLLVM_N,@object
	.globl	fuckLLVM_N
	.p2align	2
fuckLLVM_N:
	.word	0
	.size	fuckLLVM_N, 8

	.section	.sbss
	.type	fuckLLVM_M,@object
	.globl	fuckLLVM_M
	.p2align	2
fuckLLVM_M:
	.word	0
	.size	fuckLLVM_M, 8

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

	.section	.sbss
	.type	fuckLLVM_primeCount,@object
	.globl	fuckLLVM_primeCount
	.p2align	2
fuckLLVM_primeCount:
	.word	0
	.size	fuckLLVM_primeCount, 8

	.section	.sbss
	.type	fuckLLVM_resultCount,@object
	.globl	fuckLLVM_resultCount
	.p2align	2
fuckLLVM_resultCount:
	.word	0
	.size	fuckLLVM_resultCount, 8

	.section	.sbss
	.type	fuckLLVM_b,@object
	.globl	fuckLLVM_b
	.p2align	2
fuckLLVM_b:
	.word	0
	.size	fuckLLVM_b, 8

	.section	.sbss
	.type	fuckLLVM_prime,@object
	.globl	fuckLLVM_prime
	.p2align	2
fuckLLVM_prime:
	.word	0
	.size	fuckLLVM_prime, 8

	.section	.sbss
	.type	fuckLLVM_gps,@object
	.globl	fuckLLVM_gps
	.p2align	2
fuckLLVM_gps:
	.word	0
	.size	fuckLLVM_gps, 8

	.section	.sbss
	.type	fuckLLVM_tmp,@object
	.globl	fuckLLVM_tmp
	.p2align	2
fuckLLVM_tmp:
	.word	0
	.size	fuckLLVM_tmp, 8

	.section	.sbss
	.type	fuckLLVM_result,@object
	.globl	fuckLLVM_result
	.p2align	2
fuckLLVM_result:
	.word	0
	.size	fuckLLVM_result, 8

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

	.section	.rodata
	.type	fuckLLVM_.str.2,@object
fuckLLVM_.str.2:
	.asciz	"Total:  "
	.size	fuckLLVM_.str.2, 8

