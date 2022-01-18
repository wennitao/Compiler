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

	.globl	node
	.p2align	2
	.type	node,@function
node:
.node_assemblyInit:
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
.node:
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
	j	.node_return
.node_return:
	li	t0, 32
	add	t1, sp, t0
	lw	ra, -4(t1)
	lw	s0, -8(t1)
	add	sp, sp, t0
	ret

	.globl	getHash
	.p2align	2
	.type	getHash,@function
getHash:
.getHash_assemblyInit:
	li	t0, 64
	sub	sp, sp, t0
	add	t1, sp, t0
	sw	ra, -4(t1)
	sw	s0, -8(t1)
	mv	s0, t1
	mv	t1, a0
	li	t3, -20
	add	t3, s0, t3
	sw	t1, 0(t3)
.getHash_entry:
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
	li	t0, 237
	li	t3, -36
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -32
	add	t3, s0, t3
	lw	t0, 0(t3)
	li	t3, -36
	add	t3, s0, t3
	lw	t1, 0(t3)
	mul	t2, t0, t1
	li	t3, -40
	add	t3, s0, t3
	sw	t2, 0(t3)
	lw	t1, fuckLLVM_hashsize
	li	t3, -44
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -40
	add	t3, s0, t3
	lw	t0, 0(t3)
	li	t3, -44
	add	t3, s0, t3
	lw	t1, 0(t3)
	rem	t2, t0, t1
	li	t3, -48
	add	t3, s0, t3
	sw	t2, 0(t3)
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
	li	t3, -48
	add	t3, s0, t3
	lw	t0, 0(t3)
	li	t3, -52
	add	t3, s0, t3
	lw	t1, 0(t3)
	sw	t0, 0(t1)
	j	.getHash_return
	j	.getHash_return
.getHash_return:
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
	li	t0, 64
	add	t1, sp, t0
	lw	ra, -4(t1)
	lw	s0, -8(t1)
	add	sp, sp, t0
	ret

	.globl	put
	.p2align	2
	.type	put,@function
put:
.put_assemblyInit:
	li	t0, 448
	sub	sp, sp, t0
	add	t1, sp, t0
	sw	ra, -4(t1)
	sw	s0, -8(t1)
	mv	s0, t1
	mv	t1, a0
	li	t3, -28
	add	t3, s0, t3
	sw	t1, 0(t3)
	mv	t1, a1
	li	t3, -32
	add	t3, s0, t3
	sw	t1, 0(t3)
.put_entry:
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
	li	t3, -28
	add	t3, s0, t3
	lw	t0, 0(t3)
	li	t3, -36
	add	t3, s0, t3
	lw	t1, 0(t3)
	sw	t0, 0(t1)
	li	t0, -16
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
	li	t3, -32
	add	t3, s0, t3
	lw	t0, 0(t3)
	li	t3, -40
	add	t3, s0, t3
	lw	t1, 0(t3)
	sw	t0, 0(t1)
	li	t0, 0
	li	t3, -44
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t0, -24
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
	li	t3, -44
	add	t3, s0, t3
	lw	t0, 0(t3)
	li	t3, -48
	add	t3, s0, t3
	lw	t1, 0(t3)
	sw	t0, 0(t1)
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
	li	t3, -52
	add	t3, s0, t3
	lw	t0, 0(t3)
	lw	t1, 0(t0)
	li	t3, -56
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -56
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	getHash
	mv	t1, a0
	li	t3, -60
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t0, -20
	li	t3, -64
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -64
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, s0, t1
	li	t3, -64
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -60
	add	t3, s0, t3
	lw	t0, 0(t3)
	li	t3, -64
	add	t3, s0, t3
	lw	t1, 0(t3)
	sw	t0, 0(t1)
	lw	t1, fuckLLVM_table
	li	t3, -68
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t0, -20
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
	li	t0, 16
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
	li	t3, -88
	add	t3, s0, t3
	lw	t0, 0(t3)
	lw	t1, 0(t0)
	li	t3, -92
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t0, 0
	li	t3, -96
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -92
	add	t3, s0, t3
	lw	t0, 0(t3)
	li	t3, -96
	add	t3, s0, t3
	lw	t1, 0(t3)
	xor	t2, t0, t1
	li	t3, -100
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -100
	add	t3, s0, t3
	lw	t0, 0(t3)
	sltiu	t1, t0, 1
	li	t3, -100
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -100
	add	t3, s0, t3
	lw	t0, 0(t3)
	bnez	t0, .put_ID13_if_true
	j	.put_ID13_if_out
