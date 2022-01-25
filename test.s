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
.__init_entry:
	j	.__init_return
.__init_return:
	li	t0, 16
	add	t1, sp, t0
	lw	ra, -4(t1)
	lw	s0, -8(t1)
	add	sp, sp, t0
	ret

	.globl	Edge
	.p2align	2
	.type	Edge,@function
Edge:
.Edge_assemblyInit:
	li	t0, 32
	sub	sp, sp, t0
	add	t1, sp, t0
	sw	ra, -4(t1)
	sw	s0, -8(t1)
	mv	s0, t1
	mv	t1, a0
	li	t3, -16
	add	t3, s0, t3
	sw	t1, 0(t3)
.Edge:
	li	t0, -12
	li	t3, -20
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -20
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, s0, t1
	li	t3, -20
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -16
	add	t3, s0, t3
	lw	t0, 0(t3)
	li	t3, -20
	add	t3, s0, t3
	lw	t1, 0(t3)
	sw	t0, 0(t1)
	j	.Edge_return
.Edge_return:
	li	t0, 32
	add	t1, sp, t0
	lw	ra, -4(t1)
	lw	s0, -8(t1)
	add	sp, sp, t0
	ret

	.globl	qsort
	.p2align	2
	.type	qsort,@function
qsort:
.qsort_assemblyInit:
	li	t0, 672
	sub	sp, sp, t0
	add	t1, sp, t0
	sw	ra, -4(t1)
	sw	s0, -8(t1)
	mv	s0, t1
	mv	t1, a0
	li	t3, -36
	add	t3, s0, t3
	sw	t1, 0(t3)
	mv	t1, a1
	li	t3, -40
	add	t3, s0, t3
	sw	t1, 0(t3)
	mv	t1, a2
	li	t3, -44
	add	t3, s0, t3
	sw	t1, 0(t3)
.qsort_entry:
	li	t0, -12
	li	t3, -48
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -48
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, s0, t1
	li	t3, -48
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -36
	add	t3, s0, t3
	lw	t0, 0(t3)
	li	t3, -48
	add	t3, s0, t3
	lw	t1, 0(t3)
	sw	t0, 0(t1)
	li	t0, -16
	li	t3, -52
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -52
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, s0, t1
	li	t3, -52
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -40
	add	t3, s0, t3
	lw	t0, 0(t3)
	li	t3, -52
	add	t3, s0, t3
	lw	t1, 0(t3)
	sw	t0, 0(t1)
	li	t0, -20
	li	t3, -56
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -56
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, s0, t1
	li	t3, -56
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -44
	add	t3, s0, t3
	lw	t0, 0(t3)
	li	t3, -56
	add	t3, s0, t3
	lw	t1, 0(t3)
	sw	t0, 0(t1)
	li	t0, -16
	li	t3, -60
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -60
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, s0, t1
	li	t3, -60
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -60
	add	t3, s0, t3
	lw	t0, 0(t3)
	lw	t1, 0(t0)
	li	t3, -64
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t0, -20
	li	t3, -68
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -68
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, s0, t1
	li	t3, -68
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -68
	add	t3, s0, t3
	lw	t0, 0(t3)
	lw	t1, 0(t0)
	li	t3, -72
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -64
	add	t3, s0, t3
	lw	t0, 0(t3)
	li	t3, -72
	add	t3, s0, t3
	lw	t1, 0(t3)
	slt	t2, t0, t1
	li	t3, -76
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -76
	add	t3, s0, t3
	lw	t0, 0(t3)
	bnez	t0, .qsort_ID9_if_true
	j	.qsort_ID9_if_out
.qsort_ID20_while_condition:
	li	t0, -24
	li	t3, -80
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -80
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, s0, t1
	li	t3, -80
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -80
	add	t3, s0, t3
	lw	t0, 0(t3)
	lw	t1, 0(t0)
	li	t3, -84
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t0, -28
	li	t3, -88
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -88
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, s0, t1
	li	t3, -88
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -88
	add	t3, s0, t3
	lw	t0, 0(t3)
	lw	t1, 0(t0)
	li	t3, -92
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -84
	add	t3, s0, t3
	lw	t0, 0(t3)
	li	t3, -92
	add	t3, s0, t3
	lw	t1, 0(t3)
	slt	t2, t0, t1
	li	t3, -96
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -96
	add	t3, s0, t3
	lw	t0, 0(t3)
	bnez	t0, .qsort_ID23_while_suite
	j	.qsort_ID23_while_out
.qsort_ID25_AndAnd_true:
	li	t0, -12
	li	t3, -100
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -100
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, s0, t1
	li	t3, -100
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -100
	add	t3, s0, t3
	lw	t0, 0(t3)
	lw	t1, 0(t0)
	li	t3, -104
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t0, -28
	li	t3, -108
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -108
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, s0, t1
	li	t3, -108
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -108
	add	t3, s0, t3
	lw	t0, 0(t3)
	lw	t1, 0(t0)
	li	t3, -112
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t0, 12
	li	t3, -116
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -112
	add	t3, s0, t3
	lw	t0, 0(t3)
	li	t3, -116
	add	t3, s0, t3
	lw	t1, 0(t3)
	mul	t2, t0, t1
	li	t3, -120
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -104
	add	t3, s0, t3
	lw	t0, 0(t3)
	li	t3, -120
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, t0, t1
	li	t3, -124
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -124
	add	t3, s0, t3
	lw	t0, 0(t3)
	lw	t1, 0(t0)
	li	t3, -128
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -128
	add	t3, s0, t3
	lw	t0, 0(t3)
	addi	t1, t0, 8
	li	t3, -132
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -132
	add	t3, s0, t3
	lw	t0, 0(t3)
	lw	t1, 0(t0)
	li	t3, -136
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t0, -32
	li	t3, -140
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -140
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, s0, t1
	li	t3, -140
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -140
	add	t3, s0, t3
	lw	t0, 0(t3)
	lw	t1, 0(t0)
	li	t3, -144
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -144
	add	t3, s0, t3
	lw	t0, 0(t3)
	addi	t1, t0, 8
	li	t3, -148
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -148
	add	t3, s0, t3
	lw	t0, 0(t3)
	lw	t1, 0(t0)
	li	t3, -152
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -136
	add	t3, s0, t3
	lw	t0, 0(t3)
	li	t3, -152
	add	t3, s0, t3
	lw	t1, 0(t3)
	slt	t2, t0, t1
	li	t3, -156
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -156
	add	t3, s0, t3
	lw	t0, 0(t3)
	xori	t1, t0, 1
	li	t3, -156
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -156
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	t1, t0
	li	t3, -160
	add	t3, s0, t3
	sw	t1, 0(t3)
	j	.qsort_ID25_AndAnd_out
.qsort_ID25_AndAnd_out:
	li	t3, -160
	add	t3, s0, t3
	lw	t0, 0(t3)
	bnez	t0, .qsort_ID37_while_suite
	j	.qsort_ID37_while_out
.qsort_ID23_while_condition:
	li	t0, -24
	li	t3, -164
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -164
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, s0, t1
	li	t3, -164
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -164
	add	t3, s0, t3
	lw	t0, 0(t3)
	lw	t1, 0(t0)
	li	t3, -168
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t0, -28
	li	t3, -172
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -172
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, s0, t1
	li	t3, -172
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -172
	add	t3, s0, t3
	lw	t0, 0(t3)
	lw	t1, 0(t0)
	li	t3, -176
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -168
	add	t3, s0, t3
	lw	t0, 0(t3)
	li	t3, -176
	add	t3, s0, t3
	lw	t1, 0(t3)
	slt	t2, t0, t1
	li	t3, -180
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t0, 0
	li	t3, -184
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -184
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	t1, t0
	li	t3, -160
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -180
	add	t3, s0, t3
	lw	t0, 0(t3)
	bnez	t0, .qsort_ID25_AndAnd_true
	li	t3, -184
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	t1, t0
	li	t3, -160
	add	t3, s0, t3
	sw	t1, 0(t3)
	j	.qsort_ID25_AndAnd_out
.qsort_ID37_while_suite:
	li	t0, -28
	li	t3, -188
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -188
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, s0, t1
	li	t3, -188
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -188
	add	t3, s0, t3
	lw	t0, 0(t3)
	lw	t1, 0(t0)
	li	t3, -192
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t0, 1
	li	t3, -196
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -192
	add	t3, s0, t3
	lw	t0, 0(t3)
	li	t3, -196
	add	t3, s0, t3
	lw	t1, 0(t3)
	sub	t2, t0, t1
	li	t3, -200
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t0, -28
	li	t3, -204
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -204
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, s0, t1
	li	t3, -204
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -200
	add	t3, s0, t3
	lw	t0, 0(t3)
	li	t3, -204
	add	t3, s0, t3
	lw	t1, 0(t3)
	sw	t0, 0(t1)
	j	.qsort_ID23_while_condition
.qsort_ID37_while_out:
	li	t0, -24
	li	t3, -208
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -208
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, s0, t1
	li	t3, -208
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -208
	add	t3, s0, t3
	lw	t0, 0(t3)
	lw	t1, 0(t0)
	li	t3, -212
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t0, -28
	li	t3, -216
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -216
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, s0, t1
	li	t3, -216
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -216
	add	t3, s0, t3
	lw	t0, 0(t3)
	lw	t1, 0(t0)
	li	t3, -220
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -212
	add	t3, s0, t3
	lw	t0, 0(t3)
	li	t3, -220
	add	t3, s0, t3
	lw	t1, 0(t3)
	slt	t2, t0, t1
	li	t3, -224
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -224
	add	t3, s0, t3
	lw	t0, 0(t3)
	bnez	t0, .qsort_ID41_if_true
	j	.qsort_ID41_if_out
