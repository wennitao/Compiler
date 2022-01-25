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

	.globl	main
	.p2align	2
	.type	main,@function
main:
.main_assemblyInit:
	li	t0, 896
	sub	sp, sp, t0
	add	t1, sp, t0
	sw	ra, -4(t1)
	sw	s0, -8(t1)
	mv	s0, t1
.main_entry:
	call	__init
	li	t0, 0
	li	t3, -40
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t0, -12
	li	t3, -44
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -44
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, s0, t1
	li	t3, -44
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -40
	add	t3, s0, t3
	lw	t0, 0(t3)
	li	t3, -44
	add	t3, s0, t3
	lw	t1, 0(t3)
	sw	t0, 0(t1)
	li	t0, 100
	li	t3, -48
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t0, 8
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
	li	t0, 4
	li	t3, -60
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -56
	add	t3, s0, t3
	lw	t0, 0(t3)
	li	t3, -60
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, t0, t1
	li	t3, -64
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -64
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	malloc
	mv	t1, a0
	li	t3, -68
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t0, 100
	li	t3, -72
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -72
	add	t3, s0, t3
	lw	t0, 0(t3)
	li	t3, -68
	add	t3, s0, t3
	lw	t1, 0(t3)
	sw	t0, 0(t1)
	li	t0, 1
	li	t3, -76
	add	t3, s0, t3
	sw	t0, 0(t3)
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
	li	t3, -68
	add	t3, s0, t3
	lw	t0, 0(t3)
	li	t3, -84
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, t0, t1
	li	t3, -88
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t0, -16
	li	t3, -92
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -92
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, s0, t1
	li	t3, -92
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -88
	add	t3, s0, t3
	lw	t0, 0(t3)
	li	t3, -92
	add	t3, s0, t3
	lw	t1, 0(t3)
	sw	t0, 0(t1)
	li	t0, 0
	li	t3, -96
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t0, -20
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
	li	t3, -96
	add	t3, s0, t3
	lw	t0, 0(t3)
	li	t3, -100
	add	t3, s0, t3
	lw	t1, 0(t3)
	sw	t0, 0(t1)
	j	.main_ID10_for_condition
.main_ID10_for_condition:
	li	t0, -20
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
	li	t0, 100
	li	t3, -112
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -108
	add	t3, s0, t3
	lw	t0, 0(t3)
	li	t3, -112
	add	t3, s0, t3
	lw	t1, 0(t3)
	slt	t2, t0, t1
	li	t3, -116
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -116
	add	t3, s0, t3
	lw	t0, 0(t3)
	bnez	t0, .main_ID10_for_suite
	j	.main_ID10_for_out
.main_ID10_for_suite:
	li	t0, -16
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
	li	t0, -20
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
	li	t0, 8
	li	t3, -136
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -132
	add	t3, s0, t3
	lw	t0, 0(t3)
	li	t3, -136
	add	t3, s0, t3
	lw	t1, 0(t3)
	mul	t2, t0, t1
	li	t3, -140
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -124
	add	t3, s0, t3
	lw	t0, 0(t3)
	li	t3, -140
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, t0, t1
	li	t3, -144
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t0, 100
	li	t3, -148
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t0, 4
	li	t3, -152
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -148
	add	t3, s0, t3
	lw	t0, 0(t3)
	li	t3, -152
	add	t3, s0, t3
	lw	t1, 0(t3)
	mul	t2, t0, t1
	li	t3, -156
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t0, 4
	li	t3, -160
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -156
	add	t3, s0, t3
	lw	t0, 0(t3)
	li	t3, -160
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, t0, t1
	li	t3, -164
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -164
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	malloc
	mv	t1, a0
	li	t3, -168
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t0, 100
	li	t3, -172
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -172
	add	t3, s0, t3
	lw	t0, 0(t3)
	li	t3, -168
	add	t3, s0, t3
	lw	t1, 0(t3)
	sw	t0, 0(t1)
	li	t0, 1
	li	t3, -176
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t0, 4
	li	t3, -180
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -176
	add	t3, s0, t3
	lw	t0, 0(t3)
	li	t3, -180
	add	t3, s0, t3
	lw	t1, 0(t3)
	mul	t2, t0, t1
	li	t3, -184
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -168
	add	t3, s0, t3
	lw	t0, 0(t3)
	li	t3, -184
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, t0, t1
	li	t3, -188
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -188
	add	t3, s0, t3
	lw	t0, 0(t3)
	li	t3, -144
	add	t3, s0, t3
	lw	t1, 0(t3)
	sw	t0, 0(t1)
	j	.main_ID10_for_incr