.put_ID13_if_true:
	lw	t1, fuckLLVM_table
	li	t3, -104
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t0, -20
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
	li	t0, 16
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
	li	t0, 16
	li	t3, -128
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -128
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	malloc
	mv	t1, a0
	li	t3, -132
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -132
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	node
	li	t3, -132
	add	t3, s0, t3
	lw	t0, 0(t3)
	li	t3, -124
	add	t3, s0, t3
	lw	t1, 0(t3)
	sw	t0, 0(t1)
	lw	t1, fuckLLVM_table
	li	t3, -136
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t0, -20
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
	li	t0, 16
	li	t3, -148
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -144
	add	t3, s0, t3
	lw	t0, 0(t3)
	li	t3, -148
	add	t3, s0, t3
	lw	t1, 0(t3)
	mul	t2, t0, t1
	li	t3, -152
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -136
	add	t3, s0, t3
	lw	t0, 0(t3)
	li	t3, -152
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, t0, t1
	li	t3, -156
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -156
	add	t3, s0, t3
	lw	t0, 0(t3)
	lw	t1, 0(t0)
	li	t3, -160
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -160
	add	t3, s0, t3
	lw	t0, 0(t3)
	addi	t1, t0, 0
	li	t3, -164
	add	t3, s0, t3
	sw	t1, 0(t3)
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
	lw	t1, fuckLLVM_table
	li	t3, -176
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t0, -20
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
	li	t0, 16
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
	li	t3, -196
	add	t3, s0, t3
	lw	t0, 0(t3)
	lw	t1, 0(t0)
	li	t3, -200
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -200
	add	t3, s0, t3
	lw	t0, 0(t3)
	addi	t1, t0, 4
	li	t3, -204
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t0, -16
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
	lw	t1, fuckLLVM_table
	li	t3, -216
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t0, -20
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
	li	t0, 16
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
	li	t3, -240
	add	t3, s0, t3
	lw	t0, 0(t3)
	addi	t1, t0, 8
	li	t3, -244
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t0, 0
	li	t3, -248
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -248
	add	t3, s0, t3
	lw	t0, 0(t3)
	li	t3, -244
	add	t3, s0, t3
	lw	t1, 0(t3)
	sw	t0, 0(t1)
	j	.put_return
	j	.put_ID13_if_out
.put_ID13_if_out:
	lw	t1, fuckLLVM_table
	li	t3, -252
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t0, -20
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
	li	t0, 16
	li	t3, -264
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -260
	add	t3, s0, t3
	lw	t0, 0(t3)
	li	t3, -264
	add	t3, s0, t3
	lw	t1, 0(t3)
	mul	t2, t0, t1
	li	t3, -268
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -252
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
	lw	t1, 0(t0)
	li	t3, -276
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t0, -24
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
	li	t3, -276
	add	t3, s0, t3
	lw	t0, 0(t3)
	li	t3, -280
	add	t3, s0, t3
	lw	t1, 0(t3)
	sw	t0, 0(t1)
	j	.put_ID42_while_condition
.put_ID42_while_condition:
	li	t0, -24
	li	t3, -284
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -284
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, s0, t1
	li	t3, -284
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -284
	add	t3, s0, t3
	lw	t0, 0(t3)
	lw	t1, 0(t0)
	li	t3, -288
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -288
	add	t3, s0, t3
	lw	t0, 0(t3)
	addi	t1, t0, 0
	li	t3, -292
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -292
	add	t3, s0, t3
	lw	t0, 0(t3)
	lw	t1, 0(t0)
	li	t3, -296
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t0, -12
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
	li	t3, -296
	add	t3, s0, t3
	lw	t0, 0(t3)
	li	t3, -304
	add	t3, s0, t3
	lw	t1, 0(t3)
	xor	t2, t0, t1
	li	t3, -308
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -308
	add	t3, s0, t3
	lw	t0, 0(t3)
	sltiu	t1, t0, 1
	li	t3, -308
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -308
	add	t3, s0, t3
	lw	t0, 0(t3)
	xori	t1, t0, 1
	li	t3, -308
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -308
	add	t3, s0, t3
	lw	t0, 0(t3)
	bnez	t0, .put_ID47_while_suite
	j	.put_ID47_while_out
