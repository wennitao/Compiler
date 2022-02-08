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

	.globl	gcd
	.p2align	2
	.type	gcd,@function
gcd:
.gcd_assemblyInit:
	li	t0, 384
	sub	sp, sp, t0
	add	t1, sp, t0
	sw	ra, -4(t1)
	sw	s0, -8(t1)
	mv	s0, t1
	mv	t0, a0
	li	t1, -204
	add	t1, s0, t1
	sw	t0, 0(t1)
	mv	t0, a2
	li	t1, -260
	add	t1, s0, t1
	sw	t0, 0(t1)
	mv	t0, a3
	li	t1, -216
	add	t1, s0, t1
	sw	t0, 0(t1)
	mv	t0, a5
	li	t1, -248
	add	t1, s0, t1
	sw	t0, 0(t1)
	li	t1, -232
	add	t1, s0, t1
	sw	a7, 0(t1)
	li	t1, -268
	add	t1, s0, t1
	lw	t1, 0(t1)
	lw	t1, 0(s0)
	lw	a3, 4(s0)
	lw	t6, 8(s0)
	lw	a7, 12(s0)
	li	t1, -272
	add	t1, s0, t1
	lw	t1, 0(t1)
	lw	t1, 16(s0)
	li	t1, -172
	add	t1, s0, t1
	lw	t1, 0(t1)
	lw	t1, 20(s0)
	lw	t1, 24(s0)
	lw	a2, 28(s0)
	lw	t4, 32(s0)
	lw	s1, 36(s0)
	lw	a0, 40(s0)
	lw	t3, 44(s0)
	lw	s8, 48(s0)
	li	t2, -184
	add	t2, s0, t2
	lw	t2, 0(t2)
	lw	t2, 52(s0)
	li	t2, -276
	add	t2, s0, t2
	lw	t2, 0(t2)
	lw	t2, 56(s0)
	li	t2, -256
	add	t2, s0, t2
	lw	t2, 0(t2)
	lw	t2, 60(s0)
	li	t2, -156
	add	t2, s0, t2
	lw	t2, 0(t2)
	lw	t2, 64(s0)
	lw	s2, 68(s0)
	li	t2, -220
	add	t2, s0, t2
	lw	t2, 0(t2)
	lw	t2, 72(s0)
	lw	t2, 76(s0)
	lw	t5, 80(s0)
	li	a5, -236
	add	a5, s0, a5
	lw	a5, 0(a5)
	lw	a5, 84(s0)
	lw	s10, 88(s0)
	lw	a5, 92(s0)
	mv	s3, s1
	li	s6, -196
	add	s6, s0, s6
	sw	s3, 0(s6)
	mv	s3, s2
	li	s6, -176
	add	s6, s0, s6
	sw	s3, 0(s6)
	li	s6, -244
	add	s6, s0, s6
	sw	s3, 0(s6)
	mv	s3, s6
	li	s6, -240
	add	s6, s0, s6
	sw	s3, 0(s6)
	mv	s6, s8
	li	s3, -200
	add	s3, s0, s3
	sw	s6, 0(s3)
	mv	s3, s10
	li	t0, -228
	add	t0, s0, t0
	sw	s3, 0(t0)
.gcd_entry:
	li	t0, -12
	add	t0, s0, t0
	li	s3, -204
	add	s3, s0, s3
	lw	s3, 0(s3)
	sw	s3, 0(t0)
	li	t0, -16
	add	t0, s0, t0
	sw	a1, 0(t0)
	li	t0, -20
	add	t0, s0, t0
	li	a1, -260
	add	a1, s0, a1
	lw	a1, 0(a1)
	sw	a1, 0(t0)
	li	t0, -24
	add	t0, s0, t0
	li	a1, -216
	add	a1, s0, a1
	lw	a1, 0(a1)
	sw	a1, 0(t0)
	li	t0, -28
	add	t0, s0, t0
	sw	a4, 0(t0)
	li	a1, -32
	add	a1, s0, a1
	li	t0, -248
	add	t0, s0, t0
	lw	t0, 0(t0)
	sw	t0, 0(a1)
	li	t0, -36
	add	t0, s0, t0
	sw	a6, 0(t0)
	li	t0, -40
	add	t0, s0, t0
	li	a1, -232
	add	a1, s0, a1
	lw	a1, 0(a1)
	sw	a1, 0(t0)
	li	t0, -44
	add	t0, s0, t0
	li	a1, -268
	add	a1, s0, a1
	lw	a1, 0(a1)
	sw	a1, 0(t0)
	li	t0, -48
	add	t0, s0, t0
	sw	a3, 0(t0)
	li	t0, -52
	add	t0, s0, t0
	sw	t6, 0(t0)
	li	t0, -56
	add	t0, s0, t0
	sw	a7, 0(t0)
	li	a1, -60
	add	a1, s0, a1
	li	t0, -272
	add	t0, s0, t0
	lw	t0, 0(t0)
	sw	t0, 0(a1)
	li	a1, -64
	add	a1, s0, a1
	li	t0, -172
	add	t0, s0, t0
	lw	t0, 0(t0)
	sw	t0, 0(a1)
	li	t0, -68
	add	t0, s0, t0
	sw	t1, 0(t0)
	li	t0, -72
	add	t0, s0, t0
	sw	a2, 0(t0)
	li	t0, -76
	add	t0, s0, t0
	sw	t4, 0(t0)
	li	t0, -80
	add	t0, s0, t0
	sw	s1, 0(t0)
	li	t0, -84
	add	t0, s0, t0
	sw	a0, 0(t0)
	li	t0, -88
	add	t0, s0, t0
	sw	t3, 0(t0)
	li	t0, -92
	add	t0, s0, t0
	sw	s8, 0(t0)
	li	t0, -96
	add	t0, s0, t0
	li	t1, -184
	add	t1, s0, t1
	lw	t1, 0(t1)
	sw	t1, 0(t0)
	li	t0, -100
	add	t0, s0, t0
	li	t1, -276
	add	t1, s0, t1
	lw	t1, 0(t1)
	sw	t1, 0(t0)
	li	t1, -104
	add	t1, s0, t1
	li	t0, -256
	add	t0, s0, t0
	lw	t0, 0(t0)
	sw	t0, 0(t1)
	li	t1, -108
	add	t1, s0, t1
	li	t0, -156
	add	t0, s0, t0
	lw	t0, 0(t0)
	sw	t0, 0(t1)
	li	t0, -112
	add	t0, s0, t0
	sw	s2, 0(t0)
	li	t1, -116
	add	t1, s0, t1
	li	t0, -220
	add	t0, s0, t0
	lw	t0, 0(t0)
	sw	t0, 0(t1)
	li	t0, -120
	add	t0, s0, t0
	sw	t2, 0(t0)
	li	t0, -124
	add	t0, s0, t0
	sw	t5, 0(t0)
	li	t0, -128
	add	t0, s0, t0
	li	t1, -236
	add	t1, s0, t1
	lw	t1, 0(t1)
	sw	t1, 0(t0)
	li	t0, -132
	add	t0, s0, t0
	sw	s10, 0(t0)
	li	t0, -136
	add	t0, s0, t0
	sw	a5, 0(t0)
	li	t1, 0
	li	t0, -144
	add	t0, s0, t0
	sw	t1, 0(t0)
	j	.gcd_ID66_for_condition
.gcd_ID66_for_condition:
	li	t0, -144
	add	t0, s0, t0
	lw	t1, 0(t0)
	li	t0, 10
	slt	t0, t0, t1
	xori	t0, t0, 1
	bnez	t0, .gcd_ID66_for_suite
	j	.gcd_ID66_for_out