.main_ID10_for_incr:
	li	t0, -20
	li	t3, -192
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -192
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, s0, t1
	li	t3, -192
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -192
	add	t3, s0, t3
	lw	t0, 0(t3)
	lw	t1, 0(t0)
	li	t3, -196
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t0, 1
	li	t3, -200
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -196
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
	li	t3, -204
	add	t3, s0, t3
	lw	t0, 0(t3)
	li	t3, -208
	add	t3, s0, t3
	lw	t1, 0(t3)
	sw	t0, 0(t1)
	j	.main_ID10_for_condition
.main_ID10_for_out:
	li	t0, 0
	li	t3, -212
	add	t3, s0, t3
	sw	t0, 0(t3)
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
	li	t3, -212
	add	t3, s0, t3
	lw	t0, 0(t3)
	li	t3, -216
	add	t3, s0, t3
	lw	t1, 0(t3)
	sw	t0, 0(t1)
	li	t0, 0
	li	t3, -220
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t0, -20
	li	t3, -224
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -224
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, s0, t1
	li	t3, -224
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -220
	add	t3, s0, t3
	lw	t0, 0(t3)
	li	t3, -224
	add	t3, s0, t3
	lw	t1, 0(t3)
	sw	t0, 0(t1)
	j	.main_ID25_for_condition
.main_ID25_for_condition:
	li	t0, -20
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
	li	t0, 100
	li	t3, -236
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -232
	add	t3, s0, t3
	lw	t0, 0(t3)
	li	t3, -236
	add	t3, s0, t3
	lw	t1, 0(t3)
	slt	t2, t0, t1
	li	t3, -240
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -240
	add	t3, s0, t3
	lw	t0, 0(t3)
	bnez	t0, .main_ID25_for_suite
	j	.main_ID25_for_out
.main_ID25_for_suite:
	li	t0, 0
	li	t3, -244
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t0, -24
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
	li	t3, -244
	add	t3, s0, t3
	lw	t0, 0(t3)
	li	t3, -248
	add	t3, s0, t3
	lw	t1, 0(t3)
	sw	t0, 0(t1)
	j	.main_ID27_for_condition
.main_ID27_for_condition:
	li	t0, -24
	li	t3, -252
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -252
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, s0, t1
	li	t3, -252
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -252
	add	t3, s0, t3
	lw	t0, 0(t3)
	lw	t1, 0(t0)
	li	t3, -256
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t0, 100
	li	t3, -260
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -256
	add	t3, s0, t3
	lw	t0, 0(t3)
	li	t3, -260
	add	t3, s0, t3
	lw	t1, 0(t3)
	slt	t2, t0, t1
	li	t3, -264
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -264
	add	t3, s0, t3
	lw	t0, 0(t3)
	bnez	t0, .main_ID27_for_suite
	j	.main_ID27_for_out
.main_ID27_for_suite:
	li	t0, -16
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
	li	t3, -268
	add	t3, s0, t3
	lw	t0, 0(t3)
	lw	t1, 0(t0)
	li	t3, -272
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t0, -20
	li	t3, -276
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -276
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, s0, t1
	li	t3, -276
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -276
	add	t3, s0, t3
	lw	t0, 0(t3)
	lw	t1, 0(t0)
	li	t3, -280
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t0, 8
	li	t3, -284
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -280
	add	t3, s0, t3
	lw	t0, 0(t3)
	li	t3, -284
	add	t3, s0, t3
	lw	t1, 0(t3)
	mul	t2, t0, t1
	li	t3, -288
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -272
	add	t3, s0, t3
	lw	t0, 0(t3)
	li	t3, -288
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, t0, t1
	li	t3, -292
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -292
	add	t3, s0, t3
	lw	t0, 0(t3)
	lw	t1, 0(t0)
	li	t3, -296
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t0, -24
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
	li	t0, 4
	li	t3, -308
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -304
	add	t3, s0, t3
	lw	t0, 0(t3)
	li	t3, -308
	add	t3, s0, t3
	lw	t1, 0(t3)
	mul	t2, t0, t1
	li	t3, -312
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -296
	add	t3, s0, t3
	lw	t0, 0(t3)
	li	t3, -312
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, t0, t1
	li	t3, -316
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t0, 0
	li	t3, -320
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -320
	add	t3, s0, t3
	lw	t0, 0(t3)
	li	t3, -316
	add	t3, s0, t3
	lw	t1, 0(t3)
	sw	t0, 0(t1)
	j	.main_ID27_for_incr