.put_ID50_if_true:
	li	t0, -24
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
	li	t3, -316
	add	t3, s0, t3
	lw	t0, 0(t3)
	addi	t1, t0, 8
	li	t3, -320
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t0, 16
	li	t3, -324
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -324
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	malloc
	mv	t1, a0
	li	t3, -328
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -328
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	node
	li	t3, -328
	add	t3, s0, t3
	lw	t0, 0(t3)
	li	t3, -320
	add	t3, s0, t3
	lw	t1, 0(t3)
	sw	t0, 0(t1)
	li	t0, -24
	li	t3, -332
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -332
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, s0, t1
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
	li	t3, -344
	add	t3, s0, t3
	lw	t0, 0(t3)
	addi	t1, t0, 0
	li	t3, -348
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t0, -12
	li	t3, -352
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -352
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, s0, t1
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
	li	t3, -356
	add	t3, s0, t3
	lw	t0, 0(t3)
	li	t3, -348
	add	t3, s0, t3
	lw	t1, 0(t3)
	sw	t0, 0(t1)
	li	t0, -24
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
	li	t3, -360
	add	t3, s0, t3
	lw	t0, 0(t3)
	lw	t1, 0(t0)
	li	t3, -364
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -364
	add	t3, s0, t3
	lw	t0, 0(t3)
	addi	t1, t0, 8
	li	t3, -368
	add	t3, s0, t3
	sw	t1, 0(t3)
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
	addi	t1, t0, 8
	li	t3, -376
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t0, 0
	li	t3, -380
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -380
	add	t3, s0, t3
	lw	t0, 0(t3)
	li	t3, -376
	add	t3, s0, t3
	lw	t1, 0(t3)
	sw	t0, 0(t1)
	j	.put_ID50_if_out
.put_ID50_if_out:
	li	t0, -24
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
	addi	t1, t0, 8
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
	li	t0, -24
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
	li	t3, -396
	add	t3, s0, t3
	lw	t0, 0(t3)
	li	t3, -400
	add	t3, s0, t3
	lw	t1, 0(t3)
	sw	t0, 0(t1)
	j	.put_ID42_while_condition
.put_ID47_while_suite:
	li	t0, -24
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
	li	t3, -408
	add	t3, s0, t3
	lw	t0, 0(t3)
	addi	t1, t0, 8
	li	t3, -412
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -412
	add	t3, s0, t3
	lw	t0, 0(t3)
	lw	t1, 0(t0)
	li	t3, -416
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t0, 0
	li	t3, -420
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -416
	add	t3, s0, t3
	lw	t0, 0(t3)
	li	t3, -420
	add	t3, s0, t3
	lw	t1, 0(t3)
	xor	t2, t0, t1
	li	t3, -424
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -424
	add	t3, s0, t3
	lw	t0, 0(t3)
	sltiu	t1, t0, 1
	li	t3, -424
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -424
	add	t3, s0, t3
	lw	t0, 0(t3)
	bnez	t0, .put_ID50_if_true
	j	.put_ID50_if_out
.put_ID47_while_out:
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
	li	t3, -432
	add	t3, s0, t3
	lw	t0, 0(t3)
	addi	t1, t0, 4
	li	t3, -436
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t0, -16
	li	t3, -440
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -440
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, s0, t1
	li	t3, -440
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -440
	add	t3, s0, t3
	lw	t0, 0(t3)
	lw	t1, 0(t0)
	li	t3, -444
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -444
	add	t3, s0, t3
	lw	t0, 0(t3)
	li	t3, -436
	add	t3, s0, t3
	lw	t1, 0(t3)
	sw	t0, 0(t1)
	j	.put_return