.qsort_ID41_if_true:
	li	t0, -12
	li	t3, -228
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -228
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, s0, t1
	li	t3, -228
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -228
	add	t3, s0, t3
	lw	t0, 0(t3)
	lw	t1, 0(t0)
	li	t3, -232
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t0, -24
	li	t3, -236
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -236
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, s0, t1
	li	t3, -236
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -236
	add	t3, s0, t3
	lw	t0, 0(t3)
	lw	t1, 0(t0)
	li	t3, -240
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t0, 12
	li	t3, -244
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -240
	add	t3, s0, t3
	lw	t0, 0(t3)
	li	t3, -244
	add	t3, s0, t3
	lw	t1, 0(t3)
	mul	t2, t0, t1
	li	t3, -248
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -232
	add	t3, s0, t3
	lw	t0, 0(t3)
	li	t3, -248
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, t0, t1
	li	t3, -252
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t0, -12
	li	t3, -256
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -256
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, s0, t1
	li	t3, -256
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -256
	add	t3, s0, t3
	lw	t0, 0(t3)
	lw	t1, 0(t0)
	li	t3, -260
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t0, -28
	li	t3, -264
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -264
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, s0, t1
	li	t3, -264
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -264
	add	t3, s0, t3
	lw	t0, 0(t3)
	lw	t1, 0(t0)
	li	t3, -268
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t0, 12
	li	t3, -272
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -268
	add	t3, s0, t3
	lw	t0, 0(t3)
	li	t3, -272
	add	t3, s0, t3
	lw	t1, 0(t3)
	mul	t2, t0, t1
	li	t3, -276
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -260
	add	t3, s0, t3
	lw	t0, 0(t3)
	li	t3, -276
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, t0, t1
	li	t3, -280
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -280
	add	t3, s0, t3
	lw	t0, 0(t3)
	lw	t1, 0(t0)
	li	t3, -284
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -284
	add	t3, s0, t3
	lw	t0, 0(t3)
	li	t3, -252
	add	t3, s0, t3
	lw	t1, 0(t3)
	sw	t0, 0(t1)
	li	t0, -24
	li	t3, -288
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -288
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, s0, t1
	li	t3, -288
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -288
	add	t3, s0, t3
	lw	t0, 0(t3)
	lw	t1, 0(t0)
	li	t3, -292
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t0, 1
	li	t3, -296
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -292
	add	t3, s0, t3
	lw	t0, 0(t3)
	li	t3, -296
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, t0, t1
	li	t3, -300
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t0, -24
	li	t3, -304
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -304
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, s0, t1
	li	t3, -304
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -300
	add	t3, s0, t3
	lw	t0, 0(t3)
	li	t3, -304
	add	t3, s0, t3
	lw	t1, 0(t3)
	sw	t0, 0(t1)
	j	.qsort_ID41_if_out
.qsort_ID41_if_out:
	j	.qsort_ID51_while_condition
.qsort_ID53_AndAnd_true:
	li	t0, -12
	li	t3, -308
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -308
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, s0, t1
	li	t3, -308
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -308
	add	t3, s0, t3
	lw	t0, 0(t3)
	lw	t1, 0(t0)
	li	t3, -312
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t0, -24
	li	t3, -316
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -316
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, s0, t1
	li	t3, -316
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -316
	add	t3, s0, t3
	lw	t0, 0(t3)
	lw	t1, 0(t0)
	li	t3, -320
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t0, 12
	li	t3, -324
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -320
	add	t3, s0, t3
	lw	t0, 0(t3)
	li	t3, -324
	add	t3, s0, t3
	lw	t1, 0(t3)
	mul	t2, t0, t1
	li	t3, -328
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -312
	add	t3, s0, t3
	lw	t0, 0(t3)
	li	t3, -328
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, t0, t1
	li	t3, -332
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -332
	add	t3, s0, t3
	lw	t0, 0(t3)
	lw	t1, 0(t0)
	li	t3, -336
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -336
	add	t3, s0, t3
	lw	t0, 0(t3)
	addi	t1, t0, 8
	li	t3, -340
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -340
	add	t3, s0, t3
	lw	t0, 0(t3)
	lw	t1, 0(t0)
	li	t3, -344
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t0, -32
	li	t3, -348
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -348
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, s0, t1
	li	t3, -348
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -348
	add	t3, s0, t3
	lw	t0, 0(t3)
	lw	t1, 0(t0)
	li	t3, -352
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -352
	add	t3, s0, t3
	lw	t0, 0(t3)
	addi	t1, t0, 8
	li	t3, -356
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -356
	add	t3, s0, t3
	lw	t0, 0(t3)
	lw	t1, 0(t0)
	li	t3, -360
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -344
	add	t3, s0, t3
	lw	t0, 0(t3)
	li	t3, -360
	add	t3, s0, t3
	lw	t1, 0(t3)
	slt	t2, t0, t1
	li	t3, -364
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -364
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	t1, t0
	li	t3, -368
	add	t3, s0, t3
	sw	t1, 0(t3)
	j	.qsort_ID53_AndAnd_out
.qsort_ID53_AndAnd_out:
	li	t3, -368
	add	t3, s0, t3
	lw	t0, 0(t3)
	bnez	t0, .qsort_ID65_while_suite
	j	.qsort_ID65_while_out
.qsort_ID51_while_condition:
	li	t0, -24
	li	t3, -372
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -372
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, s0, t1
	li	t3, -372
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -372
	add	t3, s0, t3
	lw	t0, 0(t3)
	lw	t1, 0(t0)
	li	t3, -376
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t0, -28
	li	t3, -380
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -380
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, s0, t1
	li	t3, -380
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -380
	add	t3, s0, t3
	lw	t0, 0(t3)
	lw	t1, 0(t0)
	li	t3, -384
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -376
	add	t3, s0, t3
	lw	t0, 0(t3)
	li	t3, -384
	add	t3, s0, t3
	lw	t1, 0(t3)
	slt	t2, t0, t1
	li	t3, -388
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t0, 0
	li	t3, -392
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -392
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	t1, t0
	li	t3, -368
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -388
	add	t3, s0, t3
	lw	t0, 0(t3)
	bnez	t0, .qsort_ID53_AndAnd_true
	li	t3, -392
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	t1, t0
	li	t3, -368
	add	t3, s0, t3
	sw	t1, 0(t3)
	j	.qsort_ID53_AndAnd_out
.qsort_ID65_while_suite:
	li	t0, -24
	li	t3, -396
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -396
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, s0, t1
	li	t3, -396
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -396
	add	t3, s0, t3
	lw	t0, 0(t3)
	lw	t1, 0(t0)
	li	t3, -400
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t0, 1
	li	t3, -404
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -400
	add	t3, s0, t3
	lw	t0, 0(t3)
	li	t3, -404
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, t0, t1
	li	t3, -408
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t0, -24
	li	t3, -412
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -412
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, s0, t1
	li	t3, -412
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -408
	add	t3, s0, t3
	lw	t0, 0(t3)
	li	t3, -412
	add	t3, s0, t3
	lw	t1, 0(t3)
	sw	t0, 0(t1)
	j	.qsort_ID51_while_condition
.qsort_ID65_while_out:
	li	t0, -24
	li	t3, -416
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -416
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, s0, t1
	li	t3, -416
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -416
	add	t3, s0, t3
	lw	t0, 0(t3)
	lw	t1, 0(t0)
	li	t3, -420
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t0, -28
	li	t3, -424
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -424
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, s0, t1
	li	t3, -424
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -424
	add	t3, s0, t3
	lw	t0, 0(t3)
	lw	t1, 0(t0)
	li	t3, -428
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -420
	add	t3, s0, t3
	lw	t0, 0(t3)
	li	t3, -428
	add	t3, s0, t3
	lw	t1, 0(t3)
	slt	t2, t0, t1
	li	t3, -432
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -432
	add	t3, s0, t3
	lw	t0, 0(t3)
	bnez	t0, .qsort_ID69_if_true
	j	.qsort_ID69_if_out
