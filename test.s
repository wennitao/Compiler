	.text

	.globl	__init
	.p2align	2
	.type	__init,@function
__init:
.__init_assemblyInit:
	li	t0, 48
	sub	sp, sp, t0
	add	t1, sp, t0
	sw	ra, -4(t1)
	sw	s0, -8(t1)
	mv	s0, t1
.__init_entry:
	li	t0, 0
	li	t3, -12
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -12
	add	t3, s0, t3
	lw	t0, 0(t3)
	li	t3, -16
	add	t3, s0, t3
	lw	t1, 0(t3)
	sw	t0, fuckLLVM_root, t1
	li	t0, 1
	li	t3, -20
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t0, 31
	li	t3, -24
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -20
	add	t3, s0, t3
	lw	t0, 0(t3)
	li	t3, -24
	add	t3, s0, t3
	lw	t1, 0(t3)
	sll	t2, t0, t1
	li	t3, -28
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t0, -1
	li	t3, -32
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -28
	add	t3, s0, t3
	lw	t0, 0(t3)
	li	t3, -32
	add	t3, s0, t3
	lw	t1, 0(t3)
	xor	t2, t0, t1
	li	t3, -36
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -36
	add	t3, s0, t3
	lw	t0, 0(t3)
	li	t3, -40
	add	t3, s0, t3
	lw	t1, 0(t3)
	sw	t0, fuckLLVM_MaxRandInt, t1
	j	.__init_return
.__init_return:
	li	t0, 48
	add	t1, sp, t0
	lw	ra, -4(t1)
	lw	s0, -8(t1)
	add	sp, sp, t0
	ret

	.globl	Node
	.p2align	2
	.type	Node,@function
Node:
.Node_assemblyInit:
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
.Node:
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
	j	.Node_return
.Node_return:
	li	t0, 32
	add	t1, sp, t0
	lw	ra, -4(t1)
	lw	s0, -8(t1)
	add	sp, sp, t0
	ret

	.globl	constructNode
	.p2align	2
	.type	constructNode,@function
constructNode:
.constructNode_assemblyInit:
	li	t0, 288
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
	mv	t1, a3
	li	t3, -48
	add	t3, s0, t3
	sw	t1, 0(t3)
.constructNode_entry:
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
	li	t3, -36
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
	li	t3, -40
	add	t3, s0, t3
	lw	t0, 0(t3)
	li	t3, -56
	add	t3, s0, t3
	lw	t1, 0(t3)
	sw	t0, 0(t1)
	li	t0, -20
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
	li	t3, -44
	add	t3, s0, t3
	lw	t0, 0(t3)
	li	t3, -60
	add	t3, s0, t3
	lw	t1, 0(t3)
	sw	t0, 0(t1)
	li	t0, -24
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
	li	t3, -48
	add	t3, s0, t3
	lw	t0, 0(t3)
	li	t3, -64
	add	t3, s0, t3
	lw	t1, 0(t3)
	sw	t0, 0(t1)
	li	t0, 24
	li	t3, -68
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -68
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	malloc
	mv	t1, a0
	li	t3, -72
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -72
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	Node
	li	t0, -32
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
	li	t0, -32
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
	li	t3, -84
	add	t3, s0, t3
	lw	t0, 0(t3)
	addi	t1, t0, 8
	li	t3, -88
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t0, 2
	li	t3, -92
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t0, 24
	li	t3, -96
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -92
	add	t3, s0, t3
	lw	t0, 0(t3)
	li	t3, -96
	add	t3, s0, t3
	lw	t1, 0(t3)
	mul	t2, t0, t1
	li	t3, -100
	add	t3, s0, t3
	sw	t2, 0(t3)
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
	add	t2, t0, t1
	li	t3, -108
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -108
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	malloc
	mv	t1, a0
	li	t3, -112
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t0, 2
	li	t3, -116
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -116
	add	t3, s0, t3
	lw	t0, 0(t3)
	li	t3, -112
	add	t3, s0, t3
	lw	t1, 0(t3)
	sw	t0, 0(t1)
	li	t0, 1
	li	t3, -120
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t0, 4
	li	t3, -124
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -120
	add	t3, s0, t3
	lw	t0, 0(t3)
	li	t3, -124
	add	t3, s0, t3
	lw	t1, 0(t3)
	mul	t2, t0, t1
	li	t3, -128
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -112
	add	t3, s0, t3
	lw	t0, 0(t3)
	li	t3, -128
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, t0, t1
	li	t3, -132
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -132
	add	t3, s0, t3
	lw	t0, 0(t3)
	li	t3, -88
	add	t3, s0, t3
	lw	t1, 0(t3)
	sw	t0, 0(t1)
	li	t0, -32
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
	addi	t1, t0, 16
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
	li	t3, -152
	add	t3, s0, t3
	lw	t0, 0(t3)
	li	t3, -144
	add	t3, s0, t3
	lw	t1, 0(t3)
	sw	t0, 0(t1)
	li	t0, -32
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
	li	t3, -160
	add	t3, s0, t3
	lw	t0, 0(t3)
	addi	t1, t0, 20
	li	t3, -164
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t0, 1
	li	t3, -168
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -168
	add	t3, s0, t3
	lw	t0, 0(t3)
	li	t3, -164
	add	t3, s0, t3
	lw	t1, 0(t3)
	sw	t0, 0(t1)
	li	t0, -32
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
	li	t3, -176
	add	t3, s0, t3
	lw	t0, 0(t3)
	addi	t1, t0, 0
	li	t3, -180
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t0, -16
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
	li	t0, -32
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
	li	t3, -196
	add	t3, s0, t3
	lw	t0, 0(t3)
	addi	t1, t0, 8
	li	t3, -200
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -200
	add	t3, s0, t3
	lw	t0, 0(t3)
	lw	t1, 0(t0)
	li	t3, -204
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t0, 0
	li	t3, -208
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t0, 24
	li	t3, -212
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -208
	add	t3, s0, t3
	lw	t0, 0(t3)
	li	t3, -212
	add	t3, s0, t3
	lw	t1, 0(t3)
	mul	t2, t0, t1
	li	t3, -216
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -204
	add	t3, s0, t3
	lw	t0, 0(t3)
	li	t3, -216
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, t0, t1
	li	t3, -220
	add	t3, s0, t3
	sw	t2, 0(t3)
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
	li	t3, -224
	add	t3, s0, t3
	lw	t0, 0(t3)
	lw	t1, 0(t0)
	li	t3, -228
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -228
	add	t3, s0, t3
	lw	t0, 0(t3)
	li	t3, -220
	add	t3, s0, t3
	lw	t1, 0(t3)
	sw	t0, 0(t1)
	li	t0, -32
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
	addi	t1, t0, 8
	li	t3, -240
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -240
	add	t3, s0, t3
	lw	t0, 0(t3)
	lw	t1, 0(t0)
	li	t3, -244
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t0, 1
	li	t3, -248
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t0, 24
	li	t3, -252
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -248
	add	t3, s0, t3
	lw	t0, 0(t3)
	li	t3, -252
	add	t3, s0, t3
	lw	t1, 0(t3)
	mul	t2, t0, t1
	li	t3, -256
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -244
	add	t3, s0, t3
	lw	t0, 0(t3)
	li	t3, -256
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, t0, t1
	li	t3, -260
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t0, -24
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
	li	t3, -268
	add	t3, s0, t3
	lw	t0, 0(t3)
	li	t3, -260
	add	t3, s0, t3
	lw	t1, 0(t3)
	sw	t0, 0(t1)
	li	t0, -32
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
	li	t0, -28
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
	j	.constructNode_return
	j	.constructNode_return
.constructNode_return:
	li	t0, -28
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
	mv	a0, t0
	li	t0, 288
	add	t1, sp, t0
	lw	ra, -4(t1)
	lw	s0, -8(t1)
	add	sp, sp, t0
	ret

	.globl	insertImpl
	.p2align	2
	.type	insertImpl,@function
insertImpl:
.insertImpl_assemblyInit:
	li	t0, 352
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
	mv	t1, a3
	li	t3, -48
	add	t3, s0, t3
	sw	t1, 0(t3)
.insertImpl_entry:
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
	li	t3, -36
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
	li	t3, -40
	add	t3, s0, t3
	lw	t0, 0(t3)
	li	t3, -56
	add	t3, s0, t3
	lw	t1, 0(t3)
	sw	t0, 0(t1)
	li	t0, -20
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
	li	t3, -44
	add	t3, s0, t3
	lw	t0, 0(t3)
	li	t3, -60
	add	t3, s0, t3
	lw	t1, 0(t3)
	sw	t0, 0(t1)
	li	t0, -24
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
	li	t3, -48
	add	t3, s0, t3
	lw	t0, 0(t3)
	li	t3, -64
	add	t3, s0, t3
	lw	t1, 0(t3)
	sw	t0, 0(t1)
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
	li	t0, 0
	li	t3, -76
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -72
	add	t3, s0, t3
	lw	t0, 0(t3)
	li	t3, -76
	add	t3, s0, t3
	lw	t1, 0(t3)
	xor	t2, t0, t1
	li	t3, -80
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -80
	add	t3, s0, t3
	lw	t0, 0(t3)
	sltiu	t1, t0, 1
	li	t3, -80
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -80
	add	t3, s0, t3
	lw	t0, 0(t3)
	bnez	t0, .insertImpl_ID10_if_true
	j	.insertImpl_ID10_if_out
.insertImpl_ID10_if_true:
	li	t0, -24
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
	mv	a0, t0
	li	t3, -96
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a1, t0
	li	t0, 0
	li	t3, -100
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -100
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a2, t0
	li	t0, 0
	li	t3, -104
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -104
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a3, t0
	call	constructNode
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
	li	t0, -16
	li	t3, -116
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -116
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, s0, t1
	li	t3, -116
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -116
	add	t3, s0, t3
	lw	t0, 0(t3)
	lw	t1, 0(t0)
	li	t3, -120
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -120
	add	t3, s0, t3
	lw	t0, 0(t3)
	addi	t1, t0, 8
	li	t3, -124
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -124
	add	t3, s0, t3
	lw	t0, 0(t3)
	lw	t1, 0(t0)
	li	t3, -128
	add	t3, s0, t3
	sw	t1, 0(t3)
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
	li	t3, -132
	add	t3, s0, t3
	lw	t0, 0(t3)
	lw	t1, 0(t0)
	li	t3, -136
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t0, 24
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
	li	t0, -12
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
	li	t3, -148
	add	t3, s0, t3
	lw	t1, 0(t3)
	sw	t0, 0(t1)
	li	t0, 0
	li	t3, -160
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t0, -28
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
	li	t3, -160
	add	t3, s0, t3
	lw	t0, 0(t3)
	li	t3, -164
	add	t3, s0, t3
	lw	t1, 0(t3)
	sw	t0, 0(t1)
	j	.insertImpl_return
	j	.insertImpl_ID10_if_out