.put_return:
	li	t0, 448
	add	t1, sp, t0
	lw	ra, -4(t1)
	lw	s0, -8(t1)
	add	sp, sp, t0
	ret

	.globl	get
	.p2align	2
	.type	get,@function
get:
.get_assemblyInit:
	li	t0, 160
	sub	sp, sp, t0
	add	t1, sp, t0
	sw	ra, -4(t1)
	sw	s0, -8(t1)
	mv	s0, t1
	mv	t1, a0
	li	t3, -24
	add	t3, s0, t3
	sw	t1, 0(t3)
.get_entry:
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
	li	t3, -24
	add	t3, s0, t3
	lw	t0, 0(t3)
	li	t3, -28
	add	t3, s0, t3
	lw	t1, 0(t3)
	sw	t0, 0(t1)
	li	t0, 0
	li	t3, -32
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t0, -20
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
	lw	t1, fuckLLVM_table
	li	t3, -40
	add	t3, s0, t3
	sw	t1, 0(t3)
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
	li	t3, -44
	add	t3, s0, t3
	lw	t0, 0(t3)
	lw	t1, 0(t0)
	li	t3, -48
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -48
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	getHash
	mv	t1, a0
	li	t3, -52
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t0, 16
	li	t3, -56
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -52
	add	t3, s0, t3
	lw	t0, 0(t3)
	li	t3, -56
	add	t3, s0, t3
	lw	t1, 0(t3)
	mul	t2, t0, t1
	li	t3, -60
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -40
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
	lw	t1, 0(t0)
	li	t3, -68
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t0, -20
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
	li	t3, -68
	add	t3, s0, t3
	lw	t0, 0(t3)
	li	t3, -72
	add	t3, s0, t3
	lw	t1, 0(t3)
	sw	t0, 0(t1)
	j	.get_ID10_while_condition
.get_ID10_while_condition:
	li	t0, -20
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
	li	t3, -76
	add	t3, s0, t3
	lw	t0, 0(t3)
	lw	t1, 0(t0)
	li	t3, -80
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -80
	add	t3, s0, t3
	lw	t0, 0(t3)
	addi	t1, t0, 0
	li	t3, -84
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -84
	add	t3, s0, t3
	lw	t0, 0(t3)
	lw	t1, 0(t0)
	li	t3, -88
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t0, -12
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
	li	t3, -92
	add	t3, s0, t3
	lw	t0, 0(t3)
	lw	t1, 0(t0)
	li	t3, -96
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -88
	add	t3, s0, t3
	lw	t0, 0(t3)
	li	t3, -96
	add	t3, s0, t3
	lw	t1, 0(t3)
	xor	t2, t0, t1
	li	t3, -100
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -100
	add	t3, s0, t3
	lw	t0, 0(t3)
	sltiu	t1, t0, 1
	li	t3, -100
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -100
	add	t3, s0, t3
	lw	t0, 0(t3)
	xori	t1, t0, 1
	li	t3, -100
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -100
	add	t3, s0, t3
	lw	t0, 0(t3)
	bnez	t0, .get_ID15_while_suite
	j	.get_ID15_while_out
.get_ID15_while_suite:
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
	li	t3, -108
	add	t3, s0, t3
	lw	t0, 0(t3)
	addi	t1, t0, 8
	li	t3, -112
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -112
	add	t3, s0, t3
	lw	t0, 0(t3)
	lw	t1, 0(t0)
	li	t3, -116
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t0, -20
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
	li	t3, -116
	add	t3, s0, t3
	lw	t0, 0(t3)
	li	t3, -120
	add	t3, s0, t3
	lw	t1, 0(t3)
	sw	t0, 0(t1)
	j	.get_ID10_while_condition
.get_ID15_while_out:
	li	t0, -20
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
	addi	t1, t0, 4
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
	li	t0, -16
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
	li	t3, -136
	add	t3, s0, t3
	lw	t0, 0(t3)
	li	t3, -140
	add	t3, s0, t3
	lw	t1, 0(t3)
	sw	t0, 0(t1)
	j	.get_return
	j	.get_return