.gcd_ID66_for_suite:
	li	t0, -20
	add	t0, s0, t0
	lw	t1, 0(t0)
	li	t0, -24
	add	t0, s0, t0
	lw	t0, 0(t0)
	add	t1, t1, t0
	li	t0, -28
	add	t0, s0, t0
	lw	t0, 0(t0)
	add	t1, t1, t0
	li	t0, -32
	add	t0, s0, t0
	lw	t0, 0(t0)
	add	t0, t1, t0
	li	t1, -36
	add	t1, s0, t1
	lw	t1, 0(t1)
	add	t1, t0, t1
	li	t0, -40
	add	t0, s0, t0
	lw	t0, 0(t0)
	add	t1, t1, t0
	li	t0, -44
	add	t0, s0, t0
	lw	t0, 0(t0)
	add	t0, t1, t0
	li	t1, -48
	add	t1, s0, t1
	lw	t1, 0(t1)
	add	t1, t0, t1
	li	t0, -52
	add	t0, s0, t0
	lw	t0, 0(t0)
	add	t0, t1, t0
	li	t1, -56
	add	t1, s0, t1
	lw	t1, 0(t1)
	add	t1, t0, t1
	li	t0, -60
	add	t0, s0, t0
	lw	t0, 0(t0)
	add	t0, t1, t0
	li	t1, -64
	add	t1, s0, t1
	lw	t1, 0(t1)
	add	t1, t0, t1
	li	t0, -68
	add	t0, s0, t0
	lw	t0, 0(t0)
	add	t0, t1, t0
	li	t1, -72
	add	t1, s0, t1
	lw	t1, 0(t1)
	add	t0, t0, t1
	li	t1, -76
	add	t1, s0, t1
	lw	t1, 0(t1)
	add	t0, t0, t1
	li	t1, -80
	add	t1, s0, t1
	lw	t1, 0(t1)
	add	t0, t0, t1
	li	t1, -84
	add	t1, s0, t1
	lw	t1, 0(t1)
	add	t1, t0, t1
	li	t0, -88
	add	t0, s0, t0
	lw	t0, 0(t0)
	add	t1, t1, t0
	li	t0, -92
	add	t0, s0, t0
	lw	t0, 0(t0)
	add	t1, t1, t0
	li	t0, -96
	add	t0, s0, t0
	lw	t0, 0(t0)
	add	t1, t1, t0
	li	t0, -100
	add	t0, s0, t0
	lw	t0, 0(t0)
	add	t1, t1, t0
	li	t0, -104
	add	t0, s0, t0
	lw	t0, 0(t0)
	add	t0, t1, t0
	li	t1, -108
	add	t1, s0, t1
	lw	t1, 0(t1)
	add	t0, t0, t1
	li	t1, -112
	add	t1, s0, t1
	lw	t1, 0(t1)
	add	t0, t0, t1
	li	t1, -116
	add	t1, s0, t1
	lw	t1, 0(t1)
	add	t0, t0, t1
	li	t1, -120
	add	t1, s0, t1
	lw	t1, 0(t1)
	add	t0, t0, t1
	li	t1, -124
	add	t1, s0, t1
	lw	t1, 0(t1)
	add	t1, t0, t1
	li	t0, -128
	add	t0, s0, t0
	lw	t0, 0(t0)
	add	t0, t1, t0
	li	t1, -132
	add	t1, s0, t1
	lw	t1, 0(t1)
	add	t1, t0, t1
	li	t0, -136
	add	t0, s0, t0
	lw	t0, 0(t0)
	add	t1, t1, t0
	li	t0, 100
	rem	t0, t1, t0
	li	t1, -148
	add	t1, s0, t1
	sw	t0, 0(t1)
	j	.gcd_ID66_for_incr
.gcd_ID66_for_incr:
	li	t0, -144
	add	t0, s0, t0
	lw	t0, 0(t0)
	li	t1, 1
	add	t1, t0, t1
	li	t0, -144
	add	t0, s0, t0
	sw	t1, 0(t0)
	j	.gcd_ID66_for_condition
.gcd_ID66_for_out:
	li	t0, -12
	add	t0, s0, t0
	lw	t1, 0(t0)
	li	t0, -16
	add	t0, s0, t0
	lw	t0, 0(t0)
	rem	t1, t1, t0
	li	t0, 0
	xor	t0, t1, t0
	sltiu	t0, t0, 1
	bnez	t0, .gcd_ID134_if_true
	j	.gcd_ID134_if_false
.gcd_ID134_if_true:
	li	t0, -16
	add	t0, s0, t0
	lw	t1, 0(t0)
	li	t0, -140
	add	t0, s0, t0
	sw	t1, 0(t0)
	j	.gcd_return
	j	.gcd_ID134_if_out