.insertImpl_ID10_if_out:
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
	addi	t1, t0, 16
	li	t3, -176
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -176
	add	t3, s0, t3
	lw	t0, 0(t3)
	lw	t1, 0(t0)
	li	t3, -180
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t0, -24
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
	li	t3, -180
	add	t3, s0, t3
	lw	t0, 0(t3)
	li	t3, -188
	add	t3, s0, t3
	lw	t1, 0(t3)
	xor	t2, t0, t1
	li	t3, -192
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -192
	add	t3, s0, t3
	lw	t0, 0(t3)
	sltiu	t1, t0, 1
	li	t3, -192
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -192
	add	t3, s0, t3
	lw	t0, 0(t3)
	bnez	t0, .insertImpl_ID27_if_true
	j	.insertImpl_ID27_if_out
.insertImpl_ID27_if_true:
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
	li	t3, -200
	add	t3, s0, t3
	lw	t0, 0(t3)
	addi	t1, t0, 20
	li	t3, -204
	add	t3, s0, t3
	sw	t1, 0(t3)
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
	li	t3, -216
	add	t3, s0, t3
	lw	t0, 0(t3)
	li	t3, -204
	add	t3, s0, t3
	lw	t1, 0(t3)
	sw	t0, 0(t1)
	li	t0, 1
	li	t3, -220
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t0, -28
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
	j	.insertImpl_return
	j	.insertImpl_ID27_if_out
.insertImpl_ID27_if_out:
	li	t0, 0
	li	t3, -228
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t0, -32
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
	li	t0, -12
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
	li	t3, -240
	add	t3, s0, t3
	lw	t0, 0(t3)
	addi	t1, t0, 16
	li	t3, -244
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -244
	add	t3, s0, t3
	lw	t0, 0(t3)
	lw	t1, 0(t0)
	li	t3, -248
	add	t3, s0, t3
	sw	t1, 0(t3)
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
	li	t3, -248
	add	t3, s0, t3
	lw	t0, 0(t3)
	li	t3, -256
	add	t3, s0, t3
	lw	t1, 0(t3)
	slt	t2, t0, t1
	li	t3, -260
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -260
	add	t3, s0, t3
	lw	t0, 0(t3)
	bnez	t0, .insertImpl_ID37_if_true
	j	.insertImpl_ID37_if_out
.insertImpl_ID37_if_true:
	li	t0, 1
	li	t3, -264
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t0, -32
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
	j	.insertImpl_ID37_if_out
.insertImpl_ID37_if_out:
	li	t0, -12
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
	li	t3, -276
	add	t3, s0, t3
	lw	t0, 0(t3)
	addi	t1, t0, 8
	li	t3, -280
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -280
	add	t3, s0, t3
	lw	t0, 0(t3)
	lw	t1, 0(t0)
	li	t3, -284
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t0, -32
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
	li	t0, 24
	li	t3, -296
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -292
	add	t3, s0, t3
	lw	t0, 0(t3)
	li	t3, -296
	add	t3, s0, t3
	lw	t1, 0(t3)
	mul	t2, t0, t1
	li	t3, -300
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -284
	add	t3, s0, t3
	lw	t0, 0(t3)
	li	t3, -300
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, t0, t1
	li	t3, -304
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -304
	add	t3, s0, t3
	lw	t0, 0(t3)
	lw	t1, 0(t0)
	li	t3, -308
	add	t3, s0, t3
	sw	t1, 0(t3)
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
	li	t3, -312
	add	t3, s0, t3
	lw	t0, 0(t3)
	lw	t1, 0(t0)
	li	t3, -316
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t0, -32
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
	li	t0, -24
	li	t3, -328
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -328
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, s0, t1
	li	t3, -328
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -328
	add	t3, s0, t3
	lw	t0, 0(t3)
	lw	t1, 0(t0)
	li	t3, -332
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -308
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	li	t3, -316
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a1, t0
	li	t3, -324
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a2, t0
	li	t3, -332
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a3, t0
	call	insertImpl
	mv	t1, a0
	li	t3, -336
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t0, -28
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
	j	.insertImpl_return
	j	.insertImpl_return
.insertImpl_return:
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
	li	t3, -344
	add	t3, s0, t3
	lw	t0, 0(t3)
	lw	t1, 0(t0)
	li	t3, -348
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -348
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	li	t0, 352
	add	t1, sp, t0
	lw	ra, -4(t1)
	lw	s0, -8(t1)
	add	sp, sp, t0
	ret

	.globl	insert
	.p2align	2
	.type	insert,@function
insert:
.insert_assemblyInit:
	li	t0, 128
	sub	sp, sp, t0
	add	t1, sp, t0
	sw	ra, -4(t1)
	sw	s0, -8(t1)
	mv	s0, t1
	mv	t1, a0
	li	t3, -20
	add	t3, s0, t3
	sw	t1, 0(t3)
.insert_entry:
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
	lw	t1, fuckLLVM_root
	li	t3, -28
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t0, 0
	li	t3, -32
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -28
	add	t3, s0, t3
	lw	t0, 0(t3)
	li	t3, -32
	add	t3, s0, t3
	lw	t1, 0(t3)
	xor	t2, t0, t1
	li	t3, -36
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -36
	add	t3, s0, t3
	lw	t0, 0(t3)
	sltiu	t1, t0, 1
	li	t3, -36
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -36
	add	t3, s0, t3
	lw	t0, 0(t3)
	xori	t1, t0, 1
	li	t3, -36
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -36
	add	t3, s0, t3
	lw	t0, 0(t3)
	bnez	t0, .insert_ID4_if_true
	j	.insert_ID4_if_out
.insert_ID4_if_true:
	lw	t1, fuckLLVM_root
	li	t3, -40
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t0, 0
	li	t3, -44
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t0, 1
	li	t3, -48
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -44
	add	t3, s0, t3
	lw	t0, 0(t3)
	li	t3, -48
	add	t3, s0, t3
	lw	t1, 0(t3)
	sub	t2, t0, t1
	li	t3, -52
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t0, -12
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
	li	t3, -40
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	li	t0, 0
	li	t3, -64
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -64
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a1, t0
	li	t3, -52
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a2, t0
	li	t3, -60
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a3, t0
	call	insertImpl
	mv	t1, a0
	li	t3, -68
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t0, -16
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
	j	.insert_return
	j	.insert_ID4_if_out
.insert_ID4_if_out:
	li	t0, -12
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
	mv	a0, t0
	li	t0, 0
	li	t3, -84
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -84
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a1, t0
	li	t0, 0
	li	t3, -88
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -88
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a2, t0
	li	t0, 0
	li	t3, -92
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -92
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a3, t0
	call	constructNode
	mv	t1, a0
	li	t3, -96
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -96
	add	t3, s0, t3
	lw	t0, 0(t3)
	li	t3, -100
	add	t3, s0, t3
	lw	t1, 0(t3)
	sw	t0, fuckLLVM_root, t1
	li	t0, 0
	li	t3, -104
	add	t3, s0, t3
	sw	t0, 0(t3)
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
	li	t3, -104
	add	t3, s0, t3
	lw	t0, 0(t3)
	li	t3, -108
	add	t3, s0, t3
	lw	t1, 0(t3)
	sw	t0, 0(t1)
	j	.insert_return
	j	.insert_return
.insert_return:
	li	t0, -16
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
	li	t3, -112
	add	t3, s0, t3
	lw	t0, 0(t3)
	lw	t1, 0(t0)
	li	t3, -116
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -116
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	li	t0, 128
	add	t1, sp, t0
	lw	ra, -4(t1)
	lw	s0, -8(t1)
	add	sp, sp, t0
	ret

	.globl	findLargest
	.p2align	2
	.type	findLargest,@function
findLargest:
.findLargest_assemblyInit:
	li	t0, 144
	sub	sp, sp, t0
	add	t1, sp, t0
	sw	ra, -4(t1)
	sw	s0, -8(t1)
	mv	s0, t1
	mv	t1, a0
	li	t3, -20
	add	t3, s0, t3
	sw	t1, 0(t3)
.findLargest_entry:
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
	li	t3, -32
	add	t3, s0, t3
	lw	t0, 0(t3)
	addi	t1, t0, 8
	li	t3, -36
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -36
	add	t3, s0, t3
	lw	t0, 0(t3)
	lw	t1, 0(t0)
	li	t3, -40
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t0, 1
	li	t3, -44
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t0, 24
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
	li	t3, -40
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
	li	t0, 0
	li	t3, -64
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -60
	add	t3, s0, t3
	lw	t0, 0(t3)
	li	t3, -64
	add	t3, s0, t3
	lw	t1, 0(t3)
	xor	t2, t0, t1
	li	t3, -68
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -68
	add	t3, s0, t3
	lw	t0, 0(t3)
	sltiu	t1, t0, 1
	li	t3, -68
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -68
	add	t3, s0, t3
	lw	t0, 0(t3)
	bnez	t0, .findLargest_ID8_if_true
	j	.findLargest_ID8_if_out
.findLargest_ID8_if_true:
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
	li	t3, -76
	add	t3, s0, t3
	lw	t0, 0(t3)
	li	t3, -80
	add	t3, s0, t3
	lw	t1, 0(t3)
	sw	t0, 0(t1)
	j	.findLargest_return
	j	.findLargest_ID8_if_out
.findLargest_ID8_if_out:
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
	li	t3, -88
	add	t3, s0, t3
	lw	t0, 0(t3)
	addi	t1, t0, 8
	li	t3, -92
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -92
	add	t3, s0, t3
	lw	t0, 0(t3)
	lw	t1, 0(t0)
	li	t3, -96
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t0, 1
	li	t3, -100
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t0, 24
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
	lw	t1, 0(t0)
	li	t3, -116
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -116
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	findLargest
	mv	t1, a0
	li	t3, -120
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t0, -16
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
	j	.findLargest_return
	j	.findLargest_return
.findLargest_return:
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
	li	t3, -132
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	li	t0, 144
	add	t1, sp, t0
	lw	ra, -4(t1)
	lw	s0, -8(t1)
	add	sp, sp, t0
	ret

	.globl	eraseImpl
	.p2align	2
	.type	eraseImpl,@function
eraseImpl:
.eraseImpl_assemblyInit:
	li	t0, 1392
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
	mv	t1, a3
	li	t3, -48
	add	t3, s0, t3
	sw	t1, 0(t3)