.get_return:
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
	li	t3, -144
	add	t3, s0, t3
	lw	t0, 0(t3)
	lw	t1, 0(t0)
	li	t3, -148
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -148
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	li	t0, 160
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
	li	t0, 304
	sub	sp, sp, t0
	add	t1, sp, t0
	sw	ra, -4(t1)
	sw	s0, -8(t1)
	mv	s0, t1
.main_entry:
	call	__init
	li	t0, 0
	li	t3, -20
	add	t3, s0, t3
	sw	t0, 0(t3)
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
	li	t0, 100
	li	t3, -28
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t0, 16
	li	t3, -32
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -28
	add	t3, s0, t3
	lw	t0, 0(t3)
	li	t3, -32
	add	t3, s0, t3
	lw	t1, 0(t3)
	mul	t2, t0, t1
	li	t3, -36
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t0, 4
	li	t3, -40
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -36
	add	t3, s0, t3
	lw	t0, 0(t3)
	li	t3, -40
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, t0, t1
	li	t3, -44
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -44
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	malloc
	mv	t1, a0
	li	t3, -48
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t0, 100
	li	t3, -52
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -52
	add	t3, s0, t3
	lw	t0, 0(t3)
	li	t3, -48
	add	t3, s0, t3
	lw	t1, 0(t3)
	sw	t0, 0(t1)
	li	t0, 1
	li	t3, -56
	add	t3, s0, t3
	sw	t0, 0(t3)
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
	mul	t2, t0, t1
	li	t3, -64
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -48
	add	t3, s0, t3
	lw	t0, 0(t3)
	li	t3, -64
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, t0, t1
	li	t3, -68
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -68
	add	t3, s0, t3
	lw	t0, 0(t3)
	li	t3, -72
	add	t3, s0, t3
	lw	t1, 0(t3)
	sw	t0, fuckLLVM_table, t1
	li	t0, 0
	li	t3, -76
	add	t3, s0, t3
	sw	t0, 0(t3)
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
	li	t3, -76
	add	t3, s0, t3
	lw	t0, 0(t3)
	li	t3, -80
	add	t3, s0, t3
	lw	t1, 0(t3)
	sw	t0, 0(t1)
	j	.main_ID8_for_condition
.main_ID8_for_condition:
	li	t0, -16
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
	lw	t1, fuckLLVM_hashsize
	li	t3, -92
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -88
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
	bnez	t0, .main_ID8_for_suite
	j	.main_ID8_for_out
.main_ID8_for_suite:
	lw	t1, fuckLLVM_table
	li	t3, -100
	add	t3, s0, t3
	sw	t1, 0(t3)
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
	li	t3, -104
	add	t3, s0, t3
	lw	t0, 0(t3)
	lw	t1, 0(t0)
	li	t3, -108
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t0, 16
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
	li	t0, 0
	li	t3, -124
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -124
	add	t3, s0, t3
	lw	t0, 0(t3)
	li	t3, -120
	add	t3, s0, t3
	lw	t1, 0(t3)
	sw	t0, 0(t1)
	j	.main_ID8_for_incr
.main_ID8_for_incr:
	li	t0, -16
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
	li	t0, 1
	li	t3, -136
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -132
	add	t3, s0, t3
	lw	t0, 0(t3)
	li	t3, -136
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, t0, t1
	li	t3, -140
	add	t3, s0, t3
	sw	t2, 0(t3)
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
	j	.main_ID8_for_condition
.main_ID8_for_out:
	li	t0, 0
	li	t3, -148
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t0, -16
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
	li	t3, -148
	add	t3, s0, t3
	lw	t0, 0(t3)
	li	t3, -152
	add	t3, s0, t3
	lw	t1, 0(t3)
	sw	t0, 0(t1)
	j	.main_ID16_for_condition
.main_ID16_for_condition:
	li	t0, -16
	li	t3, -156
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -156
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, s0, t1
	li	t3, -156
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -156
	add	t3, s0, t3
	lw	t0, 0(t3)
	lw	t1, 0(t0)
	li	t3, -160
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t0, 1000
	li	t3, -164
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -160
	add	t3, s0, t3
	lw	t0, 0(t3)
	li	t3, -164
	add	t3, s0, t3
	lw	t1, 0(t3)
	slt	t2, t0, t1
	li	t3, -168
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -168
	add	t3, s0, t3
	lw	t0, 0(t3)
	bnez	t0, .main_ID16_for_suite
	j	.main_ID16_for_out