.qsort_ID69_if_true:
	li	t0, -12
	li	t3, -436
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -436
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, s0, t1
	li	t3, -436
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -436
	add	t3, s0, t3
	lw	t0, 0(t3)
	lw	t1, 0(t0)
	li	t3, -440
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t0, -28
	li	t3, -444
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -444
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, s0, t1
	li	t3, -444
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -444
	add	t3, s0, t3
	lw	t0, 0(t3)
	lw	t1, 0(t0)
	li	t3, -448
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t0, 12
	li	t3, -452
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -448
	add	t3, s0, t3
	lw	t0, 0(t3)
	li	t3, -452
	add	t3, s0, t3
	lw	t1, 0(t3)
	mul	t2, t0, t1
	li	t3, -456
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -440
	add	t3, s0, t3
	lw	t0, 0(t3)
	li	t3, -456
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, t0, t1
	li	t3, -460
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t0, -12
	li	t3, -464
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -464
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, s0, t1
	li	t3, -464
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -464
	add	t3, s0, t3
	lw	t0, 0(t3)
	lw	t1, 0(t0)
	li	t3, -468
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t0, -24
	li	t3, -472
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -472
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, s0, t1
	li	t3, -472
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -472
	add	t3, s0, t3
	lw	t0, 0(t3)
	lw	t1, 0(t0)
	li	t3, -476
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t0, 12
	li	t3, -480
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -476
	add	t3, s0, t3
	lw	t0, 0(t3)
	li	t3, -480
	add	t3, s0, t3
	lw	t1, 0(t3)
	mul	t2, t0, t1
	li	t3, -484
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -468
	add	t3, s0, t3
	lw	t0, 0(t3)
	li	t3, -484
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, t0, t1
	li	t3, -488
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -488
	add	t3, s0, t3
	lw	t0, 0(t3)
	lw	t1, 0(t0)
	li	t3, -492
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -492
	add	t3, s0, t3
	lw	t0, 0(t3)
	li	t3, -460
	add	t3, s0, t3
	lw	t1, 0(t3)
	sw	t0, 0(t1)
	li	t0, -28
	li	t3, -496
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -496
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, s0, t1
	li	t3, -496
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -496
	add	t3, s0, t3
	lw	t0, 0(t3)
	lw	t1, 0(t0)
	li	t3, -500
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t0, 1
	li	t3, -504
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -500
	add	t3, s0, t3
	lw	t0, 0(t3)
	li	t3, -504
	add	t3, s0, t3
	lw	t1, 0(t3)
	sub	t2, t0, t1
	li	t3, -508
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t0, -28
	li	t3, -512
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -512
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, s0, t1
	li	t3, -512
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -508
	add	t3, s0, t3
	lw	t0, 0(t3)
	li	t3, -512
	add	t3, s0, t3
	lw	t1, 0(t3)
	sw	t0, 0(t1)
	j	.qsort_ID69_if_out
.qsort_ID69_if_out:
	j	.qsort_ID20_while_condition
.qsort_ID23_while_suite:
	j	.qsort_ID23_while_condition
.qsort_ID23_while_out:
	li	t0, -12
	li	t3, -516
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -516
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, s0, t1
	li	t3, -516
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -516
	add	t3, s0, t3
	lw	t0, 0(t3)
	lw	t1, 0(t0)
	li	t3, -520
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t0, -24
	li	t3, -524
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -524
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, s0, t1
	li	t3, -524
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -524
	add	t3, s0, t3
	lw	t0, 0(t3)
	lw	t1, 0(t0)
	li	t3, -528
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t0, 12
	li	t3, -532
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -528
	add	t3, s0, t3
	lw	t0, 0(t3)
	li	t3, -532
	add	t3, s0, t3
	lw	t1, 0(t3)
	mul	t2, t0, t1
	li	t3, -536
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -520
	add	t3, s0, t3
	lw	t0, 0(t3)
	li	t3, -536
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, t0, t1
	li	t3, -540
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t0, -32
	li	t3, -544
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -544
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, s0, t1
	li	t3, -544
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -544
	add	t3, s0, t3
	lw	t0, 0(t3)
	lw	t1, 0(t0)
	li	t3, -548
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -548
	add	t3, s0, t3
	lw	t0, 0(t3)
	li	t3, -540
	add	t3, s0, t3
	lw	t1, 0(t3)
	sw	t0, 0(t1)
	li	t0, -12
	li	t3, -552
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -552
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, s0, t1
	li	t3, -552
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -552
	add	t3, s0, t3
	lw	t0, 0(t3)
	lw	t1, 0(t0)
	li	t3, -556
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t0, -16
	li	t3, -560
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -560
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, s0, t1
	li	t3, -560
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -560
	add	t3, s0, t3
	lw	t0, 0(t3)
	lw	t1, 0(t0)
	li	t3, -564
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t0, -24
	li	t3, -568
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -568
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, s0, t1
	li	t3, -568
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -568
	add	t3, s0, t3
	lw	t0, 0(t3)
	lw	t1, 0(t0)
	li	t3, -572
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t0, 1
	li	t3, -576
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -572
	add	t3, s0, t3
	lw	t0, 0(t3)
	li	t3, -576
	add	t3, s0, t3
	lw	t1, 0(t3)
	sub	t2, t0, t1
	li	t3, -580
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -556
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	li	t3, -564
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a1, t0
	li	t3, -580
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a2, t0
	call	qsort
	li	t0, -12
	li	t3, -584
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -584
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, s0, t1
	li	t3, -584
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -584
	add	t3, s0, t3
	lw	t0, 0(t3)
	lw	t1, 0(t0)
	li	t3, -588
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t0, -24
	li	t3, -592
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -592
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, s0, t1
	li	t3, -592
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -592
	add	t3, s0, t3
	lw	t0, 0(t3)
	lw	t1, 0(t0)
	li	t3, -596
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t0, 1
	li	t3, -600
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -596
	add	t3, s0, t3
	lw	t0, 0(t3)
	li	t3, -600
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, t0, t1
	li	t3, -604
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t0, -20
	li	t3, -608
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -608
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, s0, t1
	li	t3, -608
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -608
	add	t3, s0, t3
	lw	t0, 0(t3)
	lw	t1, 0(t0)
	li	t3, -612
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -588
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	li	t3, -604
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a1, t0
	li	t3, -612
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a2, t0
	call	qsort
	j	.qsort_ID9_if_out
.qsort_ID9_if_true:
	li	t0, -16
	li	t3, -616
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -616
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, s0, t1
	li	t3, -616
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -616
	add	t3, s0, t3
	lw	t0, 0(t3)
	lw	t1, 0(t0)
	li	t3, -620
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t0, -24
	li	t3, -624
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -624
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, s0, t1
	li	t3, -624
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -620
	add	t3, s0, t3
	lw	t0, 0(t3)
	li	t3, -624
	add	t3, s0, t3
	lw	t1, 0(t3)
	sw	t0, 0(t1)
	li	t0, -20
	li	t3, -628
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -628
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, s0, t1
	li	t3, -628
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -628
	add	t3, s0, t3
	lw	t0, 0(t3)
	lw	t1, 0(t0)
	li	t3, -632
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t0, -28
	li	t3, -636
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -636
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, s0, t1
	li	t3, -636
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -632
	add	t3, s0, t3
	lw	t0, 0(t3)
	li	t3, -636
	add	t3, s0, t3
	lw	t1, 0(t3)
	sw	t0, 0(t1)
	li	t0, -12
	li	t3, -640
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -640
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, s0, t1
	li	t3, -640
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -640
	add	t3, s0, t3
	lw	t0, 0(t3)
	lw	t1, 0(t0)
	li	t3, -644
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t0, -16
	li	t3, -648
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -648
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, s0, t1
	li	t3, -648
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -648
	add	t3, s0, t3
	lw	t0, 0(t3)
	lw	t1, 0(t0)
	li	t3, -652
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t0, 12
	li	t3, -656
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -652
	add	t3, s0, t3
	lw	t0, 0(t3)
	li	t3, -656
	add	t3, s0, t3
	lw	t1, 0(t3)
	mul	t2, t0, t1
	li	t3, -660
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -644
	add	t3, s0, t3
	lw	t0, 0(t3)
	li	t3, -660
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, t0, t1
	li	t3, -664
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -664
	add	t3, s0, t3
	lw	t0, 0(t3)
	lw	t1, 0(t0)
	li	t3, -668
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t0, -32
	li	t3, -672
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -672
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, s0, t1
	li	t3, -672
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -668
	add	t3, s0, t3
	lw	t0, 0(t3)
	li	t3, -672
	add	t3, s0, t3
	lw	t1, 0(t3)
	sw	t0, 0(t1)
	j	.qsort_ID20_while_condition
.qsort_ID9_if_out:
	j	.qsort_return
.qsort_return:
	li	t0, 672
	add	t1, sp, t0
	lw	ra, -4(t1)
	lw	s0, -8(t1)
	add	sp, sp, t0
	ret

	.globl	init
	.p2align	2
	.type	init,@function
init:
.init_assemblyInit:
	li	t0, 224
	sub	sp, sp, t0
	add	t1, sp, t0
	sw	ra, -4(t1)
	sw	s0, -8(t1)
	mv	s0, t1