.gcd_ID134_if_false:
	li	t0, -16
	add	t0, s0, t0
	li	t1, -164
	add	t1, s0, t1
	lw	t1, 0(t1)
	lw	t1, 0(t0)
	li	t0, -12
	add	t0, s0, t0
	lw	t1, 0(t0)
	li	t0, -16
	add	t0, s0, t0
	lw	t0, 0(t0)
	rem	s1, t1, t0
	li	t0, -148
	add	t0, s0, t0
	li	t1, -280
	add	t1, s0, t1
	lw	t1, 0(t1)
	lw	t1, 0(t0)
	li	t0, 10
	mv	a0, t0
	li	a1, 68
	li	t0, 0
	mv	a2, t0
	li	t0, 2
	mv	a3, t0
	li	a4, 4
	li	t0, 6
	mv	a5, t0
	li	a6, 8
	li	a7, 10
	li	t0, 12
	sw	t0, 0(sp)
	li	t0, 14
	sw	t0, 4(sp)
	li	t0, 16
	sw	t0, 8(sp)
	li	t0, 18
	sw	t0, 12(sp)
	li	t0, 20
	sw	t0, 16(sp)
	li	t0, 22
	sw	t0, 20(sp)
	li	t0, 24
	sw	t0, 24(sp)
	li	t0, 26
	sw	t0, 28(sp)
	li	t0, 28
	sw	t0, 32(sp)
	li	t0, 30
	sw	t0, 36(sp)
	li	t0, 32
	sw	t0, 40(sp)
	li	t0, 34
	sw	t0, 44(sp)
	li	t0, 36
	sw	t0, 48(sp)
	li	t0, 38
	sw	t0, 52(sp)
	li	t0, 40
	sw	t0, 56(sp)
	li	t0, 42
	sw	t0, 60(sp)
	li	t0, 44
	sw	t0, 64(sp)
	li	t0, 46
	sw	t0, 68(sp)
	li	t0, 48
	sw	t0, 72(sp)
	li	t0, 50
	sw	t0, 76(sp)
	li	t0, 52
	sw	t0, 80(sp)
	li	t0, 54
	sw	t0, 84(sp)
	li	t0, 56
	sw	t0, 88(sp)
	li	t0, 58
	sw	t0, 92(sp)
	call	gcd
	mv	t0, a0
	li	t1, -224
	add	t1, s0, t1
	sw	t0, 0(t1)
	li	t0, -28
	add	t0, s0, t0
	lw	a4, 0(t0)
	li	t0, -32
	add	t0, s0, t0
	lw	t4, 0(t0)
	li	t0, -36
	add	t0, s0, t0
	lw	a6, 0(t0)
	li	t0, -40
	add	t0, s0, t0
	lw	a7, 0(t0)
	li	t0, -44
	add	t0, s0, t0
	lw	t3, 0(t0)
	li	t1, -48
	add	t1, s0, t1
	li	t0, -168
	add	t0, s0, t0
	lw	t0, 0(t0)
	lw	t0, 0(t1)
	li	t1, -52
	add	t1, s0, t1
	li	t0, -188
	add	t0, s0, t0
	lw	t0, 0(t0)
	lw	t0, 0(t1)
	li	t0, -56
	add	t0, s0, t0
	lw	a3, 0(t0)
	li	t1, -60
	add	t1, s0, t1
	li	t0, -208
	add	t0, s0, t0
	lw	t0, 0(t0)
	lw	t0, 0(t1)
	li	t0, -64
	add	t0, s0, t0
	lw	t1, 0(t0)
	li	t2, -68
	add	t2, s0, t2
	li	t0, -160
	add	t0, s0, t0
	lw	t0, 0(t0)
	lw	t0, 0(t2)
	li	t0, -72
	add	t0, s0, t0
	lw	s10, 0(t0)
	li	t0, -76
	add	t0, s0, t0
	lw	s8, 0(t0)
	li	t2, -80
	add	t2, s0, t2
	li	t0, -180
	add	t0, s0, t0
	lw	t0, 0(t0)
	lw	t0, 0(t2)
	li	t0, -84
	add	t0, s0, t0
	lw	s6, 0(t0)
	li	t0, -88
	add	t0, s0, t0
	lw	t2, 0(t0)
	li	t0, -92
	add	t0, s0, t0
	lw	a5, 0(t0)
	li	t0, -96
	add	t0, s0, t0
	lw	a0, 0(t0)
	li	t0, -100
	add	t0, s0, t0
	lw	a2, 0(t0)
	li	t0, -104
	add	t0, s0, t0
	lw	s3, 0(t0)
	li	t0, -108
	add	t0, s0, t0
	lw	s2, 0(t0)
	li	a1, -112
	add	a1, s0, a1
	li	t0, -152
	add	t0, s0, t0
	lw	t0, 0(t0)
	lw	t0, 0(a1)
	li	a1, -116
	add	a1, s0, a1
	li	t0, -264
	add	t0, s0, t0
	lw	t0, 0(t0)
	lw	t0, 0(a1)
	li	t0, -120
	add	t0, s0, t0
	lw	t5, 0(t0)
	li	a1, -124
	add	a1, s0, a1
	li	t0, -252
	add	t0, s0, t0
	lw	t0, 0(t0)
	lw	t0, 0(a1)
	li	t0, -128
	add	t0, s0, t0
	li	a1, -192
	add	a1, s0, a1
	lw	a1, 0(a1)
	lw	a1, 0(t0)
	li	a1, -132
	add	a1, s0, a1
	li	t0, -212
	add	t0, s0, t0
	lw	t0, 0(t0)
	lw	t0, 0(a1)
	li	t0, -136
	add	t0, s0, t0
	lw	t6, 0(t0)
	li	t0, -164
	add	t0, s0, t0
	lw	t0, 0(t0)
	mv	a0, t0
	mv	a1, s1
	li	t0, -280
	add	t0, s0, t0
	lw	t0, 0(t0)
	mv	a2, t0
	li	t0, -224
	add	t0, s0, t0
	lw	t0, 0(t0)
	mv	a3, t0
	mv	a5, t4
	sw	t3, 0(sp)
	li	t0, -168
	add	t0, s0, t0
	lw	t0, 0(t0)
	sw	t0, 4(sp)
	li	t0, -188
	add	t0, s0, t0
	lw	t0, 0(t0)
	sw	t0, 8(sp)
	sw	a3, 12(sp)
	li	t0, -208
	add	t0, s0, t0
	lw	t0, 0(t0)
	sw	t0, 16(sp)
	sw	t1, 20(sp)
	li	t0, -160
	add	t0, s0, t0
	lw	t0, 0(t0)
	sw	t0, 24(sp)
	sw	s10, 28(sp)
	sw	s8, 32(sp)
	li	t0, -180
	add	t0, s0, t0
	lw	t0, 0(t0)
	sw	t0, 36(sp)
	sw	s6, 40(sp)
	sw	t2, 44(sp)
	sw	a5, 48(sp)
	sw	a0, 52(sp)
	sw	a2, 56(sp)
	sw	s3, 60(sp)
	sw	s2, 64(sp)
	li	t0, -152
	add	t0, s0, t0
	lw	t0, 0(t0)
	sw	t0, 68(sp)
	li	t0, -264
	add	t0, s0, t0
	lw	t0, 0(t0)
	sw	t0, 72(sp)
	sw	t5, 76(sp)
	li	t0, -252
	add	t0, s0, t0
	lw	t0, 0(t0)
	sw	t0, 80(sp)
	li	t0, -192
	add	t0, s0, t0
	lw	t0, 0(t0)
	sw	t0, 84(sp)
	li	t0, -212
	add	t0, s0, t0
	lw	t0, 0(t0)
	sw	t0, 88(sp)
	sw	t6, 92(sp)
	call	gcd1
	mv	t0, a0
	li	t1, -140
	add	t1, s0, t1
	sw	t0, 0(t1)
	j	.gcd_return
	j	.gcd_ID134_if_out
.gcd_ID134_if_out:
	j	.gcd_return
.gcd_return:
	li	t0, -140
	add	t0, s0, t0
	lw	t0, 0(t0)
	mv	a0, t0
	li	t0, -196
	add	t0, s0, t0
	lw	t0, 0(t0)
	mv	s1, t0
	li	t0, -176
	add	t0, s0, t0
	lw	t0, 0(t0)
	mv	s2, t0
	li	t0, -244
	add	t0, s0, t0
	lw	t0, 0(t0)
	mv	s3, t0
	li	t0, -240
	add	t0, s0, t0
	lw	t0, 0(t0)
	mv	s6, t0
	li	t0, -200
	add	t0, s0, t0
	lw	t0, 0(t0)
	mv	s8, t0
	li	t0, -228
	add	t0, s0, t0
	lw	t0, 0(t0)
	mv	s10, t0
	li	t0, 384
	add	t1, sp, t0
	lw	ra, -4(t1)
	lw	s0, -8(t1)
	add	sp, sp, t0
	ret

	.globl	gcd1
	.p2align	2
	.type	gcd1,@function