.eraseImpl_entry:
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
	li	t3, -36
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
	li	t3, -40
	add	t3, s0, t3
	lw	t0, 0(t3)
	li	t3, -56
	add	t3, s0, t3
	lw	t1, 0(t3)
	sw	t0, 0(t1)
	li	t0, -20
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
	li	t3, -44
	add	t3, s0, t3
	lw	t0, 0(t3)
	li	t3, -60
	add	t3, s0, t3
	lw	t1, 0(t3)
	sw	t0, 0(t1)
	li	t0, -24
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
	li	t3, -48
	add	t3, s0, t3
	lw	t0, 0(t3)
	li	t3, -64
	add	t3, s0, t3
	lw	t1, 0(t3)
	sw	t0, 0(t1)
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
	li	t0, 0
	li	t3, -76
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -72
	add	t3, s0, t3
	lw	t0, 0(t3)
	li	t3, -76
	add	t3, s0, t3
	lw	t1, 0(t3)
	xor	t2, t0, t1
	li	t3, -80
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -80
	add	t3, s0, t3
	lw	t0, 0(t3)
	sltiu	t1, t0, 1
	li	t3, -80
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -80
	add	t3, s0, t3
	lw	t0, 0(t3)
	bnez	t0, .eraseImpl_ID10_if_true
	j	.eraseImpl_ID10_if_out
.eraseImpl_ID10_if_true:
	li	t0, 0
	li	t3, -84
	add	t3, s0, t3
	sw	t0, 0(t3)
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
	li	t3, -84
	add	t3, s0, t3
	lw	t0, 0(t3)
	li	t3, -88
	add	t3, s0, t3
	lw	t1, 0(t3)
	sw	t0, 0(t1)
	j	.eraseImpl_return
	j	.eraseImpl_ID10_if_out
.eraseImpl_ID10_if_out:
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
	li	t3, -96
	add	t3, s0, t3
	lw	t0, 0(t3)
	addi	t1, t0, 16
	li	t3, -100
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -100
	add	t3, s0, t3
	lw	t0, 0(t3)
	lw	t1, 0(t0)
	li	t3, -104
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t0, -24
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
	li	t3, -112
	add	t3, s0, t3
	lw	t0, 0(t3)
	li	t3, -104
	add	t3, s0, t3
	lw	t1, 0(t3)
	slt	t2, t0, t1
	li	t3, -116
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -116
	add	t3, s0, t3
	lw	t0, 0(t3)
	bnez	t0, .eraseImpl_ID15_if_true
	j	.eraseImpl_ID15_if_out
.eraseImpl_ID15_if_true:
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
	li	t3, -124
	add	t3, s0, t3
	lw	t0, 0(t3)
	addi	t1, t0, 8
	li	t3, -128
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -128
	add	t3, s0, t3
	lw	t0, 0(t3)
	lw	t1, 0(t0)
	li	t3, -132
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t0, 0
	li	t3, -136
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t0, 24
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
	li	t3, -132
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
	li	t0, -12
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
	li	t3, -152
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	li	t3, -160
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a1, t0
	li	t0, 0
	li	t3, -172
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -172
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a2, t0
	li	t3, -168
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a3, t0
	call	eraseImpl
	mv	t1, a0
	li	t3, -176
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t0, -28
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
	li	t3, -176
	add	t3, s0, t3
	lw	t0, 0(t3)
	li	t3, -180
	add	t3, s0, t3
	lw	t1, 0(t3)
	sw	t0, 0(t1)
	j	.eraseImpl_return
	j	.eraseImpl_ID15_if_out
.eraseImpl_ID15_if_out:
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
	addi	t1, t0, 16
	li	t3, -192
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -192
	add	t3, s0, t3
	lw	t0, 0(t3)
	lw	t1, 0(t0)
	li	t3, -196
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t0, -24
	li	t3, -200
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -200
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, s0, t1
	li	t3, -200
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -200
	add	t3, s0, t3
	lw	t0, 0(t3)
	lw	t1, 0(t0)
	li	t3, -204
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -196
	add	t3, s0, t3
	lw	t0, 0(t3)
	li	t3, -204
	add	t3, s0, t3
	lw	t1, 0(t3)
	slt	t2, t0, t1
	li	t3, -208
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -208
	add	t3, s0, t3
	lw	t0, 0(t3)
	bnez	t0, .eraseImpl_ID30_if_true
	j	.eraseImpl_ID30_if_out
.eraseImpl_ID30_if_true:
	li	t0, -12
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
	li	t3, -212
	add	t3, s0, t3
	lw	t0, 0(t3)
	lw	t1, 0(t0)
	li	t3, -216
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -216
	add	t3, s0, t3
	lw	t0, 0(t3)
	addi	t1, t0, 8
	li	t3, -220
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -220
	add	t3, s0, t3
	lw	t0, 0(t3)
	lw	t1, 0(t0)
	li	t3, -224
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t0, 1
	li	t3, -228
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t0, 24
	li	t3, -232
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -228
	add	t3, s0, t3
	lw	t0, 0(t3)
	li	t3, -232
	add	t3, s0, t3
	lw	t1, 0(t3)
	mul	t2, t0, t1
	li	t3, -236
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -224
	add	t3, s0, t3
	lw	t0, 0(t3)
	li	t3, -236
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, t0, t1
	li	t3, -240
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -240
	add	t3, s0, t3
	lw	t0, 0(t3)
	lw	t1, 0(t0)
	li	t3, -244
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t0, -12
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
	li	t0, -24
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
	li	t3, -244
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	li	t3, -252
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a1, t0
	li	t0, 1
	li	t3, -264
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -264
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a2, t0
	li	t3, -260
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a3, t0
	call	eraseImpl
	mv	t1, a0
	li	t3, -268
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t0, -28
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
	li	t3, -268
	add	t3, s0, t3
	lw	t0, 0(t3)
	li	t3, -272
	add	t3, s0, t3
	lw	t1, 0(t3)
	sw	t0, 0(t1)
	j	.eraseImpl_return
	j	.eraseImpl_ID30_if_out
.eraseImpl_ID30_if_out:
	li	t0, -12
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
	li	t3, -280
	add	t3, s0, t3
	lw	t0, 0(t3)
	addi	t1, t0, 20
	li	t3, -284
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -284
	add	t3, s0, t3
	lw	t0, 0(t3)
	lw	t1, 0(t0)
	li	t3, -288
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t0, 1
	li	t3, -292
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -288
	add	t3, s0, t3
	lw	t0, 0(t3)
	li	t3, -292
	add	t3, s0, t3
	lw	t1, 0(t3)
	sub	t2, t0, t1
	li	t3, -296
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -296
	add	t3, s0, t3
	lw	t0, 0(t3)
	li	t3, -284
	add	t3, s0, t3
	lw	t1, 0(t3)
	sw	t0, 0(t1)
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
	addi	t1, t0, 20
	li	t3, -308
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -308
	add	t3, s0, t3
	lw	t0, 0(t3)
	lw	t1, 0(t0)
	li	t3, -312
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t0, 0
	li	t3, -316
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -316
	add	t3, s0, t3
	lw	t0, 0(t3)
	li	t3, -312
	add	t3, s0, t3
	lw	t1, 0(t3)
	slt	t2, t0, t1
	li	t3, -320
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -320
	add	t3, s0, t3
	lw	t0, 0(t3)
	bnez	t0, .eraseImpl_ID48_if_true
	j	.eraseImpl_ID48_if_out
.eraseImpl_ID48_if_true:
	li	t0, 1
	li	t3, -324
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t0, -28
	li	t3, -328
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -328
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, s0, t1
	li	t3, -328
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -324
	add	t3, s0, t3
	lw	t0, 0(t3)
	li	t3, -328
	add	t3, s0, t3
	lw	t1, 0(t3)
	sw	t0, 0(t1)
	j	.eraseImpl_return
	j	.eraseImpl_ID48_if_out
.eraseImpl_ID48_if_out:
	li	t0, -12
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
	li	t0, 0
	li	t3, -348
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t0, 24
	li	t3, -352
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -348
	add	t3, s0, t3
	lw	t0, 0(t3)
	li	t3, -352
	add	t3, s0, t3
	lw	t1, 0(t3)
	mul	t2, t0, t1
	li	t3, -356
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -344
	add	t3, s0, t3
	lw	t0, 0(t3)
	li	t3, -356
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, t0, t1
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
	li	t0, 0
	li	t3, -368
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -364
	add	t3, s0, t3
	lw	t0, 0(t3)
	li	t3, -368
	add	t3, s0, t3
	lw	t1, 0(t3)
	xor	t2, t0, t1
	li	t3, -372
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -372
	add	t3, s0, t3
	lw	t0, 0(t3)
	sltiu	t1, t0, 1
	li	t3, -372
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -372
	add	t3, s0, t3
	lw	t0, 0(t3)
	bnez	t0, .eraseImpl_ID54_if_true
	j	.eraseImpl_ID54_if_out
.eraseImpl_ID56_if_true:
	li	t0, -16
	li	t3, -376
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -376
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, s0, t1
	li	t3, -376
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -376
	add	t3, s0, t3
	lw	t0, 0(t3)
	lw	t1, 0(t0)
	li	t3, -380
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -380
	add	t3, s0, t3
	lw	t0, 0(t3)
	addi	t1, t0, 8
	li	t3, -384
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -384
	add	t3, s0, t3
	lw	t0, 0(t3)
	lw	t1, 0(t0)
	li	t3, -388
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t0, -20
	li	t3, -392
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -392
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, s0, t1
	li	t3, -392
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -392
	add	t3, s0, t3
	lw	t0, 0(t3)
	lw	t1, 0(t0)
	li	t3, -396
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t0, 24
	li	t3, -400
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -396
	add	t3, s0, t3
	lw	t0, 0(t3)
	li	t3, -400
	add	t3, s0, t3
	lw	t1, 0(t3)
	mul	t2, t0, t1
	li	t3, -404
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -388
	add	t3, s0, t3
	lw	t0, 0(t3)
	li	t3, -404
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, t0, t1
	li	t3, -408
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t0, -12
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
	li	t3, -416
	add	t3, s0, t3
	lw	t0, 0(t3)
	addi	t1, t0, 8
	li	t3, -420
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -420
	add	t3, s0, t3
	lw	t0, 0(t3)
	lw	t1, 0(t0)
	li	t3, -424
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t0, 1
	li	t3, -428
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t0, 24
	li	t3, -432
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -428
	add	t3, s0, t3
	lw	t0, 0(t3)
	li	t3, -432
	add	t3, s0, t3
	lw	t1, 0(t3)
	mul	t2, t0, t1
	li	t3, -436
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -424
	add	t3, s0, t3
	lw	t0, 0(t3)
	li	t3, -436
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, t0, t1
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
	li	t3, -408
	add	t3, s0, t3
	lw	t1, 0(t3)
	sw	t0, 0(t1)
	j	.eraseImpl_ID56_if_out