.main_ID27_for_incr:
	li	t0, -24
	li	t3, -324
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -324
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, s0, t1
	li	t3, -324
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -324
	add	t3, s0, t3
	lw	t0, 0(t3)
	lw	t1, 0(t0)
	li	t3, -328
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t0, 1
	li	t3, -332
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -328
	add	t3, s0, t3
	lw	t0, 0(t3)
	li	t3, -332
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, t0, t1
	li	t3, -336
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t0, -24
	li	t3, -340
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -340
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, s0, t1
	li	t3, -340
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -336
	add	t3, s0, t3
	lw	t0, 0(t3)
	li	t3, -340
	add	t3, s0, t3
	lw	t1, 0(t3)
	sw	t0, 0(t1)
	j	.main_ID27_for_condition
.main_ID27_for_out:
	j	.main_ID25_for_incr
.main_ID25_for_incr:
	li	t0, -20
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
	li	t3, -344
	add	t3, s0, t3
	lw	t0, 0(t3)
	lw	t1, 0(t0)
	li	t3, -348
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t0, 1
	li	t3, -352
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -348
	add	t3, s0, t3
	lw	t0, 0(t3)
	li	t3, -352
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, t0, t1
	li	t3, -356
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t0, -20
	li	t3, -360
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -360
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, s0, t1
	li	t3, -360
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -356
	add	t3, s0, t3
	lw	t0, 0(t3)
	li	t3, -360
	add	t3, s0, t3
	lw	t1, 0(t3)
	sw	t0, 0(t1)
	j	.main_ID25_for_condition
.main_ID25_for_out:
	li	t0, 0
	li	t3, -364
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t0, -20
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
	li	t3, -364
	add	t3, s0, t3
	lw	t0, 0(t3)
	li	t3, -368
	add	t3, s0, t3
	lw	t1, 0(t3)
	sw	t0, 0(t1)
	j	.main_ID41_for_condition
.main_ID41_for_condition:
	li	t0, -20
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
	li	t0, 100
	li	t3, -380
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -376
	add	t3, s0, t3
	lw	t0, 0(t3)
	li	t3, -380
	add	t3, s0, t3
	lw	t1, 0(t3)
	slt	t2, t0, t1
	li	t3, -384
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -384
	add	t3, s0, t3
	lw	t0, 0(t3)
	bnez	t0, .main_ID41_for_suite
	j	.main_ID41_for_out
.main_ID41_for_suite:
	li	t0, -20
	li	t3, -388
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -388
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, s0, t1
	li	t3, -388
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -388
	add	t3, s0, t3
	lw	t0, 0(t3)
	lw	t1, 0(t0)
	li	t3, -392
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t0, 20
	li	t3, -396
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -396
	add	t3, s0, t3
	lw	t0, 0(t3)
	li	t3, -392
	add	t3, s0, t3
	lw	t1, 0(t3)
	slt	t2, t0, t1
	li	t3, -400
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t0, 0
	li	t3, -404
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -404
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	t1, t0
	li	t3, -408
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -400
	add	t3, s0, t3
	lw	t0, 0(t3)
	bnez	t0, .main_ID45_AndAnd_true
	li	t3, -404
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	t1, t0
	li	t3, -408
	add	t3, s0, t3
	sw	t1, 0(t3)
	j	.main_ID45_AndAnd_out
.main_ID45_AndAnd_true:
	li	t0, -20
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
	li	t3, -412
	add	t3, s0, t3
	lw	t0, 0(t3)
	lw	t1, 0(t0)
	li	t3, -416
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t0, 80
	li	t3, -420
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -416
	add	t3, s0, t3
	lw	t0, 0(t3)
	li	t3, -420
	add	t3, s0, t3
	lw	t1, 0(t3)
	slt	t2, t0, t1
	li	t3, -424
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -424
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	t1, t0
	li	t3, -408
	add	t3, s0, t3
	sw	t1, 0(t3)
	j	.main_ID45_AndAnd_out