.init_entry:
	lw	t1, fuckLLVM_n
	li	t3, -16
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t0, 1
	li	t3, -20
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -16
	add	t3, s0, t3
	lw	t0, 0(t3)
	li	t3, -20
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, t0, t1
	li	t3, -24
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t0, 4
	li	t3, -28
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -24
	add	t3, s0, t3
	lw	t0, 0(t3)
	li	t3, -28
	add	t3, s0, t3
	lw	t1, 0(t3)
	mul	t2, t0, t1
	li	t3, -32
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t0, 4
	li	t3, -36
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -32
	add	t3, s0, t3
	lw	t0, 0(t3)
	li	t3, -36
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, t0, t1
	li	t3, -40
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -40
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	malloc
	mv	t1, a0
	li	t3, -44
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -24
	add	t3, s0, t3
	lw	t0, 0(t3)
	li	t3, -44
	add	t3, s0, t3
	lw	t1, 0(t3)
	sw	t0, 0(t1)
	li	t0, 1
	li	t3, -48
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t0, 4
	li	t3, -52
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -48
	add	t3, s0, t3
	lw	t0, 0(t3)
	li	t3, -52
	add	t3, s0, t3
	lw	t1, 0(t3)
	mul	t2, t0, t1
	li	t3, -56
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -44
	add	t3, s0, t3
	lw	t0, 0(t3)
	li	t3, -56
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, t0, t1
	li	t3, -60
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -60
	add	t3, s0, t3
	lw	t0, 0(t3)
	li	t3, -64
	add	t3, s0, t3
	lw	t1, 0(t3)
	sw	t0, fuckLLVM_fa, t1
	lw	t1, fuckLLVM_n
	li	t3, -68
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t0, 1
	li	t3, -72
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -68
	add	t3, s0, t3
	lw	t0, 0(t3)
	li	t3, -72
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, t0, t1
	li	t3, -76
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t0, 4
	li	t3, -80
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -76
	add	t3, s0, t3
	lw	t0, 0(t3)
	li	t3, -80
	add	t3, s0, t3
	lw	t1, 0(t3)
	mul	t2, t0, t1
	li	t3, -84
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t0, 4
	li	t3, -88
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -84
	add	t3, s0, t3
	lw	t0, 0(t3)
	li	t3, -88
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, t0, t1
	li	t3, -92
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -92
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	malloc
	mv	t1, a0
	li	t3, -96
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -76
	add	t3, s0, t3
	lw	t0, 0(t3)
	li	t3, -96
	add	t3, s0, t3
	lw	t1, 0(t3)
	sw	t0, 0(t1)
	li	t0, 1
	li	t3, -100
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t0, 4
	li	t3, -104
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -100
	add	t3, s0, t3
	lw	t0, 0(t3)
	li	t3, -104
	add	t3, s0, t3
	lw	t1, 0(t3)
	mul	t2, t0, t1
	li	t3, -108
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -96
	add	t3, s0, t3
	lw	t0, 0(t3)
	li	t3, -108
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, t0, t1
	li	t3, -112
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -112
	add	t3, s0, t3
	lw	t0, 0(t3)
	li	t3, -116
	add	t3, s0, t3
	lw	t1, 0(t3)
	sw	t0, fuckLLVM_rk, t1
	li	t0, 1
	li	t3, -120
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t0, -12
	li	t3, -124
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -124
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, s0, t1
	li	t3, -124
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -120
	add	t3, s0, t3
	lw	t0, 0(t3)
	li	t3, -124
	add	t3, s0, t3
	lw	t1, 0(t3)
	sw	t0, 0(t1)
	j	.init_ID21_for_condition
.init_ID21_for_condition:
	li	t0, -12
	li	t3, -128
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -128
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, s0, t1
	li	t3, -128
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -128
	add	t3, s0, t3
	lw	t0, 0(t3)
	lw	t1, 0(t0)
	li	t3, -132
	add	t3, s0, t3
	sw	t1, 0(t3)
	lw	t1, fuckLLVM_n
	li	t3, -136
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -136
	add	t3, s0, t3
	lw	t0, 0(t3)
	li	t3, -132
	add	t3, s0, t3
	lw	t1, 0(t3)
	slt	t2, t0, t1
	li	t3, -140
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -140
	add	t3, s0, t3
	lw	t0, 0(t3)
	xori	t1, t0, 1
	li	t3, -140
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -140
	add	t3, s0, t3
	lw	t0, 0(t3)
	bnez	t0, .init_ID21_for_suite
	j	.init_ID21_for_out
.init_ID21_for_suite:
	lw	t1, fuckLLVM_fa
	li	t3, -144
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t0, -12
	li	t3, -148
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -148
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, s0, t1
	li	t3, -148
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -148
	add	t3, s0, t3
	lw	t0, 0(t3)
	lw	t1, 0(t0)
	li	t3, -152
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t0, 4
	li	t3, -156
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -152
	add	t3, s0, t3
	lw	t0, 0(t3)
	li	t3, -156
	add	t3, s0, t3
	lw	t1, 0(t3)
	mul	t2, t0, t1
	li	t3, -160
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -144
	add	t3, s0, t3
	lw	t0, 0(t3)
	li	t3, -160
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, t0, t1
	li	t3, -164
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t0, -12
	li	t3, -168
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -168
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, s0, t1
	li	t3, -168
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -168
	add	t3, s0, t3
	lw	t0, 0(t3)
	lw	t1, 0(t0)
	li	t3, -172
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -172
	add	t3, s0, t3
	lw	t0, 0(t3)
	li	t3, -164
	add	t3, s0, t3
	lw	t1, 0(t3)
	sw	t0, 0(t1)
	lw	t1, fuckLLVM_rk
	li	t3, -176
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t0, -12
	li	t3, -180
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -180
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, s0, t1
	li	t3, -180
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -180
	add	t3, s0, t3
	lw	t0, 0(t3)
	lw	t1, 0(t0)
	li	t3, -184
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t0, 4
	li	t3, -188
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -184
	add	t3, s0, t3
	lw	t0, 0(t3)
	li	t3, -188
	add	t3, s0, t3
	lw	t1, 0(t3)
	mul	t2, t0, t1
	li	t3, -192
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -176
	add	t3, s0, t3
	lw	t0, 0(t3)
	li	t3, -192
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, t0, t1
	li	t3, -196
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t0, 1
	li	t3, -200
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -200
	add	t3, s0, t3
	lw	t0, 0(t3)
	li	t3, -196
	add	t3, s0, t3
	lw	t1, 0(t3)
	sw	t0, 0(t1)
	j	.init_ID21_for_incr
.init_ID21_for_incr:
	li	t0, -12
	li	t3, -204
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -204
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, s0, t1
	li	t3, -204
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -204
	add	t3, s0, t3
	lw	t0, 0(t3)
	lw	t1, 0(t0)
	li	t3, -208
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t0, 1
	li	t3, -212
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -208
	add	t3, s0, t3
	lw	t0, 0(t3)
	li	t3, -212
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, t0, t1
	li	t3, -216
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t0, -12
	li	t3, -220
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -220
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, s0, t1
	li	t3, -220
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -216
	add	t3, s0, t3
	lw	t0, 0(t3)
	li	t3, -220
	add	t3, s0, t3
	lw	t1, 0(t3)
	sw	t0, 0(t1)
	j	.init_ID21_for_condition
.init_ID21_for_out:
	j	.init_return
.init_return:
	li	t0, 224
	add	t1, sp, t0
	lw	ra, -4(t1)
	lw	s0, -8(t1)
	add	sp, sp, t0
	ret

	.globl	find
	.p2align	2
	.type	find,@function
find:
.find_assemblyInit:
	li	t0, 160
	sub	sp, sp, t0
	add	t1, sp, t0
	sw	ra, -4(t1)
	sw	s0, -8(t1)
	mv	s0, t1
	mv	t1, a0
	li	t3, -20
	add	t3, s0, t3
	sw	t1, 0(t3)
.find_entry:
	li	t0, -12
	li	t3, -24
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -24
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, s0, t1
	li	t3, -24
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -20
	add	t3, s0, t3
	lw	t0, 0(t3)
	li	t3, -24
	add	t3, s0, t3
	lw	t1, 0(t3)
	sw	t0, 0(t1)
	li	t0, -12
	li	t3, -28
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -28
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, s0, t1
	li	t3, -28
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -28
	add	t3, s0, t3
	lw	t0, 0(t3)
	lw	t1, 0(t0)
	li	t3, -32
	add	t3, s0, t3
	sw	t1, 0(t3)
	lw	t1, fuckLLVM_fa
	li	t3, -36
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t0, -12
	li	t3, -40
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -40
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, s0, t1
	li	t3, -40
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -40
	add	t3, s0, t3
	lw	t0, 0(t3)
	lw	t1, 0(t0)
	li	t3, -44
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t0, 4
	li	t3, -48
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -44
	add	t3, s0, t3
	lw	t0, 0(t3)
	li	t3, -48
	add	t3, s0, t3
	lw	t1, 0(t3)
	mul	t2, t0, t1
	li	t3, -52
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -36
	add	t3, s0, t3
	lw	t0, 0(t3)
	li	t3, -52
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, t0, t1
	li	t3, -56
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -56
	add	t3, s0, t3
	lw	t0, 0(t3)
	lw	t1, 0(t0)
	li	t3, -60
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -32
	add	t3, s0, t3
	lw	t0, 0(t3)
	li	t3, -60
	add	t3, s0, t3
	lw	t1, 0(t3)
	xor	t2, t0, t1
	li	t3, -64
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -64
	add	t3, s0, t3
	lw	t0, 0(t3)
	sltiu	t1, t0, 1
	li	t3, -64
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -64
	add	t3, s0, t3
	lw	t0, 0(t3)
	bnez	t0, .find_ID8_if_true
	j	.find_ID8_if_out
.find_ID8_if_true:
	li	t0, -12
	li	t3, -68
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -68
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, s0, t1
	li	t3, -68
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -68
	add	t3, s0, t3
	lw	t0, 0(t3)
	lw	t1, 0(t0)
	li	t3, -72
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t0, -16
	li	t3, -76
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -76
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, s0, t1
	li	t3, -76
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -72
	add	t3, s0, t3
	lw	t0, 0(t3)
	li	t3, -76
	add	t3, s0, t3
	lw	t1, 0(t3)
	sw	t0, 0(t1)
	j	.find_return
	j	.find_ID8_if_out