.eraseImpl_ID56_if_out:
	li	t0, -12
	li	t3, -448
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -448
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, s0, t1
	li	t3, -448
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -448
	add	t3, s0, t3
	lw	t0, 0(t3)
	lw	t1, 0(t0)
	li	t3, -452
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -452
	add	t3, s0, t3
	lw	t0, 0(t3)
	addi	t1, t0, 8
	li	t3, -456
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -456
	add	t3, s0, t3
	lw	t0, 0(t3)
	lw	t1, 0(t0)
	li	t3, -460
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t0, 1
	li	t3, -464
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t0, 24
	li	t3, -468
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -464
	add	t3, s0, t3
	lw	t0, 0(t3)
	li	t3, -468
	add	t3, s0, t3
	lw	t1, 0(t3)
	mul	t2, t0, t1
	li	t3, -472
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -460
	add	t3, s0, t3
	lw	t0, 0(t3)
	li	t3, -472
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, t0, t1
	li	t3, -476
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -476
	add	t3, s0, t3
	lw	t0, 0(t3)
	lw	t1, 0(t0)
	li	t3, -480
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t0, 0
	li	t3, -484
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -480
	add	t3, s0, t3
	lw	t0, 0(t3)
	li	t3, -484
	add	t3, s0, t3
	lw	t1, 0(t3)
	xor	t2, t0, t1
	li	t3, -488
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -488
	add	t3, s0, t3
	lw	t0, 0(t3)
	sltiu	t1, t0, 1
	li	t3, -488
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -488
	add	t3, s0, t3
	lw	t0, 0(t3)
	xori	t1, t0, 1
	li	t3, -488
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -488
	add	t3, s0, t3
	lw	t0, 0(t3)
	bnez	t0, .eraseImpl_ID73_if_true
	j	.eraseImpl_ID73_if_out
.eraseImpl_ID73_if_true:
	li	t0, -12
	li	t3, -492
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -492
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, s0, t1
	li	t3, -492
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -492
	add	t3, s0, t3
	lw	t0, 0(t3)
	lw	t1, 0(t0)
	li	t3, -496
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -496
	add	t3, s0, t3
	lw	t0, 0(t3)
	addi	t1, t0, 8
	li	t3, -500
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -500
	add	t3, s0, t3
	lw	t0, 0(t3)
	lw	t1, 0(t0)
	li	t3, -504
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t0, 1
	li	t3, -508
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t0, 24
	li	t3, -512
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -508
	add	t3, s0, t3
	lw	t0, 0(t3)
	li	t3, -512
	add	t3, s0, t3
	lw	t1, 0(t3)
	mul	t2, t0, t1
	li	t3, -516
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -504
	add	t3, s0, t3
	lw	t0, 0(t3)
	li	t3, -516
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, t0, t1
	li	t3, -520
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -520
	add	t3, s0, t3
	lw	t0, 0(t3)
	lw	t1, 0(t0)
	li	t3, -524
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -524
	add	t3, s0, t3
	lw	t0, 0(t3)
	addi	t1, t0, 0
	li	t3, -528
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t0, -16
	li	t3, -532
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -532
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, s0, t1
	li	t3, -532
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -532
	add	t3, s0, t3
	lw	t0, 0(t3)
	lw	t1, 0(t0)
	li	t3, -536
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -536
	add	t3, s0, t3
	lw	t0, 0(t3)
	li	t3, -528
	add	t3, s0, t3
	lw	t1, 0(t3)
	sw	t0, 0(t1)
	j	.eraseImpl_ID73_if_out
.eraseImpl_ID73_if_out:
	li	t0, -24
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
	lw	t1, fuckLLVM_root
	li	t3, -548
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -548
	add	t3, s0, t3
	lw	t0, 0(t3)
	addi	t1, t0, 16
	li	t3, -552
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -552
	add	t3, s0, t3
	lw	t0, 0(t3)
	lw	t1, 0(t0)
	li	t3, -556
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -544
	add	t3, s0, t3
	lw	t0, 0(t3)
	li	t3, -556
	add	t3, s0, t3
	lw	t1, 0(t3)
	xor	t2, t0, t1
	li	t3, -560
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -560
	add	t3, s0, t3
	lw	t0, 0(t3)
	sltiu	t1, t0, 1
	li	t3, -560
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -560
	add	t3, s0, t3
	lw	t0, 0(t3)
	bnez	t0, .eraseImpl_ID86_if_true
	j	.eraseImpl_ID86_if_out
.eraseImpl_ID86_if_true:
	li	t0, -12
	li	t3, -564
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -564
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, s0, t1
	li	t3, -564
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -564
	add	t3, s0, t3
	lw	t0, 0(t3)
	lw	t1, 0(t0)
	li	t3, -568
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -568
	add	t3, s0, t3
	lw	t0, 0(t3)
	addi	t1, t0, 8
	li	t3, -572
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -572
	add	t3, s0, t3
	lw	t0, 0(t3)
	lw	t1, 0(t0)
	li	t3, -576
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t0, 1
	li	t3, -580
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t0, 24
	li	t3, -584
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -580
	add	t3, s0, t3
	lw	t0, 0(t3)
	li	t3, -584
	add	t3, s0, t3
	lw	t1, 0(t3)
	mul	t2, t0, t1
	li	t3, -588
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -576
	add	t3, s0, t3
	lw	t0, 0(t3)
	li	t3, -588
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, t0, t1
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
	li	t3, -596
	add	t3, s0, t3
	lw	t0, 0(t3)
	li	t3, -600
	add	t3, s0, t3
	lw	t1, 0(t3)
	sw	t0, fuckLLVM_root, t1
	j	.eraseImpl_ID86_if_out
.eraseImpl_ID86_if_out:
	li	t0, 1
	li	t3, -604
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t0, -28
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
	li	t3, -604
	add	t3, s0, t3
	lw	t0, 0(t3)
	li	t3, -608
	add	t3, s0, t3
	lw	t1, 0(t3)
	sw	t0, 0(t1)
	j	.eraseImpl_return
	j	.eraseImpl_ID54_if_out
.eraseImpl_ID54_if_true:
	li	t0, -16
	li	t3, -612
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -612
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, s0, t1
	li	t3, -612
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -612
	add	t3, s0, t3
	lw	t0, 0(t3)
	lw	t1, 0(t0)
	li	t3, -616
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t0, 0
	li	t3, -620
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -616
	add	t3, s0, t3
	lw	t0, 0(t3)
	li	t3, -620
	add	t3, s0, t3
	lw	t1, 0(t3)
	xor	t2, t0, t1
	li	t3, -624
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -624
	add	t3, s0, t3
	lw	t0, 0(t3)
	sltiu	t1, t0, 1
	li	t3, -624
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -624
	add	t3, s0, t3
	lw	t0, 0(t3)
	xori	t1, t0, 1
	li	t3, -624
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -624
	add	t3, s0, t3
	lw	t0, 0(t3)
	bnez	t0, .eraseImpl_ID56_if_true
	j	.eraseImpl_ID56_if_out
.eraseImpl_ID54_if_out:
	li	t0, -12
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
	li	t3, -632
	add	t3, s0, t3
	lw	t0, 0(t3)
	addi	t1, t0, 8
	li	t3, -636
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -636
	add	t3, s0, t3
	lw	t0, 0(t3)
	lw	t1, 0(t0)
	li	t3, -640
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t0, 0
	li	t3, -644
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t0, 24
	li	t3, -648
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -644
	add	t3, s0, t3
	lw	t0, 0(t3)
	li	t3, -648
	add	t3, s0, t3
	lw	t1, 0(t3)
	mul	t2, t0, t1
	li	t3, -652
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -640
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
	lw	t1, 0(t0)
	li	t3, -660
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -660
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	findLargest
	mv	t1, a0
	li	t3, -664
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t0, -32
	li	t3, -668
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -668
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, s0, t1
	li	t3, -668
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -664
	add	t3, s0, t3
	lw	t0, 0(t3)
	li	t3, -668
	add	t3, s0, t3
	lw	t1, 0(t3)
	sw	t0, 0(t1)
	li	t0, -24
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
	li	t3, -672
	add	t3, s0, t3
	lw	t0, 0(t3)
	lw	t1, 0(t0)
	li	t3, -676
	add	t3, s0, t3
	sw	t1, 0(t3)
	lw	t1, fuckLLVM_root
	li	t3, -680
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -680
	add	t3, s0, t3
	lw	t0, 0(t3)
	addi	t1, t0, 16
	li	t3, -684
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -684
	add	t3, s0, t3
	lw	t0, 0(t3)
	lw	t1, 0(t0)
	li	t3, -688
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -676
	add	t3, s0, t3
	lw	t0, 0(t3)
	li	t3, -688
	add	t3, s0, t3
	lw	t1, 0(t3)
	xor	t2, t0, t1
	li	t3, -692
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -692
	add	t3, s0, t3
	lw	t0, 0(t3)
	sltiu	t1, t0, 1
	li	t3, -692
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -692
	add	t3, s0, t3
	lw	t0, 0(t3)
	bnez	t0, .eraseImpl_ID106_if_true
	j	.eraseImpl_ID106_if_out
.eraseImpl_ID106_if_true:
	li	t0, -32
	li	t3, -696
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -696
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, s0, t1
	li	t3, -696
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -696
	add	t3, s0, t3
	lw	t0, 0(t3)
	lw	t1, 0(t0)
	li	t3, -700
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -700
	add	t3, s0, t3
	lw	t0, 0(t3)
	li	t3, -704
	add	t3, s0, t3
	lw	t1, 0(t3)
	sw	t0, fuckLLVM_root, t1
	j	.eraseImpl_ID106_if_out
.eraseImpl_ID106_if_out:
	li	t0, -32
	li	t3, -708
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -708
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, s0, t1
	li	t3, -708
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -708
	add	t3, s0, t3
	lw	t0, 0(t3)
	lw	t1, 0(t0)
	li	t3, -712
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -712
	add	t3, s0, t3
	lw	t0, 0(t3)
	addi	t1, t0, 16
	li	t3, -716
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -716
	add	t3, s0, t3
	lw	t0, 0(t3)
	lw	t1, 0(t0)
	li	t3, -720
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t0, -12
	li	t3, -724
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -724
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, s0, t1
	li	t3, -724
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -724
	add	t3, s0, t3
	lw	t0, 0(t3)
	lw	t1, 0(t0)
	li	t3, -728
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -728
	add	t3, s0, t3
	lw	t0, 0(t3)
	addi	t1, t0, 8
	li	t3, -732
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -732
	add	t3, s0, t3
	lw	t0, 0(t3)
	lw	t1, 0(t0)
	li	t3, -736
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t0, 0
	li	t3, -740
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t0, 24
	li	t3, -744
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -740
	add	t3, s0, t3
	lw	t0, 0(t3)
	li	t3, -744
	add	t3, s0, t3
	lw	t1, 0(t3)
	mul	t2, t0, t1
	li	t3, -748
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -736
	add	t3, s0, t3
	lw	t0, 0(t3)
	li	t3, -748
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, t0, t1
	li	t3, -752
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -752
	add	t3, s0, t3
	lw	t0, 0(t3)
	lw	t1, 0(t0)
	li	t3, -756
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -756
	add	t3, s0, t3
	lw	t0, 0(t3)
	addi	t1, t0, 16
	li	t3, -760
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -760
	add	t3, s0, t3
	lw	t0, 0(t3)
	lw	t1, 0(t0)
	li	t3, -764
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -720
	add	t3, s0, t3
	lw	t0, 0(t3)
	li	t3, -764
	add	t3, s0, t3
	lw	t1, 0(t3)
	xor	t2, t0, t1
	li	t3, -768
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -768
	add	t3, s0, t3
	lw	t0, 0(t3)
	sltiu	t1, t0, 1
	li	t3, -768
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -768
	add	t3, s0, t3
	lw	t0, 0(t3)
	xori	t1, t0, 1
	li	t3, -768
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -768
	add	t3, s0, t3
	lw	t0, 0(t3)
	bnez	t0, .eraseImpl_ID119_if_true
	j	.eraseImpl_ID119_if_out