.main_ID45_AndAnd_out:
	li	t3, -408
	add	t3, s0, t3
	lw	t0, 0(t3)
	bnez	t0, .main_ID48_if_true
	j	.main_ID48_if_out
.main_ID48_for_condition:
	li	t0, -24
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
	li	t0, 100
	li	t3, -436
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -432
	add	t3, s0, t3
	lw	t0, 0(t3)
	li	t3, -436
	add	t3, s0, t3
	lw	t1, 0(t3)
	slt	t2, t0, t1
	li	t3, -440
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -440
	add	t3, s0, t3
	lw	t0, 0(t3)
	bnez	t0, .main_ID48_for_suite
	j	.main_ID48_for_out
.main_ID48_for_suite:
	li	t0, -24
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
	li	t0, 5
	li	t3, -452
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -452
	add	t3, s0, t3
	lw	t0, 0(t3)
	li	t3, -448
	add	t3, s0, t3
	lw	t1, 0(t3)
	slt	t2, t0, t1
	li	t3, -456
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t0, 1
	li	t3, -460
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -460
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	t1, t0
	li	t3, -464
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -456
	add	t3, s0, t3
	lw	t0, 0(t3)
	bnez	t0, .main_ID52_OrOr_out
	li	t3, -460
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	t1, t0
	li	t3, -464
	add	t3, s0, t3
	sw	t1, 0(t3)
	j	.main_ID52_OrOr_false
.main_ID52_OrOr_false:
	li	t0, -20
	li	t3, -468
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -468
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, s0, t1
	li	t3, -468
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -468
	add	t3, s0, t3
	lw	t0, 0(t3)
	lw	t1, 0(t0)
	li	t3, -472
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t0, 90
	li	t3, -476
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -472
	add	t3, s0, t3
	lw	t0, 0(t3)
	li	t3, -476
	add	t3, s0, t3
	lw	t1, 0(t3)
	slt	t2, t0, t1
	li	t3, -480
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -480
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	t1, t0
	li	t3, -464
	add	t3, s0, t3
	sw	t1, 0(t3)
	j	.main_ID52_OrOr_out
.main_ID52_OrOr_out:
	li	t3, -464
	add	t3, s0, t3
	lw	t0, 0(t3)
	bnez	t0, .main_ID55_if_true
	j	.main_ID55_if_out