gcd1:
.gcd1_assemblyInit:
	li	t0, 352
	sub	sp, sp, t0
	add	t1, sp, t0
	sw	ra, -4(t1)
	sw	s0, -8(t1)
	mv	s0, t1
	mv	t0, a0
	li	t1, -208
	add	t1, s0, t1
	sw	t0, 0(t1)
	li	t1, -160
	add	t1, s0, t1
	sw	a1, 0(t1)
	mv	t0, a2
	li	t1, -240
	add	t1, s0, t1
	sw	t0, 0(t1)
	mv	a5, a3
	mv	t3, a5
	mv	a3, a7
	lw	a1, 0(s0)
	lw	t1, 4(s0)
	li	t2, -196
	add	t2, s0, t2
	lw	t2, 0(t2)
	lw	t2, 8(s0)
	li	t2, -220
	add	t2, s0, t2
	lw	t2, 0(t2)
	lw	t2, 12(s0)
	li	t2, -164
	add	t2, s0, t2
	lw	t2, 0(t2)
	lw	t2, 16(s0)
	lw	s9, 20(s0)
	lw	a0, 24(s0)
	li	t2, -152
	add	t2, s0, t2
	lw	t2, 0(t2)
	lw	t2, 28(s0)
	lw	t5, 32(s0)
	li	t2, -188
	add	t2, s0, t2
	lw	t2, 0(t2)
	lw	t2, 36(s0)
	li	t2, -148
	add	t2, s0, t2
	lw	t2, 0(t2)
	lw	t2, 40(s0)
	li	t2, -244
	add	t2, s0, t2
	lw	t2, 0(t2)
	lw	t2, 44(s0)
	lw	a2, 48(s0)
	lw	a7, 52(s0)
	lw	s2, 56(s0)
	lw	t2, 60(s0)
	lw	t6, 64(s0)
	li	s1, -204
	add	s1, s0, s1
	lw	s1, 0(s1)
	lw	s1, 68(s0)
	lw	t4, 72(s0)
	li	s1, -224
	add	s1, s0, s1
	lw	s1, 0(s1)
	lw	s1, 76(s0)
	li	s1, -232
	add	s1, s0, s1
	lw	s1, 0(s1)
	lw	s1, 80(s0)
	lw	s1, 84(s0)
	lw	s6, 88(s0)
	lw	s11, 92(s0)
	mv	s3, s1
	li	s4, -252
	add	s4, s0, s4
	sw	s3, 0(s4)
	mv	s8, s2
	mv	t0, s3
	mv	s7, s4
	mv	s3, s6
	li	s4, -236
	add	s4, s0, s4
	sw	s3, 0(s4)
	mv	s3, s7
	li	s4, -228
	add	s4, s0, s4
	sw	s3, 0(s4)
	mv	t0, s8
	mv	s10, s9
	mv	t0, s10
	mv	s3, s11
	li	s4, -256
	add	s4, s0, s4
	sw	s3, 0(s4)
.gcd1_entry:
	li	s4, -12
	add	s4, s0, s4
	li	s3, -208
	add	s3, s0, s3
	lw	s3, 0(s3)
	sw	s3, 0(s4)
	li	s4, -16
	add	s4, s0, s4
	li	s3, -160
	add	s3, s0, s3
	lw	s3, 0(s3)
	sw	s3, 0(s4)
	li	s4, -20
	add	s4, s0, s4
	li	s3, -240
	add	s3, s0, s3
	lw	s3, 0(s3)
	sw	s3, 0(s4)
	li	s3, -24
	add	s3, s0, s3
	sw	a5, 0(s3)
	li	a5, -28
	add	a5, s0, a5
	sw	a4, 0(a5)
	li	a4, -32
	add	a4, s0, a4
	sw	t3, 0(a4)
	li	a4, -36
	add	a4, s0, a4
	sw	a6, 0(a4)
	li	a4, -40
	add	a4, s0, a4
	sw	a3, 0(a4)
	li	a3, -44
	add	a3, s0, a3
	sw	a1, 0(a3)
	li	a1, -48
	add	a1, s0, a1
	sw	t1, 0(a1)
	li	a1, -52
	add	a1, s0, a1
	li	t1, -196
	add	t1, s0, t1
	lw	t1, 0(t1)
	sw	t1, 0(a1)
	li	a1, -56
	add	a1, s0, a1
	li	t1, -220
	add	t1, s0, t1
	lw	t1, 0(t1)
	sw	t1, 0(a1)
	li	t1, -60
	add	t1, s0, t1
	li	a1, -164
	add	a1, s0, a1
	lw	a1, 0(a1)
	sw	a1, 0(t1)
	li	t1, -64
	add	t1, s0, t1
	sw	s9, 0(t1)
	li	t1, -68
	add	t1, s0, t1
	sw	a0, 0(t1)
	li	a0, -72
	add	a0, s0, a0
	li	t1, -152
	add	t1, s0, t1
	lw	t1, 0(t1)
	sw	t1, 0(a0)
	li	t1, -76
	add	t1, s0, t1
	sw	t5, 0(t1)
	li	t1, -80
	add	t1, s0, t1
	li	a0, -188
	add	a0, s0, a0
	lw	a0, 0(a0)
	sw	a0, 0(t1)
	li	a0, -84
	add	a0, s0, a0
	li	t1, -148
	add	t1, s0, t1
	lw	t1, 0(t1)
	sw	t1, 0(a0)
	li	a0, -88
	add	a0, s0, a0
	li	t1, -244
	add	t1, s0, t1
	lw	t1, 0(t1)
	sw	t1, 0(a0)
	li	t1, -92
	add	t1, s0, t1
	sw	a2, 0(t1)
	li	t1, -96
	add	t1, s0, t1
	sw	a7, 0(t1)
	li	t1, -100
	add	t1, s0, t1
	sw	s2, 0(t1)
	li	t1, -104
	add	t1, s0, t1
	sw	t2, 0(t1)
	li	t1, -108
	add	t1, s0, t1
	sw	t6, 0(t1)
	li	t1, -112
	add	t1, s0, t1
	li	t2, -204
	add	t2, s0, t2
	lw	t2, 0(t2)
	sw	t2, 0(t1)
	li	t1, -116
	add	t1, s0, t1
	sw	t4, 0(t1)
	li	t1, -120
	add	t1, s0, t1
	li	t2, -224
	add	t2, s0, t2
	lw	t2, 0(t2)
	sw	t2, 0(t1)
	li	t2, -124
	add	t2, s0, t2
	li	t1, -232
	add	t1, s0, t1
	lw	t1, 0(t1)
	sw	t1, 0(t2)
	li	t1, -128
	add	t1, s0, t1
	sw	s1, 0(t1)
	li	t1, -132
	add	t1, s0, t1
	sw	s6, 0(t1)
	li	t1, -136
	add	t1, s0, t1
	sw	s11, 0(t1)
	li	t1, -20
	add	t1, s0, t1
	lw	t2, 0(t1)
	li	t1, -24
	add	t1, s0, t1
	lw	t1, 0(t1)
	add	t2, t2, t1
	li	t1, -28
	add	t1, s0, t1
	lw	t1, 0(t1)
	add	t1, t2, t1
	li	t2, -32
	add	t2, s0, t2
	lw	t2, 0(t2)
	add	t2, t1, t2
	li	t1, -36
	add	t1, s0, t1
	lw	t1, 0(t1)
	add	t2, t2, t1
	li	t1, -40
	add	t1, s0, t1
	lw	t1, 0(t1)
	add	t2, t2, t1
	li	t1, -44
	add	t1, s0, t1
	lw	t1, 0(t1)
	add	t1, t2, t1
	li	t2, -48
	add	t2, s0, t2
	lw	t2, 0(t2)
	add	t2, t1, t2
	li	t1, -52
	add	t1, s0, t1
	lw	t1, 0(t1)
	add	t1, t2, t1
	li	t2, -56
	add	t2, s0, t2
	lw	t2, 0(t2)
	add	t2, t1, t2
	li	t1, -60
	add	t1, s0, t1
	lw	t1, 0(t1)
	add	t2, t2, t1
	li	t1, -64
	add	t1, s0, t1
	lw	t1, 0(t1)
	add	t2, t2, t1
	li	t1, -68
	add	t1, s0, t1
	lw	t1, 0(t1)
	add	t1, t2, t1
	li	t2, -72
	add	t2, s0, t2
	lw	t2, 0(t2)
	add	t2, t1, t2
	li	t1, -76
	add	t1, s0, t1
	lw	t1, 0(t1)
	add	t1, t2, t1
	li	t2, -80
	add	t2, s0, t2
	lw	t2, 0(t2)
	add	t1, t1, t2
	li	t2, -84
	add	t2, s0, t2
	lw	t2, 0(t2)
	add	t2, t1, t2
	li	t1, -88
	add	t1, s0, t1
	lw	t1, 0(t1)
	add	t2, t2, t1
	li	t1, -92
	add	t1, s0, t1
	lw	t1, 0(t1)
	add	t2, t2, t1
	li	t1, -96
	add	t1, s0, t1
	lw	t1, 0(t1)
	add	t2, t2, t1
	li	t1, -100
	add	t1, s0, t1
	lw	t1, 0(t1)
	add	t1, t2, t1
	li	t2, -104
	add	t2, s0, t2
	lw	t2, 0(t2)
	add	t2, t1, t2
	li	t1, -108
	add	t1, s0, t1
	lw	t1, 0(t1)
	add	t1, t2, t1
	li	t2, -112
	add	t2, s0, t2
	lw	t2, 0(t2)
	add	t1, t1, t2
	li	t2, -116
	add	t2, s0, t2
	lw	t2, 0(t2)
	add	t2, t1, t2
	li	t1, -120
	add	t1, s0, t1
	lw	t1, 0(t1)
	add	t1, t2, t1
	li	t2, -124
	add	t2, s0, t2
	lw	t2, 0(t2)
	add	t2, t1, t2
	li	t1, -128
	add	t1, s0, t1
	lw	t1, 0(t1)
	add	t1, t2, t1
	li	t2, -132
	add	t2, s0, t2
	lw	t2, 0(t2)
	add	t2, t1, t2
	li	t1, -136
	add	t1, s0, t1
	lw	t1, 0(t1)
	add	t2, t2, t1
	li	t1, 100
	rem	t2, t2, t1
	li	t1, -144
	add	t1, s0, t1
	sw	t2, 0(t1)
	li	t1, -12
	add	t1, s0, t1
	lw	t2, 0(t1)
	li	t1, -16
	add	t1, s0, t1
	lw	t1, 0(t1)
	rem	t2, t2, t1
	li	t1, 0
	xor	t1, t2, t1
	sltiu	t1, t1, 1
	bnez	t1, .gcd1_ID129_if_true
	j	.gcd1_ID129_if_false