.eraseImpl_ID137_if_true:
	li	t0, -32
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
	li	t3, -776
	add	t3, s0, t3
	lw	t0, 0(t3)
	addi	t1, t0, 8
	li	t3, -780
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -780
	add	t3, s0, t3
	lw	t0, 0(t3)
	lw	t1, 0(t0)
	li	t3, -784
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t0, 0
	li	t3, -788
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t0, 24
	li	t3, -792
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -788
	add	t3, s0, t3
	lw	t0, 0(t3)
	li	t3, -792
	add	t3, s0, t3
	lw	t1, 0(t3)
	mul	t2, t0, t1
	li	t3, -796
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -784
	add	t3, s0, t3
	lw	t0, 0(t3)
	li	t3, -796
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, t0, t1
	li	t3, -800
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -800
	add	t3, s0, t3
	lw	t0, 0(t3)
	lw	t1, 0(t0)
	li	t3, -804
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -804
	add	t3, s0, t3
	lw	t0, 0(t3)
	addi	t1, t0, 0
	li	t3, -808
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t0, -32
	li	t3, -812
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -812
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, s0, t1
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
	li	t3, -816
	add	t3, s0, t3
	lw	t0, 0(t3)
	addi	t1, t0, 0
	li	t3, -820
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -820
	add	t3, s0, t3
	lw	t0, 0(t3)
	lw	t1, 0(t0)
	li	t3, -824
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -824
	add	t3, s0, t3
	lw	t0, 0(t3)
	li	t3, -808
	add	t3, s0, t3
	lw	t1, 0(t3)
	sw	t0, 0(t1)
	j	.eraseImpl_ID137_if_out
.eraseImpl_ID137_if_out:
	j	.eraseImpl_ID119_if_out
.eraseImpl_ID119_if_true:
	li	t0, -32
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
	li	t3, -832
	add	t3, s0, t3
	lw	t0, 0(t3)
	addi	t1, t0, 0
	li	t3, -836
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -836
	add	t3, s0, t3
	lw	t0, 0(t3)
	lw	t1, 0(t0)
	li	t3, -840
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -840
	add	t3, s0, t3
	lw	t0, 0(t3)
	addi	t1, t0, 8
	li	t3, -844
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -844
	add	t3, s0, t3
	lw	t0, 0(t3)
	lw	t1, 0(t0)
	li	t3, -848
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t0, 1
	li	t3, -852
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t0, 24
	li	t3, -856
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -852
	add	t3, s0, t3
	lw	t0, 0(t3)
	li	t3, -856
	add	t3, s0, t3
	lw	t1, 0(t3)
	mul	t2, t0, t1
	li	t3, -860
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -848
	add	t3, s0, t3
	lw	t0, 0(t3)
	li	t3, -860
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, t0, t1
	li	t3, -864
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t0, -32
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
	addi	t1, t0, 8
	li	t3, -876
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -876
	add	t3, s0, t3
	lw	t0, 0(t3)
	lw	t1, 0(t0)
	li	t3, -880
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t0, 0
	li	t3, -884
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t0, 24
	li	t3, -888
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -884
	add	t3, s0, t3
	lw	t0, 0(t3)
	li	t3, -888
	add	t3, s0, t3
	lw	t1, 0(t3)
	mul	t2, t0, t1
	li	t3, -892
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -880
	add	t3, s0, t3
	lw	t0, 0(t3)
	li	t3, -892
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, t0, t1
	li	t3, -896
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -896
	add	t3, s0, t3
	lw	t0, 0(t3)
	lw	t1, 0(t0)
	li	t3, -900
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -900
	add	t3, s0, t3
	lw	t0, 0(t3)
	li	t3, -864
	add	t3, s0, t3
	lw	t1, 0(t3)
	sw	t0, 0(t1)
	li	t0, -32
	li	t3, -904
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -904
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, s0, t1
	li	t3, -904
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -904
	add	t3, s0, t3
	lw	t0, 0(t3)
	lw	t1, 0(t0)
	li	t3, -908
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -908
	add	t3, s0, t3
	lw	t0, 0(t3)
	addi	t1, t0, 8
	li	t3, -912
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -912
	add	t3, s0, t3
	lw	t0, 0(t3)
	lw	t1, 0(t0)
	li	t3, -916
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t0, 0
	li	t3, -920
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t0, 24
	li	t3, -924
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -920
	add	t3, s0, t3
	lw	t0, 0(t3)
	li	t3, -924
	add	t3, s0, t3
	lw	t1, 0(t3)
	mul	t2, t0, t1
	li	t3, -928
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -916
	add	t3, s0, t3
	lw	t0, 0(t3)
	li	t3, -928
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, t0, t1
	li	t3, -932
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -932
	add	t3, s0, t3
	lw	t0, 0(t3)
	lw	t1, 0(t0)
	li	t3, -936
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t0, 0
	li	t3, -940
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -936
	add	t3, s0, t3
	lw	t0, 0(t3)
	li	t3, -940
	add	t3, s0, t3
	lw	t1, 0(t3)
	xor	t2, t0, t1
	li	t3, -944
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -944
	add	t3, s0, t3
	lw	t0, 0(t3)
	sltiu	t1, t0, 1
	li	t3, -944
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -944
	add	t3, s0, t3
	lw	t0, 0(t3)
	xori	t1, t0, 1
	li	t3, -944
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -944
	add	t3, s0, t3
	lw	t0, 0(t3)
	bnez	t0, .eraseImpl_ID137_if_true
	j	.eraseImpl_ID137_if_out
.eraseImpl_ID119_if_out:
	li	t0, -16
	li	t3, -948
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -948
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, s0, t1
	li	t3, -948
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -948
	add	t3, s0, t3
	lw	t0, 0(t3)
	lw	t1, 0(t0)
	li	t3, -952
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t0, 0
	li	t3, -956
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -952
	add	t3, s0, t3
	lw	t0, 0(t3)
	li	t3, -956
	add	t3, s0, t3
	lw	t1, 0(t3)
	xor	t2, t0, t1
	li	t3, -960
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -960
	add	t3, s0, t3
	lw	t0, 0(t3)
	sltiu	t1, t0, 1
	li	t3, -960
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -960
	add	t3, s0, t3
	lw	t0, 0(t3)
	xori	t1, t0, 1
	li	t3, -960
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -960
	add	t3, s0, t3
	lw	t0, 0(t3)
	bnez	t0, .eraseImpl_ID149_if_true
	j	.eraseImpl_ID149_if_out
.eraseImpl_ID149_if_true:
	li	t0, -16
	li	t3, -964
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -964
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, s0, t1
	li	t3, -964
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -964
	add	t3, s0, t3
	lw	t0, 0(t3)
	lw	t1, 0(t0)
	li	t3, -968
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -968
	add	t3, s0, t3
	lw	t0, 0(t3)
	addi	t1, t0, 8
	li	t3, -972
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -972
	add	t3, s0, t3
	lw	t0, 0(t3)
	lw	t1, 0(t0)
	li	t3, -976
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t0, -20
	li	t3, -980
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -980
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, s0, t1
	li	t3, -980
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -980
	add	t3, s0, t3
	lw	t0, 0(t3)
	lw	t1, 0(t0)
	li	t3, -984
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t0, 24
	li	t3, -988
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -984
	add	t3, s0, t3
	lw	t0, 0(t3)
	li	t3, -988
	add	t3, s0, t3
	lw	t1, 0(t3)
	mul	t2, t0, t1
	li	t3, -992
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -976
	add	t3, s0, t3
	lw	t0, 0(t3)
	li	t3, -992
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, t0, t1
	li	t3, -996
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t0, -32
	li	t3, -1000
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -1000
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, s0, t1
	li	t3, -1000
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -1000
	add	t3, s0, t3
	lw	t0, 0(t3)
	lw	t1, 0(t0)
	li	t3, -1004
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -1004
	add	t3, s0, t3
	lw	t0, 0(t3)
	li	t3, -996
	add	t3, s0, t3
	lw	t1, 0(t3)
	sw	t0, 0(t1)
	j	.eraseImpl_ID149_if_out