.main_ID55_if_true:
	li	t0, -24
	li	t3, -484
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -484
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, s0, t1
	li	t3, -484
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -484
	add	t3, s0, t3
	lw	t0, 0(t3)
	lw	t1, 0(t0)
	li	t3, -488
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t0, 4
	li	t3, -492
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -488
	add	t3, s0, t3
	lw	t0, 0(t3)
	li	t3, -492
	add	t3, s0, t3
	lw	t1, 0(t3)
	mul	t2, t0, t1
	li	t3, -496
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t0, 100
	li	t3, -500
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -496
	add	t3, s0, t3
	lw	t0, 0(t3)
	li	t3, -500
	add	t3, s0, t3
	lw	t1, 0(t3)
	div	t2, t0, t1
	li	t3, -504
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t0, -32
	li	t3, -508
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -508
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, s0, t1
	li	t3, -508
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -504
	add	t3, s0, t3
	lw	t0, 0(t3)
	li	t3, -508
	add	t3, s0, t3
	lw	t1, 0(t3)
	sw	t0, 0(t1)
	li	t0, -24
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
	li	t3, -512
	add	t3, s0, t3
	lw	t0, 0(t3)
	lw	t1, 0(t0)
	li	t3, -516
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t0, 4
	li	t3, -520
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -516
	add	t3, s0, t3
	lw	t0, 0(t3)
	li	t3, -520
	add	t3, s0, t3
	lw	t1, 0(t3)
	mul	t2, t0, t1
	li	t3, -524
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t0, 100
	li	t3, -528
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -524
	add	t3, s0, t3
	lw	t0, 0(t3)
	li	t3, -528
	add	t3, s0, t3
	lw	t1, 0(t3)
	rem	t2, t0, t1
	li	t3, -532
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t0, -36
	li	t3, -536
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -536
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, s0, t1
	li	t3, -536
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -532
	add	t3, s0, t3
	lw	t0, 0(t3)
	li	t3, -536
	add	t3, s0, t3
	lw	t1, 0(t3)
	sw	t0, 0(t1)
	li	t0, -16
	li	t3, -540
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -540
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, s0, t1
	li	t3, -540
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -540
	add	t3, s0, t3
	lw	t0, 0(t3)
	lw	t1, 0(t0)
	li	t3, -544
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t0, -20
	li	t3, -548
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -548
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, s0, t1
	li	t3, -548
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -548
	add	t3, s0, t3
	lw	t0, 0(t3)
	lw	t1, 0(t0)
	li	t3, -552
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t0, -32
	li	t3, -556
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -556
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, s0, t1
	li	t3, -556
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -556
	add	t3, s0, t3
	lw	t0, 0(t3)
	lw	t1, 0(t0)
	li	t3, -560
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -552
	add	t3, s0, t3
	lw	t0, 0(t3)
	li	t3, -560
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, t0, t1
	li	t3, -564
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t0, 8
	li	t3, -568
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -564
	add	t3, s0, t3
	lw	t0, 0(t3)
	li	t3, -568
	add	t3, s0, t3
	lw	t1, 0(t3)
	mul	t2, t0, t1
	li	t3, -572
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -544
	add	t3, s0, t3
	lw	t0, 0(t3)
	li	t3, -572
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, t0, t1
	li	t3, -576
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -576
	add	t3, s0, t3
	lw	t0, 0(t3)
	lw	t1, 0(t0)
	li	t3, -580
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t0, -36
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
	li	t0, 4
	li	t3, -592
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -588
	add	t3, s0, t3
	lw	t0, 0(t3)
	li	t3, -592
	add	t3, s0, t3
	lw	t1, 0(t3)
	mul	t2, t0, t1
	li	t3, -596
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -580
	add	t3, s0, t3
	lw	t0, 0(t3)
	li	t3, -596
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, t0, t1
	li	t3, -600
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t0, -24
	li	t3, -604
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -604
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, s0, t1
	li	t3, -604
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -604
	add	t3, s0, t3
	lw	t0, 0(t3)
	lw	t1, 0(t0)
	li	t3, -608
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t0, 100
	li	t3, -612
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t0, 1
	li	t3, -616
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -612
	add	t3, s0, t3
	lw	t0, 0(t3)
	li	t3, -616
	add	t3, s0, t3
	lw	t1, 0(t3)
	sub	t2, t0, t1
	li	t3, -620
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t0, 1
	li	t3, -624
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -620
	add	t3, s0, t3
	lw	t0, 0(t3)
	li	t3, -624
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, t0, t1
	li	t3, -628
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t0, 1
	li	t3, -632
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -628
	add	t3, s0, t3
	lw	t0, 0(t3)
	li	t3, -632
	add	t3, s0, t3
	lw	t1, 0(t3)
	sub	t2, t0, t1
	li	t3, -636
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t0, 1
	li	t3, -640
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -636
	add	t3, s0, t3
	lw	t0, 0(t3)
	li	t3, -640
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, t0, t1
	li	t3, -644
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t0, 2
	li	t3, -648
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -644
	add	t3, s0, t3
	lw	t0, 0(t3)
	li	t3, -648
	add	t3, s0, t3
	lw	t1, 0(t3)
	div	t2, t0, t1
	li	t3, -652
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -608
	add	t3, s0, t3
	lw	t0, 0(t3)
	li	t3, -652
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, t0, t1
	li	t3, -656
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -656
	add	t3, s0, t3
	lw	t0, 0(t3)
	li	t3, -600
	add	t3, s0, t3
	lw	t1, 0(t3)
	sw	t0, 0(t1)
	j	.main_ID55_if_out
.main_ID55_if_out:
	j	.main_ID48_for_incr
.main_ID48_for_incr:
	li	t0, -24
	li	t3, -660
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -660
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, s0, t1
	li	t3, -660
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -660
	add	t3, s0, t3
	lw	t0, 0(t3)
	lw	t1, 0(t0)
	li	t3, -664
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t0, 1
	li	t3, -668
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -664
	add	t3, s0, t3
	lw	t0, 0(t3)
	li	t3, -668
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, t0, t1
	li	t3, -672
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t0, -24
	li	t3, -676
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -676
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, s0, t1
	li	t3, -676
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -672
	add	t3, s0, t3
	lw	t0, 0(t3)
	li	t3, -676
	add	t3, s0, t3
	lw	t1, 0(t3)
	sw	t0, 0(t1)
	j	.main_ID48_for_condition