.find_ID8_if_out:
	lw	t1, fuckLLVM_fa
	li	t3, -80
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t0, -12
	li	t3, -84
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -84
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, s0, t1
	li	t3, -84
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -84
	add	t3, s0, t3
	lw	t0, 0(t3)
	lw	t1, 0(t0)
	li	t3, -88
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t0, 4
	li	t3, -92
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -88
	add	t3, s0, t3
	lw	t0, 0(t3)
	li	t3, -92
	add	t3, s0, t3
	lw	t1, 0(t3)
	mul	t2, t0, t1
	li	t3, -96
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -80
	add	t3, s0, t3
	lw	t0, 0(t3)
	li	t3, -96
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, t0, t1
	li	t3, -100
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -100
	add	t3, s0, t3
	lw	t0, 0(t3)
	lw	t1, 0(t0)
	li	t3, -104
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -104
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	find
	mv	t1, a0
	li	t3, -108
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t0, -12
	li	t3, -112
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -112
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, s0, t1
	li	t3, -112
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -108
	add	t3, s0, t3
	lw	t0, 0(t3)
	li	t3, -112
	add	t3, s0, t3
	lw	t1, 0(t3)
	sw	t0, 0(t1)
	lw	t1, fuckLLVM_fa
	li	t3, -116
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t0, -12
	li	t3, -120
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -120
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, s0, t1
	li	t3, -120
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -120
	add	t3, s0, t3
	lw	t0, 0(t3)
	lw	t1, 0(t0)
	li	t3, -124
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t0, 4
	li	t3, -128
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -124
	add	t3, s0, t3
	lw	t0, 0(t3)
	li	t3, -128
	add	t3, s0, t3
	lw	t1, 0(t3)
	mul	t2, t0, t1
	li	t3, -132
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -116
	add	t3, s0, t3
	lw	t0, 0(t3)
	li	t3, -132
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, t0, t1
	li	t3, -136
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -136
	add	t3, s0, t3
	lw	t0, 0(t3)
	lw	t1, 0(t0)
	li	t3, -140
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t0, -16
	li	t3, -144
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -144
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, s0, t1
	li	t3, -144
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -140
	add	t3, s0, t3
	lw	t0, 0(t3)
	li	t3, -144
	add	t3, s0, t3
	lw	t1, 0(t3)
	sw	t0, 0(t1)
	j	.find_return
	j	.find_return
.find_return:
	li	t0, -16
	li	t3, -148
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -148
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, s0, t1
	li	t3, -148
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -148
	add	t3, s0, t3
	lw	t0, 0(t3)
	lw	t1, 0(t0)
	li	t3, -152
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -152
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	li	t0, 160
	add	t1, sp, t0
	lw	ra, -4(t1)
	lw	s0, -8(t1)
	add	sp, sp, t0
	ret

	.globl	union
	.p2align	2
	.type	union,@function
union:
.union_assemblyInit:
	li	t0, 416
	sub	sp, sp, t0
	add	t1, sp, t0
	sw	ra, -4(t1)
	sw	s0, -8(t1)
	mv	s0, t1
	mv	t1, a0
	li	t3, -24
	add	t3, s0, t3
	sw	t1, 0(t3)
	mv	t1, a1
	li	t3, -28
	add	t3, s0, t3
	sw	t1, 0(t3)
.union_entry:
	li	t0, -12
	li	t3, -32
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -32
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, s0, t1
	li	t3, -32
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -24
	add	t3, s0, t3
	lw	t0, 0(t3)
	li	t3, -32
	add	t3, s0, t3
	lw	t1, 0(t3)
	sw	t0, 0(t1)
	li	t0, -16
	li	t3, -36
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -36
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, s0, t1
	li	t3, -36
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -28
	add	t3, s0, t3
	lw	t0, 0(t3)
	li	t3, -36
	add	t3, s0, t3
	lw	t1, 0(t3)
	sw	t0, 0(t1)
	li	t0, -12
	li	t3, -40
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -40
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, s0, t1
	li	t3, -40
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -40
	add	t3, s0, t3
	lw	t0, 0(t3)
	lw	t1, 0(t0)
	li	t3, -44
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -44
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	find
	mv	t1, a0
	li	t3, -48
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t0, -12
	li	t3, -52
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -52
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, s0, t1
	li	t3, -52
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -48
	add	t3, s0, t3
	lw	t0, 0(t3)
	li	t3, -52
	add	t3, s0, t3
	lw	t1, 0(t3)
	sw	t0, 0(t1)
	li	t0, -16
	li	t3, -56
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -56
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, s0, t1
	li	t3, -56
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -56
	add	t3, s0, t3
	lw	t0, 0(t3)
	lw	t1, 0(t0)
	li	t3, -60
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -60
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	find
	mv	t1, a0
	li	t3, -64
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t0, -16
	li	t3, -68
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -68
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, s0, t1
	li	t3, -68
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -64
	add	t3, s0, t3
	lw	t0, 0(t3)
	li	t3, -68
	add	t3, s0, t3
	lw	t1, 0(t3)
	sw	t0, 0(t1)
	li	t0, -12
	li	t3, -72
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -72
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, s0, t1
	li	t3, -72
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -72
	add	t3, s0, t3
	lw	t0, 0(t3)
	lw	t1, 0(t0)
	li	t3, -76
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t0, -16
	li	t3, -80
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -80
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, s0, t1
	li	t3, -80
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -80
	add	t3, s0, t3
	lw	t0, 0(t3)
	lw	t1, 0(t0)
	li	t3, -84
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -76
	add	t3, s0, t3
	lw	t0, 0(t3)
	li	t3, -84
	add	t3, s0, t3
	lw	t1, 0(t3)
	xor	t2, t0, t1
	li	t3, -88
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -88
	add	t3, s0, t3
	lw	t0, 0(t3)
	sltiu	t1, t0, 1
	li	t3, -88
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -88
	add	t3, s0, t3
	lw	t0, 0(t3)
	bnez	t0, .union_ID11_if_true
	j	.union_ID11_if_out
.union_ID11_if_true:
	li	t0, 0
	li	t3, -92
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t0, -20
	li	t3, -96
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -96
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, s0, t1
	li	t3, -96
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -92
	add	t3, s0, t3
	lw	t0, 0(t3)
	li	t3, -96
	add	t3, s0, t3
	lw	t1, 0(t3)
	sb	t0, 0(t1)
	j	.union_return
	j	.union_ID11_if_out
.union_ID11_if_out:
	lw	t1, fuckLLVM_rk
	li	t3, -100
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t0, -12
	li	t3, -104
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -104
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, s0, t1
	li	t3, -104
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -104
	add	t3, s0, t3
	lw	t0, 0(t3)
	lw	t1, 0(t0)
	li	t3, -108
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t0, 4
	li	t3, -112
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -108
	add	t3, s0, t3
	lw	t0, 0(t3)
	li	t3, -112
	add	t3, s0, t3
	lw	t1, 0(t3)
	mul	t2, t0, t1
	li	t3, -116
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -100
	add	t3, s0, t3
	lw	t0, 0(t3)
	li	t3, -116
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, t0, t1
	li	t3, -120
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -120
	add	t3, s0, t3
	lw	t0, 0(t3)
	lw	t1, 0(t0)
	li	t3, -124
	add	t3, s0, t3
	sw	t1, 0(t3)
	lw	t1, fuckLLVM_rk
	li	t3, -128
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t0, -16
	li	t3, -132
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -132
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, s0, t1
	li	t3, -132
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -132
	add	t3, s0, t3
	lw	t0, 0(t3)
	lw	t1, 0(t0)
	li	t3, -136
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t0, 4
	li	t3, -140
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -136
	add	t3, s0, t3
	lw	t0, 0(t3)
	li	t3, -140
	add	t3, s0, t3
	lw	t1, 0(t3)
	mul	t2, t0, t1
	li	t3, -144
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -128
	add	t3, s0, t3
	lw	t0, 0(t3)
	li	t3, -144
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, t0, t1
	li	t3, -148
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -148
	add	t3, s0, t3
	lw	t0, 0(t3)
	lw	t1, 0(t0)
	li	t3, -152
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -152
	add	t3, s0, t3
	lw	t0, 0(t3)
	li	t3, -124
	add	t3, s0, t3
	lw	t1, 0(t3)
	slt	t2, t0, t1
	li	t3, -156
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -156
	add	t3, s0, t3
	lw	t0, 0(t3)
	bnez	t0, .union_ID20_if_true
	j	.union_ID20_if_false