.gcd1_ID129_if_true:
	li	t1, -16
	add	t1, s0, t1
	lw	t2, 0(t1)
	li	t1, -140
	add	t1, s0, t1
	sw	t2, 0(t1)
	j	.gcd1_return
	j	.gcd1_ID129_if_out
.gcd1_ID129_if_false:
	li	t2, -16
	add	t2, s0, t2
	li	t1, -184
	add	t1, s0, t1
	lw	t1, 0(t1)
	lw	t1, 0(t2)
	li	t1, -12
	add	t1, s0, t1
	lw	t2, 0(t1)
	li	t1, -16
	add	t1, s0, t1
	lw	t1, 0(t1)
	rem	a1, t2, t1
	li	t1, -144
	add	t1, s0, t1
	lw	t6, 0(t1)
	li	t2, -24
	add	t2, s0, t2
	li	t1, -192
	add	t1, s0, t1
	lw	t1, 0(t1)
	lw	t1, 0(t2)
	li	t2, -28
	add	t2, s0, t2
	li	t1, -172
	add	t1, s0, t1
	lw	t1, 0(t1)
	lw	t1, 0(t2)
	li	t1, -32
	add	t1, s0, t1
	lw	t0, 0(t1)
	li	t1, -36
	add	t1, s0, t1
	lw	a6, 0(t1)
	li	t1, -40
	add	t1, s0, t1
	lw	s9, 0(t1)
	li	t1, -44
	add	t1, s0, t1
	lw	t3, 0(t1)
	li	t1, -48
	add	t1, s0, t1
	lw	s11, 0(t1)
	li	t1, -52
	add	t1, s0, t1
	lw	a3, 0(t1)
	li	t2, -56
	add	t2, s0, t2
	li	t1, -156
	add	t1, s0, t1
	lw	t1, 0(t1)
	lw	t1, 0(t2)
	li	t1, -60
	add	t1, s0, t1
	lw	a0, 0(t1)
	li	t1, -64
	add	t1, s0, t1
	lw	s1, 0(t1)
	li	t1, -68
	add	t1, s0, t1
	li	t2, -176
	add	t2, s0, t2
	lw	t2, 0(t2)
	lw	t2, 0(t1)
	li	t2, -72
	add	t2, s0, t2
	li	t1, -212
	add	t1, s0, t1
	lw	t1, 0(t1)
	lw	t1, 0(t2)
	li	t1, -76
	add	t1, s0, t1
	lw	s4, 0(t1)
	li	t1, -80
	add	t1, s0, t1
	lw	t4, 0(t1)
	li	t2, -84
	add	t2, s0, t2
	li	t1, -180
	add	t1, s0, t1
	lw	t1, 0(t1)
	lw	t1, 0(t2)
	li	t1, -88
	add	t1, s0, t1
	lw	t5, 0(t1)
	li	t1, -92
	add	t1, s0, t1
	li	t2, -200
	add	t2, s0, t2
	lw	t2, 0(t2)
	lw	t2, 0(t1)
	li	t1, -96
	add	t1, s0, t1
	lw	s6, 0(t1)
	li	t1, -100
	add	t1, s0, t1
	lw	s3, 0(t1)
	li	t2, -104
	add	t2, s0, t2
	li	t1, -216
	add	t1, s0, t1
	lw	t1, 0(t1)
	lw	t1, 0(t2)
	li	t1, -108
	add	t1, s0, t1
	lw	a7, 0(t1)
	li	t1, -112
	add	t1, s0, t1
	lw	t1, 0(t1)
	li	t2, -116
	add	t2, s0, t2
	lw	a2, 0(t2)
	li	a4, -120
	add	a4, s0, a4
	li	t2, -168
	add	t2, s0, t2
	lw	t2, 0(t2)
	lw	t2, 0(a4)
	li	t2, -124
	add	t2, s0, t2
	li	a4, -248
	add	a4, s0, a4
	lw	a4, 0(a4)
	lw	a4, 0(t2)
	li	t2, -128
	add	t2, s0, t2
	lw	t2, 0(t2)
	li	a4, -132
	add	a4, s0, a4
	lw	s2, 0(a4)
	li	a4, -136
	add	a4, s0, a4
	lw	a5, 0(a4)
	li	a4, -184
	add	a4, s0, a4
	lw	t0, 0(a4)
	mv	a0, t0
	mv	a2, t6
	li	a1, -192
	add	a1, s0, a1
	lw	t0, 0(a1)
	mv	a3, t0
	li	a1, -172
	add	a1, s0, a1
	lw	a4, 0(a1)
	mv	a5, t0
	mv	a7, s9
	sw	t3, 0(sp)
	sw	s11, 4(sp)
	sw	a3, 8(sp)
	li	a1, -156
	add	a1, s0, a1
	lw	a1, 0(a1)
	sw	a1, 12(sp)
	sw	a0, 16(sp)
	sw	s1, 20(sp)
	li	s1, -176
	add	s1, s0, s1
	lw	s1, 0(s1)
	sw	s1, 24(sp)
	li	s1, -212
	add	s1, s0, s1
	lw	s1, 0(s1)
	sw	s1, 28(sp)
	sw	s4, 32(sp)
	sw	t4, 36(sp)
	li	s1, -180
	add	s1, s0, s1
	lw	s1, 0(s1)
	sw	s1, 40(sp)
	sw	t5, 44(sp)
	li	s1, -200
	add	s1, s0, s1
	lw	s1, 0(s1)
	sw	s1, 48(sp)
	sw	s6, 52(sp)
	sw	s3, 56(sp)
	li	s1, -216
	add	s1, s0, s1
	lw	s1, 0(s1)
	sw	s1, 60(sp)
	sw	a7, 64(sp)
	sw	t1, 68(sp)
	sw	a2, 72(sp)
	li	t1, -168
	add	t1, s0, t1
	lw	t1, 0(t1)
	sw	t1, 76(sp)
	li	t1, -248
	add	t1, s0, t1
	lw	t1, 0(t1)
	sw	t1, 80(sp)
	sw	t2, 84(sp)
	sw	s2, 88(sp)
	sw	a5, 92(sp)
	call	gcd2
	mv	t0, a0
	li	t1, -140
	add	t1, s0, t1
	sw	t0, 0(t1)
	j	.gcd1_return
	j	.gcd1_ID129_if_out