.main_ID48_for_out:
	j	.main_ID48_if_out
.main_ID48_if_true:
	li	t0, 0
	li	t3, -680
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t0, -24
	li	t3, -684
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -684
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, s0, t1
	li	t3, -684
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -680
	add	t3, s0, t3
	lw	t0, 0(t3)
	li	t3, -684
	add	t3, s0, t3
	lw	t1, 0(t3)
	sw	t0, 0(t1)
	j	.main_ID48_for_condition
.main_ID48_if_out:
	j	.main_ID41_for_incr
.main_ID41_for_incr:
	li	t0, -20
	li	t3, -688
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -688
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, s0, t1
	li	t3, -688
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -688
	add	t3, s0, t3
	lw	t0, 0(t3)
	lw	t1, 0(t0)
	li	t3, -692
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t0, 1
	li	t3, -696
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -692
	add	t3, s0, t3
	lw	t0, 0(t3)
	li	t3, -696
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, t0, t1
	li	t3, -700
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t0, -20
	li	t3, -704
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -704
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, s0, t1
	li	t3, -704
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -700
	add	t3, s0, t3
	lw	t0, 0(t3)
	li	t3, -704
	add	t3, s0, t3
	lw	t1, 0(t3)
	sw	t0, 0(t1)
	j	.main_ID41_for_condition
.main_ID41_for_out:
	li	t0, 0
	li	t3, -708
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t0, -20
	li	t3, -712
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -712
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, s0, t1
	li	t3, -712
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -708
	add	t3, s0, t3
	lw	t0, 0(t3)
	li	t3, -712
	add	t3, s0, t3
	lw	t1, 0(t3)
	sw	t0, 0(t1)
	j	.main_ID80_for_condition
.main_ID80_for_condition:
	li	t0, -20
	li	t3, -716
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -716
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, s0, t1
	li	t3, -716
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -716
	add	t3, s0, t3
	lw	t0, 0(t3)
	lw	t1, 0(t0)
	li	t3, -720
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t0, 100
	li	t3, -724
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -720
	add	t3, s0, t3
	lw	t0, 0(t3)
	li	t3, -724
	add	t3, s0, t3
	lw	t1, 0(t3)
	slt	t2, t0, t1
	li	t3, -728
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -728
	add	t3, s0, t3
	lw	t0, 0(t3)
	bnez	t0, .main_ID80_for_suite
	j	.main_ID80_for_out
.main_ID80_for_suite:
	li	t0, 0
	li	t3, -732
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t0, -24
	li	t3, -736
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -736
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, s0, t1
	li	t3, -736
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -732
	add	t3, s0, t3
	lw	t0, 0(t3)
	li	t3, -736
	add	t3, s0, t3
	lw	t1, 0(t3)
	sw	t0, 0(t1)
	j	.main_ID82_for_condition
.main_ID82_for_condition:
	li	t0, -24
	li	t3, -740
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -740
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, s0, t1
	li	t3, -740
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -740
	add	t3, s0, t3
	lw	t0, 0(t3)
	lw	t1, 0(t0)
	li	t3, -744
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t0, 100
	li	t3, -748
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -744
	add	t3, s0, t3
	lw	t0, 0(t3)
	li	t3, -748
	add	t3, s0, t3
	lw	t1, 0(t3)
	slt	t2, t0, t1
	li	t3, -752
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -752
	add	t3, s0, t3
	lw	t0, 0(t3)
	bnez	t0, .main_ID82_for_suite
	j	.main_ID82_for_out