.main_ID16_for_suite:
	li	t0, -16
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
	li	t0, -16
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
	li	t3, -176
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	li	t3, -184
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a1, t0
	call	put
	j	.main_ID16_for_incr
.main_ID16_for_incr:
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
	add	t2, t0, t1
	li	t3, -200
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t0, -16
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
	j	.main_ID16_for_condition
.main_ID16_for_out:
	li	t0, 0
	li	t3, -208
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t0, -16
	li	t3, -212
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -212
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, s0, t1
	li	t3, -212
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -208
	add	t3, s0, t3
	lw	t0, 0(t3)
	li	t3, -212
	add	t3, s0, t3
	lw	t1, 0(t3)
	sw	t0, 0(t1)
	j	.main_ID23_for_condition
.main_ID23_for_condition:
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
	li	t0, 1000
	li	t3, -224
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -220
	add	t3, s0, t3
	lw	t0, 0(t3)
	li	t3, -224
	add	t3, s0, t3
	lw	t1, 0(t3)
	slt	t2, t0, t1
	li	t3, -228
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -228
	add	t3, s0, t3
	lw	t0, 0(t3)
	bnez	t0, .main_ID23_for_suite
	j	.main_ID23_for_out
.main_ID23_for_suite:
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
	li	t3, -232
	add	t3, s0, t3
	lw	t0, 0(t3)
	lw	t1, 0(t0)
	li	t3, -236
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -236
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	toString
	mv	t1, a0
	li	t3, -240
	add	t3, s0, t3
	sw	t1, 0(t3)
	la	t0, fuckLLVM_.str.0
	li	t3, -244
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -240
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	li	t3, -244
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a1, t0
	call	string_add
	mv	t1, a0
	li	t3, -248
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t0, -16
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
	li	t3, -256
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	get
	mv	t1, a0
	li	t3, -260
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -260
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	toString
	mv	t1, a0
	li	t3, -264
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -248
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	li	t3, -264
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a1, t0
	call	string_add
	mv	t1, a0
	li	t3, -268
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -268
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	println
	j	.main_ID23_for_incr
.main_ID23_for_incr:
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
	li	t0, 1
	li	t3, -280
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -276
	add	t3, s0, t3
	lw	t0, 0(t3)
	li	t3, -280
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, t0, t1
	li	t3, -284
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t0, -16
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
	li	t3, -284
	add	t3, s0, t3
	lw	t0, 0(t3)
	li	t3, -288
	add	t3, s0, t3
	lw	t1, 0(t3)
	sw	t0, 0(t1)
	j	.main_ID23_for_condition
.main_ID23_for_out:
	li	t0, 0
	li	t3, -292
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t0, -12
	li	t3, -296
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -296
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, s0, t1
	li	t3, -296
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -292
	add	t3, s0, t3
	lw	t0, 0(t3)
	li	t3, -296
	add	t3, s0, t3
	lw	t1, 0(t3)
	sw	t0, 0(t1)
	j	.main_return
	j	.main_return
.main_return:
	li	t0, -12
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
	mv	a0, t0
	li	t0, 304
	add	t1, sp, t0
	lw	ra, -4(t1)
	lw	s0, -8(t1)
	add	sp, sp, t0
	ret

	.section	.sbss
	.type	fuckLLVM_hashsize,@object
	.globl	fuckLLVM_hashsize
	.p2align	2
fuckLLVM_hashsize:
	.word	100
	.size	fuckLLVM_hashsize, 8

	.section	.sbss
	.type	fuckLLVM_table,@object
	.globl	fuckLLVM_table
	.p2align	2
fuckLLVM_table:
	.word	0
	.size	fuckLLVM_table, 8

	.section	.rodata
	.type	fuckLLVM_.str.0,@object
fuckLLVM_.str.0:
	.asciz	"  "
	.size	fuckLLVM_.str.0, 2