.eraseImpl_ID149_if_out:
	li	t0, -32
	li	t3, -1008
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -1008
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, s0, t1
	li	t3, -1008
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -1008
	add	t3, s0, t3
	lw	t0, 0(t3)
	lw	t1, 0(t0)
	li	t3, -1012
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -1012
	add	t3, s0, t3
	lw	t0, 0(t3)
	addi	t1, t0, 0
	li	t3, -1016
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t0, -16
	li	t3, -1020
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -1020
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, s0, t1
	li	t3, -1020
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -1020
	add	t3, s0, t3
	lw	t0, 0(t3)
	lw	t1, 0(t0)
	li	t3, -1024
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -1024
	add	t3, s0, t3
	lw	t0, 0(t3)
	li	t3, -1016
	add	t3, s0, t3
	lw	t1, 0(t3)
	sw	t0, 0(t1)
	li	t0, -32
	li	t3, -1028
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -1028
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, s0, t1
	li	t3, -1028
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -1028
	add	t3, s0, t3
	lw	t0, 0(t3)
	lw	t1, 0(t0)
	li	t3, -1032
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -1032
	add	t3, s0, t3
	lw	t0, 0(t3)
	addi	t1, t0, 8
	li	t3, -1036
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -1036
	add	t3, s0, t3
	lw	t0, 0(t3)
	lw	t1, 0(t0)
	li	t3, -1040
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t0, 1
	li	t3, -1044
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t0, 24
	li	t3, -1048
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -1044
	add	t3, s0, t3
	lw	t0, 0(t3)
	li	t3, -1048
	add	t3, s0, t3
	lw	t1, 0(t3)
	mul	t2, t0, t1
	li	t3, -1052
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -1040
	add	t3, s0, t3
	lw	t0, 0(t3)
	li	t3, -1052
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, t0, t1
	li	t3, -1056
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t0, -12
	li	t3, -1060
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -1060
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, s0, t1
	li	t3, -1060
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -1060
	add	t3, s0, t3
	lw	t0, 0(t3)
	lw	t1, 0(t0)
	li	t3, -1064
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -1064
	add	t3, s0, t3
	lw	t0, 0(t3)
	addi	t1, t0, 8
	li	t3, -1068
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -1068
	add	t3, s0, t3
	lw	t0, 0(t3)
	lw	t1, 0(t0)
	li	t3, -1072
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t0, 1
	li	t3, -1076
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t0, 24
	li	t3, -1080
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -1076
	add	t3, s0, t3
	lw	t0, 0(t3)
	li	t3, -1080
	add	t3, s0, t3
	lw	t1, 0(t3)
	mul	t2, t0, t1
	li	t3, -1084
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -1072
	add	t3, s0, t3
	lw	t0, 0(t3)
	li	t3, -1084
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, t0, t1
	li	t3, -1088
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -1088
	add	t3, s0, t3
	lw	t0, 0(t3)
	lw	t1, 0(t0)
	li	t3, -1092
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -1092
	add	t3, s0, t3
	lw	t0, 0(t3)
	li	t3, -1056
	add	t3, s0, t3
	lw	t1, 0(t3)
	sw	t0, 0(t1)
	li	t0, -12
	li	t3, -1096
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -1096
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, s0, t1
	li	t3, -1096
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -1096
	add	t3, s0, t3
	lw	t0, 0(t3)
	lw	t1, 0(t0)
	li	t3, -1100
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -1100
	add	t3, s0, t3
	lw	t0, 0(t3)
	addi	t1, t0, 8
	li	t3, -1104
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -1104
	add	t3, s0, t3
	lw	t0, 0(t3)
	lw	t1, 0(t0)
	li	t3, -1108
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t0, 1
	li	t3, -1112
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t0, 24
	li	t3, -1116
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -1112
	add	t3, s0, t3
	lw	t0, 0(t3)
	li	t3, -1116
	add	t3, s0, t3
	lw	t1, 0(t3)
	mul	t2, t0, t1
	li	t3, -1120
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -1108
	add	t3, s0, t3
	lw	t0, 0(t3)
	li	t3, -1120
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, t0, t1
	li	t3, -1124
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -1124
	add	t3, s0, t3
	lw	t0, 0(t3)
	lw	t1, 0(t0)
	li	t3, -1128
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t0, 0
	li	t3, -1132
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -1128
	add	t3, s0, t3
	lw	t0, 0(t3)
	li	t3, -1132
	add	t3, s0, t3
	lw	t1, 0(t3)
	xor	t2, t0, t1
	li	t3, -1136
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -1136
	add	t3, s0, t3
	lw	t0, 0(t3)
	sltiu	t1, t0, 1
	li	t3, -1136
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -1136
	add	t3, s0, t3
	lw	t0, 0(t3)
	xori	t1, t0, 1
	li	t3, -1136
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -1136
	add	t3, s0, t3
	lw	t0, 0(t3)
	bnez	t0, .eraseImpl_ID176_if_true
	j	.eraseImpl_ID176_if_out
.eraseImpl_ID176_if_true:
	li	t0, -12
	li	t3, -1140
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -1140
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, s0, t1
	li	t3, -1140
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -1140
	add	t3, s0, t3
	lw	t0, 0(t3)
	lw	t1, 0(t0)
	li	t3, -1144
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -1144
	add	t3, s0, t3
	lw	t0, 0(t3)
	addi	t1, t0, 8
	li	t3, -1148
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -1148
	add	t3, s0, t3
	lw	t0, 0(t3)
	lw	t1, 0(t0)
	li	t3, -1152
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t0, 1
	li	t3, -1156
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t0, 24
	li	t3, -1160
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -1156
	add	t3, s0, t3
	lw	t0, 0(t3)
	li	t3, -1160
	add	t3, s0, t3
	lw	t1, 0(t3)
	mul	t2, t0, t1
	li	t3, -1164
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -1152
	add	t3, s0, t3
	lw	t0, 0(t3)
	li	t3, -1164
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, t0, t1
	li	t3, -1168
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -1168
	add	t3, s0, t3
	lw	t0, 0(t3)
	lw	t1, 0(t0)
	li	t3, -1172
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -1172
	add	t3, s0, t3
	lw	t0, 0(t3)
	addi	t1, t0, 0
	li	t3, -1176
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t0, -32
	li	t3, -1180
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -1180
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, s0, t1
	li	t3, -1180
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -1180
	add	t3, s0, t3
	lw	t0, 0(t3)
	lw	t1, 0(t0)
	li	t3, -1184
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -1184
	add	t3, s0, t3
	lw	t0, 0(t3)
	li	t3, -1176
	add	t3, s0, t3
	lw	t1, 0(t3)
	sw	t0, 0(t1)
	j	.eraseImpl_ID176_if_out
.eraseImpl_ID176_if_out:
	li	t0, -32
	li	t3, -1188
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -1188
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, s0, t1
	li	t3, -1188
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -1188
	add	t3, s0, t3
	lw	t0, 0(t3)
	lw	t1, 0(t0)
	li	t3, -1192
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -1192
	add	t3, s0, t3
	lw	t0, 0(t3)
	addi	t1, t0, 16
	li	t3, -1196
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -1196
	add	t3, s0, t3
	lw	t0, 0(t3)
	lw	t1, 0(t0)
	li	t3, -1200
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t0, -12
	li	t3, -1204
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -1204
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, s0, t1
	li	t3, -1204
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -1204
	add	t3, s0, t3
	lw	t0, 0(t3)
	lw	t1, 0(t0)
	li	t3, -1208
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -1208
	add	t3, s0, t3
	lw	t0, 0(t3)
	addi	t1, t0, 8
	li	t3, -1212
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -1212
	add	t3, s0, t3
	lw	t0, 0(t3)
	lw	t1, 0(t0)
	li	t3, -1216
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t0, 0
	li	t3, -1220
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t0, 24
	li	t3, -1224
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -1220
	add	t3, s0, t3
	lw	t0, 0(t3)
	li	t3, -1224
	add	t3, s0, t3
	lw	t1, 0(t3)
	mul	t2, t0, t1
	li	t3, -1228
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -1216
	add	t3, s0, t3
	lw	t0, 0(t3)
	li	t3, -1228
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, t0, t1
	li	t3, -1232
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -1232
	add	t3, s0, t3
	lw	t0, 0(t3)
	lw	t1, 0(t0)
	li	t3, -1236
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -1236
	add	t3, s0, t3
	lw	t0, 0(t3)
	addi	t1, t0, 16
	li	t3, -1240
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -1240
	add	t3, s0, t3
	lw	t0, 0(t3)
	lw	t1, 0(t0)
	li	t3, -1244
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -1200
	add	t3, s0, t3
	lw	t0, 0(t3)
	li	t3, -1244
	add	t3, s0, t3
	lw	t1, 0(t3)
	xor	t2, t0, t1
	li	t3, -1248
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -1248
	add	t3, s0, t3
	lw	t0, 0(t3)
	sltiu	t1, t0, 1
	li	t3, -1248
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -1248
	add	t3, s0, t3
	lw	t0, 0(t3)
	xori	t1, t0, 1
	li	t3, -1248
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -1248
	add	t3, s0, t3
	lw	t0, 0(t3)
	bnez	t0, .eraseImpl_ID195_if_true
	j	.eraseImpl_ID195_if_out
.eraseImpl_ID195_if_true:
	li	t0, -32
	li	t3, -1252
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -1252
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, s0, t1
	li	t3, -1252
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -1252
	add	t3, s0, t3
	lw	t0, 0(t3)
	lw	t1, 0(t0)
	li	t3, -1256
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -1256
	add	t3, s0, t3
	lw	t0, 0(t3)
	addi	t1, t0, 8
	li	t3, -1260
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -1260
	add	t3, s0, t3
	lw	t0, 0(t3)
	lw	t1, 0(t0)
	li	t3, -1264
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t0, 0
	li	t3, -1268
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t0, 24
	li	t3, -1272
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -1268
	add	t3, s0, t3
	lw	t0, 0(t3)
	li	t3, -1272
	add	t3, s0, t3
	lw	t1, 0(t3)
	mul	t2, t0, t1
	li	t3, -1276
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -1264
	add	t3, s0, t3
	lw	t0, 0(t3)
	li	t3, -1276
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, t0, t1
	li	t3, -1280
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t0, -12
	li	t3, -1284
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -1284
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, s0, t1
	li	t3, -1284
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -1284
	add	t3, s0, t3
	lw	t0, 0(t3)
	lw	t1, 0(t0)
	li	t3, -1288
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -1288
	add	t3, s0, t3
	lw	t0, 0(t3)
	addi	t1, t0, 8
	li	t3, -1292
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -1292
	add	t3, s0, t3
	lw	t0, 0(t3)
	lw	t1, 0(t0)
	li	t3, -1296
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t0, 0
	li	t3, -1300
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t0, 24
	li	t3, -1304
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -1300
	add	t3, s0, t3
	lw	t0, 0(t3)
	li	t3, -1304
	add	t3, s0, t3
	lw	t1, 0(t3)
	mul	t2, t0, t1
	li	t3, -1308
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -1296
	add	t3, s0, t3
	lw	t0, 0(t3)
	li	t3, -1308
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, t0, t1
	li	t3, -1312
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -1312
	add	t3, s0, t3
	lw	t0, 0(t3)
	lw	t1, 0(t0)
	li	t3, -1316
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -1316
	add	t3, s0, t3
	lw	t0, 0(t3)
	li	t3, -1280
	add	t3, s0, t3
	lw	t1, 0(t3)
	sw	t0, 0(t1)
	li	t0, -12
	li	t3, -1320
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -1320
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, s0, t1
	li	t3, -1320
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -1320
	add	t3, s0, t3
	lw	t0, 0(t3)
	lw	t1, 0(t0)
	li	t3, -1324
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -1324
	add	t3, s0, t3
	lw	t0, 0(t3)
	addi	t1, t0, 8
	li	t3, -1328
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -1328
	add	t3, s0, t3
	lw	t0, 0(t3)
	lw	t1, 0(t0)
	li	t3, -1332
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t0, 0
	li	t3, -1336
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t0, 24
	li	t3, -1340
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -1336
	add	t3, s0, t3
	lw	t0, 0(t3)
	li	t3, -1340
	add	t3, s0, t3
	lw	t1, 0(t3)
	mul	t2, t0, t1
	li	t3, -1344
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -1332
	add	t3, s0, t3
	lw	t0, 0(t3)
	li	t3, -1344
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, t0, t1
	li	t3, -1348
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -1348
	add	t3, s0, t3
	lw	t0, 0(t3)
	lw	t1, 0(t0)
	li	t3, -1352
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -1352
	add	t3, s0, t3
	lw	t0, 0(t3)
	addi	t1, t0, 0
	li	t3, -1356
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t0, -32
	li	t3, -1360
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -1360
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, s0, t1
	li	t3, -1360
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -1360
	add	t3, s0, t3
	lw	t0, 0(t3)
	lw	t1, 0(t0)
	li	t3, -1364
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -1364
	add	t3, s0, t3
	lw	t0, 0(t3)
	li	t3, -1356
	add	t3, s0, t3
	lw	t1, 0(t3)
	sw	t0, 0(t1)
	j	.eraseImpl_ID195_if_out