.gcd1_ID129_if_out:
	j	.gcd1_return
.gcd1_return:
	li	t1, -140
	add	t1, s0, t1
	lw	t0, 0(t1)
	mv	a0, t0
	li	t1, -252
	add	t1, s0, t1
	lw	t0, 0(t1)
	mv	s1, t0
	mv	s2, s8
	mv	s3, t0
	mv	s4, s7
	li	t1, -236
	add	t1, s0, t1
	lw	t0, 0(t1)
	mv	s6, t0
	li	t1, -228
	add	t1, s0, t1
	lw	t0, 0(t1)
	mv	s7, t0
	mv	s8, t0
	mv	s9, s10
	mv	s10, t0
	li	t0, -256
	add	t0, s0, t0
	lw	t0, 0(t0)
	mv	s11, t0
	li	t0, 352
	add	t1, sp, t0
	lw	ra, -4(t1)
	lw	s0, -8(t1)
	add	sp, sp, t0
	ret

	.globl	gcd2
	.p2align	2
	.type	gcd2,@function
gcd2:
.gcd2_assemblyInit:
	li	t0, 336
	sub	sp, sp, t0
	add	t1, sp, t0
	sw	ra, -4(t1)
	sw	s0, -8(t1)
	mv	s0, t1
	mv	t0, a0
	mv	t0, a1
	li	t1, -236
	add	t1, s0, t1
	sw	t0, 0(t1)
	mv	t0, a2
	mv	t4, a3
	mv	s10, a4
	mv	t0, a5
	li	t1, -224
	add	t1, s0, t1
	sw	t0, 0(t1)
	mv	t0, a7
	lw	a4, 0(s0)
	li	t1, -160
	add	t1, s0, t1
	lw	t1, 0(t1)
	lw	t1, 4(s0)
	lw	s4, 8(s0)
	li	t1, -168
	add	t1, s0, t1
	lw	t1, 0(t1)
	lw	t1, 12(s0)
	li	t1, -164
	add	t1, s0, t1
	lw	t1, 0(t1)
	lw	t1, 16(s0)
	lw	t2, 20(s0)
	lw	s9, 24(s0)
	lw	a3, 28(s0)
	lw	s11, 32(s0)
	lw	s3, 36(s0)
	lw	a0, 40(s0)
	li	t1, -148
	add	t1, s0, t1
	lw	t1, 0(t1)
	lw	t1, 44(s0)
	lw	t3, 48(s0)
	lw	t5, 52(s0)
	lw	t6, 56(s0)
	li	t1, -216
	add	t1, s0, t1
	lw	t1, 0(t1)
	lw	t1, 60(s0)
	lw	s1, 64(s0)
	lw	s8, 68(s0)
	lw	t1, 72(s0)
	lw	a5, 76(s0)
	li	a1, -180
	add	a1, s0, a1
	lw	a1, 0(a1)
	lw	a1, 80(s0)
	li	a1, -212
	add	a1, s0, a1
	lw	a1, 0(a1)
	lw	a1, 84(s0)
	lw	a2, 88(s0)
	lw	a1, 92(s0)
	mv	s6, s1
	li	a7, -228
	add	a7, s0, a7
	sw	s2, 0(a7)
	mv	t0, s3
	mv	a7, s4
	li	s2, -196
	add	s2, s0, s2
	sw	a7, 0(s2)
	mv	s2, s6
	li	a7, -232
	add	a7, s0, a7
	sw	s2, 0(a7)
	mv	s2, s7
	li	a7, -156
	add	a7, s0, a7
	sw	s2, 0(a7)
	mv	a7, s8
	li	s2, -208
	add	s2, s0, s2
	sw	a7, 0(s2)
	mv	t0, s9
	mv	s7, s10
	mv	s2, s11
	li	a7, -152
	add	a7, s0, a7
	sw	s2, 0(a7)