.union_ID20_if_true:
	lw	t1, fuckLLVM_fa
	li	t3, -160
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t0, -16
	li	t3, -164
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -164
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, s0, t1
	li	t3, -164
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -164
	add	t3, s0, t3
	lw	t0, 0(t3)
	lw	t1, 0(t0)
	li	t3, -168
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t0, 4
	li	t3, -172
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -168
	add	t3, s0, t3
	lw	t0, 0(t3)
	li	t3, -172
	add	t3, s0, t3
	lw	t1, 0(t3)
	mul	t2, t0, t1
	li	t3, -176
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -160
	add	t3, s0, t3
	lw	t0, 0(t3)
	li	t3, -176
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, t0, t1
	li	t3, -180
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t0, -12
	li	t3, -184
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -184
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, s0, t1
	li	t3, -184
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -184
	add	t3, s0, t3
	lw	t0, 0(t3)
	lw	t1, 0(t0)
	li	t3, -188
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -188
	add	t3, s0, t3
	lw	t0, 0(t3)
	li	t3, -180
	add	t3, s0, t3
	lw	t1, 0(t3)
	sw	t0, 0(t1)
	lw	t1, fuckLLVM_rk
	li	t3, -192
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t0, -12
	li	t3, -196
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -196
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, s0, t1
	li	t3, -196
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -196
	add	t3, s0, t3
	lw	t0, 0(t3)
	lw	t1, 0(t0)
	li	t3, -200
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t0, 4
	li	t3, -204
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -200
	add	t3, s0, t3
	lw	t0, 0(t3)
	li	t3, -204
	add	t3, s0, t3
	lw	t1, 0(t3)
	mul	t2, t0, t1
	li	t3, -208
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -192
	add	t3, s0, t3
	lw	t0, 0(t3)
	li	t3, -208
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, t0, t1
	li	t3, -212
	add	t3, s0, t3
	sw	t2, 0(t3)
	lw	t1, fuckLLVM_rk
	li	t3, -216
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t0, -12
	li	t3, -220
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -220
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, s0, t1
	li	t3, -220
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -220
	add	t3, s0, t3
	lw	t0, 0(t3)
	lw	t1, 0(t0)
	li	t3, -224
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t0, 4
	li	t3, -228
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -224
	add	t3, s0, t3
	lw	t0, 0(t3)
	li	t3, -228
	add	t3, s0, t3
	lw	t1, 0(t3)
	mul	t2, t0, t1
	li	t3, -232
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -216
	add	t3, s0, t3
	lw	t0, 0(t3)
	li	t3, -232
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, t0, t1
	li	t3, -236
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -236
	add	t3, s0, t3
	lw	t0, 0(t3)
	lw	t1, 0(t0)
	li	t3, -240
	add	t3, s0, t3
	sw	t1, 0(t3)
	lw	t1, fuckLLVM_rk
	li	t3, -244
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t0, -16
	li	t3, -248
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -248
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, s0, t1
	li	t3, -248
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -248
	add	t3, s0, t3
	lw	t0, 0(t3)
	lw	t1, 0(t0)
	li	t3, -252
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t0, 4
	li	t3, -256
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -252
	add	t3, s0, t3
	lw	t0, 0(t3)
	li	t3, -256
	add	t3, s0, t3
	lw	t1, 0(t3)
	mul	t2, t0, t1
	li	t3, -260
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -244
	add	t3, s0, t3
	lw	t0, 0(t3)
	li	t3, -260
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, t0, t1
	li	t3, -264
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -264
	add	t3, s0, t3
	lw	t0, 0(t3)
	lw	t1, 0(t0)
	li	t3, -268
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -240
	add	t3, s0, t3
	lw	t0, 0(t3)
	li	t3, -268
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, t0, t1
	li	t3, -272
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -272
	add	t3, s0, t3
	lw	t0, 0(t3)
	li	t3, -212
	add	t3, s0, t3
	lw	t1, 0(t3)
	sw	t0, 0(t1)
	j	.union_ID20_if_out
.union_ID20_if_false:
	lw	t1, fuckLLVM_fa
	li	t3, -276
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t0, -12
	li	t3, -280
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -280
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, s0, t1
	li	t3, -280
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -280
	add	t3, s0, t3
	lw	t0, 0(t3)
	lw	t1, 0(t0)
	li	t3, -284
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t0, 4
	li	t3, -288
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -284
	add	t3, s0, t3
	lw	t0, 0(t3)
	li	t3, -288
	add	t3, s0, t3
	lw	t1, 0(t3)
	mul	t2, t0, t1
	li	t3, -292
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -276
	add	t3, s0, t3
	lw	t0, 0(t3)
	li	t3, -292
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, t0, t1
	li	t3, -296
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t0, -16
	li	t3, -300
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -300
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, s0, t1
	li	t3, -300
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -300
	add	t3, s0, t3
	lw	t0, 0(t3)
	lw	t1, 0(t0)
	li	t3, -304
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -304
	add	t3, s0, t3
	lw	t0, 0(t3)
	li	t3, -296
	add	t3, s0, t3
	lw	t1, 0(t3)
	sw	t0, 0(t1)
	lw	t1, fuckLLVM_rk
	li	t3, -308
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t0, -16
	li	t3, -312
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -312
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, s0, t1
	li	t3, -312
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -312
	add	t3, s0, t3
	lw	t0, 0(t3)
	lw	t1, 0(t0)
	li	t3, -316
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t0, 4
	li	t3, -320
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -316
	add	t3, s0, t3
	lw	t0, 0(t3)
	li	t3, -320
	add	t3, s0, t3
	lw	t1, 0(t3)
	mul	t2, t0, t1
	li	t3, -324
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -308
	add	t3, s0, t3
	lw	t0, 0(t3)
	li	t3, -324
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, t0, t1
	li	t3, -328
	add	t3, s0, t3
	sw	t2, 0(t3)
	lw	t1, fuckLLVM_rk
	li	t3, -332
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t0, -16
	li	t3, -336
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -336
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, s0, t1
	li	t3, -336
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -336
	add	t3, s0, t3
	lw	t0, 0(t3)
	lw	t1, 0(t0)
	li	t3, -340
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t0, 4
	li	t3, -344
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -340
	add	t3, s0, t3
	lw	t0, 0(t3)
	li	t3, -344
	add	t3, s0, t3
	lw	t1, 0(t3)
	mul	t2, t0, t1
	li	t3, -348
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -332
	add	t3, s0, t3
	lw	t0, 0(t3)
	li	t3, -348
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, t0, t1
	li	t3, -352
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -352
	add	t3, s0, t3
	lw	t0, 0(t3)
	lw	t1, 0(t0)
	li	t3, -356
	add	t3, s0, t3
	sw	t1, 0(t3)
	lw	t1, fuckLLVM_rk
	li	t3, -360
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t0, -12
	li	t3, -364
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -364
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, s0, t1
	li	t3, -364
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -364
	add	t3, s0, t3
	lw	t0, 0(t3)
	lw	t1, 0(t0)
	li	t3, -368
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t0, 4
	li	t3, -372
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -368
	add	t3, s0, t3
	lw	t0, 0(t3)
	li	t3, -372
	add	t3, s0, t3
	lw	t1, 0(t3)
	mul	t2, t0, t1
	li	t3, -376
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -360
	add	t3, s0, t3
	lw	t0, 0(t3)
	li	t3, -376
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, t0, t1
	li	t3, -380
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -380
	add	t3, s0, t3
	lw	t0, 0(t3)
	lw	t1, 0(t0)
	li	t3, -384
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -356
	add	t3, s0, t3
	lw	t0, 0(t3)
	li	t3, -384
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, t0, t1
	li	t3, -388
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -388
	add	t3, s0, t3
	lw	t0, 0(t3)
	li	t3, -328
	add	t3, s0, t3
	lw	t1, 0(t3)
	sw	t0, 0(t1)
	j	.union_ID20_if_out
.union_ID20_if_out:
	li	t0, 1
	li	t3, -392
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t0, -20
	li	t3, -396
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -396
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, s0, t1
	li	t3, -396
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -392
	add	t3, s0, t3
	lw	t0, 0(t3)
	li	t3, -396
	add	t3, s0, t3
	lw	t1, 0(t3)
	sb	t0, 0(t1)
	j	.union_return
	j	.union_return
.union_return:
	li	t0, -20
	li	t3, -400
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -400
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, s0, t1
	li	t3, -400
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -400
	add	t3, s0, t3
	lw	t0, 0(t3)
	lb	t1, 0(t0)
	li	t3, -404
	add	t3, s0, t3
	sb	t1, 0(t3)
	li	t3, -404
	add	t3, s0, t3
	lb	t0, 0(t3)
	mv	a0, t0
	li	t0, 416
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
	li	t0, 544
	sub	sp, sp, t0
	add	t1, sp, t0
	sw	ra, -4(t1)
	sw	s0, -8(t1)
	mv	s0, t1
.main_entry:
	call	__init
	li	t0, 0
	li	t3, -32
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t0, -12
	li	t3, -36
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -36
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, s0, t1
	li	t3, -36
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -32
	add	t3, s0, t3
	lw	t0, 0(t3)
	li	t3, -36
	add	t3, s0, t3
	lw	t1, 0(t3)
	sw	t0, 0(t1)
	call	getInt
	mv	t1, a0
	li	t3, -40
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -40
	add	t3, s0, t3
	lw	t0, 0(t3)
	li	t3, -44
	add	t3, s0, t3
	lw	t1, 0(t3)
	sw	t0, fuckLLVM_n, t1
	call	getInt
	mv	t1, a0
	li	t3, -48
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -48
	add	t3, s0, t3
	lw	t0, 0(t3)
	li	t3, -52
	add	t3, s0, t3
	lw	t1, 0(t3)
	sw	t0, fuckLLVM_m, t1
	lw	t1, fuckLLVM_m
	li	t3, -56
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t0, 12
	li	t3, -60
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -56
	add	t3, s0, t3
	lw	t0, 0(t3)
	li	t3, -60
	add	t3, s0, t3
	lw	t1, 0(t3)
	mul	t2, t0, t1
	li	t3, -64
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t0, 4
	li	t3, -68
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -64
	add	t3, s0, t3
	lw	t0, 0(t3)
	li	t3, -68
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, t0, t1
	li	t3, -72
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -72
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	malloc
	mv	t1, a0
	li	t3, -76
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -56
	add	t3, s0, t3
	lw	t0, 0(t3)
	li	t3, -76
	add	t3, s0, t3
	lw	t1, 0(t3)
	sw	t0, 0(t1)
	li	t0, 1
	li	t3, -80
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t0, 4
	li	t3, -84
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -80
	add	t3, s0, t3
	lw	t0, 0(t3)
	li	t3, -84
	add	t3, s0, t3
	lw	t1, 0(t3)
	mul	t2, t0, t1
	li	t3, -88
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -76
	add	t3, s0, t3
	lw	t0, 0(t3)
	li	t3, -88
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, t0, t1
	li	t3, -92
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -92
	add	t3, s0, t3
	lw	t0, 0(t3)
	li	t3, -96
	add	t3, s0, t3
	lw	t1, 0(t3)
	sw	t0, fuckLLVM_e, t1
	li	t0, 0
	li	t3, -100
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t0, -16
	li	t3, -104
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -104
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, s0, t1
	li	t3, -104
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -100
	add	t3, s0, t3
	lw	t0, 0(t3)
	li	t3, -104
	add	t3, s0, t3
	lw	t1, 0(t3)
	sw	t0, 0(t1)
	j	.main_ID12_for_condition