.eraseImpl_ID195_if_out:
	li	t0, 1
	li	t3, -1368
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t0, -28
	li	t3, -1372
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -1372
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, s0, t1
	li	t3, -1372
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -1368
	add	t3, s0, t3
	lw	t0, 0(t3)
	li	t3, -1372
	add	t3, s0, t3
	lw	t1, 0(t3)
	sw	t0, 0(t1)
	j	.eraseImpl_return
	j	.eraseImpl_return
.eraseImpl_return:
	li	t0, -28
	li	t3, -1376
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -1376
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, s0, t1
	li	t3, -1376
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -1376
	add	t3, s0, t3
	lw	t0, 0(t3)
	lw	t1, 0(t0)
	li	t3, -1380
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -1380
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	li	t0, 1392
	add	t1, sp, t0
	lw	ra, -4(t1)
	lw	s0, -8(t1)
	add	sp, sp, t0
	ret

	.globl	erase
	.p2align	2
	.type	erase,@function
erase:
.erase_assemblyInit:
	li	t0, 96
	sub	sp, sp, t0
	add	t1, sp, t0
	sw	ra, -4(t1)
	sw	s0, -8(t1)
	mv	s0, t1
	mv	t1, a0
	li	t3, -20
	add	t3, s0, t3
	sw	t1, 0(t3)
.erase_entry:
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
	lw	t1, fuckLLVM_root
	li	t3, -28
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t0, 0
	li	t3, -32
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -28
	add	t3, s0, t3
	lw	t0, 0(t3)
	li	t3, -32
	add	t3, s0, t3
	lw	t1, 0(t3)
	xor	t2, t0, t1
	li	t3, -36
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -36
	add	t3, s0, t3
	lw	t0, 0(t3)
	sltiu	t1, t0, 1
	li	t3, -36
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -36
	add	t3, s0, t3
	lw	t0, 0(t3)
	bnez	t0, .erase_ID4_if_true
	j	.erase_ID4_if_out
.erase_ID4_if_true:
	li	t0, 0
	li	t3, -40
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t0, -16
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
	j	.erase_return
	j	.erase_ID4_if_out
.erase_ID4_if_out:
	lw	t1, fuckLLVM_root
	li	t3, -48
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t0, 0
	li	t3, -52
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t0, 1
	li	t3, -56
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -52
	add	t3, s0, t3
	lw	t0, 0(t3)
	li	t3, -56
	add	t3, s0, t3
	lw	t1, 0(t3)
	sub	t2, t0, t1
	li	t3, -60
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t0, -12
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
	li	t3, -64
	add	t3, s0, t3
	lw	t0, 0(t3)
	lw	t1, 0(t0)
	li	t3, -68
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -48
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	li	t0, 0
	li	t3, -72
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -72
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a1, t0
	li	t3, -60
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a2, t0
	li	t3, -68
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a3, t0
	call	eraseImpl
	mv	t1, a0
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
	li	t3, -76
	add	t3, s0, t3
	lw	t0, 0(t3)
	li	t3, -80
	add	t3, s0, t3
	lw	t1, 0(t3)
	sw	t0, 0(t1)
	j	.erase_return
	j	.erase_return
.erase_return:
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
	li	t3, -88
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	li	t0, 96
	add	t1, sp, t0
	lw	ra, -4(t1)
	lw	s0, -8(t1)
	add	sp, sp, t0
	ret

	.globl	printTree
	.p2align	2
	.type	printTree,@function
printTree:
.printTree_assemblyInit:
	li	t0, 160
	sub	sp, sp, t0
	add	t1, sp, t0
	sw	ra, -4(t1)
	sw	s0, -8(t1)
	mv	s0, t1
	mv	t1, a0
	li	t3, -16
	add	t3, s0, t3
	sw	t1, 0(t3)
.printTree_entry:
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
	li	t3, -24
	add	t3, s0, t3
	lw	t0, 0(t3)
	lw	t1, 0(t0)
	li	t3, -28
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t0, 0
	li	t3, -32
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -28
	add	t3, s0, t3
	lw	t0, 0(t3)
	li	t3, -32
	add	t3, s0, t3
	lw	t1, 0(t3)
	xor	t2, t0, t1
	li	t3, -36
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -36
	add	t3, s0, t3
	lw	t0, 0(t3)
	sltiu	t1, t0, 1
	li	t3, -36
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -36
	add	t3, s0, t3
	lw	t0, 0(t3)
	bnez	t0, .printTree_ID4_if_true
	j	.printTree_ID4_if_out
.printTree_ID4_if_true:
	j	.printTree_return
	j	.printTree_ID4_if_out
.printTree_ID4_if_out:
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
	addi	t1, t0, 8
	li	t3, -48
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -48
	add	t3, s0, t3
	lw	t0, 0(t3)
	lw	t1, 0(t0)
	li	t3, -52
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t0, 0
	li	t3, -56
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t0, 24
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
	li	t3, -52
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
	lw	t1, 0(t0)
	li	t3, -72
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -72
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	printTree
	li	t0, -12
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
	addi	t1, t0, 16
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
	li	t3, -88
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	toString
	mv	t1, a0
	li	t3, -92
	add	t3, s0, t3
	sw	t1, 0(t3)
	la	t0, fuckLLVM_.str.0
	li	t3, -96
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -92
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	li	t3, -96
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a1, t0
	call	string_add
	mv	t1, a0
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
	li	t3, -108
	add	t3, s0, t3
	lw	t0, 0(t3)
	addi	t1, t0, 20
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
	li	t3, -116
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	toString
	mv	t1, a0
	li	t3, -120
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -100
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	li	t3, -120
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a1, t0
	call	string_add
	mv	t1, a0
	li	t3, -124
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -124
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	println
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
	li	t3, -132
	add	t3, s0, t3
	lw	t0, 0(t3)
	addi	t1, t0, 8
	li	t3, -136
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -136
	add	t3, s0, t3
	lw	t0, 0(t3)
	lw	t1, 0(t0)
	li	t3, -140
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t0, 1
	li	t3, -144
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t0, 24
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
	li	t3, -140
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
	mv	a0, t0
	call	printTree
	j	.printTree_return
.printTree_return:
	li	t0, 160
	add	t1, sp, t0
	lw	ra, -4(t1)
	lw	s0, -8(t1)
	add	sp, sp, t0
	ret

	.globl	randInt31
	.p2align	2
	.type	randInt31,@function
randInt31:
.randInt31_assemblyInit:
	li	t0, 224
	sub	sp, sp, t0
	add	t1, sp, t0
	sw	ra, -4(t1)
	sw	s0, -8(t1)
	mv	s0, t1
.randInt31_entry:
	lw	t1, fuckLLVM_seed
	li	t3, -20
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t0, -16
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
	li	t0, -16
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
	li	t3, -36
	add	t3, s0, t3
	lw	t0, 0(t3)
	lw	t1, 0(t0)
	li	t3, -40
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t0, 13
	li	t3, -44
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -40
	add	t3, s0, t3
	lw	t0, 0(t3)
	li	t3, -44
	add	t3, s0, t3
	lw	t1, 0(t3)
	sll	t2, t0, t1
	li	t3, -48
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -32
	add	t3, s0, t3
	lw	t0, 0(t3)
	li	t3, -48
	add	t3, s0, t3
	lw	t1, 0(t3)
	xor	t2, t0, t1
	li	t3, -52
	add	t3, s0, t3
	sw	t2, 0(t3)
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
	li	t3, -52
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
	li	t0, 1
	li	t3, -68
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t0, 31
	li	t3, -72
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -68
	add	t3, s0, t3
	lw	t0, 0(t3)
	li	t3, -72
	add	t3, s0, t3
	lw	t1, 0(t3)
	sll	t2, t0, t1
	li	t3, -76
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t0, -1
	li	t3, -80
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -76
	add	t3, s0, t3
	lw	t0, 0(t3)
	li	t3, -80
	add	t3, s0, t3
	lw	t1, 0(t3)
	xor	t2, t0, t1
	li	t3, -84
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -64
	add	t3, s0, t3
	lw	t0, 0(t3)
	li	t3, -84
	add	t3, s0, t3
	lw	t1, 0(t3)
	and	t2, t0, t1
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
	li	t0, -16
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
	li	t3, -96
	add	t3, s0, t3
	lw	t0, 0(t3)
	lw	t1, 0(t0)
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
	li	t0, 17
	li	t3, -112
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -108
	add	t3, s0, t3
	lw	t0, 0(t3)
	li	t3, -112
	add	t3, s0, t3
	lw	t1, 0(t3)
	sra	t2, t0, t1
	li	t3, -116
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -100
	add	t3, s0, t3
	lw	t0, 0(t3)
	li	t3, -116
	add	t3, s0, t3
	lw	t1, 0(t3)
	xor	t2, t0, t1
	li	t3, -120
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t0, -16
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
	li	t0, -16
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
	li	t0, 5
	li	t3, -144
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -140
	add	t3, s0, t3
	lw	t0, 0(t3)
	li	t3, -144
	add	t3, s0, t3
	lw	t1, 0(t3)
	sll	t2, t0, t1
	li	t3, -148
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -132
	add	t3, s0, t3
	lw	t0, 0(t3)
	li	t3, -148
	add	t3, s0, t3
	lw	t1, 0(t3)
	xor	t2, t0, t1
	li	t3, -152
	add	t3, s0, t3
	sw	t2, 0(t3)
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
	li	t3, -152
	add	t3, s0, t3
	lw	t0, 0(t3)
	li	t3, -156
	add	t3, s0, t3
	lw	t1, 0(t3)
	sw	t0, 0(t1)
	li	t0, -16
	li	t3, -160
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -160
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, s0, t1
	li	t3, -160
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -160
	add	t3, s0, t3
	lw	t0, 0(t3)
	lw	t1, 0(t0)
	li	t3, -164
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t0, 1
	li	t3, -168
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t0, 31
	li	t3, -172
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -168
	add	t3, s0, t3
	lw	t0, 0(t3)
	li	t3, -172
	add	t3, s0, t3
	lw	t1, 0(t3)
	sll	t2, t0, t1
	li	t3, -176
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t0, -1
	li	t3, -180
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -176
	add	t3, s0, t3
	lw	t0, 0(t3)
	li	t3, -180
	add	t3, s0, t3
	lw	t1, 0(t3)
	xor	t2, t0, t1
	li	t3, -184
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -164
	add	t3, s0, t3
	lw	t0, 0(t3)
	li	t3, -184
	add	t3, s0, t3
	lw	t1, 0(t3)
	and	t2, t0, t1
	li	t3, -188
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t0, -16
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
	li	t3, -188
	add	t3, s0, t3
	lw	t0, 0(t3)
	li	t3, -192
	add	t3, s0, t3
	lw	t1, 0(t3)
	sw	t0, 0(t1)
	li	t0, -16
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
	li	t3, -200
	add	t3, s0, t3
	lw	t0, 0(t3)
	li	t3, -204
	add	t3, s0, t3
	lw	t1, 0(t3)
	sw	t0, fuckLLVM_seed, t1
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
	li	t0, -12
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
	j	.randInt31_return
	j	.randInt31_return