.main_ID82_for_suite:
	li	t0, -28
	li	t3, -756
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -756
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, s0, t1
	li	t3, -756
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -756
	add	t3, s0, t3
	lw	t0, 0(t3)
	lw	t1, 0(t0)
	li	t3, -760
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t0, -16
	li	t3, -764
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -764
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, s0, t1
	li	t3, -764
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -764
	add	t3, s0, t3
	lw	t0, 0(t3)
	lw	t1, 0(t0)
	li	t3, -768
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t0, -20
	li	t3, -772
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -772
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, s0, t1
	li	t3, -772
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -772
	add	t3, s0, t3
	lw	t0, 0(t3)
	lw	t1, 0(t0)
	li	t3, -776
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t0, 8
	li	t3, -780
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -776
	add	t3, s0, t3
	lw	t0, 0(t3)
	li	t3, -780
	add	t3, s0, t3
	lw	t1, 0(t3)
	mul	t2, t0, t1
	li	t3, -784
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -768
	add	t3, s0, t3
	lw	t0, 0(t3)
	li	t3, -784
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, t0, t1
	li	t3, -788
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -788
	add	t3, s0, t3
	lw	t0, 0(t3)
	lw	t1, 0(t0)
	li	t3, -792
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t0, -24
	li	t3, -796
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -796
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, s0, t1
	li	t3, -796
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -796
	add	t3, s0, t3
	lw	t0, 0(t3)
	lw	t1, 0(t0)
	li	t3, -800
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t0, 4
	li	t3, -804
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -800
	add	t3, s0, t3
	lw	t0, 0(t3)
	li	t3, -804
	add	t3, s0, t3
	lw	t1, 0(t3)
	mul	t2, t0, t1
	li	t3, -808
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -792
	add	t3, s0, t3
	lw	t0, 0(t3)
	li	t3, -808
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, t0, t1
	li	t3, -812
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -812
	add	t3, s0, t3
	lw	t0, 0(t3)
	lw	t1, 0(t0)
	li	t3, -816
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -760
	add	t3, s0, t3
	lw	t0, 0(t3)
	li	t3, -816
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, t0, t1
	li	t3, -820
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t0, -28
	li	t3, -824
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -824
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, s0, t1
	li	t3, -824
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -820
	add	t3, s0, t3
	lw	t0, 0(t3)
	li	t3, -824
	add	t3, s0, t3
	lw	t1, 0(t3)
	sw	t0, 0(t1)
	j	.main_ID82_for_incr
.main_ID82_for_incr:
	li	t0, -24
	li	t3, -828
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -828
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, s0, t1
	li	t3, -828
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -828
	add	t3, s0, t3
	lw	t0, 0(t3)
	lw	t1, 0(t0)
	li	t3, -832
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t0, 1
	li	t3, -836
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -832
	add	t3, s0, t3
	lw	t0, 0(t3)
	li	t3, -836
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, t0, t1
	li	t3, -840
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t0, -24
	li	t3, -844
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -844
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, s0, t1
	li	t3, -844
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -840
	add	t3, s0, t3
	lw	t0, 0(t3)
	li	t3, -844
	add	t3, s0, t3
	lw	t1, 0(t3)
	sw	t0, 0(t1)
	j	.main_ID82_for_condition
.main_ID82_for_out:
	j	.main_ID80_for_incr
.main_ID80_for_incr:
	li	t0, -20
	li	t3, -848
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -848
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, s0, t1
	li	t3, -848
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -848
	add	t3, s0, t3
	lw	t0, 0(t3)
	lw	t1, 0(t0)
	li	t3, -852
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t0, 1
	li	t3, -856
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -852
	add	t3, s0, t3
	lw	t0, 0(t3)
	li	t3, -856
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, t0, t1
	li	t3, -860
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t0, -20
	li	t3, -864
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -864
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, s0, t1
	li	t3, -864
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -860
	add	t3, s0, t3
	lw	t0, 0(t3)
	li	t3, -864
	add	t3, s0, t3
	lw	t1, 0(t3)
	sw	t0, 0(t1)
	j	.main_ID80_for_condition
.main_ID80_for_out:
	li	t0, -28
	li	t3, -868
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -868
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, s0, t1
	li	t3, -868
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -868
	add	t3, s0, t3
	lw	t0, 0(t3)
	lw	t1, 0(t0)
	li	t3, -872
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -872
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	toString
	mv	t1, a0
	li	t3, -876
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -876
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	println
	li	t0, 0
	li	t3, -880
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t0, -12
	li	t3, -884
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -884
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, s0, t1
	li	t3, -884
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -880
	add	t3, s0, t3
	lw	t0, 0(t3)
	li	t3, -884
	add	t3, s0, t3
	lw	t1, 0(t3)
	sw	t0, 0(t1)
	j	.main_return
	j	.main_return
.main_return:
	li	t0, -12
	li	t3, -888
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -888
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, s0, t1
	li	t3, -888
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -888
	add	t3, s0, t3
	lw	t0, 0(t3)
	lw	t1, 0(t0)
	li	t3, -892
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -892
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	li	t0, 896
	add	t1, sp, t0
	lw	ra, -4(t1)
	lw	s0, -8(t1)
	add	sp, sp, t0
	ret