.main_ID12_for_condition:
	li	t0, -16
	li	t3, -108
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -108
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, s0, t1
	li	t3, -108
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -108
	add	t3, s0, t3
	lw	t0, 0(t3)
	lw	t1, 0(t0)
	li	t3, -112
	add	t3, s0, t3
	sw	t1, 0(t3)
	lw	t1, fuckLLVM_m
	li	t3, -116
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -112
	add	t3, s0, t3
	lw	t0, 0(t3)
	li	t3, -116
	add	t3, s0, t3
	lw	t1, 0(t3)
	slt	t2, t0, t1
	li	t3, -120
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -120
	add	t3, s0, t3
	lw	t0, 0(t3)
	bnez	t0, .main_ID12_for_suite
	j	.main_ID12_for_out
.main_ID12_for_suite:
	li	t0, 12
	li	t3, -124
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -124
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	malloc
	mv	t1, a0
	li	t3, -128
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -128
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	Edge
	li	t0, -20
	li	t3, -132
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -132
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, s0, t1
	li	t3, -132
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -128
	add	t3, s0, t3
	lw	t0, 0(t3)
	li	t3, -132
	add	t3, s0, t3
	lw	t1, 0(t3)
	sw	t0, 0(t1)
	li	t0, -20
	li	t3, -136
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -136
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, s0, t1
	li	t3, -136
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -136
	add	t3, s0, t3
	lw	t0, 0(t3)
	lw	t1, 0(t0)
	li	t3, -140
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -140
	add	t3, s0, t3
	lw	t0, 0(t3)
	addi	t1, t0, 0
	li	t3, -144
	add	t3, s0, t3
	sw	t1, 0(t3)
	call	getInt
	mv	t1, a0
	li	t3, -148
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -148
	add	t3, s0, t3
	lw	t0, 0(t3)
	li	t3, -144
	add	t3, s0, t3
	lw	t1, 0(t3)
	sw	t0, 0(t1)
	li	t0, -20
	li	t3, -152
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -152
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, s0, t1
	li	t3, -152
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -152
	add	t3, s0, t3
	lw	t0, 0(t3)
	lw	t1, 0(t0)
	li	t3, -156
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -156
	add	t3, s0, t3
	lw	t0, 0(t3)
	addi	t1, t0, 4
	li	t3, -160
	add	t3, s0, t3
	sw	t1, 0(t3)
	call	getInt
	mv	t1, a0
	li	t3, -164
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -164
	add	t3, s0, t3
	lw	t0, 0(t3)
	li	t3, -160
	add	t3, s0, t3
	lw	t1, 0(t3)
	sw	t0, 0(t1)
	li	t0, -20
	li	t3, -168
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -168
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, s0, t1
	li	t3, -168
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -168
	add	t3, s0, t3
	lw	t0, 0(t3)
	lw	t1, 0(t0)
	li	t3, -172
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -172
	add	t3, s0, t3
	lw	t0, 0(t3)
	addi	t1, t0, 8
	li	t3, -176
	add	t3, s0, t3
	sw	t1, 0(t3)
	call	getInt
	mv	t1, a0
	li	t3, -180
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -180
	add	t3, s0, t3
	lw	t0, 0(t3)
	li	t3, -176
	add	t3, s0, t3
	lw	t1, 0(t3)
	sw	t0, 0(t1)
	lw	t1, fuckLLVM_e
	li	t3, -184
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t0, -16
	li	t3, -188
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -188
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, s0, t1
	li	t3, -188
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -188
	add	t3, s0, t3
	lw	t0, 0(t3)
	lw	t1, 0(t0)
	li	t3, -192
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t0, 12
	li	t3, -196
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -192
	add	t3, s0, t3
	lw	t0, 0(t3)
	li	t3, -196
	add	t3, s0, t3
	lw	t1, 0(t3)
	mul	t2, t0, t1
	li	t3, -200
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -184
	add	t3, s0, t3
	lw	t0, 0(t3)
	li	t3, -200
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, t0, t1
	li	t3, -204
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t0, -20
	li	t3, -208
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -208
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, s0, t1
	li	t3, -208
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -208
	add	t3, s0, t3
	lw	t0, 0(t3)
	lw	t1, 0(t0)
	li	t3, -212
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -212
	add	t3, s0, t3
	lw	t0, 0(t3)
	li	t3, -204
	add	t3, s0, t3
	lw	t1, 0(t3)
	sw	t0, 0(t1)
	j	.main_ID12_for_incr
.main_ID12_for_incr:
	li	t0, -16
	li	t3, -216
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -216
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, s0, t1
	li	t3, -216
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -216
	add	t3, s0, t3
	lw	t0, 0(t3)
	lw	t1, 0(t0)
	li	t3, -220
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t0, 1
	li	t3, -224
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -220
	add	t3, s0, t3
	lw	t0, 0(t3)
	li	t3, -224
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, t0, t1
	li	t3, -228
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t0, -16
	li	t3, -232
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -232
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, s0, t1
	li	t3, -232
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -228
	add	t3, s0, t3
	lw	t0, 0(t3)
	li	t3, -232
	add	t3, s0, t3
	lw	t1, 0(t3)
	sw	t0, 0(t1)
	j	.main_ID12_for_condition
.main_ID12_for_out:
	lw	t1, fuckLLVM_e
	li	t3, -236
	add	t3, s0, t3
	sw	t1, 0(t3)
	lw	t1, fuckLLVM_m
	li	t3, -240
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t0, 1
	li	t3, -244
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -240
	add	t3, s0, t3
	lw	t0, 0(t3)
	li	t3, -244
	add	t3, s0, t3
	lw	t1, 0(t3)
	sub	t2, t0, t1
	li	t3, -248
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -236
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	li	t0, 0
	li	t3, -252
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -252
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a1, t0
	li	t3, -248
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a2, t0
	call	qsort
	call	init
	li	t0, 0
	li	t3, -256
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t0, -16
	li	t3, -260
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -260
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, s0, t1
	li	t3, -260
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -256
	add	t3, s0, t3
	lw	t0, 0(t3)
	li	t3, -260
	add	t3, s0, t3
	lw	t1, 0(t3)
	sw	t0, 0(t1)
	li	t0, 0
	li	t3, -264
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t0, -24
	li	t3, -268
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -268
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, s0, t1
	li	t3, -268
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -264
	add	t3, s0, t3
	lw	t0, 0(t3)
	li	t3, -268
	add	t3, s0, t3
	lw	t1, 0(t3)
	sw	t0, 0(t1)
	j	.main_ID43_while_condition
.main_ID43_while_condition:
	li	t0, -16
	li	t3, -272
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -272
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, s0, t1
	li	t3, -272
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -272
	add	t3, s0, t3
	lw	t0, 0(t3)
	lw	t1, 0(t0)
	li	t3, -276
	add	t3, s0, t3
	sw	t1, 0(t3)
	lw	t1, fuckLLVM_n
	li	t3, -280
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t0, 1
	li	t3, -284
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -280
	add	t3, s0, t3
	lw	t0, 0(t3)
	li	t3, -284
	add	t3, s0, t3
	lw	t1, 0(t3)
	sub	t2, t0, t1
	li	t3, -288
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -276
	add	t3, s0, t3
	lw	t0, 0(t3)
	li	t3, -288
	add	t3, s0, t3
	lw	t1, 0(t3)
	slt	t2, t0, t1
	li	t3, -292
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -292
	add	t3, s0, t3
	lw	t0, 0(t3)
	bnez	t0, .main_ID47_while_suite
	j	.main_ID47_while_out
.main_ID49_if_true:
	li	t0, 0
	li	t3, -296
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t0, 1
	li	t3, -300
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -296
	add	t3, s0, t3
	lw	t0, 0(t3)
	li	t3, -300
	add	t3, s0, t3
	lw	t1, 0(t3)
	sub	t2, t0, t1
	li	t3, -304
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -304
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	printInt
	li	t0, 0
	li	t3, -308
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t0, -12
	li	t3, -312
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -312
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, s0, t1
	li	t3, -312
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -308
	add	t3, s0, t3
	lw	t0, 0(t3)
	li	t3, -312
	add	t3, s0, t3
	lw	t1, 0(t3)
	sw	t0, 0(t1)
	j	.main_return
	j	.main_ID49_if_out