.randInt31_return:
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
	li	t3, -224
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	li	t0, 224
	add	t1, sp, t0
	lw	ra, -4(t1)
	lw	s0, -8(t1)
	add	sp, sp, t0
	ret

	.globl	randOp
	.p2align	2
	.type	randOp,@function
randOp:
.randOp_assemblyInit:
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
.randOp_entry:
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
	call	randInt31
	mv	t1, a0
	li	t3, -28
	add	t3, s0, t3
	sw	t1, 0(t3)
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
	li	t3, -32
	add	t3, s0, t3
	lw	t0, 0(t3)
	lw	t1, 0(t0)
	li	t3, -36
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -28
	add	t3, s0, t3
	lw	t0, 0(t3)
	li	t3, -36
	add	t3, s0, t3
	lw	t1, 0(t3)
	slt	t2, t0, t1
	li	t3, -40
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -40
	add	t3, s0, t3
	lw	t0, 0(t3)
	bnez	t0, .randOp_ID5_if_true
	j	.randOp_ID5_if_out
.randOp_ID5_if_true:
	li	t0, 1
	li	t3, -44
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t0, -16
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
	j	.randOp_return
	j	.randOp_ID5_if_out
.randOp_ID5_if_out:
	li	t0, 2
	li	t3, -52
	add	t3, s0, t3
	sw	t0, 0(t3)
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
	li	t3, -52
	add	t3, s0, t3
	lw	t0, 0(t3)
	li	t3, -56
	add	t3, s0, t3
	lw	t1, 0(t3)
	sw	t0, 0(t1)
	j	.randOp_return
	j	.randOp_return
.randOp_return:
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
	li	t3, -64
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	li	t0, 64
	add	t1, sp, t0
	lw	ra, -4(t1)
	lw	s0, -8(t1)
	add	sp, sp, t0
	ret

	.globl	generateOperations
	.p2align	2
	.type	generateOperations,@function
generateOperations:
.generateOperations_assemblyInit:
	li	t0, 160
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
.generateOperations_entry:
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
	li	t0, -20
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
	j	.generateOperations_ID5_for_condition
.generateOperations_ID5_for_condition:
	li	t0, -20
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
	li	t3, -56
	add	t3, s0, t3
	lw	t0, 0(t3)
	li	t3, -64
	add	t3, s0, t3
	lw	t1, 0(t3)
	slt	t2, t0, t1
	li	t3, -68
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -68
	add	t3, s0, t3
	lw	t0, 0(t3)
	bnez	t0, .generateOperations_ID5_for_suite
	j	.generateOperations_ID5_for_out
.generateOperations_ID5_for_suite:
	call	randInt31
	mv	t1, a0
	li	t3, -72
	add	t3, s0, t3
	sw	t1, 0(t3)
	lw	t1, fuckLLVM_MAX
	li	t3, -76
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -72
	add	t3, s0, t3
	lw	t0, 0(t3)
	li	t3, -76
	add	t3, s0, t3
	lw	t1, 0(t3)
	rem	t2, t0, t1
	li	t3, -80
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t0, -24
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
	li	t3, -80
	add	t3, s0, t3
	lw	t0, 0(t3)
	li	t3, -84
	add	t3, s0, t3
	lw	t1, 0(t3)
	sw	t0, 0(t1)
	li	t0, -12
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
	li	t3, -92
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	randOp
	mv	t1, a0
	li	t3, -96
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t0, 1
	li	t3, -100
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -96
	add	t3, s0, t3
	lw	t0, 0(t3)
	li	t3, -100
	add	t3, s0, t3
	lw	t1, 0(t3)
	xor	t2, t0, t1
	li	t3, -104
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -104
	add	t3, s0, t3
	lw	t0, 0(t3)
	sltiu	t1, t0, 1
	li	t3, -104
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -104
	add	t3, s0, t3
	lw	t0, 0(t3)
	bnez	t0, .generateOperations_ID15_if_true
	j	.generateOperations_ID15_if_false
.generateOperations_ID15_if_true:
	li	t0, -24
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
	li	t3, -112
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	insert
	mv	t1, a0
	li	t3, -116
	add	t3, s0, t3
	sw	t1, 0(t3)
	j	.generateOperations_ID15_if_out
.generateOperations_ID15_if_false:
	li	t0, -24
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
	li	t3, -124
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	erase
	mv	t1, a0
	li	t3, -128
	add	t3, s0, t3
	sw	t1, 0(t3)
	j	.generateOperations_ID15_if_out
.generateOperations_ID15_if_out:
	j	.generateOperations_ID5_for_incr
.generateOperations_ID5_for_incr:
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
	li	t3, -132
	add	t3, s0, t3
	lw	t0, 0(t3)
	lw	t1, 0(t0)
	li	t3, -136
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t0, 1
	li	t3, -140
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -136
	add	t3, s0, t3
	lw	t0, 0(t3)
	li	t3, -140
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, t0, t1
	li	t3, -144
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t0, -20
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
	li	t3, -144
	add	t3, s0, t3
	lw	t0, 0(t3)
	li	t3, -148
	add	t3, s0, t3
	lw	t1, 0(t3)
	sw	t0, 0(t1)
	j	.generateOperations_ID5_for_condition
.generateOperations_ID5_for_out:
	j	.generateOperations_return
.generateOperations_return:
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
	li	t0, 160
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
	call	getInt
	mv	t1, a0
	li	t3, -28
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -28
	add	t3, s0, t3
	lw	t0, 0(t3)
	li	t3, -32
	add	t3, s0, t3
	lw	t1, 0(t3)
	sw	t0, fuckLLVM_seed, t1
	li	t0, 500
	li	t3, -36
	add	t3, s0, t3
	sw	t0, 0(t3)
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
	li	t3, -36
	add	t3, s0, t3
	lw	t0, 0(t3)
	li	t3, -40
	add	t3, s0, t3
	lw	t1, 0(t3)
	sw	t0, 0(t1)
	lw	t1, fuckLLVM_MaxRandInt
	li	t3, -44
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t0, 10
	li	t3, -48
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -44
	add	t3, s0, t3
	lw	t0, 0(t3)
	li	t3, -48
	add	t3, s0, t3
	lw	t1, 0(t3)
	div	t2, t0, t1
	li	t3, -52
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t0, 8
	li	t3, -56
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -56
	add	t3, s0, t3
	lw	t0, 0(t3)
	li	t3, -52
	add	t3, s0, t3
	lw	t1, 0(t3)
	mul	t2, t0, t1
	li	t3, -60
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t0, -16
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
	li	t3, -64
	add	t3, s0, t3
	lw	t0, 0(t3)
	lw	t1, 0(t0)
	li	t3, -68
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -60
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	li	t3, -68
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a1, t0
	call	generateOperations
	lw	t1, fuckLLVM_MaxRandInt
	li	t3, -72
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t0, 10
	li	t3, -76
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -72
	add	t3, s0, t3
	lw	t0, 0(t3)
	li	t3, -76
	add	t3, s0, t3
	lw	t1, 0(t3)
	div	t2, t0, t1
	li	t3, -80
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t0, 2
	li	t3, -84
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -84
	add	t3, s0, t3
	lw	t0, 0(t3)
	li	t3, -80
	add	t3, s0, t3
	lw	t1, 0(t3)
	mul	t2, t0, t1
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
	li	t3, -92
	add	t3, s0, t3
	lw	t0, 0(t3)
	lw	t1, 0(t0)
	li	t3, -96
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t0, 2
	li	t3, -100
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -100
	add	t3, s0, t3
	lw	t0, 0(t3)
	li	t3, -96
	add	t3, s0, t3
	lw	t1, 0(t3)
	mul	t2, t0, t1
	li	t3, -104
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -88
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	li	t3, -104
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a1, t0
	call	generateOperations
	lw	t1, fuckLLVM_MaxRandInt
	li	t3, -108
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t0, 10
	li	t3, -112
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -108
	add	t3, s0, t3
	lw	t0, 0(t3)
	li	t3, -112
	add	t3, s0, t3
	lw	t1, 0(t3)
	div	t2, t0, t1
	li	t3, -116
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t0, 4
	li	t3, -120
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -120
	add	t3, s0, t3
	lw	t0, 0(t3)
	li	t3, -116
	add	t3, s0, t3
	lw	t1, 0(t3)
	mul	t2, t0, t1
	li	t3, -124
	add	t3, s0, t3
	sw	t2, 0(t3)
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
	li	t3, -124
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	li	t3, -132
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a1, t0
	call	generateOperations
	lw	t1, fuckLLVM_root
	li	t3, -136
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -136
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	printTree
	li	t0, 0
	li	t3, -140
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t0, -12
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
	j	.main_return
	j	.main_return
.main_return:
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

	.section	.sbss
	.type	fuckLLVM_root,@object
	.globl	fuckLLVM_root
	.p2align	2
fuckLLVM_root:
	.word	0
	.size	fuckLLVM_root, 8

	.section	.rodata
	.type	fuckLLVM_.str.0,@object
fuckLLVM_.str.0:
	.asciz	":  "
	.size	fuckLLVM_.str.0, 3

	.section	.sbss
	.type	fuckLLVM_MAX,@object
	.globl	fuckLLVM_MAX
	.p2align	2
fuckLLVM_MAX:
	.word	128
	.size	fuckLLVM_MAX, 8

	.section	.sbss
	.type	fuckLLVM_MaxRandInt,@object
	.globl	fuckLLVM_MaxRandInt
	.p2align	2
fuckLLVM_MaxRandInt:
	.word	0
	.size	fuckLLVM_MaxRandInt, 8

	.section	.sbss
	.type	fuckLLVM_seed,@object
	.globl	fuckLLVM_seed
	.p2align	2
fuckLLVM_seed:
	.word	0
	.size	fuckLLVM_seed, 8