.gcd2_entry:
	li	a7, -12
	add	a7, s0, a7
	sw	t0, 0(a7)
	li	s2, -16
	add	s2, s0, s2
	li	a7, -236
	add	a7, s0, a7
	lw	a7, 0(a7)
	sw	a7, 0(s2)
	li	a7, -20
	add	a7, s0, a7
	sw	t0, 0(a7)
	li	a7, -24
	add	a7, s0, a7
	sw	t4, 0(a7)
	li	a7, -28
	add	a7, s0, a7
	sw	s10, 0(a7)
	li	a7, -32
	add	a7, s0, a7
	li	s2, -224
	add	s2, s0, s2
	lw	s2, 0(s2)
	sw	s2, 0(a7)
	li	a7, -36
	add	a7, s0, a7
	sw	a6, 0(a7)
	li	a6, -40
	add	a6, s0, a6
	sw	t0, 0(a6)
	li	a6, -44
	add	a6, s0, a6
	sw	a4, 0(a6)
	li	a6, -48
	add	a6, s0, a6
	li	a4, -160
	add	a4, s0, a4
	lw	a4, 0(a4)
	sw	a4, 0(a6)
	li	a4, -52
	add	a4, s0, a4
	sw	s4, 0(a4)
	li	a6, -56
	add	a6, s0, a6
	li	a4, -168
	add	a4, s0, a4
	lw	a4, 0(a4)
	sw	a4, 0(a6)
	li	a6, -60
	add	a6, s0, a6
	li	a4, -164
	add	a4, s0, a4
	lw	a4, 0(a4)
	sw	a4, 0(a6)
	li	a4, -64
	add	a4, s0, a4
	sw	t2, 0(a4)
	li	t2, -68
	add	t2, s0, t2
	sw	s9, 0(t2)
	li	t2, -72
	add	t2, s0, t2
	sw	a3, 0(t2)
	li	t2, -76
	add	t2, s0, t2
	sw	s11, 0(t2)
	li	t2, -80
	add	t2, s0, t2
	sw	s3, 0(t2)
	li	t2, -84
	add	t2, s0, t2
	sw	a0, 0(t2)
	li	t2, -88
	add	t2, s0, t2
	li	a0, -148
	add	a0, s0, a0
	lw	a0, 0(a0)
	sw	a0, 0(t2)
	li	t2, -92
	add	t2, s0, t2
	sw	t3, 0(t2)
	li	t2, -96
	add	t2, s0, t2
	sw	t5, 0(t2)
	li	t2, -100
	add	t2, s0, t2
	sw	t6, 0(t2)
	li	a0, -104
	add	a0, s0, a0
	li	t2, -216
	add	t2, s0, t2
	lw	t2, 0(t2)
	sw	t2, 0(a0)
	li	t2, -108
	add	t2, s0, t2
	sw	s1, 0(t2)
	li	t2, -112
	add	t2, s0, t2
	sw	s8, 0(t2)
	li	t2, -116
	add	t2, s0, t2
	sw	t1, 0(t2)
	li	t1, -120
	add	t1, s0, t1
	sw	a5, 0(t1)
	li	t1, -124
	add	t1, s0, t1
	li	t2, -180
	add	t2, s0, t2
	lw	t2, 0(t2)
	sw	t2, 0(t1)
	li	t2, -128
	add	t2, s0, t2
	li	t1, -212
	add	t1, s0, t1
	lw	t1, 0(t1)
	sw	t1, 0(t2)
	li	t1, -132
	add	t1, s0, t1
	sw	a2, 0(t1)
	li	t1, -136
	add	t1, s0, t1
	sw	a1, 0(t1)
	li	t1, -20
	add	t1, s0, t1
	lw	t2, 0(t1)
	li	t1, -24
	add	t1, s0, t1
	lw	t1, 0(t1)
	add	t2, t2, t1
	li	t1, -28
	add	t1, s0, t1
	lw	t1, 0(t1)
	add	t1, t2, t1
	li	t2, -32
	add	t2, s0, t2
	lw	t2, 0(t2)
	add	t2, t1, t2
	li	t1, -36
	add	t1, s0, t1
	lw	t1, 0(t1)
	add	t1, t2, t1
	li	t2, -40
	add	t2, s0, t2
	lw	t2, 0(t2)
	add	t2, t1, t2
	li	t1, -44
	add	t1, s0, t1
	lw	t1, 0(t1)
	add	t2, t2, t1
	li	t1, -48
	add	t1, s0, t1
	lw	t1, 0(t1)
	add	t1, t2, t1
	li	t2, -52
	add	t2, s0, t2
	lw	t2, 0(t2)
	add	t2, t1, t2
	li	t1, -56
	add	t1, s0, t1
	lw	t1, 0(t1)
	add	t2, t2, t1
	li	t1, -60
	add	t1, s0, t1
	lw	t1, 0(t1)
	add	t2, t2, t1
	li	t1, -64
	add	t1, s0, t1
	lw	t1, 0(t1)
	add	t2, t2, t1
	li	t1, -68
	add	t1, s0, t1
	lw	t1, 0(t1)
	add	t1, t2, t1
	li	t2, -72
	add	t2, s0, t2
	lw	t2, 0(t2)
	add	t2, t1, t2
	li	t1, -76
	add	t1, s0, t1
	lw	t1, 0(t1)
	add	t2, t2, t1
	li	t1, -80
	add	t1, s0, t1
	lw	t1, 0(t1)
	add	t2, t2, t1
	li	t1, -84
	add	t1, s0, t1
	lw	t1, 0(t1)
	add	t2, t2, t1
	li	t1, -88
	add	t1, s0, t1
	lw	t1, 0(t1)
	add	t2, t2, t1
	li	t1, -92
	add	t1, s0, t1
	lw	t1, 0(t1)
	add	t1, t2, t1
	li	t2, -96
	add	t2, s0, t2
	lw	t2, 0(t2)
	add	t2, t1, t2
	li	t1, -100
	add	t1, s0, t1
	lw	t1, 0(t1)
	add	t1, t2, t1
	li	t2, -104
	add	t2, s0, t2
	lw	t2, 0(t2)
	add	t2, t1, t2
	li	t1, -108
	add	t1, s0, t1
	lw	t1, 0(t1)
	add	t2, t2, t1
	li	t1, -112
	add	t1, s0, t1
	lw	t1, 0(t1)
	add	t1, t2, t1
	li	t2, -116
	add	t2, s0, t2
	lw	t2, 0(t2)
	add	t2, t1, t2
	li	t1, -120
	add	t1, s0, t1
	lw	t1, 0(t1)
	add	t1, t2, t1
	li	t2, -124
	add	t2, s0, t2
	lw	t2, 0(t2)
	add	t2, t1, t2
	li	t1, -128
	add	t1, s0, t1
	lw	t1, 0(t1)
	add	t1, t2, t1
	li	t2, -132
	add	t2, s0, t2
	lw	t2, 0(t2)
	add	t2, t1, t2
	li	t1, -136
	add	t1, s0, t1
	lw	t1, 0(t1)
	add	t1, t2, t1
	li	t2, 100
	rem	t2, t1, t2
	li	t1, -144
	add	t1, s0, t1
	sw	t2, 0(t1)
	li	t1, -12
	add	t1, s0, t1
	lw	t2, 0(t1)
	li	t1, -16
	add	t1, s0, t1
	lw	t1, 0(t1)
	rem	t2, t2, t1
	li	t1, 0
	xor	t1, t2, t1
	sltiu	t1, t1, 1
	bnez	t1, .gcd2_ID129_if_true
	j	.gcd2_ID129_if_false
.gcd2_ID129_if_true:
	li	t1, -16
	add	t1, s0, t1
	lw	t1, 0(t1)
	li	t2, -140
	add	t2, s0, t2
	sw	t1, 0(t2)
	j	.gcd2_return
	j	.gcd2_ID129_if_out