.main_ID49_if_out:
	lw	t1, fuckLLVM_e
	li	t3, -316
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t0, -24
	li	t3, -320
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -320
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, s0, t1
	li	t3, -320
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -320
	add	t3, s0, t3
	lw	t0, 0(t3)
	lw	t1, 0(t0)
	li	t3, -324
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t0, 12
	li	t3, -328
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -324
	add	t3, s0, t3
	lw	t0, 0(t3)
	li	t3, -328
	add	t3, s0, t3
	lw	t1, 0(t3)
	mul	t2, t0, t1
	li	t3, -332
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -316
	add	t3, s0, t3
	lw	t0, 0(t3)
	li	t3, -332
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, t0, t1
	li	t3, -336
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -336
	add	t3, s0, t3
	lw	t0, 0(t3)
	lw	t1, 0(t0)
	li	t3, -340
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t0, -28
	li	t3, -344
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -344
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, s0, t1
	li	t3, -344
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -340
	add	t3, s0, t3
	lw	t0, 0(t3)
	li	t3, -344
	add	t3, s0, t3
	lw	t1, 0(t3)
	sw	t0, 0(t1)
	li	t0, -24
	li	t3, -348
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -348
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, s0, t1
	li	t3, -348
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -348
	add	t3, s0, t3
	lw	t0, 0(t3)
	lw	t1, 0(t0)
	li	t3, -352
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t0, 1
	li	t3, -356
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -352
	add	t3, s0, t3
	lw	t0, 0(t3)
	li	t3, -356
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, t0, t1
	li	t3, -360
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t0, -24
	li	t3, -364
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -364
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, s0, t1
	li	t3, -364
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -360
	add	t3, s0, t3
	lw	t0, 0(t3)
	li	t3, -364
	add	t3, s0, t3
	lw	t1, 0(t3)
	sw	t0, 0(t1)
	li	t0, -28
	li	t3, -368
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -368
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, s0, t1
	li	t3, -368
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -368
	add	t3, s0, t3
	lw	t0, 0(t3)
	lw	t1, 0(t0)
	li	t3, -372
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -372
	add	t3, s0, t3
	lw	t0, 0(t3)
	addi	t1, t0, 0
	li	t3, -376
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -376
	add	t3, s0, t3
	lw	t0, 0(t3)
	lw	t1, 0(t0)
	li	t3, -380
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t0, -28
	li	t3, -384
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -384
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, s0, t1
	li	t3, -384
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -384
	add	t3, s0, t3
	lw	t0, 0(t3)
	lw	t1, 0(t0)
	li	t3, -388
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -388
	add	t3, s0, t3
	lw	t0, 0(t3)
	addi	t1, t0, 4
	li	t3, -392
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -392
	add	t3, s0, t3
	lw	t0, 0(t3)
	lw	t1, 0(t0)
	li	t3, -396
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -380
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	li	t3, -396
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a1, t0
	call	union
	mv	t1, a0
	li	t3, -400
	add	t3, s0, t3
	sb	t1, 0(t3)
	li	t3, -400
	add	t3, s0, t3
	lb	t0, 0(t3)
	bnez	t0, .main_ID67_if_true
	j	.main_ID67_if_out
.main_ID67_if_true:
	li	t0, -16
	li	t3, -404
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -404
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, s0, t1
	li	t3, -404
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -404
	add	t3, s0, t3
	lw	t0, 0(t3)
	lw	t1, 0(t0)
	li	t3, -408
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t0, 1
	li	t3, -412
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -408
	add	t3, s0, t3
	lw	t0, 0(t3)
	li	t3, -412
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, t0, t1
	li	t3, -416
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t0, -16
	li	t3, -420
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -420
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, s0, t1
	li	t3, -420
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -416
	add	t3, s0, t3
	lw	t0, 0(t3)
	li	t3, -420
	add	t3, s0, t3
	lw	t1, 0(t3)
	sw	t0, 0(t1)
	lw	t1, fuckLLVM_ans
	li	t3, -424
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t0, -28
	li	t3, -428
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -428
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, s0, t1
	li	t3, -428
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -428
	add	t3, s0, t3
	lw	t0, 0(t3)
	lw	t1, 0(t0)
	li	t3, -432
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -432
	add	t3, s0, t3
	lw	t0, 0(t3)
	addi	t1, t0, 8
	li	t3, -436
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -436
	add	t3, s0, t3
	lw	t0, 0(t3)
	lw	t1, 0(t0)
	li	t3, -440
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -424
	add	t3, s0, t3
	lw	t0, 0(t3)
	li	t3, -440
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, t0, t1
	li	t3, -444
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -444
	add	t3, s0, t3
	lw	t0, 0(t3)
	li	t3, -448
	add	t3, s0, t3
	lw	t1, 0(t3)
	sw	t0, fuckLLVM_ans, t1
	j	.main_ID67_if_out
.main_ID67_if_out:
	j	.main_ID43_while_condition
.main_ID47_while_suite:
	li	t0, -24
	li	t3, -452
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -452
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, s0, t1
	li	t3, -452
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -452
	add	t3, s0, t3
	lw	t0, 0(t3)
	lw	t1, 0(t0)
	li	t3, -456
	add	t3, s0, t3
	sw	t1, 0(t3)
	lw	t1, fuckLLVM_m
	li	t3, -460
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -456
	add	t3, s0, t3
	lw	t0, 0(t3)
	li	t3, -460
	add	t3, s0, t3
	lw	t1, 0(t3)
	slt	t2, t0, t1
	li	t3, -464
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -464
	add	t3, s0, t3
	lw	t0, 0(t3)
	xori	t1, t0, 1
	li	t3, -464
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -464
	add	t3, s0, t3
	lw	t0, 0(t3)
	bnez	t0, .main_ID49_if_true
	j	.main_ID49_if_out
.main_ID47_while_out:
	lw	t1, fuckLLVM_rk
	li	t3, -468
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t0, 1
	li	t3, -472
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -472
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	find
	mv	t1, a0
	li	t3, -476
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t0, 4
	li	t3, -480
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -476
	add	t3, s0, t3
	lw	t0, 0(t3)
	li	t3, -480
	add	t3, s0, t3
	lw	t1, 0(t3)
	mul	t2, t0, t1
	li	t3, -484
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -468
	add	t3, s0, t3
	lw	t0, 0(t3)
	li	t3, -484
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, t0, t1
	li	t3, -488
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -488
	add	t3, s0, t3
	lw	t0, 0(t3)
	lw	t1, 0(t0)
	li	t3, -492
	add	t3, s0, t3
	sw	t1, 0(t3)
	lw	t1, fuckLLVM_n
	li	t3, -496
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -492
	add	t3, s0, t3
	lw	t0, 0(t3)
	li	t3, -496
	add	t3, s0, t3
	lw	t1, 0(t3)
	xor	t2, t0, t1
	li	t3, -500
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -500
	add	t3, s0, t3
	lw	t0, 0(t3)
	sltiu	t1, t0, 1
	li	t3, -500
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -500
	add	t3, s0, t3
	lw	t0, 0(t3)
	bnez	t0, .main_ID80_if_true
	j	.main_ID80_if_false
.main_ID80_if_true:
	lw	t1, fuckLLVM_ans
	li	t3, -504
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -504
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	printInt
	j	.main_ID80_if_out
.main_ID80_if_false:
	li	t0, 0
	li	t3, -508
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t0, 1
	li	t3, -512
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -508
	add	t3, s0, t3
	lw	t0, 0(t3)
	li	t3, -512
	add	t3, s0, t3
	lw	t1, 0(t3)
	sub	t2, t0, t1
	li	t3, -516
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -516
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	printInt
	j	.main_ID80_if_out
.main_ID80_if_out:
	li	t0, 0
	li	t3, -520
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t0, -12
	li	t3, -524
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -524
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, s0, t1
	li	t3, -524
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -520
	add	t3, s0, t3
	lw	t0, 0(t3)
	li	t3, -524
	add	t3, s0, t3
	lw	t1, 0(t3)
	sw	t0, 0(t1)
	j	.main_return
	j	.main_return
.main_return:
	li	t0, -12
	li	t3, -528
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -528
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, s0, t1
	li	t3, -528
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -528
	add	t3, s0, t3
	lw	t0, 0(t3)
	lw	t1, 0(t0)
	li	t3, -532
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -532
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	li	t0, 544
	add	t1, sp, t0
	lw	ra, -4(t1)
	lw	s0, -8(t1)
	add	sp, sp, t0
	ret

	.section	.sbss
	.type	fuckLLVM_n,@object
	.globl	fuckLLVM_n
	.p2align	2
fuckLLVM_n:
	.word	0
	.size	fuckLLVM_n, 8

	.section	.sbss
	.type	fuckLLVM_m,@object
	.globl	fuckLLVM_m
	.p2align	2
fuckLLVM_m:
	.word	0
	.size	fuckLLVM_m, 8

	.section	.sbss
	.type	fuckLLVM_ans,@object
	.globl	fuckLLVM_ans
	.p2align	2
fuckLLVM_ans:
	.word	0
	.size	fuckLLVM_ans, 8

	.section	.sbss
	.type	fuckLLVM_fa,@object
	.globl	fuckLLVM_fa
	.p2align	2
fuckLLVM_fa:
	.word	0
	.size	fuckLLVM_fa, 8

	.section	.sbss
	.type	fuckLLVM_rk,@object
	.globl	fuckLLVM_rk
	.p2align	2
fuckLLVM_rk:
	.word	0
	.size	fuckLLVM_rk, 8

	.section	.sbss
	.type	fuckLLVM_e,@object
	.globl	fuckLLVM_e
	.p2align	2
fuckLLVM_e:
	.word	0
	.size	fuckLLVM_e, 8