.gcd2_ID129_if_false:
	li	t2, -16
	add	t2, s0, t2
	li	t1, -220
	add	t1, s0, t1
	lw	t1, 0(t1)
	lw	t1, 0(t2)
	li	t1, -12
	add	t1, s0, t1
	lw	t1, 0(t1)
	li	t2, -16
	add	t2, s0, t2
	lw	t2, 0(t2)
	rem	t2, t1, t2
	li	t1, -172
	add	t1, s0, t1
	sw	t2, 0(t1)
	li	t1, -20
	add	t1, s0, t1
	lw	t0, 0(t1)
	li	t1, -24
	add	t1, s0, t1
	lw	t0, 0(t1)
	li	t1, -28
	add	t1, s0, t1
	lw	t6, 0(t1)
	li	t1, -32
	add	t1, s0, t1
	lw	t0, 0(t1)
	li	t1, -36
	add	t1, s0, t1
	li	t2, -184
	add	t2, s0, t2
	lw	t2, 0(t2)
	lw	t2, 0(t1)
	li	t1, -40
	add	t1, s0, t1
	lw	s9, 0(t1)
	li	t1, -44
	add	t1, s0, t1
	lw	a2, 0(t1)
	li	t1, -48
	add	t1, s0, t1
	lw	s2, 0(t1)
	li	t1, -52
	add	t1, s0, t1
	lw	s10, 0(t1)
	li	t1, -56
	add	t1, s0, t1
	lw	t5, 0(t1)
	li	t1, -60
	add	t1, s0, t1
	lw	s8, 0(t1)
	li	t1, -64
	add	t1, s0, t1
	lw	a1, 0(t1)
	li	t1, -68
	add	t1, s0, t1
	lw	t2, 0(t1)
	li	s1, -72
	add	s1, s0, s1
	li	t1, -188
	add	t1, s0, t1
	lw	t1, 0(t1)
	lw	t1, 0(s1)
	li	t1, -76
	add	t1, s0, t1
	lw	s11, 0(t1)
	li	t1, -80
	add	t1, s0, t1
	lw	a5, 0(t1)
	li	t1, -84
	add	t1, s0, t1
	lw	a3, 0(t1)
	li	s1, -88
	add	s1, s0, s1
	li	t1, -200
	add	t1, s0, t1
	lw	t1, 0(t1)
	lw	t1, 0(s1)
	li	s1, -92
	add	s1, s0, s1
	li	t1, -192
	add	t1, s0, t1
	lw	t1, 0(t1)
	lw	t1, 0(s1)
	li	t1, -96
	add	t1, s0, t1
	lw	s1, 0(t1)
	li	t1, -100
	add	t1, s0, t1
	li	a0, -176
	add	a0, s0, a0
	lw	a0, 0(a0)
	lw	a0, 0(t1)
	li	t1, -104
	add	t1, s0, t1
	lw	s4, 0(t1)
	li	t1, -108
	add	t1, s0, t1
	lw	s3, 0(t1)
	li	t1, -112
	add	t1, s0, t1
	lw	t4, 0(t1)
	li	t1, -116
	add	t1, s0, t1
	lw	a0, 0(t1)
	li	a4, -120
	add	a4, s0, a4
	li	t1, -204
	add	t1, s0, t1
	lw	t1, 0(t1)
	lw	t1, 0(a4)
	li	t1, -124
	add	t1, s0, t1
	lw	a4, 0(t1)
	li	t1, -128
	add	t1, s0, t1
	lw	t1, 0(t1)
	li	a6, -132
	add	a6, s0, a6
	lw	t3, 0(a6)
	li	a6, -136
	add	a6, s0, a6
	lw	a7, 0(a6)
	li	a6, -220
	add	a6, s0, a6
	lw	t0, 0(a6)
	mv	a0, t0
	li	a6, -172
	add	a6, s0, a6
	lw	t0, 0(a6)
	mv	a1, t0
	mv	a2, t0
	mv	a3, t0
	mv	a4, t6
	mv	a5, t0
	li	a6, -184
	add	a6, s0, a6
	lw	a6, 0(a6)
	mv	a7, s9
	sw	a2, 0(sp)
	sw	s2, 4(sp)
	sw	s10, 8(sp)
	sw	t5, 12(sp)
	sw	s8, 16(sp)
	sw	a1, 20(sp)
	sw	t2, 24(sp)
	li	t2, -188
	add	t2, s0, t2
	lw	t2, 0(t2)
	sw	t2, 28(sp)
	sw	s11, 32(sp)
	sw	a5, 36(sp)
	sw	a3, 40(sp)
	li	t2, -200
	add	t2, s0, t2
	lw	t2, 0(t2)
	sw	t2, 44(sp)
	li	t2, -192
	add	t2, s0, t2
	lw	t2, 0(t2)
	sw	t2, 48(sp)
	sw	s1, 52(sp)
	li	t2, -176
	add	t2, s0, t2
	lw	t2, 0(t2)
	sw	t2, 56(sp)
	sw	s4, 60(sp)
	sw	s3, 64(sp)
	sw	t4, 68(sp)
	sw	a0, 72(sp)
	li	t2, -204
	add	t2, s0, t2
	lw	t2, 0(t2)
	sw	t2, 76(sp)
	sw	a4, 80(sp)
	sw	t1, 84(sp)
	sw	t3, 88(sp)
	sw	a7, 92(sp)
	call	gcd
	mv	t0, a0
	li	t1, -140
	add	t1, s0, t1
	sw	t0, 0(t1)
	j	.gcd2_return
	j	.gcd2_ID129_if_out
.gcd2_ID129_if_out:
	j	.gcd2_return
.gcd2_return:
	li	t1, -140
	add	t1, s0, t1
	lw	t0, 0(t1)
	mv	a0, t0
	mv	s1, s6
	li	t1, -228
	add	t1, s0, t1
	lw	t0, 0(t1)
	mv	s2, t0
	mv	s3, t0
	li	t1, -196
	add	t1, s0, t1
	lw	t0, 0(t1)
	mv	s4, t0
	li	t1, -232
	add	t1, s0, t1
	lw	t0, 0(t1)
	mv	s6, t0
	li	t1, -156
	add	t1, s0, t1
	lw	t0, 0(t1)
	mv	s7, t0
	li	t1, -208
	add	t1, s0, t1
	lw	t0, 0(t1)
	mv	s8, t0
	mv	s9, t0
	mv	s10, s7
	li	t0, -152
	add	t0, s0, t0
	lw	t0, 0(t0)
	mv	s11, t0
	li	t0, 336
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
	li	t0, 112
	sub	sp, sp, t0
	add	t1, sp, t0
	sw	ra, -4(t1)
	sw	s0, -8(t1)
	mv	s0, t1
	mv	t0, s1
	mv	t0, s2
	mv	t0, s3
	mv	t0, s4
	mv	t0, s6
	mv	t0, s7
	mv	t0, s8
	mv	t0, s9
	mv	t0, s10
	mv	t0, s11
.main_entry:
	call	__init
	li	t1, 0
	li	t2, -12
	add	t2, s0, t2
	sw	t1, 0(t2)
	li	t0, 10
	mv	a0, t0
	li	t0, 1
	mv	a1, t0
	li	t0, 0
	mv	a2, t0
	li	t0, 2
	mv	a3, t0
	li	t0, 4
	mv	a4, t0
	li	t0, 6
	mv	a5, t0
	li	a6, 8
	li	t0, 10
	mv	a7, t0
	li	t1, 12
	sw	t1, 0(sp)
	li	t1, 14
	sw	t1, 4(sp)
	li	t1, 16
	sw	t1, 8(sp)
	li	t1, 18
	sw	t1, 12(sp)
	li	t1, 20
	sw	t1, 16(sp)
	li	t1, 22
	sw	t1, 20(sp)
	li	t1, 24
	sw	t1, 24(sp)
	li	t1, 26
	sw	t1, 28(sp)
	li	t1, 28
	sw	t1, 32(sp)
	li	t1, 30
	sw	t1, 36(sp)
	li	t1, 32
	sw	t1, 40(sp)
	li	t1, 34
	sw	t1, 44(sp)
	li	t1, 36
	sw	t1, 48(sp)
	li	t1, 38
	sw	t1, 52(sp)
	li	t1, 40
	sw	t1, 56(sp)
	li	t1, 42
	sw	t1, 60(sp)
	li	t1, 44
	sw	t1, 64(sp)
	li	t1, 46
	sw	t1, 68(sp)
	li	t1, 48
	sw	t1, 72(sp)
	li	t1, 50
	sw	t1, 76(sp)
	li	t1, 52
	sw	t1, 80(sp)
	li	t1, 54
	sw	t1, 84(sp)
	li	t1, 56
	sw	t1, 88(sp)
	li	t1, 58
	sw	t1, 92(sp)
	call	gcd
	mv	t0, a0
	li	t1, 1024
	add	t0, t0, t1
	mv	a0, t0
	call	toString
	mv	t0, a0
	mv	a0, t0
	call	println
	li	t1, 0
	li	t2, -12
	add	t2, s0, t2
	sw	t1, 0(t2)
	j	.main_return
	j	.main_return
.main_return:
	li	t1, -12
	add	t1, s0, t1
	lw	t0, 0(t1)
	mv	a0, t0
	mv	s1, t0
	mv	s2, t0
	mv	s3, t0
	mv	s4, t0
	mv	s6, t0
	mv	s7, t0
	mv	s8, t0
	mv	s9, t0
	mv	s10, t0
	mv	s11, t0
	li	t0, 112
	add	t1, sp, t0
	lw	ra, -4(t1)
	lw	s0, -8(t1)
	add	sp, sp, t0
	ret

