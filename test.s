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

	.globl	getcount
	.p2align	2
	.type	getcount,@function
getcount:
.getcount_assemblyInit:
	li	t0, 80
	sub	sp, sp, t0
	add	t1, sp, t0
	sw	ra, -4(t1)
	sw	s0, -8(t1)
	mv	s0, t1
	mv	t1, a0
	li	t3, -20
	add	t3, s0, t3
	sw	t1, 0(t3)
.getcount_entry:
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
	li	t0, 0
	li	t3, -36
	add	t3, s0, t3
	sw	t0, 0(t3)
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
	mul	t2, t0, t1
	li	t3, -44
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -32
	add	t3, s0, t3
	lw	t0, 0(t3)
	li	t3, -44
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, t0, t1
	li	t3, -48
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -48
	add	t3, s0, t3
	lw	t0, 0(t3)
	lw	t1, 0(t0)
	li	t3, -52
	add	t3, s0, t3
	sw	t1, 0(t3)
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
	add	t2, t0, t1
	li	t3, -60
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -60
	add	t3, s0, t3
	lw	t0, 0(t3)
	li	t3, -48
	add	t3, s0, t3
	lw	t1, 0(t3)
	sw	t0, 0(t1)
	li	t3, -48
	add	t3, s0, t3
	lw	t0, 0(t3)
	lw	t1, 0(t0)
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
	j	.getcount_return
	j	.getcount_return
.getcount_return:
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
	li	t3, -72
	add	t3, s0, t3
	lw	t0, 0(t3)
	lw	t1, 0(t0)
	li	t3, -76
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -76
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	li	t0, 80
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
	li	t0, 14464
	sub	sp, sp, t0
	add	t1, sp, t0
	sw	ra, -4(t1)
	sw	s0, -8(t1)
	mv	s0, t1
.main_entry:
	call	__init
	li	t0, 0
	li	t3, -1040
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t0, -12
	li	t3, -1044
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -1044
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, s0, t1
	li	t3, -1044
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -1040
	add	t3, s0, t3
	lw	t0, 0(t3)
	li	t3, -1044
	add	t3, s0, t3
	lw	t1, 0(t3)
	sw	t0, 0(t1)
	li	t0, 1
	li	t3, -1048
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t0, 4
	li	t3, -1052
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -1048
	add	t3, s0, t3
	lw	t0, 0(t3)
	li	t3, -1052
	add	t3, s0, t3
	lw	t1, 0(t3)
	mul	t2, t0, t1
	li	t3, -1056
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t0, 4
	li	t3, -1060
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -1056
	add	t3, s0, t3
	lw	t0, 0(t3)
	li	t3, -1060
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, t0, t1
	li	t3, -1064
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -1064
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	malloc
	mv	t1, a0
	li	t3, -1068
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t0, 1
	li	t3, -1072
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -1072
	add	t3, s0, t3
	lw	t0, 0(t3)
	li	t3, -1068
	add	t3, s0, t3
	lw	t1, 0(t3)
	sw	t0, 0(t1)
	li	t0, 1
	li	t3, -1076
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t0, 4
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
	li	t3, -1068
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
	li	t3, -1092
	add	t3, s0, t3
	lw	t1, 0(t3)
	sw	t0, fuckLLVM_count, t1
	lw	t1, fuckLLVM_count
	li	t3, -1096
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t0, 0
	li	t3, -1100
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t0, 4
	li	t3, -1104
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -1100
	add	t3, s0, t3
	lw	t0, 0(t3)
	li	t3, -1104
	add	t3, s0, t3
	lw	t1, 0(t3)
	mul	t2, t0, t1
	li	t3, -1108
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -1096
	add	t3, s0, t3
	lw	t0, 0(t3)
	li	t3, -1108
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, t0, t1
	li	t3, -1112
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t0, 0
	li	t3, -1116
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -1116
	add	t3, s0, t3
	lw	t0, 0(t3)
	li	t3, -1112
	add	t3, s0, t3
	lw	t1, 0(t3)
	sw	t0, 0(t1)
	lw	t1, fuckLLVM_count
	li	t3, -1120
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -1120
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	getcount
	mv	t1, a0
	li	t3, -1124
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t0, -16
	li	t3, -1128
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -1128
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, s0, t1
	li	t3, -1128
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -1124
	add	t3, s0, t3
	lw	t0, 0(t3)
	li	t3, -1128
	add	t3, s0, t3
	lw	t1, 0(t3)
	sw	t0, 0(t1)
	lw	t1, fuckLLVM_count
	li	t3, -1132
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -1132
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	getcount
	mv	t1, a0
	li	t3, -1136
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t0, -20
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
	li	t3, -1136
	add	t3, s0, t3
	lw	t0, 0(t3)
	li	t3, -1140
	add	t3, s0, t3
	lw	t1, 0(t3)
	sw	t0, 0(t1)
	lw	t1, fuckLLVM_count
	li	t3, -1144
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -1144
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	getcount
	mv	t1, a0
	li	t3, -1148
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t0, -24
	li	t3, -1152
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -1152
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, s0, t1
	li	t3, -1152
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -1148
	add	t3, s0, t3
	lw	t0, 0(t3)
	li	t3, -1152
	add	t3, s0, t3
	lw	t1, 0(t3)
	sw	t0, 0(t1)
	lw	t1, fuckLLVM_count
	li	t3, -1156
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -1156
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	getcount
	mv	t1, a0
	li	t3, -1160
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t0, -28
	li	t3, -1164
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -1164
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, s0, t1
	li	t3, -1164
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -1160
	add	t3, s0, t3
	lw	t0, 0(t3)
	li	t3, -1164
	add	t3, s0, t3
	lw	t1, 0(t3)
	sw	t0, 0(t1)
	lw	t1, fuckLLVM_count
	li	t3, -1168
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -1168
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	getcount
	mv	t1, a0
	li	t3, -1172
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t0, -32
	li	t3, -1176
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -1176
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, s0, t1
	li	t3, -1176
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -1172
	add	t3, s0, t3
	lw	t0, 0(t3)
	li	t3, -1176
	add	t3, s0, t3
	lw	t1, 0(t3)
	sw	t0, 0(t1)
	lw	t1, fuckLLVM_count
	li	t3, -1180
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -1180
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	getcount
	mv	t1, a0
	li	t3, -1184
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t0, -36
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
	li	t3, -1184
	add	t3, s0, t3
	lw	t0, 0(t3)
	li	t3, -1188
	add	t3, s0, t3
	lw	t1, 0(t3)
	sw	t0, 0(t1)
	lw	t1, fuckLLVM_count
	li	t3, -1192
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -1192
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	getcount
	mv	t1, a0
	li	t3, -1196
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t0, -40
	li	t3, -1200
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -1200
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, s0, t1
	li	t3, -1200
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -1196
	add	t3, s0, t3
	lw	t0, 0(t3)
	li	t3, -1200
	add	t3, s0, t3
	lw	t1, 0(t3)
	sw	t0, 0(t1)
	lw	t1, fuckLLVM_count
	li	t3, -1204
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -1204
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	getcount
	mv	t1, a0
	li	t3, -1208
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t0, -44
	li	t3, -1212
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -1212
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, s0, t1
	li	t3, -1212
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -1208
	add	t3, s0, t3
	lw	t0, 0(t3)
	li	t3, -1212
	add	t3, s0, t3
	lw	t1, 0(t3)
	sw	t0, 0(t1)
	lw	t1, fuckLLVM_count
	li	t3, -1216
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -1216
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	getcount
	mv	t1, a0
	li	t3, -1220
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t0, -48
	li	t3, -1224
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -1224
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, s0, t1
	li	t3, -1224
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -1220
	add	t3, s0, t3
	lw	t0, 0(t3)
	li	t3, -1224
	add	t3, s0, t3
	lw	t1, 0(t3)
	sw	t0, 0(t1)
	lw	t1, fuckLLVM_count
	li	t3, -1228
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -1228
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	getcount
	mv	t1, a0
	li	t3, -1232
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t0, -52
	li	t3, -1236
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -1236
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, s0, t1
	li	t3, -1236
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -1232
	add	t3, s0, t3
	lw	t0, 0(t3)
	li	t3, -1236
	add	t3, s0, t3
	lw	t1, 0(t3)
	sw	t0, 0(t1)
	lw	t1, fuckLLVM_count
	li	t3, -1240
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -1240
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	getcount
	mv	t1, a0
	li	t3, -1244
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t0, -56
	li	t3, -1248
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -1248
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, s0, t1
	li	t3, -1248
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -1244
	add	t3, s0, t3
	lw	t0, 0(t3)
	li	t3, -1248
	add	t3, s0, t3
	lw	t1, 0(t3)
	sw	t0, 0(t1)
	lw	t1, fuckLLVM_count
	li	t3, -1252
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -1252
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	getcount
	mv	t1, a0
	li	t3, -1256
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t0, -60
	li	t3, -1260
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -1260
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, s0, t1
	li	t3, -1260
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -1256
	add	t3, s0, t3
	lw	t0, 0(t3)
	li	t3, -1260
	add	t3, s0, t3
	lw	t1, 0(t3)
	sw	t0, 0(t1)
	lw	t1, fuckLLVM_count
	li	t3, -1264
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -1264
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	getcount
	mv	t1, a0
	li	t3, -1268
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t0, -64
	li	t3, -1272
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -1272
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, s0, t1
	li	t3, -1272
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -1268
	add	t3, s0, t3
	lw	t0, 0(t3)
	li	t3, -1272
	add	t3, s0, t3
	lw	t1, 0(t3)
	sw	t0, 0(t1)
	lw	t1, fuckLLVM_count
	li	t3, -1276
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -1276
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	getcount
	mv	t1, a0
	li	t3, -1280
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t0, -68
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
	li	t3, -1280
	add	t3, s0, t3
	lw	t0, 0(t3)
	li	t3, -1284
	add	t3, s0, t3
	lw	t1, 0(t3)
	sw	t0, 0(t1)
	lw	t1, fuckLLVM_count
	li	t3, -1288
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -1288
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	getcount
	mv	t1, a0
	li	t3, -1292
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t0, -72
	li	t3, -1296
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -1296
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, s0, t1
	li	t3, -1296
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -1292
	add	t3, s0, t3
	lw	t0, 0(t3)
	li	t3, -1296
	add	t3, s0, t3
	lw	t1, 0(t3)
	sw	t0, 0(t1)
	lw	t1, fuckLLVM_count
	li	t3, -1300
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -1300
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	getcount
	mv	t1, a0
	li	t3, -1304
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t0, -76
	li	t3, -1308
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -1308
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, s0, t1
	li	t3, -1308
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -1304
	add	t3, s0, t3
	lw	t0, 0(t3)
	li	t3, -1308
	add	t3, s0, t3
	lw	t1, 0(t3)
	sw	t0, 0(t1)
	lw	t1, fuckLLVM_count
	li	t3, -1312
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -1312
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	getcount
	mv	t1, a0
	li	t3, -1316
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t0, -80
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
	li	t3, -1316
	add	t3, s0, t3
	lw	t0, 0(t3)
	li	t3, -1320
	add	t3, s0, t3
	lw	t1, 0(t3)
	sw	t0, 0(t1)
	lw	t1, fuckLLVM_count
	li	t3, -1324
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -1324
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	getcount
	mv	t1, a0
	li	t3, -1328
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t0, -84
	li	t3, -1332
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -1332
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, s0, t1
	li	t3, -1332
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -1328
	add	t3, s0, t3
	lw	t0, 0(t3)
	li	t3, -1332
	add	t3, s0, t3
	lw	t1, 0(t3)
	sw	t0, 0(t1)
	lw	t1, fuckLLVM_count
	li	t3, -1336
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -1336
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	getcount
	mv	t1, a0
	li	t3, -1340
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t0, -88
	li	t3, -1344
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -1344
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, s0, t1
	li	t3, -1344
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -1340
	add	t3, s0, t3
	lw	t0, 0(t3)
	li	t3, -1344
	add	t3, s0, t3
	lw	t1, 0(t3)
	sw	t0, 0(t1)
	lw	t1, fuckLLVM_count
	li	t3, -1348
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -1348
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	getcount
	mv	t1, a0
	li	t3, -1352
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t0, -92
	li	t3, -1356
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -1356
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, s0, t1
	li	t3, -1356
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -1352
	add	t3, s0, t3
	lw	t0, 0(t3)
	li	t3, -1356
	add	t3, s0, t3
	lw	t1, 0(t3)
	sw	t0, 0(t1)
	lw	t1, fuckLLVM_count
	li	t3, -1360
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -1360
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	getcount
	mv	t1, a0
	li	t3, -1364
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t0, -96
	li	t3, -1368
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -1368
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, s0, t1
	li	t3, -1368
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -1364
	add	t3, s0, t3
	lw	t0, 0(t3)
	li	t3, -1368
	add	t3, s0, t3
	lw	t1, 0(t3)
	sw	t0, 0(t1)
	lw	t1, fuckLLVM_count
	li	t3, -1372
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -1372
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	getcount
	mv	t1, a0
	li	t3, -1376
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t0, -100
	li	t3, -1380
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -1380
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, s0, t1
	li	t3, -1380
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -1376
	add	t3, s0, t3
	lw	t0, 0(t3)
	li	t3, -1380
	add	t3, s0, t3
	lw	t1, 0(t3)
	sw	t0, 0(t1)
	lw	t1, fuckLLVM_count
	li	t3, -1384
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -1384
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	getcount
	mv	t1, a0
	li	t3, -1388
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t0, -104
	li	t3, -1392
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -1392
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, s0, t1
	li	t3, -1392
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -1388
	add	t3, s0, t3
	lw	t0, 0(t3)
	li	t3, -1392
	add	t3, s0, t3
	lw	t1, 0(t3)
	sw	t0, 0(t1)
	lw	t1, fuckLLVM_count
	li	t3, -1396
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -1396
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	getcount
	mv	t1, a0
	li	t3, -1400
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t0, -108
	li	t3, -1404
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -1404
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, s0, t1
	li	t3, -1404
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -1400
	add	t3, s0, t3
	lw	t0, 0(t3)
	li	t3, -1404
	add	t3, s0, t3
	lw	t1, 0(t3)
	sw	t0, 0(t1)
	lw	t1, fuckLLVM_count
	li	t3, -1408
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -1408
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	getcount
	mv	t1, a0
	li	t3, -1412
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t0, -112
	li	t3, -1416
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -1416
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, s0, t1
	li	t3, -1416
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -1412
	add	t3, s0, t3
	lw	t0, 0(t3)
	li	t3, -1416
	add	t3, s0, t3
	lw	t1, 0(t3)
	sw	t0, 0(t1)
	lw	t1, fuckLLVM_count
	li	t3, -1420
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -1420
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	getcount
	mv	t1, a0
	li	t3, -1424
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t0, -116
	li	t3, -1428
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -1428
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, s0, t1
	li	t3, -1428
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -1424
	add	t3, s0, t3
	lw	t0, 0(t3)
	li	t3, -1428
	add	t3, s0, t3
	lw	t1, 0(t3)
	sw	t0, 0(t1)
	lw	t1, fuckLLVM_count
	li	t3, -1432
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -1432
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	getcount
	mv	t1, a0
	li	t3, -1436
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t0, -120
	li	t3, -1440
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -1440
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, s0, t1
	li	t3, -1440
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -1436
	add	t3, s0, t3
	lw	t0, 0(t3)
	li	t3, -1440
	add	t3, s0, t3
	lw	t1, 0(t3)
	sw	t0, 0(t1)
	lw	t1, fuckLLVM_count
	li	t3, -1444
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -1444
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	getcount
	mv	t1, a0
	li	t3, -1448
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t0, -124
	li	t3, -1452
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -1452
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, s0, t1
	li	t3, -1452
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -1448
	add	t3, s0, t3
	lw	t0, 0(t3)
	li	t3, -1452
	add	t3, s0, t3
	lw	t1, 0(t3)
	sw	t0, 0(t1)
	lw	t1, fuckLLVM_count
	li	t3, -1456
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -1456
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	getcount
	mv	t1, a0
	li	t3, -1460
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t0, -128
	li	t3, -1464
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -1464
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, s0, t1
	li	t3, -1464
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -1460
	add	t3, s0, t3
	lw	t0, 0(t3)
	li	t3, -1464
	add	t3, s0, t3
	lw	t1, 0(t3)
	sw	t0, 0(t1)
	lw	t1, fuckLLVM_count
	li	t3, -1468
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -1468
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	getcount
	mv	t1, a0
	li	t3, -1472
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t0, -132
	li	t3, -1476
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -1476
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, s0, t1
	li	t3, -1476
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -1472
	add	t3, s0, t3
	lw	t0, 0(t3)
	li	t3, -1476
	add	t3, s0, t3
	lw	t1, 0(t3)
	sw	t0, 0(t1)
	lw	t1, fuckLLVM_count
	li	t3, -1480
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -1480
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	getcount
	mv	t1, a0
	li	t3, -1484
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t0, -136
	li	t3, -1488
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -1488
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, s0, t1
	li	t3, -1488
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -1484
	add	t3, s0, t3
	lw	t0, 0(t3)
	li	t3, -1488
	add	t3, s0, t3
	lw	t1, 0(t3)
	sw	t0, 0(t1)
	lw	t1, fuckLLVM_count
	li	t3, -1492
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -1492
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	getcount
	mv	t1, a0
	li	t3, -1496
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t0, -140
	li	t3, -1500
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -1500
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, s0, t1
	li	t3, -1500
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -1496
	add	t3, s0, t3
	lw	t0, 0(t3)
	li	t3, -1500
	add	t3, s0, t3
	lw	t1, 0(t3)
	sw	t0, 0(t1)
	lw	t1, fuckLLVM_count
	li	t3, -1504
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -1504
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	getcount
	mv	t1, a0
	li	t3, -1508
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t0, -144
	li	t3, -1512
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -1512
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, s0, t1
	li	t3, -1512
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -1508
	add	t3, s0, t3
	lw	t0, 0(t3)
	li	t3, -1512
	add	t3, s0, t3
	lw	t1, 0(t3)
	sw	t0, 0(t1)
	lw	t1, fuckLLVM_count
	li	t3, -1516
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -1516
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	getcount
	mv	t1, a0
	li	t3, -1520
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t0, -148
	li	t3, -1524
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -1524
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, s0, t1
	li	t3, -1524
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -1520
	add	t3, s0, t3
	lw	t0, 0(t3)
	li	t3, -1524
	add	t3, s0, t3
	lw	t1, 0(t3)
	sw	t0, 0(t1)
	lw	t1, fuckLLVM_count
	li	t3, -1528
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -1528
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	getcount
	mv	t1, a0
	li	t3, -1532
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t0, -152
	li	t3, -1536
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -1536
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, s0, t1
	li	t3, -1536
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -1532
	add	t3, s0, t3
	lw	t0, 0(t3)
	li	t3, -1536
	add	t3, s0, t3
	lw	t1, 0(t3)
	sw	t0, 0(t1)
	lw	t1, fuckLLVM_count
	li	t3, -1540
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -1540
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	getcount
	mv	t1, a0
	li	t3, -1544
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t0, -156
	li	t3, -1548
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -1548
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, s0, t1
	li	t3, -1548
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -1544
	add	t3, s0, t3
	lw	t0, 0(t3)
	li	t3, -1548
	add	t3, s0, t3
	lw	t1, 0(t3)
	sw	t0, 0(t1)
	lw	t1, fuckLLVM_count
	li	t3, -1552
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -1552
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	getcount
	mv	t1, a0
	li	t3, -1556
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t0, -160
	li	t3, -1560
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -1560
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, s0, t1
	li	t3, -1560
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -1556
	add	t3, s0, t3
	lw	t0, 0(t3)
	li	t3, -1560
	add	t3, s0, t3
	lw	t1, 0(t3)
	sw	t0, 0(t1)
	lw	t1, fuckLLVM_count
	li	t3, -1564
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -1564
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	getcount
	mv	t1, a0
	li	t3, -1568
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t0, -164
	li	t3, -1572
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -1572
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, s0, t1
	li	t3, -1572
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -1568
	add	t3, s0, t3
	lw	t0, 0(t3)
	li	t3, -1572
	add	t3, s0, t3
	lw	t1, 0(t3)
	sw	t0, 0(t1)
	lw	t1, fuckLLVM_count
	li	t3, -1576
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -1576
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	getcount
	mv	t1, a0
	li	t3, -1580
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t0, -168
	li	t3, -1584
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -1584
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, s0, t1
	li	t3, -1584
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -1580
	add	t3, s0, t3
	lw	t0, 0(t3)
	li	t3, -1584
	add	t3, s0, t3
	lw	t1, 0(t3)
	sw	t0, 0(t1)
	lw	t1, fuckLLVM_count
	li	t3, -1588
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -1588
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	getcount
	mv	t1, a0
	li	t3, -1592
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t0, -172
	li	t3, -1596
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -1596
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, s0, t1
	li	t3, -1596
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -1592
	add	t3, s0, t3
	lw	t0, 0(t3)
	li	t3, -1596
	add	t3, s0, t3
	lw	t1, 0(t3)
	sw	t0, 0(t1)
	lw	t1, fuckLLVM_count
	li	t3, -1600
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -1600
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	getcount
	mv	t1, a0
	li	t3, -1604
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t0, -176
	li	t3, -1608
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -1608
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, s0, t1
	li	t3, -1608
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -1604
	add	t3, s0, t3
	lw	t0, 0(t3)
	li	t3, -1608
	add	t3, s0, t3
	lw	t1, 0(t3)
	sw	t0, 0(t1)
	lw	t1, fuckLLVM_count
	li	t3, -1612
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -1612
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	getcount
	mv	t1, a0
	li	t3, -1616
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t0, -180
	li	t3, -1620
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -1620
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, s0, t1
	li	t3, -1620
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -1616
	add	t3, s0, t3
	lw	t0, 0(t3)
	li	t3, -1620
	add	t3, s0, t3
	lw	t1, 0(t3)
	sw	t0, 0(t1)
	lw	t1, fuckLLVM_count
	li	t3, -1624
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -1624
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	getcount
	mv	t1, a0
	li	t3, -1628
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t0, -184
	li	t3, -1632
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -1632
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, s0, t1
	li	t3, -1632
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -1628
	add	t3, s0, t3
	lw	t0, 0(t3)
	li	t3, -1632
	add	t3, s0, t3
	lw	t1, 0(t3)
	sw	t0, 0(t1)
	lw	t1, fuckLLVM_count
	li	t3, -1636
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -1636
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	getcount
	mv	t1, a0
	li	t3, -1640
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t0, -188
	li	t3, -1644
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -1644
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, s0, t1
	li	t3, -1644
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -1640
	add	t3, s0, t3
	lw	t0, 0(t3)
	li	t3, -1644
	add	t3, s0, t3
	lw	t1, 0(t3)
	sw	t0, 0(t1)
	lw	t1, fuckLLVM_count
	li	t3, -1648
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -1648
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	getcount
	mv	t1, a0
	li	t3, -1652
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t0, -192
	li	t3, -1656
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -1656
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, s0, t1
	li	t3, -1656
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -1652
	add	t3, s0, t3
	lw	t0, 0(t3)
	li	t3, -1656
	add	t3, s0, t3
	lw	t1, 0(t3)
	sw	t0, 0(t1)
	lw	t1, fuckLLVM_count
	li	t3, -1660
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -1660
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	getcount
	mv	t1, a0
	li	t3, -1664
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t0, -196
	li	t3, -1668
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -1668
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, s0, t1
	li	t3, -1668
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -1664
	add	t3, s0, t3
	lw	t0, 0(t3)
	li	t3, -1668
	add	t3, s0, t3
	lw	t1, 0(t3)
	sw	t0, 0(t1)
	lw	t1, fuckLLVM_count
	li	t3, -1672
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -1672
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	getcount
	mv	t1, a0
	li	t3, -1676
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t0, -200
	li	t3, -1680
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -1680
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, s0, t1
	li	t3, -1680
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -1676
	add	t3, s0, t3
	lw	t0, 0(t3)
	li	t3, -1680
	add	t3, s0, t3
	lw	t1, 0(t3)
	sw	t0, 0(t1)
	lw	t1, fuckLLVM_count
	li	t3, -1684
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -1684
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	getcount
	mv	t1, a0
	li	t3, -1688
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t0, -204
	li	t3, -1692
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -1692
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, s0, t1
	li	t3, -1692
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -1688
	add	t3, s0, t3
	lw	t0, 0(t3)
	li	t3, -1692
	add	t3, s0, t3
	lw	t1, 0(t3)
	sw	t0, 0(t1)
	lw	t1, fuckLLVM_count
	li	t3, -1696
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -1696
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	getcount
	mv	t1, a0
	li	t3, -1700
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t0, -208
	li	t3, -1704
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -1704
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, s0, t1
	li	t3, -1704
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -1700
	add	t3, s0, t3
	lw	t0, 0(t3)
	li	t3, -1704
	add	t3, s0, t3
	lw	t1, 0(t3)
	sw	t0, 0(t1)
	lw	t1, fuckLLVM_count
	li	t3, -1708
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -1708
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	getcount
	mv	t1, a0
	li	t3, -1712
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t0, -212
	li	t3, -1716
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -1716
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, s0, t1
	li	t3, -1716
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -1712
	add	t3, s0, t3
	lw	t0, 0(t3)
	li	t3, -1716
	add	t3, s0, t3
	lw	t1, 0(t3)
	sw	t0, 0(t1)
	lw	t1, fuckLLVM_count
	li	t3, -1720
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -1720
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	getcount
	mv	t1, a0
	li	t3, -1724
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t0, -216
	li	t3, -1728
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -1728
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, s0, t1
	li	t3, -1728
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -1724
	add	t3, s0, t3
	lw	t0, 0(t3)
	li	t3, -1728
	add	t3, s0, t3
	lw	t1, 0(t3)
	sw	t0, 0(t1)
	lw	t1, fuckLLVM_count
	li	t3, -1732
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -1732
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	getcount
	mv	t1, a0
	li	t3, -1736
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t0, -220
	li	t3, -1740
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -1740
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, s0, t1
	li	t3, -1740
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -1736
	add	t3, s0, t3
	lw	t0, 0(t3)
	li	t3, -1740
	add	t3, s0, t3
	lw	t1, 0(t3)
	sw	t0, 0(t1)
	lw	t1, fuckLLVM_count
	li	t3, -1744
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -1744
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	getcount
	mv	t1, a0
	li	t3, -1748
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t0, -224
	li	t3, -1752
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -1752
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, s0, t1
	li	t3, -1752
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -1748
	add	t3, s0, t3
	lw	t0, 0(t3)
	li	t3, -1752
	add	t3, s0, t3
	lw	t1, 0(t3)
	sw	t0, 0(t1)
	lw	t1, fuckLLVM_count
	li	t3, -1756
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -1756
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	getcount
	mv	t1, a0
	li	t3, -1760
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t0, -228
	li	t3, -1764
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -1764
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, s0, t1
	li	t3, -1764
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -1760
	add	t3, s0, t3
	lw	t0, 0(t3)
	li	t3, -1764
	add	t3, s0, t3
	lw	t1, 0(t3)
	sw	t0, 0(t1)
	lw	t1, fuckLLVM_count
	li	t3, -1768
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -1768
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	getcount
	mv	t1, a0
	li	t3, -1772
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t0, -232
	li	t3, -1776
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -1776
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, s0, t1
	li	t3, -1776
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -1772
	add	t3, s0, t3
	lw	t0, 0(t3)
	li	t3, -1776
	add	t3, s0, t3
	lw	t1, 0(t3)
	sw	t0, 0(t1)
	lw	t1, fuckLLVM_count
	li	t3, -1780
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -1780
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	getcount
	mv	t1, a0
	li	t3, -1784
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t0, -236
	li	t3, -1788
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -1788
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, s0, t1
	li	t3, -1788
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -1784
	add	t3, s0, t3
	lw	t0, 0(t3)
	li	t3, -1788
	add	t3, s0, t3
	lw	t1, 0(t3)
	sw	t0, 0(t1)
	lw	t1, fuckLLVM_count
	li	t3, -1792
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -1792
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	getcount
	mv	t1, a0
	li	t3, -1796
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t0, -240
	li	t3, -1800
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -1800
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, s0, t1
	li	t3, -1800
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -1796
	add	t3, s0, t3
	lw	t0, 0(t3)
	li	t3, -1800
	add	t3, s0, t3
	lw	t1, 0(t3)
	sw	t0, 0(t1)
	lw	t1, fuckLLVM_count
	li	t3, -1804
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -1804
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	getcount
	mv	t1, a0
	li	t3, -1808
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t0, -244
	li	t3, -1812
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -1812
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, s0, t1
	li	t3, -1812
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -1808
	add	t3, s0, t3
	lw	t0, 0(t3)
	li	t3, -1812
	add	t3, s0, t3
	lw	t1, 0(t3)
	sw	t0, 0(t1)
	lw	t1, fuckLLVM_count
	li	t3, -1816
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -1816
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	getcount
	mv	t1, a0
	li	t3, -1820
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t0, -248
	li	t3, -1824
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -1824
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, s0, t1
	li	t3, -1824
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -1820
	add	t3, s0, t3
	lw	t0, 0(t3)
	li	t3, -1824
	add	t3, s0, t3
	lw	t1, 0(t3)
	sw	t0, 0(t1)
	lw	t1, fuckLLVM_count
	li	t3, -1828
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -1828
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	getcount
	mv	t1, a0
	li	t3, -1832
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t0, -252
	li	t3, -1836
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -1836
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, s0, t1
	li	t3, -1836
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -1832
	add	t3, s0, t3
	lw	t0, 0(t3)
	li	t3, -1836
	add	t3, s0, t3
	lw	t1, 0(t3)
	sw	t0, 0(t1)
	lw	t1, fuckLLVM_count
	li	t3, -1840
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -1840
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	getcount
	mv	t1, a0
	li	t3, -1844
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t0, -256
	li	t3, -1848
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -1848
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, s0, t1
	li	t3, -1848
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -1844
	add	t3, s0, t3
	lw	t0, 0(t3)
	li	t3, -1848
	add	t3, s0, t3
	lw	t1, 0(t3)
	sw	t0, 0(t1)
	lw	t1, fuckLLVM_count
	li	t3, -1852
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -1852
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	getcount
	mv	t1, a0
	li	t3, -1856
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t0, -260
	li	t3, -1860
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -1860
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, s0, t1
	li	t3, -1860
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -1856
	add	t3, s0, t3
	lw	t0, 0(t3)
	li	t3, -1860
	add	t3, s0, t3
	lw	t1, 0(t3)
	sw	t0, 0(t1)
	lw	t1, fuckLLVM_count
	li	t3, -1864
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -1864
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	getcount
	mv	t1, a0
	li	t3, -1868
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t0, -264
	li	t3, -1872
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -1872
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, s0, t1
	li	t3, -1872
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -1868
	add	t3, s0, t3
	lw	t0, 0(t3)
	li	t3, -1872
	add	t3, s0, t3
	lw	t1, 0(t3)
	sw	t0, 0(t1)
	lw	t1, fuckLLVM_count
	li	t3, -1876
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -1876
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	getcount
	mv	t1, a0
	li	t3, -1880
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t0, -268
	li	t3, -1884
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -1884
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, s0, t1
	li	t3, -1884
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -1880
	add	t3, s0, t3
	lw	t0, 0(t3)
	li	t3, -1884
	add	t3, s0, t3
	lw	t1, 0(t3)
	sw	t0, 0(t1)
	lw	t1, fuckLLVM_count
	li	t3, -1888
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -1888
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	getcount
	mv	t1, a0
	li	t3, -1892
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t0, -272
	li	t3, -1896
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -1896
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, s0, t1
	li	t3, -1896
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -1892
	add	t3, s0, t3
	lw	t0, 0(t3)
	li	t3, -1896
	add	t3, s0, t3
	lw	t1, 0(t3)
	sw	t0, 0(t1)
	lw	t1, fuckLLVM_count
	li	t3, -1900
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -1900
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	getcount
	mv	t1, a0
	li	t3, -1904
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t0, -276
	li	t3, -1908
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -1908
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, s0, t1
	li	t3, -1908
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -1904
	add	t3, s0, t3
	lw	t0, 0(t3)
	li	t3, -1908
	add	t3, s0, t3
	lw	t1, 0(t3)
	sw	t0, 0(t1)
	lw	t1, fuckLLVM_count
	li	t3, -1912
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -1912
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	getcount
	mv	t1, a0
	li	t3, -1916
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t0, -280
	li	t3, -1920
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -1920
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, s0, t1
	li	t3, -1920
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -1916
	add	t3, s0, t3
	lw	t0, 0(t3)
	li	t3, -1920
	add	t3, s0, t3
	lw	t1, 0(t3)
	sw	t0, 0(t1)
	lw	t1, fuckLLVM_count
	li	t3, -1924
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -1924
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	getcount
	mv	t1, a0
	li	t3, -1928
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t0, -284
	li	t3, -1932
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -1932
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, s0, t1
	li	t3, -1932
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -1928
	add	t3, s0, t3
	lw	t0, 0(t3)
	li	t3, -1932
	add	t3, s0, t3
	lw	t1, 0(t3)
	sw	t0, 0(t1)
	lw	t1, fuckLLVM_count
	li	t3, -1936
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -1936
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	getcount
	mv	t1, a0
	li	t3, -1940
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t0, -288
	li	t3, -1944
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -1944
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, s0, t1
	li	t3, -1944
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -1940
	add	t3, s0, t3
	lw	t0, 0(t3)
	li	t3, -1944
	add	t3, s0, t3
	lw	t1, 0(t3)
	sw	t0, 0(t1)
	lw	t1, fuckLLVM_count
	li	t3, -1948
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -1948
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	getcount
	mv	t1, a0
	li	t3, -1952
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t0, -292
	li	t3, -1956
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -1956
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, s0, t1
	li	t3, -1956
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -1952
	add	t3, s0, t3
	lw	t0, 0(t3)
	li	t3, -1956
	add	t3, s0, t3
	lw	t1, 0(t3)
	sw	t0, 0(t1)
	lw	t1, fuckLLVM_count
	li	t3, -1960
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -1960
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	getcount
	mv	t1, a0
	li	t3, -1964
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t0, -296
	li	t3, -1968
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -1968
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, s0, t1
	li	t3, -1968
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -1964
	add	t3, s0, t3
	lw	t0, 0(t3)
	li	t3, -1968
	add	t3, s0, t3
	lw	t1, 0(t3)
	sw	t0, 0(t1)
	lw	t1, fuckLLVM_count
	li	t3, -1972
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -1972
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	getcount
	mv	t1, a0
	li	t3, -1976
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t0, -300
	li	t3, -1980
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -1980
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, s0, t1
	li	t3, -1980
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -1976
	add	t3, s0, t3
	lw	t0, 0(t3)
	li	t3, -1980
	add	t3, s0, t3
	lw	t1, 0(t3)
	sw	t0, 0(t1)
	lw	t1, fuckLLVM_count
	li	t3, -1984
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -1984
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	getcount
	mv	t1, a0
	li	t3, -1988
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t0, -304
	li	t3, -1992
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -1992
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, s0, t1
	li	t3, -1992
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -1988
	add	t3, s0, t3
	lw	t0, 0(t3)
	li	t3, -1992
	add	t3, s0, t3
	lw	t1, 0(t3)
	sw	t0, 0(t1)
	lw	t1, fuckLLVM_count
	li	t3, -1996
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -1996
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	getcount
	mv	t1, a0
	li	t3, -2000
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t0, -308
	li	t3, -2004
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -2004
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, s0, t1
	li	t3, -2004
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -2000
	add	t3, s0, t3
	lw	t0, 0(t3)
	li	t3, -2004
	add	t3, s0, t3
	lw	t1, 0(t3)
	sw	t0, 0(t1)
	lw	t1, fuckLLVM_count
	li	t3, -2008
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -2008
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	getcount
	mv	t1, a0
	li	t3, -2012
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t0, -312
	li	t3, -2016
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -2016
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, s0, t1
	li	t3, -2016
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -2012
	add	t3, s0, t3
	lw	t0, 0(t3)
	li	t3, -2016
	add	t3, s0, t3
	lw	t1, 0(t3)
	sw	t0, 0(t1)
	lw	t1, fuckLLVM_count
	li	t3, -2020
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -2020
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	getcount
	mv	t1, a0
	li	t3, -2024
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t0, -316
	li	t3, -2028
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -2028
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, s0, t1
	li	t3, -2028
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -2024
	add	t3, s0, t3
	lw	t0, 0(t3)
	li	t3, -2028
	add	t3, s0, t3
	lw	t1, 0(t3)
	sw	t0, 0(t1)
	lw	t1, fuckLLVM_count
	li	t3, -2032
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -2032
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	getcount
	mv	t1, a0
	li	t3, -2036
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t0, -320
	li	t3, -2040
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -2040
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, s0, t1
	li	t3, -2040
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -2036
	add	t3, s0, t3
	lw	t0, 0(t3)
	li	t3, -2040
	add	t3, s0, t3
	lw	t1, 0(t3)
	sw	t0, 0(t1)
	lw	t1, fuckLLVM_count
	li	t3, -2044
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -2044
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	getcount
	mv	t1, a0
	li	t3, -2048
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t0, -324
	li	t3, -2052
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -2052
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, s0, t1
	li	t3, -2052
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -2048
	add	t3, s0, t3
	lw	t0, 0(t3)
	li	t3, -2052
	add	t3, s0, t3
	lw	t1, 0(t3)
	sw	t0, 0(t1)
	lw	t1, fuckLLVM_count
	li	t3, -2056
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -2056
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	getcount
	mv	t1, a0
	li	t3, -2060
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t0, -328
	li	t3, -2064
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -2064
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, s0, t1
	li	t3, -2064
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -2060
	add	t3, s0, t3
	lw	t0, 0(t3)
	li	t3, -2064
	add	t3, s0, t3
	lw	t1, 0(t3)
	sw	t0, 0(t1)
	lw	t1, fuckLLVM_count
	li	t3, -2068
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -2068
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	getcount
	mv	t1, a0
	li	t3, -2072
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t0, -332
	li	t3, -2076
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -2076
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, s0, t1
	li	t3, -2076
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -2072
	add	t3, s0, t3
	lw	t0, 0(t3)
	li	t3, -2076
	add	t3, s0, t3
	lw	t1, 0(t3)
	sw	t0, 0(t1)
	lw	t1, fuckLLVM_count
	li	t3, -2080
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -2080
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	getcount
	mv	t1, a0
	li	t3, -2084
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t0, -336
	li	t3, -2088
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -2088
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, s0, t1
	li	t3, -2088
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -2084
	add	t3, s0, t3
	lw	t0, 0(t3)
	li	t3, -2088
	add	t3, s0, t3
	lw	t1, 0(t3)
	sw	t0, 0(t1)
	lw	t1, fuckLLVM_count
	li	t3, -2092
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -2092
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	getcount
	mv	t1, a0
	li	t3, -2096
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t0, -340
	li	t3, -2100
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -2100
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, s0, t1
	li	t3, -2100
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -2096
	add	t3, s0, t3
	lw	t0, 0(t3)
	li	t3, -2100
	add	t3, s0, t3
	lw	t1, 0(t3)
	sw	t0, 0(t1)
	lw	t1, fuckLLVM_count
	li	t3, -2104
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -2104
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	getcount
	mv	t1, a0
	li	t3, -2108
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t0, -344
	li	t3, -2112
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -2112
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, s0, t1
	li	t3, -2112
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -2108
	add	t3, s0, t3
	lw	t0, 0(t3)
	li	t3, -2112
	add	t3, s0, t3
	lw	t1, 0(t3)
	sw	t0, 0(t1)
	lw	t1, fuckLLVM_count
	li	t3, -2116
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -2116
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	getcount
	mv	t1, a0
	li	t3, -2120
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t0, -348
	li	t3, -2124
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -2124
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, s0, t1
	li	t3, -2124
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -2120
	add	t3, s0, t3
	lw	t0, 0(t3)
	li	t3, -2124
	add	t3, s0, t3
	lw	t1, 0(t3)
	sw	t0, 0(t1)
	lw	t1, fuckLLVM_count
	li	t3, -2128
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -2128
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	getcount
	mv	t1, a0
	li	t3, -2132
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t0, -352
	li	t3, -2136
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -2136
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, s0, t1
	li	t3, -2136
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -2132
	add	t3, s0, t3
	lw	t0, 0(t3)
	li	t3, -2136
	add	t3, s0, t3
	lw	t1, 0(t3)
	sw	t0, 0(t1)
	lw	t1, fuckLLVM_count
	li	t3, -2140
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -2140
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	getcount
	mv	t1, a0
	li	t3, -2144
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t0, -356
	li	t3, -2148
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -2148
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, s0, t1
	li	t3, -2148
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -2144
	add	t3, s0, t3
	lw	t0, 0(t3)
	li	t3, -2148
	add	t3, s0, t3
	lw	t1, 0(t3)
	sw	t0, 0(t1)
	lw	t1, fuckLLVM_count
	li	t3, -2152
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -2152
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	getcount
	mv	t1, a0
	li	t3, -2156
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t0, -360
	li	t3, -2160
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -2160
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, s0, t1
	li	t3, -2160
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -2156
	add	t3, s0, t3
	lw	t0, 0(t3)
	li	t3, -2160
	add	t3, s0, t3
	lw	t1, 0(t3)
	sw	t0, 0(t1)
	lw	t1, fuckLLVM_count
	li	t3, -2164
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -2164
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	getcount
	mv	t1, a0
	li	t3, -2168
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t0, -364
	li	t3, -2172
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -2172
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, s0, t1
	li	t3, -2172
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -2168
	add	t3, s0, t3
	lw	t0, 0(t3)
	li	t3, -2172
	add	t3, s0, t3
	lw	t1, 0(t3)
	sw	t0, 0(t1)
	lw	t1, fuckLLVM_count
	li	t3, -2176
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -2176
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	getcount
	mv	t1, a0
	li	t3, -2180
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t0, -368
	li	t3, -2184
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -2184
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, s0, t1
	li	t3, -2184
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -2180
	add	t3, s0, t3
	lw	t0, 0(t3)
	li	t3, -2184
	add	t3, s0, t3
	lw	t1, 0(t3)
	sw	t0, 0(t1)
	lw	t1, fuckLLVM_count
	li	t3, -2188
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -2188
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	getcount
	mv	t1, a0
	li	t3, -2192
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t0, -372
	li	t3, -2196
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -2196
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, s0, t1
	li	t3, -2196
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -2192
	add	t3, s0, t3
	lw	t0, 0(t3)
	li	t3, -2196
	add	t3, s0, t3
	lw	t1, 0(t3)
	sw	t0, 0(t1)
	lw	t1, fuckLLVM_count
	li	t3, -2200
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -2200
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	getcount
	mv	t1, a0
	li	t3, -2204
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t0, -376
	li	t3, -2208
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -2208
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, s0, t1
	li	t3, -2208
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -2204
	add	t3, s0, t3
	lw	t0, 0(t3)
	li	t3, -2208
	add	t3, s0, t3
	lw	t1, 0(t3)
	sw	t0, 0(t1)
	lw	t1, fuckLLVM_count
	li	t3, -2212
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -2212
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	getcount
	mv	t1, a0
	li	t3, -2216
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t0, -380
	li	t3, -2220
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -2220
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, s0, t1
	li	t3, -2220
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -2216
	add	t3, s0, t3
	lw	t0, 0(t3)
	li	t3, -2220
	add	t3, s0, t3
	lw	t1, 0(t3)
	sw	t0, 0(t1)
	lw	t1, fuckLLVM_count
	li	t3, -2224
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -2224
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	getcount
	mv	t1, a0
	li	t3, -2228
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t0, -384
	li	t3, -2232
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -2232
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, s0, t1
	li	t3, -2232
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -2228
	add	t3, s0, t3
	lw	t0, 0(t3)
	li	t3, -2232
	add	t3, s0, t3
	lw	t1, 0(t3)
	sw	t0, 0(t1)
	lw	t1, fuckLLVM_count
	li	t3, -2236
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -2236
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	getcount
	mv	t1, a0
	li	t3, -2240
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t0, -388
	li	t3, -2244
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -2244
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, s0, t1
	li	t3, -2244
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -2240
	add	t3, s0, t3
	lw	t0, 0(t3)
	li	t3, -2244
	add	t3, s0, t3
	lw	t1, 0(t3)
	sw	t0, 0(t1)
	lw	t1, fuckLLVM_count
	li	t3, -2248
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -2248
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	getcount
	mv	t1, a0
	li	t3, -2252
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t0, -392
	li	t3, -2256
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -2256
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, s0, t1
	li	t3, -2256
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -2252
	add	t3, s0, t3
	lw	t0, 0(t3)
	li	t3, -2256
	add	t3, s0, t3
	lw	t1, 0(t3)
	sw	t0, 0(t1)
	lw	t1, fuckLLVM_count
	li	t3, -2260
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -2260
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	getcount
	mv	t1, a0
	li	t3, -2264
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t0, -396
	li	t3, -2268
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -2268
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, s0, t1
	li	t3, -2268
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -2264
	add	t3, s0, t3
	lw	t0, 0(t3)
	li	t3, -2268
	add	t3, s0, t3
	lw	t1, 0(t3)
	sw	t0, 0(t1)
	lw	t1, fuckLLVM_count
	li	t3, -2272
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -2272
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	getcount
	mv	t1, a0
	li	t3, -2276
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t0, -400
	li	t3, -2280
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -2280
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, s0, t1
	li	t3, -2280
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -2276
	add	t3, s0, t3
	lw	t0, 0(t3)
	li	t3, -2280
	add	t3, s0, t3
	lw	t1, 0(t3)
	sw	t0, 0(t1)
	lw	t1, fuckLLVM_count
	li	t3, -2284
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -2284
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	getcount
	mv	t1, a0
	li	t3, -2288
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t0, -404
	li	t3, -2292
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -2292
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, s0, t1
	li	t3, -2292
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -2288
	add	t3, s0, t3
	lw	t0, 0(t3)
	li	t3, -2292
	add	t3, s0, t3
	lw	t1, 0(t3)
	sw	t0, 0(t1)
	lw	t1, fuckLLVM_count
	li	t3, -2296
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -2296
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	getcount
	mv	t1, a0
	li	t3, -2300
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t0, -408
	li	t3, -2304
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -2304
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, s0, t1
	li	t3, -2304
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -2300
	add	t3, s0, t3
	lw	t0, 0(t3)
	li	t3, -2304
	add	t3, s0, t3
	lw	t1, 0(t3)
	sw	t0, 0(t1)
	lw	t1, fuckLLVM_count
	li	t3, -2308
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -2308
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	getcount
	mv	t1, a0
	li	t3, -2312
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t0, -412
	li	t3, -2316
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -2316
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, s0, t1
	li	t3, -2316
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -2312
	add	t3, s0, t3
	lw	t0, 0(t3)
	li	t3, -2316
	add	t3, s0, t3
	lw	t1, 0(t3)
	sw	t0, 0(t1)
	lw	t1, fuckLLVM_count
	li	t3, -2320
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -2320
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	getcount
	mv	t1, a0
	li	t3, -2324
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t0, -416
	li	t3, -2328
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -2328
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, s0, t1
	li	t3, -2328
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -2324
	add	t3, s0, t3
	lw	t0, 0(t3)
	li	t3, -2328
	add	t3, s0, t3
	lw	t1, 0(t3)
	sw	t0, 0(t1)
	lw	t1, fuckLLVM_count
	li	t3, -2332
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -2332
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	getcount
	mv	t1, a0
	li	t3, -2336
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t0, -420
	li	t3, -2340
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -2340
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, s0, t1
	li	t3, -2340
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -2336
	add	t3, s0, t3
	lw	t0, 0(t3)
	li	t3, -2340
	add	t3, s0, t3
	lw	t1, 0(t3)
	sw	t0, 0(t1)
	lw	t1, fuckLLVM_count
	li	t3, -2344
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -2344
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	getcount
	mv	t1, a0
	li	t3, -2348
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t0, -424
	li	t3, -2352
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -2352
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, s0, t1
	li	t3, -2352
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -2348
	add	t3, s0, t3
	lw	t0, 0(t3)
	li	t3, -2352
	add	t3, s0, t3
	lw	t1, 0(t3)
	sw	t0, 0(t1)
	lw	t1, fuckLLVM_count
	li	t3, -2356
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -2356
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	getcount
	mv	t1, a0
	li	t3, -2360
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t0, -428
	li	t3, -2364
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -2364
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, s0, t1
	li	t3, -2364
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -2360
	add	t3, s0, t3
	lw	t0, 0(t3)
	li	t3, -2364
	add	t3, s0, t3
	lw	t1, 0(t3)
	sw	t0, 0(t1)
	lw	t1, fuckLLVM_count
	li	t3, -2368
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -2368
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	getcount
	mv	t1, a0
	li	t3, -2372
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t0, -432
	li	t3, -2376
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -2376
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, s0, t1
	li	t3, -2376
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -2372
	add	t3, s0, t3
	lw	t0, 0(t3)
	li	t3, -2376
	add	t3, s0, t3
	lw	t1, 0(t3)
	sw	t0, 0(t1)
	lw	t1, fuckLLVM_count
	li	t3, -2380
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -2380
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	getcount
	mv	t1, a0
	li	t3, -2384
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t0, -436
	li	t3, -2388
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -2388
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, s0, t1
	li	t3, -2388
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -2384
	add	t3, s0, t3
	lw	t0, 0(t3)
	li	t3, -2388
	add	t3, s0, t3
	lw	t1, 0(t3)
	sw	t0, 0(t1)
	lw	t1, fuckLLVM_count
	li	t3, -2392
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -2392
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	getcount
	mv	t1, a0
	li	t3, -2396
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t0, -440
	li	t3, -2400
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -2400
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, s0, t1
	li	t3, -2400
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -2396
	add	t3, s0, t3
	lw	t0, 0(t3)
	li	t3, -2400
	add	t3, s0, t3
	lw	t1, 0(t3)
	sw	t0, 0(t1)
	lw	t1, fuckLLVM_count
	li	t3, -2404
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -2404
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	getcount
	mv	t1, a0
	li	t3, -2408
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t0, -444
	li	t3, -2412
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -2412
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, s0, t1
	li	t3, -2412
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -2408
	add	t3, s0, t3
	lw	t0, 0(t3)
	li	t3, -2412
	add	t3, s0, t3
	lw	t1, 0(t3)
	sw	t0, 0(t1)
	lw	t1, fuckLLVM_count
	li	t3, -2416
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -2416
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	getcount
	mv	t1, a0
	li	t3, -2420
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t0, -448
	li	t3, -2424
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -2424
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, s0, t1
	li	t3, -2424
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -2420
	add	t3, s0, t3
	lw	t0, 0(t3)
	li	t3, -2424
	add	t3, s0, t3
	lw	t1, 0(t3)
	sw	t0, 0(t1)
	lw	t1, fuckLLVM_count
	li	t3, -2428
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -2428
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	getcount
	mv	t1, a0
	li	t3, -2432
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t0, -452
	li	t3, -2436
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -2436
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, s0, t1
	li	t3, -2436
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -2432
	add	t3, s0, t3
	lw	t0, 0(t3)
	li	t3, -2436
	add	t3, s0, t3
	lw	t1, 0(t3)
	sw	t0, 0(t1)
	lw	t1, fuckLLVM_count
	li	t3, -2440
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -2440
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	getcount
	mv	t1, a0
	li	t3, -2444
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t0, -456
	li	t3, -2448
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -2448
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, s0, t1
	li	t3, -2448
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -2444
	add	t3, s0, t3
	lw	t0, 0(t3)
	li	t3, -2448
	add	t3, s0, t3
	lw	t1, 0(t3)
	sw	t0, 0(t1)
	lw	t1, fuckLLVM_count
	li	t3, -2452
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -2452
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	getcount
	mv	t1, a0
	li	t3, -2456
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t0, -460
	li	t3, -2460
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -2460
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, s0, t1
	li	t3, -2460
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -2456
	add	t3, s0, t3
	lw	t0, 0(t3)
	li	t3, -2460
	add	t3, s0, t3
	lw	t1, 0(t3)
	sw	t0, 0(t1)
	lw	t1, fuckLLVM_count
	li	t3, -2464
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -2464
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	getcount
	mv	t1, a0
	li	t3, -2468
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t0, -464
	li	t3, -2472
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -2472
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, s0, t1
	li	t3, -2472
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -2468
	add	t3, s0, t3
	lw	t0, 0(t3)
	li	t3, -2472
	add	t3, s0, t3
	lw	t1, 0(t3)
	sw	t0, 0(t1)
	lw	t1, fuckLLVM_count
	li	t3, -2476
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -2476
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	getcount
	mv	t1, a0
	li	t3, -2480
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t0, -468
	li	t3, -2484
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -2484
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, s0, t1
	li	t3, -2484
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -2480
	add	t3, s0, t3
	lw	t0, 0(t3)
	li	t3, -2484
	add	t3, s0, t3
	lw	t1, 0(t3)
	sw	t0, 0(t1)
	lw	t1, fuckLLVM_count
	li	t3, -2488
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -2488
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	getcount
	mv	t1, a0
	li	t3, -2492
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t0, -472
	li	t3, -2496
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -2496
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, s0, t1
	li	t3, -2496
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -2492
	add	t3, s0, t3
	lw	t0, 0(t3)
	li	t3, -2496
	add	t3, s0, t3
	lw	t1, 0(t3)
	sw	t0, 0(t1)
	lw	t1, fuckLLVM_count
	li	t3, -2500
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -2500
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	getcount
	mv	t1, a0
	li	t3, -2504
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t0, -476
	li	t3, -2508
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -2508
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, s0, t1
	li	t3, -2508
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -2504
	add	t3, s0, t3
	lw	t0, 0(t3)
	li	t3, -2508
	add	t3, s0, t3
	lw	t1, 0(t3)
	sw	t0, 0(t1)
	lw	t1, fuckLLVM_count
	li	t3, -2512
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -2512
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	getcount
	mv	t1, a0
	li	t3, -2516
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t0, -480
	li	t3, -2520
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -2520
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, s0, t1
	li	t3, -2520
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -2516
	add	t3, s0, t3
	lw	t0, 0(t3)
	li	t3, -2520
	add	t3, s0, t3
	lw	t1, 0(t3)
	sw	t0, 0(t1)
	lw	t1, fuckLLVM_count
	li	t3, -2524
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -2524
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	getcount
	mv	t1, a0
	li	t3, -2528
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t0, -484
	li	t3, -2532
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -2532
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, s0, t1
	li	t3, -2532
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -2528
	add	t3, s0, t3
	lw	t0, 0(t3)
	li	t3, -2532
	add	t3, s0, t3
	lw	t1, 0(t3)
	sw	t0, 0(t1)
	lw	t1, fuckLLVM_count
	li	t3, -2536
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -2536
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	getcount
	mv	t1, a0
	li	t3, -2540
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t0, -488
	li	t3, -2544
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -2544
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, s0, t1
	li	t3, -2544
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -2540
	add	t3, s0, t3
	lw	t0, 0(t3)
	li	t3, -2544
	add	t3, s0, t3
	lw	t1, 0(t3)
	sw	t0, 0(t1)
	lw	t1, fuckLLVM_count
	li	t3, -2548
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -2548
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	getcount
	mv	t1, a0
	li	t3, -2552
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t0, -492
	li	t3, -2556
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -2556
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, s0, t1
	li	t3, -2556
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -2552
	add	t3, s0, t3
	lw	t0, 0(t3)
	li	t3, -2556
	add	t3, s0, t3
	lw	t1, 0(t3)
	sw	t0, 0(t1)
	lw	t1, fuckLLVM_count
	li	t3, -2560
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -2560
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	getcount
	mv	t1, a0
	li	t3, -2564
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t0, -496
	li	t3, -2568
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -2568
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, s0, t1
	li	t3, -2568
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -2564
	add	t3, s0, t3
	lw	t0, 0(t3)
	li	t3, -2568
	add	t3, s0, t3
	lw	t1, 0(t3)
	sw	t0, 0(t1)
	lw	t1, fuckLLVM_count
	li	t3, -2572
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -2572
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	getcount
	mv	t1, a0
	li	t3, -2576
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t0, -500
	li	t3, -2580
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -2580
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, s0, t1
	li	t3, -2580
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -2576
	add	t3, s0, t3
	lw	t0, 0(t3)
	li	t3, -2580
	add	t3, s0, t3
	lw	t1, 0(t3)
	sw	t0, 0(t1)
	lw	t1, fuckLLVM_count
	li	t3, -2584
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -2584
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	getcount
	mv	t1, a0
	li	t3, -2588
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t0, -504
	li	t3, -2592
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -2592
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, s0, t1
	li	t3, -2592
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -2588
	add	t3, s0, t3
	lw	t0, 0(t3)
	li	t3, -2592
	add	t3, s0, t3
	lw	t1, 0(t3)
	sw	t0, 0(t1)
	lw	t1, fuckLLVM_count
	li	t3, -2596
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -2596
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	getcount
	mv	t1, a0
	li	t3, -2600
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t0, -508
	li	t3, -2604
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -2604
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, s0, t1
	li	t3, -2604
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -2600
	add	t3, s0, t3
	lw	t0, 0(t3)
	li	t3, -2604
	add	t3, s0, t3
	lw	t1, 0(t3)
	sw	t0, 0(t1)
	lw	t1, fuckLLVM_count
	li	t3, -2608
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -2608
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	getcount
	mv	t1, a0
	li	t3, -2612
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t0, -512
	li	t3, -2616
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -2616
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, s0, t1
	li	t3, -2616
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -2612
	add	t3, s0, t3
	lw	t0, 0(t3)
	li	t3, -2616
	add	t3, s0, t3
	lw	t1, 0(t3)
	sw	t0, 0(t1)
	lw	t1, fuckLLVM_count
	li	t3, -2620
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -2620
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	getcount
	mv	t1, a0
	li	t3, -2624
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t0, -516
	li	t3, -2628
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -2628
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, s0, t1
	li	t3, -2628
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -2624
	add	t3, s0, t3
	lw	t0, 0(t3)
	li	t3, -2628
	add	t3, s0, t3
	lw	t1, 0(t3)
	sw	t0, 0(t1)
	lw	t1, fuckLLVM_count
	li	t3, -2632
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -2632
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	getcount
	mv	t1, a0
	li	t3, -2636
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t0, -520
	li	t3, -2640
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -2640
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, s0, t1
	li	t3, -2640
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -2636
	add	t3, s0, t3
	lw	t0, 0(t3)
	li	t3, -2640
	add	t3, s0, t3
	lw	t1, 0(t3)
	sw	t0, 0(t1)
	lw	t1, fuckLLVM_count
	li	t3, -2644
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -2644
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	getcount
	mv	t1, a0
	li	t3, -2648
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t0, -524
	li	t3, -2652
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -2652
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, s0, t1
	li	t3, -2652
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -2648
	add	t3, s0, t3
	lw	t0, 0(t3)
	li	t3, -2652
	add	t3, s0, t3
	lw	t1, 0(t3)
	sw	t0, 0(t1)
	lw	t1, fuckLLVM_count
	li	t3, -2656
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -2656
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	getcount
	mv	t1, a0
	li	t3, -2660
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t0, -528
	li	t3, -2664
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -2664
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, s0, t1
	li	t3, -2664
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -2660
	add	t3, s0, t3
	lw	t0, 0(t3)
	li	t3, -2664
	add	t3, s0, t3
	lw	t1, 0(t3)
	sw	t0, 0(t1)
	lw	t1, fuckLLVM_count
	li	t3, -2668
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -2668
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	getcount
	mv	t1, a0
	li	t3, -2672
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t0, -532
	li	t3, -2676
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -2676
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, s0, t1
	li	t3, -2676
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -2672
	add	t3, s0, t3
	lw	t0, 0(t3)
	li	t3, -2676
	add	t3, s0, t3
	lw	t1, 0(t3)
	sw	t0, 0(t1)
	lw	t1, fuckLLVM_count
	li	t3, -2680
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -2680
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	getcount
	mv	t1, a0
	li	t3, -2684
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t0, -536
	li	t3, -2688
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -2688
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, s0, t1
	li	t3, -2688
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -2684
	add	t3, s0, t3
	lw	t0, 0(t3)
	li	t3, -2688
	add	t3, s0, t3
	lw	t1, 0(t3)
	sw	t0, 0(t1)
	lw	t1, fuckLLVM_count
	li	t3, -2692
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -2692
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	getcount
	mv	t1, a0
	li	t3, -2696
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t0, -540
	li	t3, -2700
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -2700
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, s0, t1
	li	t3, -2700
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -2696
	add	t3, s0, t3
	lw	t0, 0(t3)
	li	t3, -2700
	add	t3, s0, t3
	lw	t1, 0(t3)
	sw	t0, 0(t1)
	lw	t1, fuckLLVM_count
	li	t3, -2704
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -2704
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	getcount
	mv	t1, a0
	li	t3, -2708
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t0, -544
	li	t3, -2712
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -2712
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, s0, t1
	li	t3, -2712
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -2708
	add	t3, s0, t3
	lw	t0, 0(t3)
	li	t3, -2712
	add	t3, s0, t3
	lw	t1, 0(t3)
	sw	t0, 0(t1)
	lw	t1, fuckLLVM_count
	li	t3, -2716
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -2716
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	getcount
	mv	t1, a0
	li	t3, -2720
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t0, -548
	li	t3, -2724
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -2724
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, s0, t1
	li	t3, -2724
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -2720
	add	t3, s0, t3
	lw	t0, 0(t3)
	li	t3, -2724
	add	t3, s0, t3
	lw	t1, 0(t3)
	sw	t0, 0(t1)
	lw	t1, fuckLLVM_count
	li	t3, -2728
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -2728
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	getcount
	mv	t1, a0
	li	t3, -2732
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t0, -552
	li	t3, -2736
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -2736
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, s0, t1
	li	t3, -2736
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -2732
	add	t3, s0, t3
	lw	t0, 0(t3)
	li	t3, -2736
	add	t3, s0, t3
	lw	t1, 0(t3)
	sw	t0, 0(t1)
	lw	t1, fuckLLVM_count
	li	t3, -2740
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -2740
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	getcount
	mv	t1, a0
	li	t3, -2744
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t0, -556
	li	t3, -2748
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -2748
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, s0, t1
	li	t3, -2748
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -2744
	add	t3, s0, t3
	lw	t0, 0(t3)
	li	t3, -2748
	add	t3, s0, t3
	lw	t1, 0(t3)
	sw	t0, 0(t1)
	lw	t1, fuckLLVM_count
	li	t3, -2752
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -2752
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	getcount
	mv	t1, a0
	li	t3, -2756
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t0, -560
	li	t3, -2760
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -2760
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, s0, t1
	li	t3, -2760
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -2756
	add	t3, s0, t3
	lw	t0, 0(t3)
	li	t3, -2760
	add	t3, s0, t3
	lw	t1, 0(t3)
	sw	t0, 0(t1)
	lw	t1, fuckLLVM_count
	li	t3, -2764
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -2764
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	getcount
	mv	t1, a0
	li	t3, -2768
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t0, -564
	li	t3, -2772
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -2772
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, s0, t1
	li	t3, -2772
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -2768
	add	t3, s0, t3
	lw	t0, 0(t3)
	li	t3, -2772
	add	t3, s0, t3
	lw	t1, 0(t3)
	sw	t0, 0(t1)
	lw	t1, fuckLLVM_count
	li	t3, -2776
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -2776
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	getcount
	mv	t1, a0
	li	t3, -2780
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t0, -568
	li	t3, -2784
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -2784
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, s0, t1
	li	t3, -2784
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -2780
	add	t3, s0, t3
	lw	t0, 0(t3)
	li	t3, -2784
	add	t3, s0, t3
	lw	t1, 0(t3)
	sw	t0, 0(t1)
	lw	t1, fuckLLVM_count
	li	t3, -2788
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -2788
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	getcount
	mv	t1, a0
	li	t3, -2792
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t0, -572
	li	t3, -2796
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -2796
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, s0, t1
	li	t3, -2796
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -2792
	add	t3, s0, t3
	lw	t0, 0(t3)
	li	t3, -2796
	add	t3, s0, t3
	lw	t1, 0(t3)
	sw	t0, 0(t1)
	lw	t1, fuckLLVM_count
	li	t3, -2800
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -2800
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	getcount
	mv	t1, a0
	li	t3, -2804
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t0, -576
	li	t3, -2808
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -2808
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, s0, t1
	li	t3, -2808
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -2804
	add	t3, s0, t3
	lw	t0, 0(t3)
	li	t3, -2808
	add	t3, s0, t3
	lw	t1, 0(t3)
	sw	t0, 0(t1)
	lw	t1, fuckLLVM_count
	li	t3, -2812
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -2812
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	getcount
	mv	t1, a0
	li	t3, -2816
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t0, -580
	li	t3, -2820
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -2820
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, s0, t1
	li	t3, -2820
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -2816
	add	t3, s0, t3
	lw	t0, 0(t3)
	li	t3, -2820
	add	t3, s0, t3
	lw	t1, 0(t3)
	sw	t0, 0(t1)
	lw	t1, fuckLLVM_count
	li	t3, -2824
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -2824
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	getcount
	mv	t1, a0
	li	t3, -2828
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t0, -584
	li	t3, -2832
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -2832
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, s0, t1
	li	t3, -2832
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -2828
	add	t3, s0, t3
	lw	t0, 0(t3)
	li	t3, -2832
	add	t3, s0, t3
	lw	t1, 0(t3)
	sw	t0, 0(t1)
	lw	t1, fuckLLVM_count
	li	t3, -2836
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -2836
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	getcount
	mv	t1, a0
	li	t3, -2840
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t0, -588
	li	t3, -2844
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -2844
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, s0, t1
	li	t3, -2844
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -2840
	add	t3, s0, t3
	lw	t0, 0(t3)
	li	t3, -2844
	add	t3, s0, t3
	lw	t1, 0(t3)
	sw	t0, 0(t1)
	lw	t1, fuckLLVM_count
	li	t3, -2848
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -2848
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	getcount
	mv	t1, a0
	li	t3, -2852
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t0, -592
	li	t3, -2856
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -2856
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, s0, t1
	li	t3, -2856
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -2852
	add	t3, s0, t3
	lw	t0, 0(t3)
	li	t3, -2856
	add	t3, s0, t3
	lw	t1, 0(t3)
	sw	t0, 0(t1)
	lw	t1, fuckLLVM_count
	li	t3, -2860
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -2860
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	getcount
	mv	t1, a0
	li	t3, -2864
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t0, -596
	li	t3, -2868
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -2868
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, s0, t1
	li	t3, -2868
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -2864
	add	t3, s0, t3
	lw	t0, 0(t3)
	li	t3, -2868
	add	t3, s0, t3
	lw	t1, 0(t3)
	sw	t0, 0(t1)
	lw	t1, fuckLLVM_count
	li	t3, -2872
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -2872
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	getcount
	mv	t1, a0
	li	t3, -2876
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t0, -600
	li	t3, -2880
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -2880
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, s0, t1
	li	t3, -2880
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -2876
	add	t3, s0, t3
	lw	t0, 0(t3)
	li	t3, -2880
	add	t3, s0, t3
	lw	t1, 0(t3)
	sw	t0, 0(t1)
	lw	t1, fuckLLVM_count
	li	t3, -2884
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -2884
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	getcount
	mv	t1, a0
	li	t3, -2888
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t0, -604
	li	t3, -2892
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -2892
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, s0, t1
	li	t3, -2892
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -2888
	add	t3, s0, t3
	lw	t0, 0(t3)
	li	t3, -2892
	add	t3, s0, t3
	lw	t1, 0(t3)
	sw	t0, 0(t1)
	lw	t1, fuckLLVM_count
	li	t3, -2896
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -2896
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	getcount
	mv	t1, a0
	li	t3, -2900
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t0, -608
	li	t3, -2904
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -2904
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, s0, t1
	li	t3, -2904
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -2900
	add	t3, s0, t3
	lw	t0, 0(t3)
	li	t3, -2904
	add	t3, s0, t3
	lw	t1, 0(t3)
	sw	t0, 0(t1)
	lw	t1, fuckLLVM_count
	li	t3, -2908
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -2908
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	getcount
	mv	t1, a0
	li	t3, -2912
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t0, -612
	li	t3, -2916
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -2916
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, s0, t1
	li	t3, -2916
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -2912
	add	t3, s0, t3
	lw	t0, 0(t3)
	li	t3, -2916
	add	t3, s0, t3
	lw	t1, 0(t3)
	sw	t0, 0(t1)
	lw	t1, fuckLLVM_count
	li	t3, -2920
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -2920
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	getcount
	mv	t1, a0
	li	t3, -2924
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t0, -616
	li	t3, -2928
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -2928
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, s0, t1
	li	t3, -2928
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -2924
	add	t3, s0, t3
	lw	t0, 0(t3)
	li	t3, -2928
	add	t3, s0, t3
	lw	t1, 0(t3)
	sw	t0, 0(t1)
	lw	t1, fuckLLVM_count
	li	t3, -2932
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -2932
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	getcount
	mv	t1, a0
	li	t3, -2936
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t0, -620
	li	t3, -2940
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -2940
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, s0, t1
	li	t3, -2940
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -2936
	add	t3, s0, t3
	lw	t0, 0(t3)
	li	t3, -2940
	add	t3, s0, t3
	lw	t1, 0(t3)
	sw	t0, 0(t1)
	lw	t1, fuckLLVM_count
	li	t3, -2944
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -2944
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	getcount
	mv	t1, a0
	li	t3, -2948
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t0, -624
	li	t3, -2952
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -2952
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, s0, t1
	li	t3, -2952
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -2948
	add	t3, s0, t3
	lw	t0, 0(t3)
	li	t3, -2952
	add	t3, s0, t3
	lw	t1, 0(t3)
	sw	t0, 0(t1)
	lw	t1, fuckLLVM_count
	li	t3, -2956
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -2956
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	getcount
	mv	t1, a0
	li	t3, -2960
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t0, -628
	li	t3, -2964
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -2964
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, s0, t1
	li	t3, -2964
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -2960
	add	t3, s0, t3
	lw	t0, 0(t3)
	li	t3, -2964
	add	t3, s0, t3
	lw	t1, 0(t3)
	sw	t0, 0(t1)
	lw	t1, fuckLLVM_count
	li	t3, -2968
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -2968
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	getcount
	mv	t1, a0
	li	t3, -2972
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t0, -632
	li	t3, -2976
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -2976
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, s0, t1
	li	t3, -2976
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -2972
	add	t3, s0, t3
	lw	t0, 0(t3)
	li	t3, -2976
	add	t3, s0, t3
	lw	t1, 0(t3)
	sw	t0, 0(t1)
	lw	t1, fuckLLVM_count
	li	t3, -2980
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -2980
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	getcount
	mv	t1, a0
	li	t3, -2984
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t0, -636
	li	t3, -2988
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -2988
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, s0, t1
	li	t3, -2988
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -2984
	add	t3, s0, t3
	lw	t0, 0(t3)
	li	t3, -2988
	add	t3, s0, t3
	lw	t1, 0(t3)
	sw	t0, 0(t1)
	lw	t1, fuckLLVM_count
	li	t3, -2992
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -2992
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	getcount
	mv	t1, a0
	li	t3, -2996
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t0, -640
	li	t3, -3000
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -3000
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, s0, t1
	li	t3, -3000
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -2996
	add	t3, s0, t3
	lw	t0, 0(t3)
	li	t3, -3000
	add	t3, s0, t3
	lw	t1, 0(t3)
	sw	t0, 0(t1)
	lw	t1, fuckLLVM_count
	li	t3, -3004
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -3004
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	getcount
	mv	t1, a0
	li	t3, -3008
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t0, -644
	li	t3, -3012
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -3012
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, s0, t1
	li	t3, -3012
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -3008
	add	t3, s0, t3
	lw	t0, 0(t3)
	li	t3, -3012
	add	t3, s0, t3
	lw	t1, 0(t3)
	sw	t0, 0(t1)
	lw	t1, fuckLLVM_count
	li	t3, -3016
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -3016
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	getcount
	mv	t1, a0
	li	t3, -3020
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t0, -648
	li	t3, -3024
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -3024
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, s0, t1
	li	t3, -3024
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -3020
	add	t3, s0, t3
	lw	t0, 0(t3)
	li	t3, -3024
	add	t3, s0, t3
	lw	t1, 0(t3)
	sw	t0, 0(t1)
	lw	t1, fuckLLVM_count
	li	t3, -3028
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -3028
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	getcount
	mv	t1, a0
	li	t3, -3032
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t0, -652
	li	t3, -3036
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -3036
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, s0, t1
	li	t3, -3036
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -3032
	add	t3, s0, t3
	lw	t0, 0(t3)
	li	t3, -3036
	add	t3, s0, t3
	lw	t1, 0(t3)
	sw	t0, 0(t1)
	lw	t1, fuckLLVM_count
	li	t3, -3040
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -3040
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	getcount
	mv	t1, a0
	li	t3, -3044
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t0, -656
	li	t3, -3048
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -3048
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, s0, t1
	li	t3, -3048
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -3044
	add	t3, s0, t3
	lw	t0, 0(t3)
	li	t3, -3048
	add	t3, s0, t3
	lw	t1, 0(t3)
	sw	t0, 0(t1)
	lw	t1, fuckLLVM_count
	li	t3, -3052
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -3052
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	getcount
	mv	t1, a0
	li	t3, -3056
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t0, -660
	li	t3, -3060
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -3060
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, s0, t1
	li	t3, -3060
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -3056
	add	t3, s0, t3
	lw	t0, 0(t3)
	li	t3, -3060
	add	t3, s0, t3
	lw	t1, 0(t3)
	sw	t0, 0(t1)
	lw	t1, fuckLLVM_count
	li	t3, -3064
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -3064
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	getcount
	mv	t1, a0
	li	t3, -3068
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t0, -664
	li	t3, -3072
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -3072
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, s0, t1
	li	t3, -3072
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -3068
	add	t3, s0, t3
	lw	t0, 0(t3)
	li	t3, -3072
	add	t3, s0, t3
	lw	t1, 0(t3)
	sw	t0, 0(t1)
	lw	t1, fuckLLVM_count
	li	t3, -3076
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -3076
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	getcount
	mv	t1, a0
	li	t3, -3080
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t0, -668
	li	t3, -3084
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -3084
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, s0, t1
	li	t3, -3084
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -3080
	add	t3, s0, t3
	lw	t0, 0(t3)
	li	t3, -3084
	add	t3, s0, t3
	lw	t1, 0(t3)
	sw	t0, 0(t1)
	lw	t1, fuckLLVM_count
	li	t3, -3088
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -3088
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	getcount
	mv	t1, a0
	li	t3, -3092
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t0, -672
	li	t3, -3096
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -3096
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, s0, t1
	li	t3, -3096
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -3092
	add	t3, s0, t3
	lw	t0, 0(t3)
	li	t3, -3096
	add	t3, s0, t3
	lw	t1, 0(t3)
	sw	t0, 0(t1)
	lw	t1, fuckLLVM_count
	li	t3, -3100
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -3100
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	getcount
	mv	t1, a0
	li	t3, -3104
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t0, -676
	li	t3, -3108
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -3108
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, s0, t1
	li	t3, -3108
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -3104
	add	t3, s0, t3
	lw	t0, 0(t3)
	li	t3, -3108
	add	t3, s0, t3
	lw	t1, 0(t3)
	sw	t0, 0(t1)
	lw	t1, fuckLLVM_count
	li	t3, -3112
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -3112
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	getcount
	mv	t1, a0
	li	t3, -3116
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t0, -680
	li	t3, -3120
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -3120
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, s0, t1
	li	t3, -3120
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -3116
	add	t3, s0, t3
	lw	t0, 0(t3)
	li	t3, -3120
	add	t3, s0, t3
	lw	t1, 0(t3)
	sw	t0, 0(t1)
	lw	t1, fuckLLVM_count
	li	t3, -3124
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -3124
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	getcount
	mv	t1, a0
	li	t3, -3128
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t0, -684
	li	t3, -3132
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -3132
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, s0, t1
	li	t3, -3132
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -3128
	add	t3, s0, t3
	lw	t0, 0(t3)
	li	t3, -3132
	add	t3, s0, t3
	lw	t1, 0(t3)
	sw	t0, 0(t1)
	lw	t1, fuckLLVM_count
	li	t3, -3136
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -3136
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	getcount
	mv	t1, a0
	li	t3, -3140
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t0, -688
	li	t3, -3144
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -3144
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, s0, t1
	li	t3, -3144
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -3140
	add	t3, s0, t3
	lw	t0, 0(t3)
	li	t3, -3144
	add	t3, s0, t3
	lw	t1, 0(t3)
	sw	t0, 0(t1)
	lw	t1, fuckLLVM_count
	li	t3, -3148
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -3148
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	getcount
	mv	t1, a0
	li	t3, -3152
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t0, -692
	li	t3, -3156
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -3156
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, s0, t1
	li	t3, -3156
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -3152
	add	t3, s0, t3
	lw	t0, 0(t3)
	li	t3, -3156
	add	t3, s0, t3
	lw	t1, 0(t3)
	sw	t0, 0(t1)
	lw	t1, fuckLLVM_count
	li	t3, -3160
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -3160
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	getcount
	mv	t1, a0
	li	t3, -3164
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t0, -696
	li	t3, -3168
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -3168
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, s0, t1
	li	t3, -3168
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -3164
	add	t3, s0, t3
	lw	t0, 0(t3)
	li	t3, -3168
	add	t3, s0, t3
	lw	t1, 0(t3)
	sw	t0, 0(t1)
	lw	t1, fuckLLVM_count
	li	t3, -3172
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -3172
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	getcount
	mv	t1, a0
	li	t3, -3176
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t0, -700
	li	t3, -3180
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -3180
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, s0, t1
	li	t3, -3180
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -3176
	add	t3, s0, t3
	lw	t0, 0(t3)
	li	t3, -3180
	add	t3, s0, t3
	lw	t1, 0(t3)
	sw	t0, 0(t1)
	lw	t1, fuckLLVM_count
	li	t3, -3184
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -3184
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	getcount
	mv	t1, a0
	li	t3, -3188
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t0, -704
	li	t3, -3192
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -3192
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, s0, t1
	li	t3, -3192
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -3188
	add	t3, s0, t3
	lw	t0, 0(t3)
	li	t3, -3192
	add	t3, s0, t3
	lw	t1, 0(t3)
	sw	t0, 0(t1)
	lw	t1, fuckLLVM_count
	li	t3, -3196
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -3196
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	getcount
	mv	t1, a0
	li	t3, -3200
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t0, -708
	li	t3, -3204
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -3204
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, s0, t1
	li	t3, -3204
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -3200
	add	t3, s0, t3
	lw	t0, 0(t3)
	li	t3, -3204
	add	t3, s0, t3
	lw	t1, 0(t3)
	sw	t0, 0(t1)
	lw	t1, fuckLLVM_count
	li	t3, -3208
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -3208
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	getcount
	mv	t1, a0
	li	t3, -3212
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t0, -712
	li	t3, -3216
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -3216
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, s0, t1
	li	t3, -3216
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -3212
	add	t3, s0, t3
	lw	t0, 0(t3)
	li	t3, -3216
	add	t3, s0, t3
	lw	t1, 0(t3)
	sw	t0, 0(t1)
	lw	t1, fuckLLVM_count
	li	t3, -3220
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -3220
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	getcount
	mv	t1, a0
	li	t3, -3224
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t0, -716
	li	t3, -3228
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -3228
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, s0, t1
	li	t3, -3228
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -3224
	add	t3, s0, t3
	lw	t0, 0(t3)
	li	t3, -3228
	add	t3, s0, t3
	lw	t1, 0(t3)
	sw	t0, 0(t1)
	lw	t1, fuckLLVM_count
	li	t3, -3232
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -3232
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	getcount
	mv	t1, a0
	li	t3, -3236
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t0, -720
	li	t3, -3240
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -3240
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, s0, t1
	li	t3, -3240
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -3236
	add	t3, s0, t3
	lw	t0, 0(t3)
	li	t3, -3240
	add	t3, s0, t3
	lw	t1, 0(t3)
	sw	t0, 0(t1)
	lw	t1, fuckLLVM_count
	li	t3, -3244
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -3244
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	getcount
	mv	t1, a0
	li	t3, -3248
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t0, -724
	li	t3, -3252
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -3252
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, s0, t1
	li	t3, -3252
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -3248
	add	t3, s0, t3
	lw	t0, 0(t3)
	li	t3, -3252
	add	t3, s0, t3
	lw	t1, 0(t3)
	sw	t0, 0(t1)
	lw	t1, fuckLLVM_count
	li	t3, -3256
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -3256
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	getcount
	mv	t1, a0
	li	t3, -3260
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t0, -728
	li	t3, -3264
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -3264
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, s0, t1
	li	t3, -3264
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -3260
	add	t3, s0, t3
	lw	t0, 0(t3)
	li	t3, -3264
	add	t3, s0, t3
	lw	t1, 0(t3)
	sw	t0, 0(t1)
	lw	t1, fuckLLVM_count
	li	t3, -3268
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -3268
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	getcount
	mv	t1, a0
	li	t3, -3272
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t0, -732
	li	t3, -3276
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -3276
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, s0, t1
	li	t3, -3276
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -3272
	add	t3, s0, t3
	lw	t0, 0(t3)
	li	t3, -3276
	add	t3, s0, t3
	lw	t1, 0(t3)
	sw	t0, 0(t1)
	lw	t1, fuckLLVM_count
	li	t3, -3280
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -3280
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	getcount
	mv	t1, a0
	li	t3, -3284
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t0, -736
	li	t3, -3288
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -3288
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, s0, t1
	li	t3, -3288
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -3284
	add	t3, s0, t3
	lw	t0, 0(t3)
	li	t3, -3288
	add	t3, s0, t3
	lw	t1, 0(t3)
	sw	t0, 0(t1)
	lw	t1, fuckLLVM_count
	li	t3, -3292
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -3292
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	getcount
	mv	t1, a0
	li	t3, -3296
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t0, -740
	li	t3, -3300
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -3300
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, s0, t1
	li	t3, -3300
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -3296
	add	t3, s0, t3
	lw	t0, 0(t3)
	li	t3, -3300
	add	t3, s0, t3
	lw	t1, 0(t3)
	sw	t0, 0(t1)
	lw	t1, fuckLLVM_count
	li	t3, -3304
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -3304
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	getcount
	mv	t1, a0
	li	t3, -3308
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t0, -744
	li	t3, -3312
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -3312
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, s0, t1
	li	t3, -3312
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -3308
	add	t3, s0, t3
	lw	t0, 0(t3)
	li	t3, -3312
	add	t3, s0, t3
	lw	t1, 0(t3)
	sw	t0, 0(t1)
	lw	t1, fuckLLVM_count
	li	t3, -3316
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -3316
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	getcount
	mv	t1, a0
	li	t3, -3320
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t0, -748
	li	t3, -3324
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -3324
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, s0, t1
	li	t3, -3324
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -3320
	add	t3, s0, t3
	lw	t0, 0(t3)
	li	t3, -3324
	add	t3, s0, t3
	lw	t1, 0(t3)
	sw	t0, 0(t1)
	lw	t1, fuckLLVM_count
	li	t3, -3328
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -3328
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	getcount
	mv	t1, a0
	li	t3, -3332
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t0, -752
	li	t3, -3336
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -3336
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, s0, t1
	li	t3, -3336
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -3332
	add	t3, s0, t3
	lw	t0, 0(t3)
	li	t3, -3336
	add	t3, s0, t3
	lw	t1, 0(t3)
	sw	t0, 0(t1)
	lw	t1, fuckLLVM_count
	li	t3, -3340
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -3340
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	getcount
	mv	t1, a0
	li	t3, -3344
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t0, -756
	li	t3, -3348
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -3348
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, s0, t1
	li	t3, -3348
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -3344
	add	t3, s0, t3
	lw	t0, 0(t3)
	li	t3, -3348
	add	t3, s0, t3
	lw	t1, 0(t3)
	sw	t0, 0(t1)
	lw	t1, fuckLLVM_count
	li	t3, -3352
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -3352
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	getcount
	mv	t1, a0
	li	t3, -3356
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t0, -760
	li	t3, -3360
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -3360
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, s0, t1
	li	t3, -3360
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -3356
	add	t3, s0, t3
	lw	t0, 0(t3)
	li	t3, -3360
	add	t3, s0, t3
	lw	t1, 0(t3)
	sw	t0, 0(t1)
	lw	t1, fuckLLVM_count
	li	t3, -3364
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -3364
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	getcount
	mv	t1, a0
	li	t3, -3368
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t0, -764
	li	t3, -3372
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -3372
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, s0, t1
	li	t3, -3372
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -3368
	add	t3, s0, t3
	lw	t0, 0(t3)
	li	t3, -3372
	add	t3, s0, t3
	lw	t1, 0(t3)
	sw	t0, 0(t1)
	lw	t1, fuckLLVM_count
	li	t3, -3376
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -3376
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	getcount
	mv	t1, a0
	li	t3, -3380
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t0, -768
	li	t3, -3384
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -3384
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, s0, t1
	li	t3, -3384
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -3380
	add	t3, s0, t3
	lw	t0, 0(t3)
	li	t3, -3384
	add	t3, s0, t3
	lw	t1, 0(t3)
	sw	t0, 0(t1)
	lw	t1, fuckLLVM_count
	li	t3, -3388
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -3388
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	getcount
	mv	t1, a0
	li	t3, -3392
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t0, -772
	li	t3, -3396
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -3396
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, s0, t1
	li	t3, -3396
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -3392
	add	t3, s0, t3
	lw	t0, 0(t3)
	li	t3, -3396
	add	t3, s0, t3
	lw	t1, 0(t3)
	sw	t0, 0(t1)
	lw	t1, fuckLLVM_count
	li	t3, -3400
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -3400
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	getcount
	mv	t1, a0
	li	t3, -3404
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t0, -776
	li	t3, -3408
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -3408
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, s0, t1
	li	t3, -3408
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -3404
	add	t3, s0, t3
	lw	t0, 0(t3)
	li	t3, -3408
	add	t3, s0, t3
	lw	t1, 0(t3)
	sw	t0, 0(t1)
	lw	t1, fuckLLVM_count
	li	t3, -3412
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -3412
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	getcount
	mv	t1, a0
	li	t3, -3416
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t0, -780
	li	t3, -3420
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -3420
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, s0, t1
	li	t3, -3420
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -3416
	add	t3, s0, t3
	lw	t0, 0(t3)
	li	t3, -3420
	add	t3, s0, t3
	lw	t1, 0(t3)
	sw	t0, 0(t1)
	lw	t1, fuckLLVM_count
	li	t3, -3424
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -3424
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	getcount
	mv	t1, a0
	li	t3, -3428
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t0, -784
	li	t3, -3432
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -3432
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, s0, t1
	li	t3, -3432
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -3428
	add	t3, s0, t3
	lw	t0, 0(t3)
	li	t3, -3432
	add	t3, s0, t3
	lw	t1, 0(t3)
	sw	t0, 0(t1)
	lw	t1, fuckLLVM_count
	li	t3, -3436
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -3436
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	getcount
	mv	t1, a0
	li	t3, -3440
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t0, -788
	li	t3, -3444
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -3444
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, s0, t1
	li	t3, -3444
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -3440
	add	t3, s0, t3
	lw	t0, 0(t3)
	li	t3, -3444
	add	t3, s0, t3
	lw	t1, 0(t3)
	sw	t0, 0(t1)
	lw	t1, fuckLLVM_count
	li	t3, -3448
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -3448
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	getcount
	mv	t1, a0
	li	t3, -3452
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t0, -792
	li	t3, -3456
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -3456
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, s0, t1
	li	t3, -3456
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -3452
	add	t3, s0, t3
	lw	t0, 0(t3)
	li	t3, -3456
	add	t3, s0, t3
	lw	t1, 0(t3)
	sw	t0, 0(t1)
	lw	t1, fuckLLVM_count
	li	t3, -3460
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -3460
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	getcount
	mv	t1, a0
	li	t3, -3464
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t0, -796
	li	t3, -3468
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -3468
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, s0, t1
	li	t3, -3468
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -3464
	add	t3, s0, t3
	lw	t0, 0(t3)
	li	t3, -3468
	add	t3, s0, t3
	lw	t1, 0(t3)
	sw	t0, 0(t1)
	lw	t1, fuckLLVM_count
	li	t3, -3472
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -3472
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	getcount
	mv	t1, a0
	li	t3, -3476
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t0, -800
	li	t3, -3480
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -3480
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, s0, t1
	li	t3, -3480
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -3476
	add	t3, s0, t3
	lw	t0, 0(t3)
	li	t3, -3480
	add	t3, s0, t3
	lw	t1, 0(t3)
	sw	t0, 0(t1)
	lw	t1, fuckLLVM_count
	li	t3, -3484
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -3484
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	getcount
	mv	t1, a0
	li	t3, -3488
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t0, -804
	li	t3, -3492
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -3492
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, s0, t1
	li	t3, -3492
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -3488
	add	t3, s0, t3
	lw	t0, 0(t3)
	li	t3, -3492
	add	t3, s0, t3
	lw	t1, 0(t3)
	sw	t0, 0(t1)
	lw	t1, fuckLLVM_count
	li	t3, -3496
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -3496
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	getcount
	mv	t1, a0
	li	t3, -3500
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t0, -808
	li	t3, -3504
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -3504
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, s0, t1
	li	t3, -3504
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -3500
	add	t3, s0, t3
	lw	t0, 0(t3)
	li	t3, -3504
	add	t3, s0, t3
	lw	t1, 0(t3)
	sw	t0, 0(t1)
	lw	t1, fuckLLVM_count
	li	t3, -3508
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -3508
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	getcount
	mv	t1, a0
	li	t3, -3512
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t0, -812
	li	t3, -3516
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -3516
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, s0, t1
	li	t3, -3516
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -3512
	add	t3, s0, t3
	lw	t0, 0(t3)
	li	t3, -3516
	add	t3, s0, t3
	lw	t1, 0(t3)
	sw	t0, 0(t1)
	lw	t1, fuckLLVM_count
	li	t3, -3520
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -3520
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	getcount
	mv	t1, a0
	li	t3, -3524
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t0, -816
	li	t3, -3528
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -3528
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, s0, t1
	li	t3, -3528
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -3524
	add	t3, s0, t3
	lw	t0, 0(t3)
	li	t3, -3528
	add	t3, s0, t3
	lw	t1, 0(t3)
	sw	t0, 0(t1)
	lw	t1, fuckLLVM_count
	li	t3, -3532
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -3532
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	getcount
	mv	t1, a0
	li	t3, -3536
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t0, -820
	li	t3, -3540
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -3540
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, s0, t1
	li	t3, -3540
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -3536
	add	t3, s0, t3
	lw	t0, 0(t3)
	li	t3, -3540
	add	t3, s0, t3
	lw	t1, 0(t3)
	sw	t0, 0(t1)
	lw	t1, fuckLLVM_count
	li	t3, -3544
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -3544
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	getcount
	mv	t1, a0
	li	t3, -3548
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t0, -824
	li	t3, -3552
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -3552
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, s0, t1
	li	t3, -3552
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -3548
	add	t3, s0, t3
	lw	t0, 0(t3)
	li	t3, -3552
	add	t3, s0, t3
	lw	t1, 0(t3)
	sw	t0, 0(t1)
	lw	t1, fuckLLVM_count
	li	t3, -3556
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -3556
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	getcount
	mv	t1, a0
	li	t3, -3560
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t0, -828
	li	t3, -3564
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -3564
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, s0, t1
	li	t3, -3564
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -3560
	add	t3, s0, t3
	lw	t0, 0(t3)
	li	t3, -3564
	add	t3, s0, t3
	lw	t1, 0(t3)
	sw	t0, 0(t1)
	lw	t1, fuckLLVM_count
	li	t3, -3568
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -3568
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	getcount
	mv	t1, a0
	li	t3, -3572
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t0, -832
	li	t3, -3576
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -3576
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, s0, t1
	li	t3, -3576
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -3572
	add	t3, s0, t3
	lw	t0, 0(t3)
	li	t3, -3576
	add	t3, s0, t3
	lw	t1, 0(t3)
	sw	t0, 0(t1)
	lw	t1, fuckLLVM_count
	li	t3, -3580
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -3580
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	getcount
	mv	t1, a0
	li	t3, -3584
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t0, -836
	li	t3, -3588
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -3588
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, s0, t1
	li	t3, -3588
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -3584
	add	t3, s0, t3
	lw	t0, 0(t3)
	li	t3, -3588
	add	t3, s0, t3
	lw	t1, 0(t3)
	sw	t0, 0(t1)
	lw	t1, fuckLLVM_count
	li	t3, -3592
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -3592
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	getcount
	mv	t1, a0
	li	t3, -3596
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t0, -840
	li	t3, -3600
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -3600
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, s0, t1
	li	t3, -3600
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -3596
	add	t3, s0, t3
	lw	t0, 0(t3)
	li	t3, -3600
	add	t3, s0, t3
	lw	t1, 0(t3)
	sw	t0, 0(t1)
	lw	t1, fuckLLVM_count
	li	t3, -3604
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -3604
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	getcount
	mv	t1, a0
	li	t3, -3608
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t0, -844
	li	t3, -3612
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -3612
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, s0, t1
	li	t3, -3612
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -3608
	add	t3, s0, t3
	lw	t0, 0(t3)
	li	t3, -3612
	add	t3, s0, t3
	lw	t1, 0(t3)
	sw	t0, 0(t1)
	lw	t1, fuckLLVM_count
	li	t3, -3616
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -3616
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	getcount
	mv	t1, a0
	li	t3, -3620
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t0, -848
	li	t3, -3624
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -3624
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, s0, t1
	li	t3, -3624
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -3620
	add	t3, s0, t3
	lw	t0, 0(t3)
	li	t3, -3624
	add	t3, s0, t3
	lw	t1, 0(t3)
	sw	t0, 0(t1)
	lw	t1, fuckLLVM_count
	li	t3, -3628
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -3628
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	getcount
	mv	t1, a0
	li	t3, -3632
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t0, -852
	li	t3, -3636
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -3636
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, s0, t1
	li	t3, -3636
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -3632
	add	t3, s0, t3
	lw	t0, 0(t3)
	li	t3, -3636
	add	t3, s0, t3
	lw	t1, 0(t3)
	sw	t0, 0(t1)
	lw	t1, fuckLLVM_count
	li	t3, -3640
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -3640
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	getcount
	mv	t1, a0
	li	t3, -3644
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t0, -856
	li	t3, -3648
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -3648
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, s0, t1
	li	t3, -3648
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -3644
	add	t3, s0, t3
	lw	t0, 0(t3)
	li	t3, -3648
	add	t3, s0, t3
	lw	t1, 0(t3)
	sw	t0, 0(t1)
	lw	t1, fuckLLVM_count
	li	t3, -3652
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -3652
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	getcount
	mv	t1, a0
	li	t3, -3656
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t0, -860
	li	t3, -3660
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -3660
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, s0, t1
	li	t3, -3660
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -3656
	add	t3, s0, t3
	lw	t0, 0(t3)
	li	t3, -3660
	add	t3, s0, t3
	lw	t1, 0(t3)
	sw	t0, 0(t1)
	lw	t1, fuckLLVM_count
	li	t3, -3664
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -3664
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	getcount
	mv	t1, a0
	li	t3, -3668
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t0, -864
	li	t3, -3672
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -3672
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, s0, t1
	li	t3, -3672
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -3668
	add	t3, s0, t3
	lw	t0, 0(t3)
	li	t3, -3672
	add	t3, s0, t3
	lw	t1, 0(t3)
	sw	t0, 0(t1)
	lw	t1, fuckLLVM_count
	li	t3, -3676
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -3676
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	getcount
	mv	t1, a0
	li	t3, -3680
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t0, -868
	li	t3, -3684
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -3684
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, s0, t1
	li	t3, -3684
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -3680
	add	t3, s0, t3
	lw	t0, 0(t3)
	li	t3, -3684
	add	t3, s0, t3
	lw	t1, 0(t3)
	sw	t0, 0(t1)
	lw	t1, fuckLLVM_count
	li	t3, -3688
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -3688
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	getcount
	mv	t1, a0
	li	t3, -3692
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t0, -872
	li	t3, -3696
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -3696
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, s0, t1
	li	t3, -3696
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -3692
	add	t3, s0, t3
	lw	t0, 0(t3)
	li	t3, -3696
	add	t3, s0, t3
	lw	t1, 0(t3)
	sw	t0, 0(t1)
	lw	t1, fuckLLVM_count
	li	t3, -3700
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -3700
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	getcount
	mv	t1, a0
	li	t3, -3704
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t0, -876
	li	t3, -3708
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -3708
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, s0, t1
	li	t3, -3708
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -3704
	add	t3, s0, t3
	lw	t0, 0(t3)
	li	t3, -3708
	add	t3, s0, t3
	lw	t1, 0(t3)
	sw	t0, 0(t1)
	lw	t1, fuckLLVM_count
	li	t3, -3712
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -3712
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	getcount
	mv	t1, a0
	li	t3, -3716
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t0, -880
	li	t3, -3720
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -3720
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, s0, t1
	li	t3, -3720
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -3716
	add	t3, s0, t3
	lw	t0, 0(t3)
	li	t3, -3720
	add	t3, s0, t3
	lw	t1, 0(t3)
	sw	t0, 0(t1)
	lw	t1, fuckLLVM_count
	li	t3, -3724
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -3724
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	getcount
	mv	t1, a0
	li	t3, -3728
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t0, -884
	li	t3, -3732
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -3732
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, s0, t1
	li	t3, -3732
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -3728
	add	t3, s0, t3
	lw	t0, 0(t3)
	li	t3, -3732
	add	t3, s0, t3
	lw	t1, 0(t3)
	sw	t0, 0(t1)
	lw	t1, fuckLLVM_count
	li	t3, -3736
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -3736
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	getcount
	mv	t1, a0
	li	t3, -3740
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t0, -888
	li	t3, -3744
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -3744
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, s0, t1
	li	t3, -3744
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -3740
	add	t3, s0, t3
	lw	t0, 0(t3)
	li	t3, -3744
	add	t3, s0, t3
	lw	t1, 0(t3)
	sw	t0, 0(t1)
	lw	t1, fuckLLVM_count
	li	t3, -3748
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -3748
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	getcount
	mv	t1, a0
	li	t3, -3752
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t0, -892
	li	t3, -3756
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -3756
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, s0, t1
	li	t3, -3756
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -3752
	add	t3, s0, t3
	lw	t0, 0(t3)
	li	t3, -3756
	add	t3, s0, t3
	lw	t1, 0(t3)
	sw	t0, 0(t1)
	lw	t1, fuckLLVM_count
	li	t3, -3760
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -3760
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	getcount
	mv	t1, a0
	li	t3, -3764
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t0, -896
	li	t3, -3768
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -3768
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, s0, t1
	li	t3, -3768
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -3764
	add	t3, s0, t3
	lw	t0, 0(t3)
	li	t3, -3768
	add	t3, s0, t3
	lw	t1, 0(t3)
	sw	t0, 0(t1)
	lw	t1, fuckLLVM_count
	li	t3, -3772
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -3772
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	getcount
	mv	t1, a0
	li	t3, -3776
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t0, -900
	li	t3, -3780
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -3780
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, s0, t1
	li	t3, -3780
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -3776
	add	t3, s0, t3
	lw	t0, 0(t3)
	li	t3, -3780
	add	t3, s0, t3
	lw	t1, 0(t3)
	sw	t0, 0(t1)
	lw	t1, fuckLLVM_count
	li	t3, -3784
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -3784
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	getcount
	mv	t1, a0
	li	t3, -3788
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t0, -904
	li	t3, -3792
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -3792
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, s0, t1
	li	t3, -3792
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -3788
	add	t3, s0, t3
	lw	t0, 0(t3)
	li	t3, -3792
	add	t3, s0, t3
	lw	t1, 0(t3)
	sw	t0, 0(t1)
	lw	t1, fuckLLVM_count
	li	t3, -3796
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -3796
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	getcount
	mv	t1, a0
	li	t3, -3800
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t0, -908
	li	t3, -3804
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -3804
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, s0, t1
	li	t3, -3804
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -3800
	add	t3, s0, t3
	lw	t0, 0(t3)
	li	t3, -3804
	add	t3, s0, t3
	lw	t1, 0(t3)
	sw	t0, 0(t1)
	lw	t1, fuckLLVM_count
	li	t3, -3808
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -3808
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	getcount
	mv	t1, a0
	li	t3, -3812
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t0, -912
	li	t3, -3816
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -3816
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, s0, t1
	li	t3, -3816
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -3812
	add	t3, s0, t3
	lw	t0, 0(t3)
	li	t3, -3816
	add	t3, s0, t3
	lw	t1, 0(t3)
	sw	t0, 0(t1)
	lw	t1, fuckLLVM_count
	li	t3, -3820
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -3820
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	getcount
	mv	t1, a0
	li	t3, -3824
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t0, -916
	li	t3, -3828
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -3828
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, s0, t1
	li	t3, -3828
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -3824
	add	t3, s0, t3
	lw	t0, 0(t3)
	li	t3, -3828
	add	t3, s0, t3
	lw	t1, 0(t3)
	sw	t0, 0(t1)
	lw	t1, fuckLLVM_count
	li	t3, -3832
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -3832
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	getcount
	mv	t1, a0
	li	t3, -3836
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t0, -920
	li	t3, -3840
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -3840
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, s0, t1
	li	t3, -3840
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -3836
	add	t3, s0, t3
	lw	t0, 0(t3)
	li	t3, -3840
	add	t3, s0, t3
	lw	t1, 0(t3)
	sw	t0, 0(t1)
	lw	t1, fuckLLVM_count
	li	t3, -3844
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -3844
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	getcount
	mv	t1, a0
	li	t3, -3848
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t0, -924
	li	t3, -3852
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -3852
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, s0, t1
	li	t3, -3852
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -3848
	add	t3, s0, t3
	lw	t0, 0(t3)
	li	t3, -3852
	add	t3, s0, t3
	lw	t1, 0(t3)
	sw	t0, 0(t1)
	lw	t1, fuckLLVM_count
	li	t3, -3856
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -3856
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	getcount
	mv	t1, a0
	li	t3, -3860
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t0, -928
	li	t3, -3864
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -3864
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, s0, t1
	li	t3, -3864
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -3860
	add	t3, s0, t3
	lw	t0, 0(t3)
	li	t3, -3864
	add	t3, s0, t3
	lw	t1, 0(t3)
	sw	t0, 0(t1)
	lw	t1, fuckLLVM_count
	li	t3, -3868
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -3868
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	getcount
	mv	t1, a0
	li	t3, -3872
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t0, -932
	li	t3, -3876
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -3876
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, s0, t1
	li	t3, -3876
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -3872
	add	t3, s0, t3
	lw	t0, 0(t3)
	li	t3, -3876
	add	t3, s0, t3
	lw	t1, 0(t3)
	sw	t0, 0(t1)
	lw	t1, fuckLLVM_count
	li	t3, -3880
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -3880
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	getcount
	mv	t1, a0
	li	t3, -3884
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t0, -936
	li	t3, -3888
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -3888
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, s0, t1
	li	t3, -3888
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -3884
	add	t3, s0, t3
	lw	t0, 0(t3)
	li	t3, -3888
	add	t3, s0, t3
	lw	t1, 0(t3)
	sw	t0, 0(t1)
	lw	t1, fuckLLVM_count
	li	t3, -3892
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -3892
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	getcount
	mv	t1, a0
	li	t3, -3896
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t0, -940
	li	t3, -3900
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -3900
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, s0, t1
	li	t3, -3900
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -3896
	add	t3, s0, t3
	lw	t0, 0(t3)
	li	t3, -3900
	add	t3, s0, t3
	lw	t1, 0(t3)
	sw	t0, 0(t1)
	lw	t1, fuckLLVM_count
	li	t3, -3904
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -3904
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	getcount
	mv	t1, a0
	li	t3, -3908
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t0, -944
	li	t3, -3912
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -3912
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, s0, t1
	li	t3, -3912
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -3908
	add	t3, s0, t3
	lw	t0, 0(t3)
	li	t3, -3912
	add	t3, s0, t3
	lw	t1, 0(t3)
	sw	t0, 0(t1)
	lw	t1, fuckLLVM_count
	li	t3, -3916
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -3916
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	getcount
	mv	t1, a0
	li	t3, -3920
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t0, -948
	li	t3, -3924
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -3924
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, s0, t1
	li	t3, -3924
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -3920
	add	t3, s0, t3
	lw	t0, 0(t3)
	li	t3, -3924
	add	t3, s0, t3
	lw	t1, 0(t3)
	sw	t0, 0(t1)
	lw	t1, fuckLLVM_count
	li	t3, -3928
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -3928
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	getcount
	mv	t1, a0
	li	t3, -3932
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t0, -952
	li	t3, -3936
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -3936
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, s0, t1
	li	t3, -3936
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -3932
	add	t3, s0, t3
	lw	t0, 0(t3)
	li	t3, -3936
	add	t3, s0, t3
	lw	t1, 0(t3)
	sw	t0, 0(t1)
	lw	t1, fuckLLVM_count
	li	t3, -3940
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -3940
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	getcount
	mv	t1, a0
	li	t3, -3944
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t0, -956
	li	t3, -3948
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -3948
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, s0, t1
	li	t3, -3948
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -3944
	add	t3, s0, t3
	lw	t0, 0(t3)
	li	t3, -3948
	add	t3, s0, t3
	lw	t1, 0(t3)
	sw	t0, 0(t1)
	lw	t1, fuckLLVM_count
	li	t3, -3952
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -3952
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	getcount
	mv	t1, a0
	li	t3, -3956
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t0, -960
	li	t3, -3960
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -3960
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, s0, t1
	li	t3, -3960
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -3956
	add	t3, s0, t3
	lw	t0, 0(t3)
	li	t3, -3960
	add	t3, s0, t3
	lw	t1, 0(t3)
	sw	t0, 0(t1)
	lw	t1, fuckLLVM_count
	li	t3, -3964
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -3964
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	getcount
	mv	t1, a0
	li	t3, -3968
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t0, -964
	li	t3, -3972
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -3972
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, s0, t1
	li	t3, -3972
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -3968
	add	t3, s0, t3
	lw	t0, 0(t3)
	li	t3, -3972
	add	t3, s0, t3
	lw	t1, 0(t3)
	sw	t0, 0(t1)
	lw	t1, fuckLLVM_count
	li	t3, -3976
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -3976
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	getcount
	mv	t1, a0
	li	t3, -3980
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t0, -968
	li	t3, -3984
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -3984
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, s0, t1
	li	t3, -3984
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -3980
	add	t3, s0, t3
	lw	t0, 0(t3)
	li	t3, -3984
	add	t3, s0, t3
	lw	t1, 0(t3)
	sw	t0, 0(t1)
	lw	t1, fuckLLVM_count
	li	t3, -3988
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -3988
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	getcount
	mv	t1, a0
	li	t3, -3992
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t0, -972
	li	t3, -3996
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -3996
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, s0, t1
	li	t3, -3996
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -3992
	add	t3, s0, t3
	lw	t0, 0(t3)
	li	t3, -3996
	add	t3, s0, t3
	lw	t1, 0(t3)
	sw	t0, 0(t1)
	lw	t1, fuckLLVM_count
	li	t3, -4000
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -4000
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	getcount
	mv	t1, a0
	li	t3, -4004
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t0, -976
	li	t3, -4008
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -4008
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, s0, t1
	li	t3, -4008
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -4004
	add	t3, s0, t3
	lw	t0, 0(t3)
	li	t3, -4008
	add	t3, s0, t3
	lw	t1, 0(t3)
	sw	t0, 0(t1)
	lw	t1, fuckLLVM_count
	li	t3, -4012
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -4012
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	getcount
	mv	t1, a0
	li	t3, -4016
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t0, -980
	li	t3, -4020
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -4020
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, s0, t1
	li	t3, -4020
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -4016
	add	t3, s0, t3
	lw	t0, 0(t3)
	li	t3, -4020
	add	t3, s0, t3
	lw	t1, 0(t3)
	sw	t0, 0(t1)
	lw	t1, fuckLLVM_count
	li	t3, -4024
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -4024
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	getcount
	mv	t1, a0
	li	t3, -4028
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t0, -984
	li	t3, -4032
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -4032
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, s0, t1
	li	t3, -4032
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -4028
	add	t3, s0, t3
	lw	t0, 0(t3)
	li	t3, -4032
	add	t3, s0, t3
	lw	t1, 0(t3)
	sw	t0, 0(t1)
	lw	t1, fuckLLVM_count
	li	t3, -4036
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -4036
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	getcount
	mv	t1, a0
	li	t3, -4040
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t0, -988
	li	t3, -4044
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -4044
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, s0, t1
	li	t3, -4044
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -4040
	add	t3, s0, t3
	lw	t0, 0(t3)
	li	t3, -4044
	add	t3, s0, t3
	lw	t1, 0(t3)
	sw	t0, 0(t1)
	lw	t1, fuckLLVM_count
	li	t3, -4048
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -4048
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	getcount
	mv	t1, a0
	li	t3, -4052
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t0, -992
	li	t3, -4056
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -4056
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, s0, t1
	li	t3, -4056
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -4052
	add	t3, s0, t3
	lw	t0, 0(t3)
	li	t3, -4056
	add	t3, s0, t3
	lw	t1, 0(t3)
	sw	t0, 0(t1)
	lw	t1, fuckLLVM_count
	li	t3, -4060
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -4060
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	getcount
	mv	t1, a0
	li	t3, -4064
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t0, -996
	li	t3, -4068
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -4068
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, s0, t1
	li	t3, -4068
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -4064
	add	t3, s0, t3
	lw	t0, 0(t3)
	li	t3, -4068
	add	t3, s0, t3
	lw	t1, 0(t3)
	sw	t0, 0(t1)
	lw	t1, fuckLLVM_count
	li	t3, -4072
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -4072
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	getcount
	mv	t1, a0
	li	t3, -4076
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t0, -1000
	li	t3, -4080
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -4080
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, s0, t1
	li	t3, -4080
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -4076
	add	t3, s0, t3
	lw	t0, 0(t3)
	li	t3, -4080
	add	t3, s0, t3
	lw	t1, 0(t3)
	sw	t0, 0(t1)
	lw	t1, fuckLLVM_count
	li	t3, -4084
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -4084
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	getcount
	mv	t1, a0
	li	t3, -4088
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t0, -1004
	li	t3, -4092
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -4092
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, s0, t1
	li	t3, -4092
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -4088
	add	t3, s0, t3
	lw	t0, 0(t3)
	li	t3, -4092
	add	t3, s0, t3
	lw	t1, 0(t3)
	sw	t0, 0(t1)
	lw	t1, fuckLLVM_count
	li	t3, -4096
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -4096
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	getcount
	mv	t1, a0
	li	t3, -4100
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t0, -1008
	li	t3, -4104
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -4104
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, s0, t1
	li	t3, -4104
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -4100
	add	t3, s0, t3
	lw	t0, 0(t3)
	li	t3, -4104
	add	t3, s0, t3
	lw	t1, 0(t3)
	sw	t0, 0(t1)
	lw	t1, fuckLLVM_count
	li	t3, -4108
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -4108
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	getcount
	mv	t1, a0
	li	t3, -4112
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t0, -1012
	li	t3, -4116
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -4116
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, s0, t1
	li	t3, -4116
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -4112
	add	t3, s0, t3
	lw	t0, 0(t3)
	li	t3, -4116
	add	t3, s0, t3
	lw	t1, 0(t3)
	sw	t0, 0(t1)
	lw	t1, fuckLLVM_count
	li	t3, -4120
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -4120
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	getcount
	mv	t1, a0
	li	t3, -4124
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t0, -1016
	li	t3, -4128
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -4128
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, s0, t1
	li	t3, -4128
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -4124
	add	t3, s0, t3
	lw	t0, 0(t3)
	li	t3, -4128
	add	t3, s0, t3
	lw	t1, 0(t3)
	sw	t0, 0(t1)
	lw	t1, fuckLLVM_count
	li	t3, -4132
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -4132
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	getcount
	mv	t1, a0
	li	t3, -4136
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t0, -1020
	li	t3, -4140
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -4140
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, s0, t1
	li	t3, -4140
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -4136
	add	t3, s0, t3
	lw	t0, 0(t3)
	li	t3, -4140
	add	t3, s0, t3
	lw	t1, 0(t3)
	sw	t0, 0(t1)
	lw	t1, fuckLLVM_count
	li	t3, -4144
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -4144
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	getcount
	mv	t1, a0
	li	t3, -4148
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t0, -1024
	li	t3, -4152
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -4152
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, s0, t1
	li	t3, -4152
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -4148
	add	t3, s0, t3
	lw	t0, 0(t3)
	li	t3, -4152
	add	t3, s0, t3
	lw	t1, 0(t3)
	sw	t0, 0(t1)
	lw	t1, fuckLLVM_count
	li	t3, -4156
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -4156
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	getcount
	mv	t1, a0
	li	t3, -4160
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t0, -1028
	li	t3, -4164
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -4164
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, s0, t1
	li	t3, -4164
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -4160
	add	t3, s0, t3
	lw	t0, 0(t3)
	li	t3, -4164
	add	t3, s0, t3
	lw	t1, 0(t3)
	sw	t0, 0(t1)
	lw	t1, fuckLLVM_count
	li	t3, -4168
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -4168
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	getcount
	mv	t1, a0
	li	t3, -4172
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t0, -1032
	li	t3, -4176
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -4176
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, s0, t1
	li	t3, -4176
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -4172
	add	t3, s0, t3
	lw	t0, 0(t3)
	li	t3, -4176
	add	t3, s0, t3
	lw	t1, 0(t3)
	sw	t0, 0(t1)
	lw	t1, fuckLLVM_count
	li	t3, -4180
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -4180
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	getcount
	mv	t1, a0
	li	t3, -4184
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t0, -1036
	li	t3, -4188
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -4188
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, s0, t1
	li	t3, -4188
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -4184
	add	t3, s0, t3
	lw	t0, 0(t3)
	li	t3, -4188
	add	t3, s0, t3
	lw	t1, 0(t3)
	sw	t0, 0(t1)
	li	t0, -16
	li	t3, -4192
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -4192
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, s0, t1
	li	t3, -4192
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -4192
	add	t3, s0, t3
	lw	t0, 0(t3)
	lw	t1, 0(t0)
	li	t3, -4196
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -4196
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	toString
	mv	t1, a0
	li	t3, -4200
	add	t3, s0, t3
	sw	t1, 0(t3)
	la	t0, fuckLLVM_.str.0
	li	t3, -4204
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -4200
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	li	t3, -4204
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a1, t0
	call	string_add
	mv	t1, a0
	li	t3, -4208
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -4208
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	print
	li	t0, -20
	li	t3, -4212
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -4212
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, s0, t1
	li	t3, -4212
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -4212
	add	t3, s0, t3
	lw	t0, 0(t3)
	lw	t1, 0(t0)
	li	t3, -4216
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -4216
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	toString
	mv	t1, a0
	li	t3, -4220
	add	t3, s0, t3
	sw	t1, 0(t3)
	la	t0, fuckLLVM_.str.1
	li	t3, -4224
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -4220
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	li	t3, -4224
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a1, t0
	call	string_add
	mv	t1, a0
	li	t3, -4228
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -4228
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	print
	li	t0, -24
	li	t3, -4232
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -4232
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, s0, t1
	li	t3, -4232
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -4232
	add	t3, s0, t3
	lw	t0, 0(t3)
	lw	t1, 0(t0)
	li	t3, -4236
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -4236
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	toString
	mv	t1, a0
	li	t3, -4240
	add	t3, s0, t3
	sw	t1, 0(t3)
	la	t0, fuckLLVM_.str.2
	li	t3, -4244
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -4240
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	li	t3, -4244
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a1, t0
	call	string_add
	mv	t1, a0
	li	t3, -4248
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -4248
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	print
	li	t0, -28
	li	t3, -4252
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -4252
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, s0, t1
	li	t3, -4252
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -4252
	add	t3, s0, t3
	lw	t0, 0(t3)
	lw	t1, 0(t0)
	li	t3, -4256
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -4256
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	toString
	mv	t1, a0
	li	t3, -4260
	add	t3, s0, t3
	sw	t1, 0(t3)
	la	t0, fuckLLVM_.str.3
	li	t3, -4264
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -4260
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	li	t3, -4264
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a1, t0
	call	string_add
	mv	t1, a0
	li	t3, -4268
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -4268
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	print
	li	t0, -32
	li	t3, -4272
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -4272
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, s0, t1
	li	t3, -4272
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -4272
	add	t3, s0, t3
	lw	t0, 0(t3)
	lw	t1, 0(t0)
	li	t3, -4276
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -4276
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	toString
	mv	t1, a0
	li	t3, -4280
	add	t3, s0, t3
	sw	t1, 0(t3)
	la	t0, fuckLLVM_.str.4
	li	t3, -4284
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -4280
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	li	t3, -4284
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a1, t0
	call	string_add
	mv	t1, a0
	li	t3, -4288
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -4288
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	print
	li	t0, -36
	li	t3, -4292
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -4292
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, s0, t1
	li	t3, -4292
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -4292
	add	t3, s0, t3
	lw	t0, 0(t3)
	lw	t1, 0(t0)
	li	t3, -4296
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -4296
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	toString
	mv	t1, a0
	li	t3, -4300
	add	t3, s0, t3
	sw	t1, 0(t3)
	la	t0, fuckLLVM_.str.5
	li	t3, -4304
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -4300
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	li	t3, -4304
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a1, t0
	call	string_add
	mv	t1, a0
	li	t3, -4308
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -4308
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	print
	li	t0, -40
	li	t3, -4312
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -4312
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, s0, t1
	li	t3, -4312
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -4312
	add	t3, s0, t3
	lw	t0, 0(t3)
	lw	t1, 0(t0)
	li	t3, -4316
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -4316
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	toString
	mv	t1, a0
	li	t3, -4320
	add	t3, s0, t3
	sw	t1, 0(t3)
	la	t0, fuckLLVM_.str.6
	li	t3, -4324
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -4320
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	li	t3, -4324
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a1, t0
	call	string_add
	mv	t1, a0
	li	t3, -4328
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -4328
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	print
	li	t0, -44
	li	t3, -4332
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -4332
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, s0, t1
	li	t3, -4332
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -4332
	add	t3, s0, t3
	lw	t0, 0(t3)
	lw	t1, 0(t0)
	li	t3, -4336
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -4336
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	toString
	mv	t1, a0
	li	t3, -4340
	add	t3, s0, t3
	sw	t1, 0(t3)
	la	t0, fuckLLVM_.str.7
	li	t3, -4344
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -4340
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	li	t3, -4344
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a1, t0
	call	string_add
	mv	t1, a0
	li	t3, -4348
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -4348
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	print
	li	t0, -48
	li	t3, -4352
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -4352
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, s0, t1
	li	t3, -4352
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -4352
	add	t3, s0, t3
	lw	t0, 0(t3)
	lw	t1, 0(t0)
	li	t3, -4356
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -4356
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	toString
	mv	t1, a0
	li	t3, -4360
	add	t3, s0, t3
	sw	t1, 0(t3)
	la	t0, fuckLLVM_.str.8
	li	t3, -4364
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -4360
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	li	t3, -4364
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a1, t0
	call	string_add
	mv	t1, a0
	li	t3, -4368
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -4368
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	print
	li	t0, -52
	li	t3, -4372
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -4372
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, s0, t1
	li	t3, -4372
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -4372
	add	t3, s0, t3
	lw	t0, 0(t3)
	lw	t1, 0(t0)
	li	t3, -4376
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -4376
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	toString
	mv	t1, a0
	li	t3, -4380
	add	t3, s0, t3
	sw	t1, 0(t3)
	la	t0, fuckLLVM_.str.9
	li	t3, -4384
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -4380
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	li	t3, -4384
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a1, t0
	call	string_add
	mv	t1, a0
	li	t3, -4388
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -4388
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	print
	li	t0, -56
	li	t3, -4392
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -4392
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, s0, t1
	li	t3, -4392
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -4392
	add	t3, s0, t3
	lw	t0, 0(t3)
	lw	t1, 0(t0)
	li	t3, -4396
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -4396
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	toString
	mv	t1, a0
	li	t3, -4400
	add	t3, s0, t3
	sw	t1, 0(t3)
	la	t0, fuckLLVM_.str.10
	li	t3, -4404
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -4400
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	li	t3, -4404
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a1, t0
	call	string_add
	mv	t1, a0
	li	t3, -4408
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -4408
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	print
	li	t0, -60
	li	t3, -4412
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -4412
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, s0, t1
	li	t3, -4412
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -4412
	add	t3, s0, t3
	lw	t0, 0(t3)
	lw	t1, 0(t0)
	li	t3, -4416
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -4416
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	toString
	mv	t1, a0
	li	t3, -4420
	add	t3, s0, t3
	sw	t1, 0(t3)
	la	t0, fuckLLVM_.str.11
	li	t3, -4424
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -4420
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	li	t3, -4424
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a1, t0
	call	string_add
	mv	t1, a0
	li	t3, -4428
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -4428
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	print
	li	t0, -64
	li	t3, -4432
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -4432
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, s0, t1
	li	t3, -4432
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -4432
	add	t3, s0, t3
	lw	t0, 0(t3)
	lw	t1, 0(t0)
	li	t3, -4436
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -4436
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	toString
	mv	t1, a0
	li	t3, -4440
	add	t3, s0, t3
	sw	t1, 0(t3)
	la	t0, fuckLLVM_.str.12
	li	t3, -4444
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -4440
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	li	t3, -4444
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a1, t0
	call	string_add
	mv	t1, a0
	li	t3, -4448
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -4448
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	print
	li	t0, -68
	li	t3, -4452
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -4452
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, s0, t1
	li	t3, -4452
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -4452
	add	t3, s0, t3
	lw	t0, 0(t3)
	lw	t1, 0(t0)
	li	t3, -4456
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -4456
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	toString
	mv	t1, a0
	li	t3, -4460
	add	t3, s0, t3
	sw	t1, 0(t3)
	la	t0, fuckLLVM_.str.13
	li	t3, -4464
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -4460
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	li	t3, -4464
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a1, t0
	call	string_add
	mv	t1, a0
	li	t3, -4468
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -4468
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	print
	li	t0, -72
	li	t3, -4472
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -4472
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, s0, t1
	li	t3, -4472
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -4472
	add	t3, s0, t3
	lw	t0, 0(t3)
	lw	t1, 0(t0)
	li	t3, -4476
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -4476
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	toString
	mv	t1, a0
	li	t3, -4480
	add	t3, s0, t3
	sw	t1, 0(t3)
	la	t0, fuckLLVM_.str.14
	li	t3, -4484
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -4480
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	li	t3, -4484
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a1, t0
	call	string_add
	mv	t1, a0
	li	t3, -4488
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -4488
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	print
	li	t0, -76
	li	t3, -4492
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -4492
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, s0, t1
	li	t3, -4492
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -4492
	add	t3, s0, t3
	lw	t0, 0(t3)
	lw	t1, 0(t0)
	li	t3, -4496
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -4496
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	toString
	mv	t1, a0
	li	t3, -4500
	add	t3, s0, t3
	sw	t1, 0(t3)
	la	t0, fuckLLVM_.str.15
	li	t3, -4504
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -4500
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	li	t3, -4504
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a1, t0
	call	string_add
	mv	t1, a0
	li	t3, -4508
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -4508
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	print
	li	t0, -80
	li	t3, -4512
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -4512
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, s0, t1
	li	t3, -4512
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -4512
	add	t3, s0, t3
	lw	t0, 0(t3)
	lw	t1, 0(t0)
	li	t3, -4516
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -4516
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	toString
	mv	t1, a0
	li	t3, -4520
	add	t3, s0, t3
	sw	t1, 0(t3)
	la	t0, fuckLLVM_.str.16
	li	t3, -4524
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -4520
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	li	t3, -4524
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a1, t0
	call	string_add
	mv	t1, a0
	li	t3, -4528
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -4528
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	print
	li	t0, -84
	li	t3, -4532
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -4532
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, s0, t1
	li	t3, -4532
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -4532
	add	t3, s0, t3
	lw	t0, 0(t3)
	lw	t1, 0(t0)
	li	t3, -4536
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -4536
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	toString
	mv	t1, a0
	li	t3, -4540
	add	t3, s0, t3
	sw	t1, 0(t3)
	la	t0, fuckLLVM_.str.17
	li	t3, -4544
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -4540
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	li	t3, -4544
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a1, t0
	call	string_add
	mv	t1, a0
	li	t3, -4548
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -4548
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	print
	li	t0, -88
	li	t3, -4552
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -4552
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, s0, t1
	li	t3, -4552
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -4552
	add	t3, s0, t3
	lw	t0, 0(t3)
	lw	t1, 0(t0)
	li	t3, -4556
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -4556
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	toString
	mv	t1, a0
	li	t3, -4560
	add	t3, s0, t3
	sw	t1, 0(t3)
	la	t0, fuckLLVM_.str.18
	li	t3, -4564
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -4560
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	li	t3, -4564
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a1, t0
	call	string_add
	mv	t1, a0
	li	t3, -4568
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -4568
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	print
	li	t0, -92
	li	t3, -4572
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -4572
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, s0, t1
	li	t3, -4572
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -4572
	add	t3, s0, t3
	lw	t0, 0(t3)
	lw	t1, 0(t0)
	li	t3, -4576
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -4576
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	toString
	mv	t1, a0
	li	t3, -4580
	add	t3, s0, t3
	sw	t1, 0(t3)
	la	t0, fuckLLVM_.str.19
	li	t3, -4584
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -4580
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	li	t3, -4584
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a1, t0
	call	string_add
	mv	t1, a0
	li	t3, -4588
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -4588
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	print
	li	t0, -96
	li	t3, -4592
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -4592
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, s0, t1
	li	t3, -4592
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -4592
	add	t3, s0, t3
	lw	t0, 0(t3)
	lw	t1, 0(t0)
	li	t3, -4596
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -4596
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	toString
	mv	t1, a0
	li	t3, -4600
	add	t3, s0, t3
	sw	t1, 0(t3)
	la	t0, fuckLLVM_.str.20
	li	t3, -4604
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -4600
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	li	t3, -4604
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a1, t0
	call	string_add
	mv	t1, a0
	li	t3, -4608
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -4608
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	print
	li	t0, -100
	li	t3, -4612
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -4612
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, s0, t1
	li	t3, -4612
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -4612
	add	t3, s0, t3
	lw	t0, 0(t3)
	lw	t1, 0(t0)
	li	t3, -4616
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -4616
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	toString
	mv	t1, a0
	li	t3, -4620
	add	t3, s0, t3
	sw	t1, 0(t3)
	la	t0, fuckLLVM_.str.21
	li	t3, -4624
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -4620
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	li	t3, -4624
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a1, t0
	call	string_add
	mv	t1, a0
	li	t3, -4628
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -4628
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	print
	li	t0, -104
	li	t3, -4632
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -4632
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, s0, t1
	li	t3, -4632
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -4632
	add	t3, s0, t3
	lw	t0, 0(t3)
	lw	t1, 0(t0)
	li	t3, -4636
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -4636
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	toString
	mv	t1, a0
	li	t3, -4640
	add	t3, s0, t3
	sw	t1, 0(t3)
	la	t0, fuckLLVM_.str.22
	li	t3, -4644
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -4640
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	li	t3, -4644
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a1, t0
	call	string_add
	mv	t1, a0
	li	t3, -4648
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -4648
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	print
	li	t0, -108
	li	t3, -4652
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -4652
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, s0, t1
	li	t3, -4652
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -4652
	add	t3, s0, t3
	lw	t0, 0(t3)
	lw	t1, 0(t0)
	li	t3, -4656
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -4656
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	toString
	mv	t1, a0
	li	t3, -4660
	add	t3, s0, t3
	sw	t1, 0(t3)
	la	t0, fuckLLVM_.str.23
	li	t3, -4664
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -4660
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	li	t3, -4664
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a1, t0
	call	string_add
	mv	t1, a0
	li	t3, -4668
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -4668
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	print
	li	t0, -112
	li	t3, -4672
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -4672
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, s0, t1
	li	t3, -4672
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -4672
	add	t3, s0, t3
	lw	t0, 0(t3)
	lw	t1, 0(t0)
	li	t3, -4676
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -4676
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	toString
	mv	t1, a0
	li	t3, -4680
	add	t3, s0, t3
	sw	t1, 0(t3)
	la	t0, fuckLLVM_.str.24
	li	t3, -4684
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -4680
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	li	t3, -4684
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a1, t0
	call	string_add
	mv	t1, a0
	li	t3, -4688
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -4688
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	print
	li	t0, -116
	li	t3, -4692
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -4692
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, s0, t1
	li	t3, -4692
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -4692
	add	t3, s0, t3
	lw	t0, 0(t3)
	lw	t1, 0(t0)
	li	t3, -4696
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -4696
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	toString
	mv	t1, a0
	li	t3, -4700
	add	t3, s0, t3
	sw	t1, 0(t3)
	la	t0, fuckLLVM_.str.25
	li	t3, -4704
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -4700
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	li	t3, -4704
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a1, t0
	call	string_add
	mv	t1, a0
	li	t3, -4708
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -4708
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	print
	li	t0, -120
	li	t3, -4712
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -4712
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, s0, t1
	li	t3, -4712
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -4712
	add	t3, s0, t3
	lw	t0, 0(t3)
	lw	t1, 0(t0)
	li	t3, -4716
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -4716
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	toString
	mv	t1, a0
	li	t3, -4720
	add	t3, s0, t3
	sw	t1, 0(t3)
	la	t0, fuckLLVM_.str.26
	li	t3, -4724
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -4720
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	li	t3, -4724
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a1, t0
	call	string_add
	mv	t1, a0
	li	t3, -4728
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -4728
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	print
	li	t0, -124
	li	t3, -4732
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -4732
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, s0, t1
	li	t3, -4732
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -4732
	add	t3, s0, t3
	lw	t0, 0(t3)
	lw	t1, 0(t0)
	li	t3, -4736
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -4736
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	toString
	mv	t1, a0
	li	t3, -4740
	add	t3, s0, t3
	sw	t1, 0(t3)
	la	t0, fuckLLVM_.str.27
	li	t3, -4744
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -4740
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	li	t3, -4744
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a1, t0
	call	string_add
	mv	t1, a0
	li	t3, -4748
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -4748
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	print
	li	t0, -128
	li	t3, -4752
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -4752
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, s0, t1
	li	t3, -4752
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -4752
	add	t3, s0, t3
	lw	t0, 0(t3)
	lw	t1, 0(t0)
	li	t3, -4756
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -4756
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	toString
	mv	t1, a0
	li	t3, -4760
	add	t3, s0, t3
	sw	t1, 0(t3)
	la	t0, fuckLLVM_.str.28
	li	t3, -4764
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -4760
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	li	t3, -4764
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a1, t0
	call	string_add
	mv	t1, a0
	li	t3, -4768
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -4768
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	print
	li	t0, -132
	li	t3, -4772
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -4772
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, s0, t1
	li	t3, -4772
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -4772
	add	t3, s0, t3
	lw	t0, 0(t3)
	lw	t1, 0(t0)
	li	t3, -4776
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -4776
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	toString
	mv	t1, a0
	li	t3, -4780
	add	t3, s0, t3
	sw	t1, 0(t3)
	la	t0, fuckLLVM_.str.29
	li	t3, -4784
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -4780
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	li	t3, -4784
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a1, t0
	call	string_add
	mv	t1, a0
	li	t3, -4788
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -4788
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	print
	li	t0, -136
	li	t3, -4792
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -4792
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, s0, t1
	li	t3, -4792
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -4792
	add	t3, s0, t3
	lw	t0, 0(t3)
	lw	t1, 0(t0)
	li	t3, -4796
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -4796
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	toString
	mv	t1, a0
	li	t3, -4800
	add	t3, s0, t3
	sw	t1, 0(t3)
	la	t0, fuckLLVM_.str.30
	li	t3, -4804
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -4800
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	li	t3, -4804
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a1, t0
	call	string_add
	mv	t1, a0
	li	t3, -4808
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -4808
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	print
	li	t0, -140
	li	t3, -4812
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -4812
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, s0, t1
	li	t3, -4812
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -4812
	add	t3, s0, t3
	lw	t0, 0(t3)
	lw	t1, 0(t0)
	li	t3, -4816
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -4816
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	toString
	mv	t1, a0
	li	t3, -4820
	add	t3, s0, t3
	sw	t1, 0(t3)
	la	t0, fuckLLVM_.str.31
	li	t3, -4824
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -4820
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	li	t3, -4824
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a1, t0
	call	string_add
	mv	t1, a0
	li	t3, -4828
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -4828
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	print
	li	t0, -144
	li	t3, -4832
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -4832
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, s0, t1
	li	t3, -4832
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -4832
	add	t3, s0, t3
	lw	t0, 0(t3)
	lw	t1, 0(t0)
	li	t3, -4836
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -4836
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	toString
	mv	t1, a0
	li	t3, -4840
	add	t3, s0, t3
	sw	t1, 0(t3)
	la	t0, fuckLLVM_.str.32
	li	t3, -4844
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -4840
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	li	t3, -4844
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a1, t0
	call	string_add
	mv	t1, a0
	li	t3, -4848
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -4848
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	print
	li	t0, -148
	li	t3, -4852
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -4852
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, s0, t1
	li	t3, -4852
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -4852
	add	t3, s0, t3
	lw	t0, 0(t3)
	lw	t1, 0(t0)
	li	t3, -4856
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -4856
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	toString
	mv	t1, a0
	li	t3, -4860
	add	t3, s0, t3
	sw	t1, 0(t3)
	la	t0, fuckLLVM_.str.33
	li	t3, -4864
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -4860
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	li	t3, -4864
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a1, t0
	call	string_add
	mv	t1, a0
	li	t3, -4868
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -4868
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	print
	li	t0, -152
	li	t3, -4872
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -4872
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, s0, t1
	li	t3, -4872
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -4872
	add	t3, s0, t3
	lw	t0, 0(t3)
	lw	t1, 0(t0)
	li	t3, -4876
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -4876
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	toString
	mv	t1, a0
	li	t3, -4880
	add	t3, s0, t3
	sw	t1, 0(t3)
	la	t0, fuckLLVM_.str.34
	li	t3, -4884
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -4880
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	li	t3, -4884
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a1, t0
	call	string_add
	mv	t1, a0
	li	t3, -4888
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -4888
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	print
	li	t0, -156
	li	t3, -4892
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -4892
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, s0, t1
	li	t3, -4892
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -4892
	add	t3, s0, t3
	lw	t0, 0(t3)
	lw	t1, 0(t0)
	li	t3, -4896
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -4896
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	toString
	mv	t1, a0
	li	t3, -4900
	add	t3, s0, t3
	sw	t1, 0(t3)
	la	t0, fuckLLVM_.str.35
	li	t3, -4904
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -4900
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	li	t3, -4904
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a1, t0
	call	string_add
	mv	t1, a0
	li	t3, -4908
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -4908
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	print
	li	t0, -160
	li	t3, -4912
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -4912
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, s0, t1
	li	t3, -4912
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -4912
	add	t3, s0, t3
	lw	t0, 0(t3)
	lw	t1, 0(t0)
	li	t3, -4916
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -4916
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	toString
	mv	t1, a0
	li	t3, -4920
	add	t3, s0, t3
	sw	t1, 0(t3)
	la	t0, fuckLLVM_.str.36
	li	t3, -4924
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -4920
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	li	t3, -4924
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a1, t0
	call	string_add
	mv	t1, a0
	li	t3, -4928
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -4928
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	print
	li	t0, -164
	li	t3, -4932
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -4932
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, s0, t1
	li	t3, -4932
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -4932
	add	t3, s0, t3
	lw	t0, 0(t3)
	lw	t1, 0(t0)
	li	t3, -4936
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -4936
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	toString
	mv	t1, a0
	li	t3, -4940
	add	t3, s0, t3
	sw	t1, 0(t3)
	la	t0, fuckLLVM_.str.37
	li	t3, -4944
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -4940
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	li	t3, -4944
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a1, t0
	call	string_add
	mv	t1, a0
	li	t3, -4948
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -4948
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	print
	li	t0, -168
	li	t3, -4952
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -4952
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, s0, t1
	li	t3, -4952
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -4952
	add	t3, s0, t3
	lw	t0, 0(t3)
	lw	t1, 0(t0)
	li	t3, -4956
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -4956
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	toString
	mv	t1, a0
	li	t3, -4960
	add	t3, s0, t3
	sw	t1, 0(t3)
	la	t0, fuckLLVM_.str.38
	li	t3, -4964
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -4960
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	li	t3, -4964
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a1, t0
	call	string_add
	mv	t1, a0
	li	t3, -4968
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -4968
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	print
	li	t0, -172
	li	t3, -4972
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -4972
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, s0, t1
	li	t3, -4972
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -4972
	add	t3, s0, t3
	lw	t0, 0(t3)
	lw	t1, 0(t0)
	li	t3, -4976
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -4976
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	toString
	mv	t1, a0
	li	t3, -4980
	add	t3, s0, t3
	sw	t1, 0(t3)
	la	t0, fuckLLVM_.str.39
	li	t3, -4984
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -4980
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	li	t3, -4984
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a1, t0
	call	string_add
	mv	t1, a0
	li	t3, -4988
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -4988
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	print
	li	t0, -176
	li	t3, -4992
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -4992
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, s0, t1
	li	t3, -4992
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -4992
	add	t3, s0, t3
	lw	t0, 0(t3)
	lw	t1, 0(t0)
	li	t3, -4996
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -4996
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	toString
	mv	t1, a0
	li	t3, -5000
	add	t3, s0, t3
	sw	t1, 0(t3)
	la	t0, fuckLLVM_.str.40
	li	t3, -5004
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -5000
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	li	t3, -5004
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a1, t0
	call	string_add
	mv	t1, a0
	li	t3, -5008
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -5008
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	print
	li	t0, -180
	li	t3, -5012
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -5012
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, s0, t1
	li	t3, -5012
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -5012
	add	t3, s0, t3
	lw	t0, 0(t3)
	lw	t1, 0(t0)
	li	t3, -5016
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -5016
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	toString
	mv	t1, a0
	li	t3, -5020
	add	t3, s0, t3
	sw	t1, 0(t3)
	la	t0, fuckLLVM_.str.41
	li	t3, -5024
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -5020
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	li	t3, -5024
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a1, t0
	call	string_add
	mv	t1, a0
	li	t3, -5028
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -5028
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	print
	li	t0, -184
	li	t3, -5032
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -5032
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, s0, t1
	li	t3, -5032
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -5032
	add	t3, s0, t3
	lw	t0, 0(t3)
	lw	t1, 0(t0)
	li	t3, -5036
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -5036
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	toString
	mv	t1, a0
	li	t3, -5040
	add	t3, s0, t3
	sw	t1, 0(t3)
	la	t0, fuckLLVM_.str.42
	li	t3, -5044
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -5040
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	li	t3, -5044
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a1, t0
	call	string_add
	mv	t1, a0
	li	t3, -5048
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -5048
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	print
	li	t0, -188
	li	t3, -5052
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -5052
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, s0, t1
	li	t3, -5052
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -5052
	add	t3, s0, t3
	lw	t0, 0(t3)
	lw	t1, 0(t0)
	li	t3, -5056
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -5056
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	toString
	mv	t1, a0
	li	t3, -5060
	add	t3, s0, t3
	sw	t1, 0(t3)
	la	t0, fuckLLVM_.str.43
	li	t3, -5064
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -5060
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	li	t3, -5064
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a1, t0
	call	string_add
	mv	t1, a0
	li	t3, -5068
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -5068
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	print
	li	t0, -192
	li	t3, -5072
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -5072
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, s0, t1
	li	t3, -5072
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -5072
	add	t3, s0, t3
	lw	t0, 0(t3)
	lw	t1, 0(t0)
	li	t3, -5076
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -5076
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	toString
	mv	t1, a0
	li	t3, -5080
	add	t3, s0, t3
	sw	t1, 0(t3)
	la	t0, fuckLLVM_.str.44
	li	t3, -5084
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -5080
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	li	t3, -5084
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a1, t0
	call	string_add
	mv	t1, a0
	li	t3, -5088
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -5088
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	print
	li	t0, -196
	li	t3, -5092
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -5092
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, s0, t1
	li	t3, -5092
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -5092
	add	t3, s0, t3
	lw	t0, 0(t3)
	lw	t1, 0(t0)
	li	t3, -5096
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -5096
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	toString
	mv	t1, a0
	li	t3, -5100
	add	t3, s0, t3
	sw	t1, 0(t3)
	la	t0, fuckLLVM_.str.45
	li	t3, -5104
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -5100
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	li	t3, -5104
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a1, t0
	call	string_add
	mv	t1, a0
	li	t3, -5108
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -5108
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	print
	li	t0, -200
	li	t3, -5112
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -5112
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, s0, t1
	li	t3, -5112
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -5112
	add	t3, s0, t3
	lw	t0, 0(t3)
	lw	t1, 0(t0)
	li	t3, -5116
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -5116
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	toString
	mv	t1, a0
	li	t3, -5120
	add	t3, s0, t3
	sw	t1, 0(t3)
	la	t0, fuckLLVM_.str.46
	li	t3, -5124
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -5120
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	li	t3, -5124
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a1, t0
	call	string_add
	mv	t1, a0
	li	t3, -5128
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -5128
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	print
	li	t0, -204
	li	t3, -5132
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -5132
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, s0, t1
	li	t3, -5132
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -5132
	add	t3, s0, t3
	lw	t0, 0(t3)
	lw	t1, 0(t0)
	li	t3, -5136
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -5136
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	toString
	mv	t1, a0
	li	t3, -5140
	add	t3, s0, t3
	sw	t1, 0(t3)
	la	t0, fuckLLVM_.str.47
	li	t3, -5144
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -5140
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	li	t3, -5144
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a1, t0
	call	string_add
	mv	t1, a0
	li	t3, -5148
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -5148
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	print
	li	t0, -208
	li	t3, -5152
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -5152
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, s0, t1
	li	t3, -5152
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -5152
	add	t3, s0, t3
	lw	t0, 0(t3)
	lw	t1, 0(t0)
	li	t3, -5156
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -5156
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	toString
	mv	t1, a0
	li	t3, -5160
	add	t3, s0, t3
	sw	t1, 0(t3)
	la	t0, fuckLLVM_.str.48
	li	t3, -5164
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -5160
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	li	t3, -5164
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a1, t0
	call	string_add
	mv	t1, a0
	li	t3, -5168
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -5168
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	print
	li	t0, -212
	li	t3, -5172
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -5172
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, s0, t1
	li	t3, -5172
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -5172
	add	t3, s0, t3
	lw	t0, 0(t3)
	lw	t1, 0(t0)
	li	t3, -5176
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -5176
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	toString
	mv	t1, a0
	li	t3, -5180
	add	t3, s0, t3
	sw	t1, 0(t3)
	la	t0, fuckLLVM_.str.49
	li	t3, -5184
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -5180
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	li	t3, -5184
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a1, t0
	call	string_add
	mv	t1, a0
	li	t3, -5188
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -5188
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	print
	li	t0, -216
	li	t3, -5192
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -5192
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, s0, t1
	li	t3, -5192
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -5192
	add	t3, s0, t3
	lw	t0, 0(t3)
	lw	t1, 0(t0)
	li	t3, -5196
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -5196
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	toString
	mv	t1, a0
	li	t3, -5200
	add	t3, s0, t3
	sw	t1, 0(t3)
	la	t0, fuckLLVM_.str.50
	li	t3, -5204
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -5200
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	li	t3, -5204
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a1, t0
	call	string_add
	mv	t1, a0
	li	t3, -5208
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -5208
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	print
	li	t0, -220
	li	t3, -5212
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -5212
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, s0, t1
	li	t3, -5212
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -5212
	add	t3, s0, t3
	lw	t0, 0(t3)
	lw	t1, 0(t0)
	li	t3, -5216
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -5216
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	toString
	mv	t1, a0
	li	t3, -5220
	add	t3, s0, t3
	sw	t1, 0(t3)
	la	t0, fuckLLVM_.str.51
	li	t3, -5224
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -5220
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	li	t3, -5224
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a1, t0
	call	string_add
	mv	t1, a0
	li	t3, -5228
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -5228
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	print
	li	t0, -224
	li	t3, -5232
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -5232
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, s0, t1
	li	t3, -5232
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -5232
	add	t3, s0, t3
	lw	t0, 0(t3)
	lw	t1, 0(t0)
	li	t3, -5236
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -5236
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	toString
	mv	t1, a0
	li	t3, -5240
	add	t3, s0, t3
	sw	t1, 0(t3)
	la	t0, fuckLLVM_.str.52
	li	t3, -5244
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -5240
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	li	t3, -5244
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a1, t0
	call	string_add
	mv	t1, a0
	li	t3, -5248
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -5248
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	print
	li	t0, -228
	li	t3, -5252
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -5252
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, s0, t1
	li	t3, -5252
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -5252
	add	t3, s0, t3
	lw	t0, 0(t3)
	lw	t1, 0(t0)
	li	t3, -5256
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -5256
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	toString
	mv	t1, a0
	li	t3, -5260
	add	t3, s0, t3
	sw	t1, 0(t3)
	la	t0, fuckLLVM_.str.53
	li	t3, -5264
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -5260
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	li	t3, -5264
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a1, t0
	call	string_add
	mv	t1, a0
	li	t3, -5268
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -5268
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	print
	li	t0, -232
	li	t3, -5272
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -5272
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, s0, t1
	li	t3, -5272
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -5272
	add	t3, s0, t3
	lw	t0, 0(t3)
	lw	t1, 0(t0)
	li	t3, -5276
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -5276
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	toString
	mv	t1, a0
	li	t3, -5280
	add	t3, s0, t3
	sw	t1, 0(t3)
	la	t0, fuckLLVM_.str.54
	li	t3, -5284
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -5280
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	li	t3, -5284
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a1, t0
	call	string_add
	mv	t1, a0
	li	t3, -5288
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -5288
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	print
	li	t0, -236
	li	t3, -5292
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -5292
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, s0, t1
	li	t3, -5292
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -5292
	add	t3, s0, t3
	lw	t0, 0(t3)
	lw	t1, 0(t0)
	li	t3, -5296
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -5296
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	toString
	mv	t1, a0
	li	t3, -5300
	add	t3, s0, t3
	sw	t1, 0(t3)
	la	t0, fuckLLVM_.str.55
	li	t3, -5304
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -5300
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	li	t3, -5304
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a1, t0
	call	string_add
	mv	t1, a0
	li	t3, -5308
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -5308
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	print
	li	t0, -240
	li	t3, -5312
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -5312
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, s0, t1
	li	t3, -5312
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -5312
	add	t3, s0, t3
	lw	t0, 0(t3)
	lw	t1, 0(t0)
	li	t3, -5316
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -5316
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	toString
	mv	t1, a0
	li	t3, -5320
	add	t3, s0, t3
	sw	t1, 0(t3)
	la	t0, fuckLLVM_.str.56
	li	t3, -5324
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -5320
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	li	t3, -5324
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a1, t0
	call	string_add
	mv	t1, a0
	li	t3, -5328
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -5328
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	print
	li	t0, -244
	li	t3, -5332
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -5332
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, s0, t1
	li	t3, -5332
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -5332
	add	t3, s0, t3
	lw	t0, 0(t3)
	lw	t1, 0(t0)
	li	t3, -5336
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -5336
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	toString
	mv	t1, a0
	li	t3, -5340
	add	t3, s0, t3
	sw	t1, 0(t3)
	la	t0, fuckLLVM_.str.57
	li	t3, -5344
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -5340
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	li	t3, -5344
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a1, t0
	call	string_add
	mv	t1, a0
	li	t3, -5348
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -5348
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	print
	li	t0, -248
	li	t3, -5352
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -5352
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, s0, t1
	li	t3, -5352
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -5352
	add	t3, s0, t3
	lw	t0, 0(t3)
	lw	t1, 0(t0)
	li	t3, -5356
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -5356
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	toString
	mv	t1, a0
	li	t3, -5360
	add	t3, s0, t3
	sw	t1, 0(t3)
	la	t0, fuckLLVM_.str.58
	li	t3, -5364
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -5360
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	li	t3, -5364
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a1, t0
	call	string_add
	mv	t1, a0
	li	t3, -5368
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -5368
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	print
	li	t0, -252
	li	t3, -5372
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -5372
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, s0, t1
	li	t3, -5372
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -5372
	add	t3, s0, t3
	lw	t0, 0(t3)
	lw	t1, 0(t0)
	li	t3, -5376
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -5376
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	toString
	mv	t1, a0
	li	t3, -5380
	add	t3, s0, t3
	sw	t1, 0(t3)
	la	t0, fuckLLVM_.str.59
	li	t3, -5384
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -5380
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	li	t3, -5384
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a1, t0
	call	string_add
	mv	t1, a0
	li	t3, -5388
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -5388
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	print
	li	t0, -256
	li	t3, -5392
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -5392
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, s0, t1
	li	t3, -5392
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -5392
	add	t3, s0, t3
	lw	t0, 0(t3)
	lw	t1, 0(t0)
	li	t3, -5396
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -5396
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	toString
	mv	t1, a0
	li	t3, -5400
	add	t3, s0, t3
	sw	t1, 0(t3)
	la	t0, fuckLLVM_.str.60
	li	t3, -5404
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -5400
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	li	t3, -5404
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a1, t0
	call	string_add
	mv	t1, a0
	li	t3, -5408
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -5408
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	print
	li	t0, -260
	li	t3, -5412
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -5412
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, s0, t1
	li	t3, -5412
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -5412
	add	t3, s0, t3
	lw	t0, 0(t3)
	lw	t1, 0(t0)
	li	t3, -5416
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -5416
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	toString
	mv	t1, a0
	li	t3, -5420
	add	t3, s0, t3
	sw	t1, 0(t3)
	la	t0, fuckLLVM_.str.61
	li	t3, -5424
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -5420
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	li	t3, -5424
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a1, t0
	call	string_add
	mv	t1, a0
	li	t3, -5428
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -5428
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	print
	li	t0, -264
	li	t3, -5432
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -5432
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, s0, t1
	li	t3, -5432
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -5432
	add	t3, s0, t3
	lw	t0, 0(t3)
	lw	t1, 0(t0)
	li	t3, -5436
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -5436
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	toString
	mv	t1, a0
	li	t3, -5440
	add	t3, s0, t3
	sw	t1, 0(t3)
	la	t0, fuckLLVM_.str.62
	li	t3, -5444
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -5440
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	li	t3, -5444
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a1, t0
	call	string_add
	mv	t1, a0
	li	t3, -5448
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -5448
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	print
	li	t0, -268
	li	t3, -5452
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -5452
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, s0, t1
	li	t3, -5452
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -5452
	add	t3, s0, t3
	lw	t0, 0(t3)
	lw	t1, 0(t0)
	li	t3, -5456
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -5456
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	toString
	mv	t1, a0
	li	t3, -5460
	add	t3, s0, t3
	sw	t1, 0(t3)
	la	t0, fuckLLVM_.str.63
	li	t3, -5464
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -5460
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	li	t3, -5464
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a1, t0
	call	string_add
	mv	t1, a0
	li	t3, -5468
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -5468
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	print
	li	t0, -272
	li	t3, -5472
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -5472
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, s0, t1
	li	t3, -5472
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -5472
	add	t3, s0, t3
	lw	t0, 0(t3)
	lw	t1, 0(t0)
	li	t3, -5476
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -5476
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	toString
	mv	t1, a0
	li	t3, -5480
	add	t3, s0, t3
	sw	t1, 0(t3)
	la	t0, fuckLLVM_.str.64
	li	t3, -5484
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -5480
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	li	t3, -5484
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a1, t0
	call	string_add
	mv	t1, a0
	li	t3, -5488
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -5488
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	print
	li	t0, -276
	li	t3, -5492
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -5492
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, s0, t1
	li	t3, -5492
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -5492
	add	t3, s0, t3
	lw	t0, 0(t3)
	lw	t1, 0(t0)
	li	t3, -5496
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -5496
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	toString
	mv	t1, a0
	li	t3, -5500
	add	t3, s0, t3
	sw	t1, 0(t3)
	la	t0, fuckLLVM_.str.65
	li	t3, -5504
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -5500
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	li	t3, -5504
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a1, t0
	call	string_add
	mv	t1, a0
	li	t3, -5508
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -5508
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	print
	li	t0, -280
	li	t3, -5512
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -5512
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, s0, t1
	li	t3, -5512
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -5512
	add	t3, s0, t3
	lw	t0, 0(t3)
	lw	t1, 0(t0)
	li	t3, -5516
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -5516
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	toString
	mv	t1, a0
	li	t3, -5520
	add	t3, s0, t3
	sw	t1, 0(t3)
	la	t0, fuckLLVM_.str.66
	li	t3, -5524
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -5520
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	li	t3, -5524
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a1, t0
	call	string_add
	mv	t1, a0
	li	t3, -5528
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -5528
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	print
	li	t0, -284
	li	t3, -5532
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -5532
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, s0, t1
	li	t3, -5532
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -5532
	add	t3, s0, t3
	lw	t0, 0(t3)
	lw	t1, 0(t0)
	li	t3, -5536
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -5536
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	toString
	mv	t1, a0
	li	t3, -5540
	add	t3, s0, t3
	sw	t1, 0(t3)
	la	t0, fuckLLVM_.str.67
	li	t3, -5544
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -5540
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	li	t3, -5544
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a1, t0
	call	string_add
	mv	t1, a0
	li	t3, -5548
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -5548
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	print
	li	t0, -288
	li	t3, -5552
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -5552
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, s0, t1
	li	t3, -5552
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -5552
	add	t3, s0, t3
	lw	t0, 0(t3)
	lw	t1, 0(t0)
	li	t3, -5556
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -5556
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	toString
	mv	t1, a0
	li	t3, -5560
	add	t3, s0, t3
	sw	t1, 0(t3)
	la	t0, fuckLLVM_.str.68
	li	t3, -5564
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -5560
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	li	t3, -5564
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a1, t0
	call	string_add
	mv	t1, a0
	li	t3, -5568
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -5568
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	print
	li	t0, -292
	li	t3, -5572
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -5572
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, s0, t1
	li	t3, -5572
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -5572
	add	t3, s0, t3
	lw	t0, 0(t3)
	lw	t1, 0(t0)
	li	t3, -5576
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -5576
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	toString
	mv	t1, a0
	li	t3, -5580
	add	t3, s0, t3
	sw	t1, 0(t3)
	la	t0, fuckLLVM_.str.69
	li	t3, -5584
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -5580
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	li	t3, -5584
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a1, t0
	call	string_add
	mv	t1, a0
	li	t3, -5588
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -5588
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	print
	li	t0, -296
	li	t3, -5592
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -5592
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, s0, t1
	li	t3, -5592
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -5592
	add	t3, s0, t3
	lw	t0, 0(t3)
	lw	t1, 0(t0)
	li	t3, -5596
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -5596
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	toString
	mv	t1, a0
	li	t3, -5600
	add	t3, s0, t3
	sw	t1, 0(t3)
	la	t0, fuckLLVM_.str.70
	li	t3, -5604
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -5600
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	li	t3, -5604
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a1, t0
	call	string_add
	mv	t1, a0
	li	t3, -5608
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -5608
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	print
	li	t0, -300
	li	t3, -5612
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -5612
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, s0, t1
	li	t3, -5612
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -5612
	add	t3, s0, t3
	lw	t0, 0(t3)
	lw	t1, 0(t0)
	li	t3, -5616
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -5616
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	toString
	mv	t1, a0
	li	t3, -5620
	add	t3, s0, t3
	sw	t1, 0(t3)
	la	t0, fuckLLVM_.str.71
	li	t3, -5624
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -5620
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	li	t3, -5624
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a1, t0
	call	string_add
	mv	t1, a0
	li	t3, -5628
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -5628
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	print
	li	t0, -304
	li	t3, -5632
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -5632
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, s0, t1
	li	t3, -5632
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -5632
	add	t3, s0, t3
	lw	t0, 0(t3)
	lw	t1, 0(t0)
	li	t3, -5636
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -5636
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	toString
	mv	t1, a0
	li	t3, -5640
	add	t3, s0, t3
	sw	t1, 0(t3)
	la	t0, fuckLLVM_.str.72
	li	t3, -5644
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -5640
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	li	t3, -5644
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a1, t0
	call	string_add
	mv	t1, a0
	li	t3, -5648
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -5648
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	print
	li	t0, -308
	li	t3, -5652
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -5652
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, s0, t1
	li	t3, -5652
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -5652
	add	t3, s0, t3
	lw	t0, 0(t3)
	lw	t1, 0(t0)
	li	t3, -5656
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -5656
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	toString
	mv	t1, a0
	li	t3, -5660
	add	t3, s0, t3
	sw	t1, 0(t3)
	la	t0, fuckLLVM_.str.73
	li	t3, -5664
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -5660
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	li	t3, -5664
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a1, t0
	call	string_add
	mv	t1, a0
	li	t3, -5668
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -5668
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	print
	li	t0, -312
	li	t3, -5672
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -5672
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, s0, t1
	li	t3, -5672
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -5672
	add	t3, s0, t3
	lw	t0, 0(t3)
	lw	t1, 0(t0)
	li	t3, -5676
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -5676
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	toString
	mv	t1, a0
	li	t3, -5680
	add	t3, s0, t3
	sw	t1, 0(t3)
	la	t0, fuckLLVM_.str.74
	li	t3, -5684
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -5680
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	li	t3, -5684
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a1, t0
	call	string_add
	mv	t1, a0
	li	t3, -5688
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -5688
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	print
	li	t0, -316
	li	t3, -5692
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -5692
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, s0, t1
	li	t3, -5692
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -5692
	add	t3, s0, t3
	lw	t0, 0(t3)
	lw	t1, 0(t0)
	li	t3, -5696
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -5696
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	toString
	mv	t1, a0
	li	t3, -5700
	add	t3, s0, t3
	sw	t1, 0(t3)
	la	t0, fuckLLVM_.str.75
	li	t3, -5704
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -5700
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	li	t3, -5704
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a1, t0
	call	string_add
	mv	t1, a0
	li	t3, -5708
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -5708
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	print
	li	t0, -320
	li	t3, -5712
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -5712
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, s0, t1
	li	t3, -5712
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -5712
	add	t3, s0, t3
	lw	t0, 0(t3)
	lw	t1, 0(t0)
	li	t3, -5716
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -5716
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	toString
	mv	t1, a0
	li	t3, -5720
	add	t3, s0, t3
	sw	t1, 0(t3)
	la	t0, fuckLLVM_.str.76
	li	t3, -5724
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -5720
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	li	t3, -5724
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a1, t0
	call	string_add
	mv	t1, a0
	li	t3, -5728
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -5728
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	print
	li	t0, -324
	li	t3, -5732
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -5732
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, s0, t1
	li	t3, -5732
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -5732
	add	t3, s0, t3
	lw	t0, 0(t3)
	lw	t1, 0(t0)
	li	t3, -5736
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -5736
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	toString
	mv	t1, a0
	li	t3, -5740
	add	t3, s0, t3
	sw	t1, 0(t3)
	la	t0, fuckLLVM_.str.77
	li	t3, -5744
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -5740
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	li	t3, -5744
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a1, t0
	call	string_add
	mv	t1, a0
	li	t3, -5748
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -5748
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	print
	li	t0, -328
	li	t3, -5752
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -5752
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, s0, t1
	li	t3, -5752
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -5752
	add	t3, s0, t3
	lw	t0, 0(t3)
	lw	t1, 0(t0)
	li	t3, -5756
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -5756
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	toString
	mv	t1, a0
	li	t3, -5760
	add	t3, s0, t3
	sw	t1, 0(t3)
	la	t0, fuckLLVM_.str.78
	li	t3, -5764
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -5760
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	li	t3, -5764
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a1, t0
	call	string_add
	mv	t1, a0
	li	t3, -5768
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -5768
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	print
	li	t0, -332
	li	t3, -5772
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -5772
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, s0, t1
	li	t3, -5772
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -5772
	add	t3, s0, t3
	lw	t0, 0(t3)
	lw	t1, 0(t0)
	li	t3, -5776
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -5776
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	toString
	mv	t1, a0
	li	t3, -5780
	add	t3, s0, t3
	sw	t1, 0(t3)
	la	t0, fuckLLVM_.str.79
	li	t3, -5784
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -5780
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	li	t3, -5784
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a1, t0
	call	string_add
	mv	t1, a0
	li	t3, -5788
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -5788
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	print
	li	t0, -336
	li	t3, -5792
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -5792
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, s0, t1
	li	t3, -5792
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -5792
	add	t3, s0, t3
	lw	t0, 0(t3)
	lw	t1, 0(t0)
	li	t3, -5796
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -5796
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	toString
	mv	t1, a0
	li	t3, -5800
	add	t3, s0, t3
	sw	t1, 0(t3)
	la	t0, fuckLLVM_.str.80
	li	t3, -5804
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -5800
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	li	t3, -5804
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a1, t0
	call	string_add
	mv	t1, a0
	li	t3, -5808
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -5808
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	print
	li	t0, -340
	li	t3, -5812
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -5812
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, s0, t1
	li	t3, -5812
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -5812
	add	t3, s0, t3
	lw	t0, 0(t3)
	lw	t1, 0(t0)
	li	t3, -5816
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -5816
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	toString
	mv	t1, a0
	li	t3, -5820
	add	t3, s0, t3
	sw	t1, 0(t3)
	la	t0, fuckLLVM_.str.81
	li	t3, -5824
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -5820
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	li	t3, -5824
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a1, t0
	call	string_add
	mv	t1, a0
	li	t3, -5828
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -5828
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	print
	li	t0, -344
	li	t3, -5832
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -5832
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, s0, t1
	li	t3, -5832
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -5832
	add	t3, s0, t3
	lw	t0, 0(t3)
	lw	t1, 0(t0)
	li	t3, -5836
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -5836
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	toString
	mv	t1, a0
	li	t3, -5840
	add	t3, s0, t3
	sw	t1, 0(t3)
	la	t0, fuckLLVM_.str.82
	li	t3, -5844
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -5840
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	li	t3, -5844
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a1, t0
	call	string_add
	mv	t1, a0
	li	t3, -5848
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -5848
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	print
	li	t0, -348
	li	t3, -5852
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -5852
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, s0, t1
	li	t3, -5852
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -5852
	add	t3, s0, t3
	lw	t0, 0(t3)
	lw	t1, 0(t0)
	li	t3, -5856
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -5856
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	toString
	mv	t1, a0
	li	t3, -5860
	add	t3, s0, t3
	sw	t1, 0(t3)
	la	t0, fuckLLVM_.str.83
	li	t3, -5864
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -5860
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	li	t3, -5864
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a1, t0
	call	string_add
	mv	t1, a0
	li	t3, -5868
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -5868
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	print
	li	t0, -352
	li	t3, -5872
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -5872
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, s0, t1
	li	t3, -5872
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -5872
	add	t3, s0, t3
	lw	t0, 0(t3)
	lw	t1, 0(t0)
	li	t3, -5876
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -5876
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	toString
	mv	t1, a0
	li	t3, -5880
	add	t3, s0, t3
	sw	t1, 0(t3)
	la	t0, fuckLLVM_.str.84
	li	t3, -5884
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -5880
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	li	t3, -5884
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a1, t0
	call	string_add
	mv	t1, a0
	li	t3, -5888
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -5888
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	print
	li	t0, -356
	li	t3, -5892
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -5892
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, s0, t1
	li	t3, -5892
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -5892
	add	t3, s0, t3
	lw	t0, 0(t3)
	lw	t1, 0(t0)
	li	t3, -5896
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -5896
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	toString
	mv	t1, a0
	li	t3, -5900
	add	t3, s0, t3
	sw	t1, 0(t3)
	la	t0, fuckLLVM_.str.85
	li	t3, -5904
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -5900
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	li	t3, -5904
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a1, t0
	call	string_add
	mv	t1, a0
	li	t3, -5908
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -5908
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	print
	li	t0, -360
	li	t3, -5912
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -5912
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, s0, t1
	li	t3, -5912
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -5912
	add	t3, s0, t3
	lw	t0, 0(t3)
	lw	t1, 0(t0)
	li	t3, -5916
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -5916
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	toString
	mv	t1, a0
	li	t3, -5920
	add	t3, s0, t3
	sw	t1, 0(t3)
	la	t0, fuckLLVM_.str.86
	li	t3, -5924
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -5920
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	li	t3, -5924
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a1, t0
	call	string_add
	mv	t1, a0
	li	t3, -5928
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -5928
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	print
	li	t0, -364
	li	t3, -5932
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -5932
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, s0, t1
	li	t3, -5932
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -5932
	add	t3, s0, t3
	lw	t0, 0(t3)
	lw	t1, 0(t0)
	li	t3, -5936
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -5936
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	toString
	mv	t1, a0
	li	t3, -5940
	add	t3, s0, t3
	sw	t1, 0(t3)
	la	t0, fuckLLVM_.str.87
	li	t3, -5944
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -5940
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	li	t3, -5944
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a1, t0
	call	string_add
	mv	t1, a0
	li	t3, -5948
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -5948
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	print
	li	t0, -368
	li	t3, -5952
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -5952
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, s0, t1
	li	t3, -5952
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -5952
	add	t3, s0, t3
	lw	t0, 0(t3)
	lw	t1, 0(t0)
	li	t3, -5956
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -5956
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	toString
	mv	t1, a0
	li	t3, -5960
	add	t3, s0, t3
	sw	t1, 0(t3)
	la	t0, fuckLLVM_.str.88
	li	t3, -5964
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -5960
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	li	t3, -5964
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a1, t0
	call	string_add
	mv	t1, a0
	li	t3, -5968
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -5968
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	print
	li	t0, -372
	li	t3, -5972
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -5972
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, s0, t1
	li	t3, -5972
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -5972
	add	t3, s0, t3
	lw	t0, 0(t3)
	lw	t1, 0(t0)
	li	t3, -5976
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -5976
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	toString
	mv	t1, a0
	li	t3, -5980
	add	t3, s0, t3
	sw	t1, 0(t3)
	la	t0, fuckLLVM_.str.89
	li	t3, -5984
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -5980
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	li	t3, -5984
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a1, t0
	call	string_add
	mv	t1, a0
	li	t3, -5988
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -5988
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	print
	li	t0, -376
	li	t3, -5992
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -5992
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, s0, t1
	li	t3, -5992
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -5992
	add	t3, s0, t3
	lw	t0, 0(t3)
	lw	t1, 0(t0)
	li	t3, -5996
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -5996
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	toString
	mv	t1, a0
	li	t3, -6000
	add	t3, s0, t3
	sw	t1, 0(t3)
	la	t0, fuckLLVM_.str.90
	li	t3, -6004
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -6000
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	li	t3, -6004
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a1, t0
	call	string_add
	mv	t1, a0
	li	t3, -6008
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -6008
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	print
	li	t0, -380
	li	t3, -6012
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -6012
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, s0, t1
	li	t3, -6012
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -6012
	add	t3, s0, t3
	lw	t0, 0(t3)
	lw	t1, 0(t0)
	li	t3, -6016
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -6016
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	toString
	mv	t1, a0
	li	t3, -6020
	add	t3, s0, t3
	sw	t1, 0(t3)
	la	t0, fuckLLVM_.str.91
	li	t3, -6024
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -6020
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	li	t3, -6024
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a1, t0
	call	string_add
	mv	t1, a0
	li	t3, -6028
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -6028
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	print
	li	t0, -384
	li	t3, -6032
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -6032
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, s0, t1
	li	t3, -6032
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -6032
	add	t3, s0, t3
	lw	t0, 0(t3)
	lw	t1, 0(t0)
	li	t3, -6036
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -6036
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	toString
	mv	t1, a0
	li	t3, -6040
	add	t3, s0, t3
	sw	t1, 0(t3)
	la	t0, fuckLLVM_.str.92
	li	t3, -6044
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -6040
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	li	t3, -6044
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a1, t0
	call	string_add
	mv	t1, a0
	li	t3, -6048
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -6048
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	print
	li	t0, -388
	li	t3, -6052
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -6052
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, s0, t1
	li	t3, -6052
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -6052
	add	t3, s0, t3
	lw	t0, 0(t3)
	lw	t1, 0(t0)
	li	t3, -6056
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -6056
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	toString
	mv	t1, a0
	li	t3, -6060
	add	t3, s0, t3
	sw	t1, 0(t3)
	la	t0, fuckLLVM_.str.93
	li	t3, -6064
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -6060
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	li	t3, -6064
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a1, t0
	call	string_add
	mv	t1, a0
	li	t3, -6068
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -6068
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	print
	li	t0, -392
	li	t3, -6072
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -6072
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, s0, t1
	li	t3, -6072
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -6072
	add	t3, s0, t3
	lw	t0, 0(t3)
	lw	t1, 0(t0)
	li	t3, -6076
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -6076
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	toString
	mv	t1, a0
	li	t3, -6080
	add	t3, s0, t3
	sw	t1, 0(t3)
	la	t0, fuckLLVM_.str.94
	li	t3, -6084
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -6080
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	li	t3, -6084
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a1, t0
	call	string_add
	mv	t1, a0
	li	t3, -6088
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -6088
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	print
	li	t0, -396
	li	t3, -6092
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -6092
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, s0, t1
	li	t3, -6092
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -6092
	add	t3, s0, t3
	lw	t0, 0(t3)
	lw	t1, 0(t0)
	li	t3, -6096
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -6096
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	toString
	mv	t1, a0
	li	t3, -6100
	add	t3, s0, t3
	sw	t1, 0(t3)
	la	t0, fuckLLVM_.str.95
	li	t3, -6104
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -6100
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	li	t3, -6104
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a1, t0
	call	string_add
	mv	t1, a0
	li	t3, -6108
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -6108
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	print
	li	t0, -400
	li	t3, -6112
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -6112
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, s0, t1
	li	t3, -6112
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -6112
	add	t3, s0, t3
	lw	t0, 0(t3)
	lw	t1, 0(t0)
	li	t3, -6116
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -6116
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	toString
	mv	t1, a0
	li	t3, -6120
	add	t3, s0, t3
	sw	t1, 0(t3)
	la	t0, fuckLLVM_.str.96
	li	t3, -6124
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -6120
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	li	t3, -6124
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a1, t0
	call	string_add
	mv	t1, a0
	li	t3, -6128
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -6128
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	print
	li	t0, -404
	li	t3, -6132
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -6132
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, s0, t1
	li	t3, -6132
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -6132
	add	t3, s0, t3
	lw	t0, 0(t3)
	lw	t1, 0(t0)
	li	t3, -6136
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -6136
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	toString
	mv	t1, a0
	li	t3, -6140
	add	t3, s0, t3
	sw	t1, 0(t3)
	la	t0, fuckLLVM_.str.97
	li	t3, -6144
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -6140
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	li	t3, -6144
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a1, t0
	call	string_add
	mv	t1, a0
	li	t3, -6148
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -6148
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	print
	li	t0, -408
	li	t3, -6152
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -6152
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, s0, t1
	li	t3, -6152
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -6152
	add	t3, s0, t3
	lw	t0, 0(t3)
	lw	t1, 0(t0)
	li	t3, -6156
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -6156
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	toString
	mv	t1, a0
	li	t3, -6160
	add	t3, s0, t3
	sw	t1, 0(t3)
	la	t0, fuckLLVM_.str.98
	li	t3, -6164
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -6160
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	li	t3, -6164
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a1, t0
	call	string_add
	mv	t1, a0
	li	t3, -6168
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -6168
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	print
	li	t0, -412
	li	t3, -6172
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -6172
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, s0, t1
	li	t3, -6172
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -6172
	add	t3, s0, t3
	lw	t0, 0(t3)
	lw	t1, 0(t0)
	li	t3, -6176
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -6176
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	toString
	mv	t1, a0
	li	t3, -6180
	add	t3, s0, t3
	sw	t1, 0(t3)
	la	t0, fuckLLVM_.str.99
	li	t3, -6184
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -6180
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	li	t3, -6184
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a1, t0
	call	string_add
	mv	t1, a0
	li	t3, -6188
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -6188
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	print
	li	t0, -416
	li	t3, -6192
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -6192
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, s0, t1
	li	t3, -6192
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -6192
	add	t3, s0, t3
	lw	t0, 0(t3)
	lw	t1, 0(t0)
	li	t3, -6196
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -6196
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	toString
	mv	t1, a0
	li	t3, -6200
	add	t3, s0, t3
	sw	t1, 0(t3)
	la	t0, fuckLLVM_.str.100
	li	t3, -6204
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -6200
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	li	t3, -6204
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a1, t0
	call	string_add
	mv	t1, a0
	li	t3, -6208
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -6208
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	print
	li	t0, -420
	li	t3, -6212
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -6212
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, s0, t1
	li	t3, -6212
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -6212
	add	t3, s0, t3
	lw	t0, 0(t3)
	lw	t1, 0(t0)
	li	t3, -6216
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -6216
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	toString
	mv	t1, a0
	li	t3, -6220
	add	t3, s0, t3
	sw	t1, 0(t3)
	la	t0, fuckLLVM_.str.101
	li	t3, -6224
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -6220
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	li	t3, -6224
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a1, t0
	call	string_add
	mv	t1, a0
	li	t3, -6228
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -6228
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	print
	li	t0, -424
	li	t3, -6232
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -6232
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, s0, t1
	li	t3, -6232
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -6232
	add	t3, s0, t3
	lw	t0, 0(t3)
	lw	t1, 0(t0)
	li	t3, -6236
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -6236
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	toString
	mv	t1, a0
	li	t3, -6240
	add	t3, s0, t3
	sw	t1, 0(t3)
	la	t0, fuckLLVM_.str.102
	li	t3, -6244
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -6240
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	li	t3, -6244
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a1, t0
	call	string_add
	mv	t1, a0
	li	t3, -6248
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -6248
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	print
	li	t0, -428
	li	t3, -6252
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -6252
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, s0, t1
	li	t3, -6252
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -6252
	add	t3, s0, t3
	lw	t0, 0(t3)
	lw	t1, 0(t0)
	li	t3, -6256
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -6256
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	toString
	mv	t1, a0
	li	t3, -6260
	add	t3, s0, t3
	sw	t1, 0(t3)
	la	t0, fuckLLVM_.str.103
	li	t3, -6264
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -6260
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	li	t3, -6264
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a1, t0
	call	string_add
	mv	t1, a0
	li	t3, -6268
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -6268
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	print
	li	t0, -432
	li	t3, -6272
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -6272
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, s0, t1
	li	t3, -6272
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -6272
	add	t3, s0, t3
	lw	t0, 0(t3)
	lw	t1, 0(t0)
	li	t3, -6276
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -6276
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	toString
	mv	t1, a0
	li	t3, -6280
	add	t3, s0, t3
	sw	t1, 0(t3)
	la	t0, fuckLLVM_.str.104
	li	t3, -6284
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -6280
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	li	t3, -6284
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a1, t0
	call	string_add
	mv	t1, a0
	li	t3, -6288
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -6288
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	print
	li	t0, -436
	li	t3, -6292
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -6292
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, s0, t1
	li	t3, -6292
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -6292
	add	t3, s0, t3
	lw	t0, 0(t3)
	lw	t1, 0(t0)
	li	t3, -6296
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -6296
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	toString
	mv	t1, a0
	li	t3, -6300
	add	t3, s0, t3
	sw	t1, 0(t3)
	la	t0, fuckLLVM_.str.105
	li	t3, -6304
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -6300
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	li	t3, -6304
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a1, t0
	call	string_add
	mv	t1, a0
	li	t3, -6308
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -6308
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	print
	li	t0, -440
	li	t3, -6312
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -6312
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, s0, t1
	li	t3, -6312
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -6312
	add	t3, s0, t3
	lw	t0, 0(t3)
	lw	t1, 0(t0)
	li	t3, -6316
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -6316
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	toString
	mv	t1, a0
	li	t3, -6320
	add	t3, s0, t3
	sw	t1, 0(t3)
	la	t0, fuckLLVM_.str.106
	li	t3, -6324
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -6320
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	li	t3, -6324
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a1, t0
	call	string_add
	mv	t1, a0
	li	t3, -6328
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -6328
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	print
	li	t0, -444
	li	t3, -6332
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -6332
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, s0, t1
	li	t3, -6332
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -6332
	add	t3, s0, t3
	lw	t0, 0(t3)
	lw	t1, 0(t0)
	li	t3, -6336
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -6336
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	toString
	mv	t1, a0
	li	t3, -6340
	add	t3, s0, t3
	sw	t1, 0(t3)
	la	t0, fuckLLVM_.str.107
	li	t3, -6344
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -6340
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	li	t3, -6344
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a1, t0
	call	string_add
	mv	t1, a0
	li	t3, -6348
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -6348
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	print
	li	t0, -448
	li	t3, -6352
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -6352
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, s0, t1
	li	t3, -6352
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -6352
	add	t3, s0, t3
	lw	t0, 0(t3)
	lw	t1, 0(t0)
	li	t3, -6356
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -6356
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	toString
	mv	t1, a0
	li	t3, -6360
	add	t3, s0, t3
	sw	t1, 0(t3)
	la	t0, fuckLLVM_.str.108
	li	t3, -6364
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -6360
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	li	t3, -6364
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a1, t0
	call	string_add
	mv	t1, a0
	li	t3, -6368
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -6368
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	print
	li	t0, -452
	li	t3, -6372
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -6372
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, s0, t1
	li	t3, -6372
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -6372
	add	t3, s0, t3
	lw	t0, 0(t3)
	lw	t1, 0(t0)
	li	t3, -6376
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -6376
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	toString
	mv	t1, a0
	li	t3, -6380
	add	t3, s0, t3
	sw	t1, 0(t3)
	la	t0, fuckLLVM_.str.109
	li	t3, -6384
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -6380
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	li	t3, -6384
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a1, t0
	call	string_add
	mv	t1, a0
	li	t3, -6388
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -6388
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	print
	li	t0, -456
	li	t3, -6392
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -6392
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, s0, t1
	li	t3, -6392
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -6392
	add	t3, s0, t3
	lw	t0, 0(t3)
	lw	t1, 0(t0)
	li	t3, -6396
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -6396
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	toString
	mv	t1, a0
	li	t3, -6400
	add	t3, s0, t3
	sw	t1, 0(t3)
	la	t0, fuckLLVM_.str.110
	li	t3, -6404
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -6400
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	li	t3, -6404
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a1, t0
	call	string_add
	mv	t1, a0
	li	t3, -6408
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -6408
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	print
	li	t0, -460
	li	t3, -6412
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -6412
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, s0, t1
	li	t3, -6412
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -6412
	add	t3, s0, t3
	lw	t0, 0(t3)
	lw	t1, 0(t0)
	li	t3, -6416
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -6416
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	toString
	mv	t1, a0
	li	t3, -6420
	add	t3, s0, t3
	sw	t1, 0(t3)
	la	t0, fuckLLVM_.str.111
	li	t3, -6424
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -6420
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	li	t3, -6424
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a1, t0
	call	string_add
	mv	t1, a0
	li	t3, -6428
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -6428
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	print
	li	t0, -464
	li	t3, -6432
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -6432
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, s0, t1
	li	t3, -6432
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -6432
	add	t3, s0, t3
	lw	t0, 0(t3)
	lw	t1, 0(t0)
	li	t3, -6436
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -6436
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	toString
	mv	t1, a0
	li	t3, -6440
	add	t3, s0, t3
	sw	t1, 0(t3)
	la	t0, fuckLLVM_.str.112
	li	t3, -6444
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -6440
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	li	t3, -6444
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a1, t0
	call	string_add
	mv	t1, a0
	li	t3, -6448
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -6448
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	print
	li	t0, -468
	li	t3, -6452
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -6452
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, s0, t1
	li	t3, -6452
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -6452
	add	t3, s0, t3
	lw	t0, 0(t3)
	lw	t1, 0(t0)
	li	t3, -6456
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -6456
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	toString
	mv	t1, a0
	li	t3, -6460
	add	t3, s0, t3
	sw	t1, 0(t3)
	la	t0, fuckLLVM_.str.113
	li	t3, -6464
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -6460
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	li	t3, -6464
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a1, t0
	call	string_add
	mv	t1, a0
	li	t3, -6468
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -6468
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	print
	li	t0, -472
	li	t3, -6472
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -6472
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, s0, t1
	li	t3, -6472
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -6472
	add	t3, s0, t3
	lw	t0, 0(t3)
	lw	t1, 0(t0)
	li	t3, -6476
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -6476
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	toString
	mv	t1, a0
	li	t3, -6480
	add	t3, s0, t3
	sw	t1, 0(t3)
	la	t0, fuckLLVM_.str.114
	li	t3, -6484
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -6480
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	li	t3, -6484
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a1, t0
	call	string_add
	mv	t1, a0
	li	t3, -6488
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -6488
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	print
	li	t0, -476
	li	t3, -6492
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -6492
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, s0, t1
	li	t3, -6492
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -6492
	add	t3, s0, t3
	lw	t0, 0(t3)
	lw	t1, 0(t0)
	li	t3, -6496
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -6496
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	toString
	mv	t1, a0
	li	t3, -6500
	add	t3, s0, t3
	sw	t1, 0(t3)
	la	t0, fuckLLVM_.str.115
	li	t3, -6504
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -6500
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	li	t3, -6504
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a1, t0
	call	string_add
	mv	t1, a0
	li	t3, -6508
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -6508
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	print
	li	t0, -480
	li	t3, -6512
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -6512
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, s0, t1
	li	t3, -6512
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -6512
	add	t3, s0, t3
	lw	t0, 0(t3)
	lw	t1, 0(t0)
	li	t3, -6516
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -6516
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	toString
	mv	t1, a0
	li	t3, -6520
	add	t3, s0, t3
	sw	t1, 0(t3)
	la	t0, fuckLLVM_.str.116
	li	t3, -6524
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -6520
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	li	t3, -6524
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a1, t0
	call	string_add
	mv	t1, a0
	li	t3, -6528
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -6528
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	print
	li	t0, -484
	li	t3, -6532
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -6532
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, s0, t1
	li	t3, -6532
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -6532
	add	t3, s0, t3
	lw	t0, 0(t3)
	lw	t1, 0(t0)
	li	t3, -6536
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -6536
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	toString
	mv	t1, a0
	li	t3, -6540
	add	t3, s0, t3
	sw	t1, 0(t3)
	la	t0, fuckLLVM_.str.117
	li	t3, -6544
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -6540
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	li	t3, -6544
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a1, t0
	call	string_add
	mv	t1, a0
	li	t3, -6548
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -6548
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	print
	li	t0, -488
	li	t3, -6552
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -6552
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, s0, t1
	li	t3, -6552
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -6552
	add	t3, s0, t3
	lw	t0, 0(t3)
	lw	t1, 0(t0)
	li	t3, -6556
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -6556
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	toString
	mv	t1, a0
	li	t3, -6560
	add	t3, s0, t3
	sw	t1, 0(t3)
	la	t0, fuckLLVM_.str.118
	li	t3, -6564
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -6560
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	li	t3, -6564
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a1, t0
	call	string_add
	mv	t1, a0
	li	t3, -6568
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -6568
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	print
	li	t0, -492
	li	t3, -6572
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -6572
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, s0, t1
	li	t3, -6572
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -6572
	add	t3, s0, t3
	lw	t0, 0(t3)
	lw	t1, 0(t0)
	li	t3, -6576
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -6576
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	toString
	mv	t1, a0
	li	t3, -6580
	add	t3, s0, t3
	sw	t1, 0(t3)
	la	t0, fuckLLVM_.str.119
	li	t3, -6584
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -6580
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	li	t3, -6584
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a1, t0
	call	string_add
	mv	t1, a0
	li	t3, -6588
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -6588
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	print
	li	t0, -496
	li	t3, -6592
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -6592
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, s0, t1
	li	t3, -6592
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -6592
	add	t3, s0, t3
	lw	t0, 0(t3)
	lw	t1, 0(t0)
	li	t3, -6596
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -6596
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	toString
	mv	t1, a0
	li	t3, -6600
	add	t3, s0, t3
	sw	t1, 0(t3)
	la	t0, fuckLLVM_.str.120
	li	t3, -6604
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -6600
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	li	t3, -6604
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a1, t0
	call	string_add
	mv	t1, a0
	li	t3, -6608
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -6608
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	print
	li	t0, -500
	li	t3, -6612
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -6612
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, s0, t1
	li	t3, -6612
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -6612
	add	t3, s0, t3
	lw	t0, 0(t3)
	lw	t1, 0(t0)
	li	t3, -6616
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -6616
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	toString
	mv	t1, a0
	li	t3, -6620
	add	t3, s0, t3
	sw	t1, 0(t3)
	la	t0, fuckLLVM_.str.121
	li	t3, -6624
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -6620
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	li	t3, -6624
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a1, t0
	call	string_add
	mv	t1, a0
	li	t3, -6628
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -6628
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	print
	li	t0, -504
	li	t3, -6632
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -6632
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, s0, t1
	li	t3, -6632
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -6632
	add	t3, s0, t3
	lw	t0, 0(t3)
	lw	t1, 0(t0)
	li	t3, -6636
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -6636
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	toString
	mv	t1, a0
	li	t3, -6640
	add	t3, s0, t3
	sw	t1, 0(t3)
	la	t0, fuckLLVM_.str.122
	li	t3, -6644
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -6640
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	li	t3, -6644
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a1, t0
	call	string_add
	mv	t1, a0
	li	t3, -6648
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -6648
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	print
	li	t0, -508
	li	t3, -6652
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -6652
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, s0, t1
	li	t3, -6652
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -6652
	add	t3, s0, t3
	lw	t0, 0(t3)
	lw	t1, 0(t0)
	li	t3, -6656
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -6656
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	toString
	mv	t1, a0
	li	t3, -6660
	add	t3, s0, t3
	sw	t1, 0(t3)
	la	t0, fuckLLVM_.str.123
	li	t3, -6664
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -6660
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	li	t3, -6664
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a1, t0
	call	string_add
	mv	t1, a0
	li	t3, -6668
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -6668
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	print
	li	t0, -512
	li	t3, -6672
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -6672
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, s0, t1
	li	t3, -6672
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -6672
	add	t3, s0, t3
	lw	t0, 0(t3)
	lw	t1, 0(t0)
	li	t3, -6676
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -6676
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	toString
	mv	t1, a0
	li	t3, -6680
	add	t3, s0, t3
	sw	t1, 0(t3)
	la	t0, fuckLLVM_.str.124
	li	t3, -6684
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -6680
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	li	t3, -6684
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a1, t0
	call	string_add
	mv	t1, a0
	li	t3, -6688
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -6688
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	print
	li	t0, -516
	li	t3, -6692
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -6692
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, s0, t1
	li	t3, -6692
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -6692
	add	t3, s0, t3
	lw	t0, 0(t3)
	lw	t1, 0(t0)
	li	t3, -6696
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -6696
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	toString
	mv	t1, a0
	li	t3, -6700
	add	t3, s0, t3
	sw	t1, 0(t3)
	la	t0, fuckLLVM_.str.125
	li	t3, -6704
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -6700
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	li	t3, -6704
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a1, t0
	call	string_add
	mv	t1, a0
	li	t3, -6708
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -6708
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	print
	li	t0, -520
	li	t3, -6712
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -6712
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, s0, t1
	li	t3, -6712
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -6712
	add	t3, s0, t3
	lw	t0, 0(t3)
	lw	t1, 0(t0)
	li	t3, -6716
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -6716
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	toString
	mv	t1, a0
	li	t3, -6720
	add	t3, s0, t3
	sw	t1, 0(t3)
	la	t0, fuckLLVM_.str.126
	li	t3, -6724
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -6720
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	li	t3, -6724
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a1, t0
	call	string_add
	mv	t1, a0
	li	t3, -6728
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -6728
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	print
	li	t0, -524
	li	t3, -6732
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -6732
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, s0, t1
	li	t3, -6732
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -6732
	add	t3, s0, t3
	lw	t0, 0(t3)
	lw	t1, 0(t0)
	li	t3, -6736
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -6736
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	toString
	mv	t1, a0
	li	t3, -6740
	add	t3, s0, t3
	sw	t1, 0(t3)
	la	t0, fuckLLVM_.str.127
	li	t3, -6744
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -6740
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	li	t3, -6744
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a1, t0
	call	string_add
	mv	t1, a0
	li	t3, -6748
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -6748
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	print
	li	t0, -528
	li	t3, -6752
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -6752
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, s0, t1
	li	t3, -6752
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -6752
	add	t3, s0, t3
	lw	t0, 0(t3)
	lw	t1, 0(t0)
	li	t3, -6756
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -6756
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	toString
	mv	t1, a0
	li	t3, -6760
	add	t3, s0, t3
	sw	t1, 0(t3)
	la	t0, fuckLLVM_.str.128
	li	t3, -6764
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -6760
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	li	t3, -6764
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a1, t0
	call	string_add
	mv	t1, a0
	li	t3, -6768
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -6768
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	print
	li	t0, -532
	li	t3, -6772
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -6772
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, s0, t1
	li	t3, -6772
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -6772
	add	t3, s0, t3
	lw	t0, 0(t3)
	lw	t1, 0(t0)
	li	t3, -6776
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -6776
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	toString
	mv	t1, a0
	li	t3, -6780
	add	t3, s0, t3
	sw	t1, 0(t3)
	la	t0, fuckLLVM_.str.129
	li	t3, -6784
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -6780
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	li	t3, -6784
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a1, t0
	call	string_add
	mv	t1, a0
	li	t3, -6788
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -6788
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	print
	li	t0, -536
	li	t3, -6792
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -6792
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, s0, t1
	li	t3, -6792
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -6792
	add	t3, s0, t3
	lw	t0, 0(t3)
	lw	t1, 0(t0)
	li	t3, -6796
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -6796
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	toString
	mv	t1, a0
	li	t3, -6800
	add	t3, s0, t3
	sw	t1, 0(t3)
	la	t0, fuckLLVM_.str.130
	li	t3, -6804
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -6800
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	li	t3, -6804
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a1, t0
	call	string_add
	mv	t1, a0
	li	t3, -6808
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -6808
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	print
	li	t0, -540
	li	t3, -6812
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -6812
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, s0, t1
	li	t3, -6812
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -6812
	add	t3, s0, t3
	lw	t0, 0(t3)
	lw	t1, 0(t0)
	li	t3, -6816
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -6816
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	toString
	mv	t1, a0
	li	t3, -6820
	add	t3, s0, t3
	sw	t1, 0(t3)
	la	t0, fuckLLVM_.str.131
	li	t3, -6824
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -6820
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	li	t3, -6824
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a1, t0
	call	string_add
	mv	t1, a0
	li	t3, -6828
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -6828
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	print
	li	t0, -544
	li	t3, -6832
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -6832
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, s0, t1
	li	t3, -6832
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -6832
	add	t3, s0, t3
	lw	t0, 0(t3)
	lw	t1, 0(t0)
	li	t3, -6836
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -6836
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	toString
	mv	t1, a0
	li	t3, -6840
	add	t3, s0, t3
	sw	t1, 0(t3)
	la	t0, fuckLLVM_.str.132
	li	t3, -6844
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -6840
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	li	t3, -6844
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a1, t0
	call	string_add
	mv	t1, a0
	li	t3, -6848
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -6848
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	print
	li	t0, -548
	li	t3, -6852
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -6852
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, s0, t1
	li	t3, -6852
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -6852
	add	t3, s0, t3
	lw	t0, 0(t3)
	lw	t1, 0(t0)
	li	t3, -6856
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -6856
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	toString
	mv	t1, a0
	li	t3, -6860
	add	t3, s0, t3
	sw	t1, 0(t3)
	la	t0, fuckLLVM_.str.133
	li	t3, -6864
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -6860
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	li	t3, -6864
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a1, t0
	call	string_add
	mv	t1, a0
	li	t3, -6868
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -6868
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	print
	li	t0, -552
	li	t3, -6872
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -6872
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, s0, t1
	li	t3, -6872
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -6872
	add	t3, s0, t3
	lw	t0, 0(t3)
	lw	t1, 0(t0)
	li	t3, -6876
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -6876
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	toString
	mv	t1, a0
	li	t3, -6880
	add	t3, s0, t3
	sw	t1, 0(t3)
	la	t0, fuckLLVM_.str.134
	li	t3, -6884
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -6880
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	li	t3, -6884
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a1, t0
	call	string_add
	mv	t1, a0
	li	t3, -6888
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -6888
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	print
	li	t0, -556
	li	t3, -6892
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -6892
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, s0, t1
	li	t3, -6892
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -6892
	add	t3, s0, t3
	lw	t0, 0(t3)
	lw	t1, 0(t0)
	li	t3, -6896
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -6896
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	toString
	mv	t1, a0
	li	t3, -6900
	add	t3, s0, t3
	sw	t1, 0(t3)
	la	t0, fuckLLVM_.str.135
	li	t3, -6904
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -6900
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	li	t3, -6904
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a1, t0
	call	string_add
	mv	t1, a0
	li	t3, -6908
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -6908
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	print
	li	t0, -560
	li	t3, -6912
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -6912
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, s0, t1
	li	t3, -6912
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -6912
	add	t3, s0, t3
	lw	t0, 0(t3)
	lw	t1, 0(t0)
	li	t3, -6916
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -6916
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	toString
	mv	t1, a0
	li	t3, -6920
	add	t3, s0, t3
	sw	t1, 0(t3)
	la	t0, fuckLLVM_.str.136
	li	t3, -6924
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -6920
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	li	t3, -6924
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a1, t0
	call	string_add
	mv	t1, a0
	li	t3, -6928
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -6928
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	print
	li	t0, -564
	li	t3, -6932
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -6932
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, s0, t1
	li	t3, -6932
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -6932
	add	t3, s0, t3
	lw	t0, 0(t3)
	lw	t1, 0(t0)
	li	t3, -6936
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -6936
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	toString
	mv	t1, a0
	li	t3, -6940
	add	t3, s0, t3
	sw	t1, 0(t3)
	la	t0, fuckLLVM_.str.137
	li	t3, -6944
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -6940
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	li	t3, -6944
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a1, t0
	call	string_add
	mv	t1, a0
	li	t3, -6948
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -6948
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	print
	li	t0, -568
	li	t3, -6952
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -6952
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, s0, t1
	li	t3, -6952
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -6952
	add	t3, s0, t3
	lw	t0, 0(t3)
	lw	t1, 0(t0)
	li	t3, -6956
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -6956
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	toString
	mv	t1, a0
	li	t3, -6960
	add	t3, s0, t3
	sw	t1, 0(t3)
	la	t0, fuckLLVM_.str.138
	li	t3, -6964
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -6960
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	li	t3, -6964
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a1, t0
	call	string_add
	mv	t1, a0
	li	t3, -6968
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -6968
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	print
	li	t0, -572
	li	t3, -6972
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -6972
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, s0, t1
	li	t3, -6972
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -6972
	add	t3, s0, t3
	lw	t0, 0(t3)
	lw	t1, 0(t0)
	li	t3, -6976
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -6976
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	toString
	mv	t1, a0
	li	t3, -6980
	add	t3, s0, t3
	sw	t1, 0(t3)
	la	t0, fuckLLVM_.str.139
	li	t3, -6984
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -6980
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	li	t3, -6984
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a1, t0
	call	string_add
	mv	t1, a0
	li	t3, -6988
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -6988
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	print
	li	t0, -576
	li	t3, -6992
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -6992
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, s0, t1
	li	t3, -6992
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -6992
	add	t3, s0, t3
	lw	t0, 0(t3)
	lw	t1, 0(t0)
	li	t3, -6996
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -6996
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	toString
	mv	t1, a0
	li	t3, -7000
	add	t3, s0, t3
	sw	t1, 0(t3)
	la	t0, fuckLLVM_.str.140
	li	t3, -7004
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -7000
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	li	t3, -7004
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a1, t0
	call	string_add
	mv	t1, a0
	li	t3, -7008
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -7008
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	print
	li	t0, -580
	li	t3, -7012
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -7012
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, s0, t1
	li	t3, -7012
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -7012
	add	t3, s0, t3
	lw	t0, 0(t3)
	lw	t1, 0(t0)
	li	t3, -7016
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -7016
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	toString
	mv	t1, a0
	li	t3, -7020
	add	t3, s0, t3
	sw	t1, 0(t3)
	la	t0, fuckLLVM_.str.141
	li	t3, -7024
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -7020
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	li	t3, -7024
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a1, t0
	call	string_add
	mv	t1, a0
	li	t3, -7028
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -7028
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	print
	li	t0, -584
	li	t3, -7032
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -7032
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, s0, t1
	li	t3, -7032
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -7032
	add	t3, s0, t3
	lw	t0, 0(t3)
	lw	t1, 0(t0)
	li	t3, -7036
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -7036
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	toString
	mv	t1, a0
	li	t3, -7040
	add	t3, s0, t3
	sw	t1, 0(t3)
	la	t0, fuckLLVM_.str.142
	li	t3, -7044
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -7040
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	li	t3, -7044
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a1, t0
	call	string_add
	mv	t1, a0
	li	t3, -7048
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -7048
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	print
	li	t0, -588
	li	t3, -7052
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -7052
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, s0, t1
	li	t3, -7052
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -7052
	add	t3, s0, t3
	lw	t0, 0(t3)
	lw	t1, 0(t0)
	li	t3, -7056
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -7056
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	toString
	mv	t1, a0
	li	t3, -7060
	add	t3, s0, t3
	sw	t1, 0(t3)
	la	t0, fuckLLVM_.str.143
	li	t3, -7064
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -7060
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	li	t3, -7064
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a1, t0
	call	string_add
	mv	t1, a0
	li	t3, -7068
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -7068
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	print
	li	t0, -592
	li	t3, -7072
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -7072
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, s0, t1
	li	t3, -7072
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -7072
	add	t3, s0, t3
	lw	t0, 0(t3)
	lw	t1, 0(t0)
	li	t3, -7076
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -7076
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	toString
	mv	t1, a0
	li	t3, -7080
	add	t3, s0, t3
	sw	t1, 0(t3)
	la	t0, fuckLLVM_.str.144
	li	t3, -7084
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -7080
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	li	t3, -7084
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a1, t0
	call	string_add
	mv	t1, a0
	li	t3, -7088
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -7088
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	print
	li	t0, -596
	li	t3, -7092
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -7092
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, s0, t1
	li	t3, -7092
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -7092
	add	t3, s0, t3
	lw	t0, 0(t3)
	lw	t1, 0(t0)
	li	t3, -7096
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -7096
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	toString
	mv	t1, a0
	li	t3, -7100
	add	t3, s0, t3
	sw	t1, 0(t3)
	la	t0, fuckLLVM_.str.145
	li	t3, -7104
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -7100
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	li	t3, -7104
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a1, t0
	call	string_add
	mv	t1, a0
	li	t3, -7108
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -7108
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	print
	li	t0, -600
	li	t3, -7112
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -7112
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, s0, t1
	li	t3, -7112
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -7112
	add	t3, s0, t3
	lw	t0, 0(t3)
	lw	t1, 0(t0)
	li	t3, -7116
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -7116
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	toString
	mv	t1, a0
	li	t3, -7120
	add	t3, s0, t3
	sw	t1, 0(t3)
	la	t0, fuckLLVM_.str.146
	li	t3, -7124
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -7120
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	li	t3, -7124
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a1, t0
	call	string_add
	mv	t1, a0
	li	t3, -7128
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -7128
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	print
	li	t0, -604
	li	t3, -7132
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -7132
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, s0, t1
	li	t3, -7132
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -7132
	add	t3, s0, t3
	lw	t0, 0(t3)
	lw	t1, 0(t0)
	li	t3, -7136
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -7136
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	toString
	mv	t1, a0
	li	t3, -7140
	add	t3, s0, t3
	sw	t1, 0(t3)
	la	t0, fuckLLVM_.str.147
	li	t3, -7144
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -7140
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	li	t3, -7144
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a1, t0
	call	string_add
	mv	t1, a0
	li	t3, -7148
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -7148
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	print
	li	t0, -608
	li	t3, -7152
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -7152
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, s0, t1
	li	t3, -7152
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -7152
	add	t3, s0, t3
	lw	t0, 0(t3)
	lw	t1, 0(t0)
	li	t3, -7156
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -7156
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	toString
	mv	t1, a0
	li	t3, -7160
	add	t3, s0, t3
	sw	t1, 0(t3)
	la	t0, fuckLLVM_.str.148
	li	t3, -7164
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -7160
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	li	t3, -7164
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a1, t0
	call	string_add
	mv	t1, a0
	li	t3, -7168
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -7168
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	print
	li	t0, -612
	li	t3, -7172
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -7172
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, s0, t1
	li	t3, -7172
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -7172
	add	t3, s0, t3
	lw	t0, 0(t3)
	lw	t1, 0(t0)
	li	t3, -7176
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -7176
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	toString
	mv	t1, a0
	li	t3, -7180
	add	t3, s0, t3
	sw	t1, 0(t3)
	la	t0, fuckLLVM_.str.149
	li	t3, -7184
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -7180
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	li	t3, -7184
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a1, t0
	call	string_add
	mv	t1, a0
	li	t3, -7188
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -7188
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	print
	li	t0, -616
	li	t3, -7192
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -7192
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, s0, t1
	li	t3, -7192
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -7192
	add	t3, s0, t3
	lw	t0, 0(t3)
	lw	t1, 0(t0)
	li	t3, -7196
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -7196
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	toString
	mv	t1, a0
	li	t3, -7200
	add	t3, s0, t3
	sw	t1, 0(t3)
	la	t0, fuckLLVM_.str.150
	li	t3, -7204
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -7200
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	li	t3, -7204
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a1, t0
	call	string_add
	mv	t1, a0
	li	t3, -7208
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -7208
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	print
	li	t0, -620
	li	t3, -7212
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -7212
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, s0, t1
	li	t3, -7212
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -7212
	add	t3, s0, t3
	lw	t0, 0(t3)
	lw	t1, 0(t0)
	li	t3, -7216
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -7216
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	toString
	mv	t1, a0
	li	t3, -7220
	add	t3, s0, t3
	sw	t1, 0(t3)
	la	t0, fuckLLVM_.str.151
	li	t3, -7224
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -7220
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	li	t3, -7224
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a1, t0
	call	string_add
	mv	t1, a0
	li	t3, -7228
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -7228
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	print
	li	t0, -624
	li	t3, -7232
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -7232
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, s0, t1
	li	t3, -7232
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -7232
	add	t3, s0, t3
	lw	t0, 0(t3)
	lw	t1, 0(t0)
	li	t3, -7236
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -7236
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	toString
	mv	t1, a0
	li	t3, -7240
	add	t3, s0, t3
	sw	t1, 0(t3)
	la	t0, fuckLLVM_.str.152
	li	t3, -7244
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -7240
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	li	t3, -7244
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a1, t0
	call	string_add
	mv	t1, a0
	li	t3, -7248
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -7248
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	print
	li	t0, -628
	li	t3, -7252
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -7252
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, s0, t1
	li	t3, -7252
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -7252
	add	t3, s0, t3
	lw	t0, 0(t3)
	lw	t1, 0(t0)
	li	t3, -7256
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -7256
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	toString
	mv	t1, a0
	li	t3, -7260
	add	t3, s0, t3
	sw	t1, 0(t3)
	la	t0, fuckLLVM_.str.153
	li	t3, -7264
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -7260
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	li	t3, -7264
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a1, t0
	call	string_add
	mv	t1, a0
	li	t3, -7268
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -7268
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	print
	li	t0, -632
	li	t3, -7272
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -7272
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, s0, t1
	li	t3, -7272
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -7272
	add	t3, s0, t3
	lw	t0, 0(t3)
	lw	t1, 0(t0)
	li	t3, -7276
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -7276
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	toString
	mv	t1, a0
	li	t3, -7280
	add	t3, s0, t3
	sw	t1, 0(t3)
	la	t0, fuckLLVM_.str.154
	li	t3, -7284
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -7280
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	li	t3, -7284
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a1, t0
	call	string_add
	mv	t1, a0
	li	t3, -7288
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -7288
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	print
	li	t0, -636
	li	t3, -7292
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -7292
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, s0, t1
	li	t3, -7292
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -7292
	add	t3, s0, t3
	lw	t0, 0(t3)
	lw	t1, 0(t0)
	li	t3, -7296
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -7296
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	toString
	mv	t1, a0
	li	t3, -7300
	add	t3, s0, t3
	sw	t1, 0(t3)
	la	t0, fuckLLVM_.str.155
	li	t3, -7304
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -7300
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	li	t3, -7304
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a1, t0
	call	string_add
	mv	t1, a0
	li	t3, -7308
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -7308
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	print
	li	t0, -640
	li	t3, -7312
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -7312
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, s0, t1
	li	t3, -7312
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -7312
	add	t3, s0, t3
	lw	t0, 0(t3)
	lw	t1, 0(t0)
	li	t3, -7316
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -7316
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	toString
	mv	t1, a0
	li	t3, -7320
	add	t3, s0, t3
	sw	t1, 0(t3)
	la	t0, fuckLLVM_.str.156
	li	t3, -7324
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -7320
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	li	t3, -7324
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a1, t0
	call	string_add
	mv	t1, a0
	li	t3, -7328
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -7328
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	print
	li	t0, -644
	li	t3, -7332
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -7332
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, s0, t1
	li	t3, -7332
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -7332
	add	t3, s0, t3
	lw	t0, 0(t3)
	lw	t1, 0(t0)
	li	t3, -7336
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -7336
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	toString
	mv	t1, a0
	li	t3, -7340
	add	t3, s0, t3
	sw	t1, 0(t3)
	la	t0, fuckLLVM_.str.157
	li	t3, -7344
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -7340
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	li	t3, -7344
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a1, t0
	call	string_add
	mv	t1, a0
	li	t3, -7348
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -7348
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	print
	li	t0, -648
	li	t3, -7352
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -7352
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, s0, t1
	li	t3, -7352
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -7352
	add	t3, s0, t3
	lw	t0, 0(t3)
	lw	t1, 0(t0)
	li	t3, -7356
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -7356
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	toString
	mv	t1, a0
	li	t3, -7360
	add	t3, s0, t3
	sw	t1, 0(t3)
	la	t0, fuckLLVM_.str.158
	li	t3, -7364
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -7360
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	li	t3, -7364
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a1, t0
	call	string_add
	mv	t1, a0
	li	t3, -7368
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -7368
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	print
	li	t0, -652
	li	t3, -7372
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -7372
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, s0, t1
	li	t3, -7372
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -7372
	add	t3, s0, t3
	lw	t0, 0(t3)
	lw	t1, 0(t0)
	li	t3, -7376
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -7376
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	toString
	mv	t1, a0
	li	t3, -7380
	add	t3, s0, t3
	sw	t1, 0(t3)
	la	t0, fuckLLVM_.str.159
	li	t3, -7384
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -7380
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	li	t3, -7384
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a1, t0
	call	string_add
	mv	t1, a0
	li	t3, -7388
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -7388
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	print
	li	t0, -656
	li	t3, -7392
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -7392
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, s0, t1
	li	t3, -7392
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -7392
	add	t3, s0, t3
	lw	t0, 0(t3)
	lw	t1, 0(t0)
	li	t3, -7396
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -7396
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	toString
	mv	t1, a0
	li	t3, -7400
	add	t3, s0, t3
	sw	t1, 0(t3)
	la	t0, fuckLLVM_.str.160
	li	t3, -7404
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -7400
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	li	t3, -7404
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a1, t0
	call	string_add
	mv	t1, a0
	li	t3, -7408
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -7408
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	print
	li	t0, -660
	li	t3, -7412
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -7412
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, s0, t1
	li	t3, -7412
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -7412
	add	t3, s0, t3
	lw	t0, 0(t3)
	lw	t1, 0(t0)
	li	t3, -7416
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -7416
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	toString
	mv	t1, a0
	li	t3, -7420
	add	t3, s0, t3
	sw	t1, 0(t3)
	la	t0, fuckLLVM_.str.161
	li	t3, -7424
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -7420
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	li	t3, -7424
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a1, t0
	call	string_add
	mv	t1, a0
	li	t3, -7428
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -7428
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	print
	li	t0, -664
	li	t3, -7432
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -7432
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, s0, t1
	li	t3, -7432
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -7432
	add	t3, s0, t3
	lw	t0, 0(t3)
	lw	t1, 0(t0)
	li	t3, -7436
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -7436
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	toString
	mv	t1, a0
	li	t3, -7440
	add	t3, s0, t3
	sw	t1, 0(t3)
	la	t0, fuckLLVM_.str.162
	li	t3, -7444
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -7440
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	li	t3, -7444
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a1, t0
	call	string_add
	mv	t1, a0
	li	t3, -7448
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -7448
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	print
	li	t0, -668
	li	t3, -7452
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -7452
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, s0, t1
	li	t3, -7452
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -7452
	add	t3, s0, t3
	lw	t0, 0(t3)
	lw	t1, 0(t0)
	li	t3, -7456
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -7456
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	toString
	mv	t1, a0
	li	t3, -7460
	add	t3, s0, t3
	sw	t1, 0(t3)
	la	t0, fuckLLVM_.str.163
	li	t3, -7464
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -7460
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	li	t3, -7464
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a1, t0
	call	string_add
	mv	t1, a0
	li	t3, -7468
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -7468
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	print
	li	t0, -672
	li	t3, -7472
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -7472
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, s0, t1
	li	t3, -7472
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -7472
	add	t3, s0, t3
	lw	t0, 0(t3)
	lw	t1, 0(t0)
	li	t3, -7476
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -7476
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	toString
	mv	t1, a0
	li	t3, -7480
	add	t3, s0, t3
	sw	t1, 0(t3)
	la	t0, fuckLLVM_.str.164
	li	t3, -7484
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -7480
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	li	t3, -7484
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a1, t0
	call	string_add
	mv	t1, a0
	li	t3, -7488
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -7488
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	print
	li	t0, -676
	li	t3, -7492
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -7492
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, s0, t1
	li	t3, -7492
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -7492
	add	t3, s0, t3
	lw	t0, 0(t3)
	lw	t1, 0(t0)
	li	t3, -7496
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -7496
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	toString
	mv	t1, a0
	li	t3, -7500
	add	t3, s0, t3
	sw	t1, 0(t3)
	la	t0, fuckLLVM_.str.165
	li	t3, -7504
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -7500
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	li	t3, -7504
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a1, t0
	call	string_add
	mv	t1, a0
	li	t3, -7508
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -7508
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	print
	li	t0, -680
	li	t3, -7512
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -7512
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, s0, t1
	li	t3, -7512
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -7512
	add	t3, s0, t3
	lw	t0, 0(t3)
	lw	t1, 0(t0)
	li	t3, -7516
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -7516
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	toString
	mv	t1, a0
	li	t3, -7520
	add	t3, s0, t3
	sw	t1, 0(t3)
	la	t0, fuckLLVM_.str.166
	li	t3, -7524
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -7520
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	li	t3, -7524
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a1, t0
	call	string_add
	mv	t1, a0
	li	t3, -7528
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -7528
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	print
	li	t0, -684
	li	t3, -7532
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -7532
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, s0, t1
	li	t3, -7532
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -7532
	add	t3, s0, t3
	lw	t0, 0(t3)
	lw	t1, 0(t0)
	li	t3, -7536
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -7536
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	toString
	mv	t1, a0
	li	t3, -7540
	add	t3, s0, t3
	sw	t1, 0(t3)
	la	t0, fuckLLVM_.str.167
	li	t3, -7544
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -7540
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	li	t3, -7544
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a1, t0
	call	string_add
	mv	t1, a0
	li	t3, -7548
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -7548
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	print
	li	t0, -688
	li	t3, -7552
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -7552
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, s0, t1
	li	t3, -7552
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -7552
	add	t3, s0, t3
	lw	t0, 0(t3)
	lw	t1, 0(t0)
	li	t3, -7556
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -7556
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	toString
	mv	t1, a0
	li	t3, -7560
	add	t3, s0, t3
	sw	t1, 0(t3)
	la	t0, fuckLLVM_.str.168
	li	t3, -7564
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -7560
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	li	t3, -7564
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a1, t0
	call	string_add
	mv	t1, a0
	li	t3, -7568
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -7568
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	print
	li	t0, -692
	li	t3, -7572
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -7572
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, s0, t1
	li	t3, -7572
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -7572
	add	t3, s0, t3
	lw	t0, 0(t3)
	lw	t1, 0(t0)
	li	t3, -7576
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -7576
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	toString
	mv	t1, a0
	li	t3, -7580
	add	t3, s0, t3
	sw	t1, 0(t3)
	la	t0, fuckLLVM_.str.169
	li	t3, -7584
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -7580
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	li	t3, -7584
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a1, t0
	call	string_add
	mv	t1, a0
	li	t3, -7588
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -7588
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	print
	li	t0, -696
	li	t3, -7592
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -7592
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, s0, t1
	li	t3, -7592
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -7592
	add	t3, s0, t3
	lw	t0, 0(t3)
	lw	t1, 0(t0)
	li	t3, -7596
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -7596
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	toString
	mv	t1, a0
	li	t3, -7600
	add	t3, s0, t3
	sw	t1, 0(t3)
	la	t0, fuckLLVM_.str.170
	li	t3, -7604
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -7600
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	li	t3, -7604
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a1, t0
	call	string_add
	mv	t1, a0
	li	t3, -7608
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -7608
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	print
	li	t0, -700
	li	t3, -7612
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -7612
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, s0, t1
	li	t3, -7612
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -7612
	add	t3, s0, t3
	lw	t0, 0(t3)
	lw	t1, 0(t0)
	li	t3, -7616
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -7616
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	toString
	mv	t1, a0
	li	t3, -7620
	add	t3, s0, t3
	sw	t1, 0(t3)
	la	t0, fuckLLVM_.str.171
	li	t3, -7624
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -7620
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	li	t3, -7624
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a1, t0
	call	string_add
	mv	t1, a0
	li	t3, -7628
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -7628
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	print
	li	t0, -704
	li	t3, -7632
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -7632
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, s0, t1
	li	t3, -7632
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -7632
	add	t3, s0, t3
	lw	t0, 0(t3)
	lw	t1, 0(t0)
	li	t3, -7636
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -7636
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	toString
	mv	t1, a0
	li	t3, -7640
	add	t3, s0, t3
	sw	t1, 0(t3)
	la	t0, fuckLLVM_.str.172
	li	t3, -7644
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -7640
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	li	t3, -7644
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a1, t0
	call	string_add
	mv	t1, a0
	li	t3, -7648
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -7648
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	print
	li	t0, -708
	li	t3, -7652
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -7652
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, s0, t1
	li	t3, -7652
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -7652
	add	t3, s0, t3
	lw	t0, 0(t3)
	lw	t1, 0(t0)
	li	t3, -7656
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -7656
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	toString
	mv	t1, a0
	li	t3, -7660
	add	t3, s0, t3
	sw	t1, 0(t3)
	la	t0, fuckLLVM_.str.173
	li	t3, -7664
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -7660
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	li	t3, -7664
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a1, t0
	call	string_add
	mv	t1, a0
	li	t3, -7668
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -7668
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	print
	li	t0, -712
	li	t3, -7672
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -7672
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, s0, t1
	li	t3, -7672
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -7672
	add	t3, s0, t3
	lw	t0, 0(t3)
	lw	t1, 0(t0)
	li	t3, -7676
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -7676
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	toString
	mv	t1, a0
	li	t3, -7680
	add	t3, s0, t3
	sw	t1, 0(t3)
	la	t0, fuckLLVM_.str.174
	li	t3, -7684
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -7680
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	li	t3, -7684
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a1, t0
	call	string_add
	mv	t1, a0
	li	t3, -7688
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -7688
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	print
	li	t0, -716
	li	t3, -7692
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -7692
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, s0, t1
	li	t3, -7692
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -7692
	add	t3, s0, t3
	lw	t0, 0(t3)
	lw	t1, 0(t0)
	li	t3, -7696
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -7696
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	toString
	mv	t1, a0
	li	t3, -7700
	add	t3, s0, t3
	sw	t1, 0(t3)
	la	t0, fuckLLVM_.str.175
	li	t3, -7704
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -7700
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	li	t3, -7704
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a1, t0
	call	string_add
	mv	t1, a0
	li	t3, -7708
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -7708
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	print
	li	t0, -720
	li	t3, -7712
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -7712
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, s0, t1
	li	t3, -7712
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -7712
	add	t3, s0, t3
	lw	t0, 0(t3)
	lw	t1, 0(t0)
	li	t3, -7716
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -7716
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	toString
	mv	t1, a0
	li	t3, -7720
	add	t3, s0, t3
	sw	t1, 0(t3)
	la	t0, fuckLLVM_.str.176
	li	t3, -7724
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -7720
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	li	t3, -7724
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a1, t0
	call	string_add
	mv	t1, a0
	li	t3, -7728
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -7728
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	print
	li	t0, -724
	li	t3, -7732
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -7732
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, s0, t1
	li	t3, -7732
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -7732
	add	t3, s0, t3
	lw	t0, 0(t3)
	lw	t1, 0(t0)
	li	t3, -7736
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -7736
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	toString
	mv	t1, a0
	li	t3, -7740
	add	t3, s0, t3
	sw	t1, 0(t3)
	la	t0, fuckLLVM_.str.177
	li	t3, -7744
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -7740
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	li	t3, -7744
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a1, t0
	call	string_add
	mv	t1, a0
	li	t3, -7748
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -7748
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	print
	li	t0, -728
	li	t3, -7752
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -7752
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, s0, t1
	li	t3, -7752
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -7752
	add	t3, s0, t3
	lw	t0, 0(t3)
	lw	t1, 0(t0)
	li	t3, -7756
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -7756
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	toString
	mv	t1, a0
	li	t3, -7760
	add	t3, s0, t3
	sw	t1, 0(t3)
	la	t0, fuckLLVM_.str.178
	li	t3, -7764
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -7760
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	li	t3, -7764
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a1, t0
	call	string_add
	mv	t1, a0
	li	t3, -7768
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -7768
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	print
	li	t0, -732
	li	t3, -7772
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -7772
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, s0, t1
	li	t3, -7772
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -7772
	add	t3, s0, t3
	lw	t0, 0(t3)
	lw	t1, 0(t0)
	li	t3, -7776
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -7776
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	toString
	mv	t1, a0
	li	t3, -7780
	add	t3, s0, t3
	sw	t1, 0(t3)
	la	t0, fuckLLVM_.str.179
	li	t3, -7784
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -7780
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	li	t3, -7784
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a1, t0
	call	string_add
	mv	t1, a0
	li	t3, -7788
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -7788
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	print
	li	t0, -736
	li	t3, -7792
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -7792
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, s0, t1
	li	t3, -7792
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -7792
	add	t3, s0, t3
	lw	t0, 0(t3)
	lw	t1, 0(t0)
	li	t3, -7796
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -7796
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	toString
	mv	t1, a0
	li	t3, -7800
	add	t3, s0, t3
	sw	t1, 0(t3)
	la	t0, fuckLLVM_.str.180
	li	t3, -7804
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -7800
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	li	t3, -7804
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a1, t0
	call	string_add
	mv	t1, a0
	li	t3, -7808
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -7808
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	print
	li	t0, -740
	li	t3, -7812
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -7812
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, s0, t1
	li	t3, -7812
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -7812
	add	t3, s0, t3
	lw	t0, 0(t3)
	lw	t1, 0(t0)
	li	t3, -7816
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -7816
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	toString
	mv	t1, a0
	li	t3, -7820
	add	t3, s0, t3
	sw	t1, 0(t3)
	la	t0, fuckLLVM_.str.181
	li	t3, -7824
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -7820
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	li	t3, -7824
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a1, t0
	call	string_add
	mv	t1, a0
	li	t3, -7828
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -7828
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	print
	li	t0, -744
	li	t3, -7832
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -7832
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, s0, t1
	li	t3, -7832
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -7832
	add	t3, s0, t3
	lw	t0, 0(t3)
	lw	t1, 0(t0)
	li	t3, -7836
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -7836
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	toString
	mv	t1, a0
	li	t3, -7840
	add	t3, s0, t3
	sw	t1, 0(t3)
	la	t0, fuckLLVM_.str.182
	li	t3, -7844
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -7840
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	li	t3, -7844
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a1, t0
	call	string_add
	mv	t1, a0
	li	t3, -7848
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -7848
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	print
	li	t0, -748
	li	t3, -7852
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -7852
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, s0, t1
	li	t3, -7852
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -7852
	add	t3, s0, t3
	lw	t0, 0(t3)
	lw	t1, 0(t0)
	li	t3, -7856
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -7856
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	toString
	mv	t1, a0
	li	t3, -7860
	add	t3, s0, t3
	sw	t1, 0(t3)
	la	t0, fuckLLVM_.str.183
	li	t3, -7864
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -7860
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	li	t3, -7864
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a1, t0
	call	string_add
	mv	t1, a0
	li	t3, -7868
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -7868
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	print
	li	t0, -752
	li	t3, -7872
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -7872
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, s0, t1
	li	t3, -7872
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -7872
	add	t3, s0, t3
	lw	t0, 0(t3)
	lw	t1, 0(t0)
	li	t3, -7876
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -7876
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	toString
	mv	t1, a0
	li	t3, -7880
	add	t3, s0, t3
	sw	t1, 0(t3)
	la	t0, fuckLLVM_.str.184
	li	t3, -7884
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -7880
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	li	t3, -7884
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a1, t0
	call	string_add
	mv	t1, a0
	li	t3, -7888
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -7888
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	print
	li	t0, -756
	li	t3, -7892
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -7892
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, s0, t1
	li	t3, -7892
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -7892
	add	t3, s0, t3
	lw	t0, 0(t3)
	lw	t1, 0(t0)
	li	t3, -7896
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -7896
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	toString
	mv	t1, a0
	li	t3, -7900
	add	t3, s0, t3
	sw	t1, 0(t3)
	la	t0, fuckLLVM_.str.185
	li	t3, -7904
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -7900
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	li	t3, -7904
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a1, t0
	call	string_add
	mv	t1, a0
	li	t3, -7908
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -7908
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	print
	li	t0, -760
	li	t3, -7912
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -7912
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, s0, t1
	li	t3, -7912
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -7912
	add	t3, s0, t3
	lw	t0, 0(t3)
	lw	t1, 0(t0)
	li	t3, -7916
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -7916
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	toString
	mv	t1, a0
	li	t3, -7920
	add	t3, s0, t3
	sw	t1, 0(t3)
	la	t0, fuckLLVM_.str.186
	li	t3, -7924
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -7920
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	li	t3, -7924
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a1, t0
	call	string_add
	mv	t1, a0
	li	t3, -7928
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -7928
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	print
	li	t0, -764
	li	t3, -7932
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -7932
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, s0, t1
	li	t3, -7932
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -7932
	add	t3, s0, t3
	lw	t0, 0(t3)
	lw	t1, 0(t0)
	li	t3, -7936
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -7936
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	toString
	mv	t1, a0
	li	t3, -7940
	add	t3, s0, t3
	sw	t1, 0(t3)
	la	t0, fuckLLVM_.str.187
	li	t3, -7944
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -7940
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	li	t3, -7944
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a1, t0
	call	string_add
	mv	t1, a0
	li	t3, -7948
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -7948
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	print
	li	t0, -768
	li	t3, -7952
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -7952
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, s0, t1
	li	t3, -7952
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -7952
	add	t3, s0, t3
	lw	t0, 0(t3)
	lw	t1, 0(t0)
	li	t3, -7956
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -7956
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	toString
	mv	t1, a0
	li	t3, -7960
	add	t3, s0, t3
	sw	t1, 0(t3)
	la	t0, fuckLLVM_.str.188
	li	t3, -7964
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -7960
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	li	t3, -7964
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a1, t0
	call	string_add
	mv	t1, a0
	li	t3, -7968
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -7968
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	print
	li	t0, -772
	li	t3, -7972
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -7972
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, s0, t1
	li	t3, -7972
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -7972
	add	t3, s0, t3
	lw	t0, 0(t3)
	lw	t1, 0(t0)
	li	t3, -7976
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -7976
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	toString
	mv	t1, a0
	li	t3, -7980
	add	t3, s0, t3
	sw	t1, 0(t3)
	la	t0, fuckLLVM_.str.189
	li	t3, -7984
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -7980
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	li	t3, -7984
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a1, t0
	call	string_add
	mv	t1, a0
	li	t3, -7988
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -7988
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	print
	li	t0, -776
	li	t3, -7992
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -7992
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, s0, t1
	li	t3, -7992
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -7992
	add	t3, s0, t3
	lw	t0, 0(t3)
	lw	t1, 0(t0)
	li	t3, -7996
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -7996
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	toString
	mv	t1, a0
	li	t3, -8000
	add	t3, s0, t3
	sw	t1, 0(t3)
	la	t0, fuckLLVM_.str.190
	li	t3, -8004
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -8000
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	li	t3, -8004
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a1, t0
	call	string_add
	mv	t1, a0
	li	t3, -8008
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -8008
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	print
	li	t0, -780
	li	t3, -8012
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -8012
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, s0, t1
	li	t3, -8012
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -8012
	add	t3, s0, t3
	lw	t0, 0(t3)
	lw	t1, 0(t0)
	li	t3, -8016
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -8016
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	toString
	mv	t1, a0
	li	t3, -8020
	add	t3, s0, t3
	sw	t1, 0(t3)
	la	t0, fuckLLVM_.str.191
	li	t3, -8024
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -8020
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	li	t3, -8024
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a1, t0
	call	string_add
	mv	t1, a0
	li	t3, -8028
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -8028
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	print
	li	t0, -784
	li	t3, -8032
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -8032
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, s0, t1
	li	t3, -8032
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -8032
	add	t3, s0, t3
	lw	t0, 0(t3)
	lw	t1, 0(t0)
	li	t3, -8036
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -8036
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	toString
	mv	t1, a0
	li	t3, -8040
	add	t3, s0, t3
	sw	t1, 0(t3)
	la	t0, fuckLLVM_.str.192
	li	t3, -8044
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -8040
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	li	t3, -8044
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a1, t0
	call	string_add
	mv	t1, a0
	li	t3, -8048
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -8048
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	print
	li	t0, -788
	li	t3, -8052
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -8052
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, s0, t1
	li	t3, -8052
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -8052
	add	t3, s0, t3
	lw	t0, 0(t3)
	lw	t1, 0(t0)
	li	t3, -8056
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -8056
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	toString
	mv	t1, a0
	li	t3, -8060
	add	t3, s0, t3
	sw	t1, 0(t3)
	la	t0, fuckLLVM_.str.193
	li	t3, -8064
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -8060
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	li	t3, -8064
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a1, t0
	call	string_add
	mv	t1, a0
	li	t3, -8068
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -8068
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	print
	li	t0, -792
	li	t3, -8072
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -8072
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, s0, t1
	li	t3, -8072
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -8072
	add	t3, s0, t3
	lw	t0, 0(t3)
	lw	t1, 0(t0)
	li	t3, -8076
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -8076
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	toString
	mv	t1, a0
	li	t3, -8080
	add	t3, s0, t3
	sw	t1, 0(t3)
	la	t0, fuckLLVM_.str.194
	li	t3, -8084
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -8080
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	li	t3, -8084
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a1, t0
	call	string_add
	mv	t1, a0
	li	t3, -8088
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -8088
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	print
	li	t0, -796
	li	t3, -8092
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -8092
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, s0, t1
	li	t3, -8092
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -8092
	add	t3, s0, t3
	lw	t0, 0(t3)
	lw	t1, 0(t0)
	li	t3, -8096
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -8096
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	toString
	mv	t1, a0
	li	t3, -8100
	add	t3, s0, t3
	sw	t1, 0(t3)
	la	t0, fuckLLVM_.str.195
	li	t3, -8104
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -8100
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	li	t3, -8104
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a1, t0
	call	string_add
	mv	t1, a0
	li	t3, -8108
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -8108
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	print
	li	t0, -800
	li	t3, -8112
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -8112
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, s0, t1
	li	t3, -8112
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -8112
	add	t3, s0, t3
	lw	t0, 0(t3)
	lw	t1, 0(t0)
	li	t3, -8116
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -8116
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	toString
	mv	t1, a0
	li	t3, -8120
	add	t3, s0, t3
	sw	t1, 0(t3)
	la	t0, fuckLLVM_.str.196
	li	t3, -8124
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -8120
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	li	t3, -8124
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a1, t0
	call	string_add
	mv	t1, a0
	li	t3, -8128
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -8128
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	print
	li	t0, -804
	li	t3, -8132
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -8132
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, s0, t1
	li	t3, -8132
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -8132
	add	t3, s0, t3
	lw	t0, 0(t3)
	lw	t1, 0(t0)
	li	t3, -8136
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -8136
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	toString
	mv	t1, a0
	li	t3, -8140
	add	t3, s0, t3
	sw	t1, 0(t3)
	la	t0, fuckLLVM_.str.197
	li	t3, -8144
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -8140
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	li	t3, -8144
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a1, t0
	call	string_add
	mv	t1, a0
	li	t3, -8148
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -8148
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	print
	li	t0, -808
	li	t3, -8152
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -8152
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, s0, t1
	li	t3, -8152
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -8152
	add	t3, s0, t3
	lw	t0, 0(t3)
	lw	t1, 0(t0)
	li	t3, -8156
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -8156
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	toString
	mv	t1, a0
	li	t3, -8160
	add	t3, s0, t3
	sw	t1, 0(t3)
	la	t0, fuckLLVM_.str.198
	li	t3, -8164
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -8160
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	li	t3, -8164
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a1, t0
	call	string_add
	mv	t1, a0
	li	t3, -8168
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -8168
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	print
	li	t0, -812
	li	t3, -8172
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -8172
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, s0, t1
	li	t3, -8172
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -8172
	add	t3, s0, t3
	lw	t0, 0(t3)
	lw	t1, 0(t0)
	li	t3, -8176
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -8176
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	toString
	mv	t1, a0
	li	t3, -8180
	add	t3, s0, t3
	sw	t1, 0(t3)
	la	t0, fuckLLVM_.str.199
	li	t3, -8184
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -8180
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	li	t3, -8184
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a1, t0
	call	string_add
	mv	t1, a0
	li	t3, -8188
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -8188
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	print
	li	t0, -816
	li	t3, -8192
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -8192
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, s0, t1
	li	t3, -8192
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -8192
	add	t3, s0, t3
	lw	t0, 0(t3)
	lw	t1, 0(t0)
	li	t3, -8196
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -8196
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	toString
	mv	t1, a0
	li	t3, -8200
	add	t3, s0, t3
	sw	t1, 0(t3)
	la	t0, fuckLLVM_.str.200
	li	t3, -8204
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -8200
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	li	t3, -8204
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a1, t0
	call	string_add
	mv	t1, a0
	li	t3, -8208
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -8208
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	print
	li	t0, -820
	li	t3, -8212
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -8212
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, s0, t1
	li	t3, -8212
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -8212
	add	t3, s0, t3
	lw	t0, 0(t3)
	lw	t1, 0(t0)
	li	t3, -8216
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -8216
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	toString
	mv	t1, a0
	li	t3, -8220
	add	t3, s0, t3
	sw	t1, 0(t3)
	la	t0, fuckLLVM_.str.201
	li	t3, -8224
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -8220
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	li	t3, -8224
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a1, t0
	call	string_add
	mv	t1, a0
	li	t3, -8228
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -8228
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	print
	li	t0, -824
	li	t3, -8232
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -8232
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, s0, t1
	li	t3, -8232
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -8232
	add	t3, s0, t3
	lw	t0, 0(t3)
	lw	t1, 0(t0)
	li	t3, -8236
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -8236
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	toString
	mv	t1, a0
	li	t3, -8240
	add	t3, s0, t3
	sw	t1, 0(t3)
	la	t0, fuckLLVM_.str.202
	li	t3, -8244
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -8240
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	li	t3, -8244
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a1, t0
	call	string_add
	mv	t1, a0
	li	t3, -8248
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -8248
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	print
	li	t0, -828
	li	t3, -8252
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -8252
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, s0, t1
	li	t3, -8252
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -8252
	add	t3, s0, t3
	lw	t0, 0(t3)
	lw	t1, 0(t0)
	li	t3, -8256
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -8256
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	toString
	mv	t1, a0
	li	t3, -8260
	add	t3, s0, t3
	sw	t1, 0(t3)
	la	t0, fuckLLVM_.str.203
	li	t3, -8264
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -8260
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	li	t3, -8264
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a1, t0
	call	string_add
	mv	t1, a0
	li	t3, -8268
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -8268
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	print
	li	t0, -832
	li	t3, -8272
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -8272
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, s0, t1
	li	t3, -8272
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -8272
	add	t3, s0, t3
	lw	t0, 0(t3)
	lw	t1, 0(t0)
	li	t3, -8276
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -8276
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	toString
	mv	t1, a0
	li	t3, -8280
	add	t3, s0, t3
	sw	t1, 0(t3)
	la	t0, fuckLLVM_.str.204
	li	t3, -8284
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -8280
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	li	t3, -8284
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a1, t0
	call	string_add
	mv	t1, a0
	li	t3, -8288
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -8288
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	print
	li	t0, -836
	li	t3, -8292
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -8292
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, s0, t1
	li	t3, -8292
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -8292
	add	t3, s0, t3
	lw	t0, 0(t3)
	lw	t1, 0(t0)
	li	t3, -8296
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -8296
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	toString
	mv	t1, a0
	li	t3, -8300
	add	t3, s0, t3
	sw	t1, 0(t3)
	la	t0, fuckLLVM_.str.205
	li	t3, -8304
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -8300
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	li	t3, -8304
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a1, t0
	call	string_add
	mv	t1, a0
	li	t3, -8308
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -8308
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	print
	li	t0, -840
	li	t3, -8312
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -8312
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, s0, t1
	li	t3, -8312
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -8312
	add	t3, s0, t3
	lw	t0, 0(t3)
	lw	t1, 0(t0)
	li	t3, -8316
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -8316
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	toString
	mv	t1, a0
	li	t3, -8320
	add	t3, s0, t3
	sw	t1, 0(t3)
	la	t0, fuckLLVM_.str.206
	li	t3, -8324
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -8320
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	li	t3, -8324
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a1, t0
	call	string_add
	mv	t1, a0
	li	t3, -8328
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -8328
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	print
	li	t0, -844
	li	t3, -8332
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -8332
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, s0, t1
	li	t3, -8332
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -8332
	add	t3, s0, t3
	lw	t0, 0(t3)
	lw	t1, 0(t0)
	li	t3, -8336
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -8336
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	toString
	mv	t1, a0
	li	t3, -8340
	add	t3, s0, t3
	sw	t1, 0(t3)
	la	t0, fuckLLVM_.str.207
	li	t3, -8344
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -8340
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	li	t3, -8344
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a1, t0
	call	string_add
	mv	t1, a0
	li	t3, -8348
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -8348
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	print
	li	t0, -848
	li	t3, -8352
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -8352
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, s0, t1
	li	t3, -8352
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -8352
	add	t3, s0, t3
	lw	t0, 0(t3)
	lw	t1, 0(t0)
	li	t3, -8356
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -8356
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	toString
	mv	t1, a0
	li	t3, -8360
	add	t3, s0, t3
	sw	t1, 0(t3)
	la	t0, fuckLLVM_.str.208
	li	t3, -8364
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -8360
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	li	t3, -8364
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a1, t0
	call	string_add
	mv	t1, a0
	li	t3, -8368
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -8368
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	print
	li	t0, -852
	li	t3, -8372
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -8372
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, s0, t1
	li	t3, -8372
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -8372
	add	t3, s0, t3
	lw	t0, 0(t3)
	lw	t1, 0(t0)
	li	t3, -8376
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -8376
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	toString
	mv	t1, a0
	li	t3, -8380
	add	t3, s0, t3
	sw	t1, 0(t3)
	la	t0, fuckLLVM_.str.209
	li	t3, -8384
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -8380
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	li	t3, -8384
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a1, t0
	call	string_add
	mv	t1, a0
	li	t3, -8388
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -8388
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	print
	li	t0, -856
	li	t3, -8392
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -8392
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, s0, t1
	li	t3, -8392
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -8392
	add	t3, s0, t3
	lw	t0, 0(t3)
	lw	t1, 0(t0)
	li	t3, -8396
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -8396
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	toString
	mv	t1, a0
	li	t3, -8400
	add	t3, s0, t3
	sw	t1, 0(t3)
	la	t0, fuckLLVM_.str.210
	li	t3, -8404
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -8400
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	li	t3, -8404
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a1, t0
	call	string_add
	mv	t1, a0
	li	t3, -8408
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -8408
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	print
	li	t0, -860
	li	t3, -8412
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -8412
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, s0, t1
	li	t3, -8412
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -8412
	add	t3, s0, t3
	lw	t0, 0(t3)
	lw	t1, 0(t0)
	li	t3, -8416
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -8416
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	toString
	mv	t1, a0
	li	t3, -8420
	add	t3, s0, t3
	sw	t1, 0(t3)
	la	t0, fuckLLVM_.str.211
	li	t3, -8424
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -8420
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	li	t3, -8424
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a1, t0
	call	string_add
	mv	t1, a0
	li	t3, -8428
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -8428
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	print
	li	t0, -864
	li	t3, -8432
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -8432
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, s0, t1
	li	t3, -8432
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -8432
	add	t3, s0, t3
	lw	t0, 0(t3)
	lw	t1, 0(t0)
	li	t3, -8436
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -8436
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	toString
	mv	t1, a0
	li	t3, -8440
	add	t3, s0, t3
	sw	t1, 0(t3)
	la	t0, fuckLLVM_.str.212
	li	t3, -8444
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -8440
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	li	t3, -8444
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a1, t0
	call	string_add
	mv	t1, a0
	li	t3, -8448
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -8448
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	print
	li	t0, -868
	li	t3, -8452
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -8452
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, s0, t1
	li	t3, -8452
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -8452
	add	t3, s0, t3
	lw	t0, 0(t3)
	lw	t1, 0(t0)
	li	t3, -8456
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -8456
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	toString
	mv	t1, a0
	li	t3, -8460
	add	t3, s0, t3
	sw	t1, 0(t3)
	la	t0, fuckLLVM_.str.213
	li	t3, -8464
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -8460
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	li	t3, -8464
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a1, t0
	call	string_add
	mv	t1, a0
	li	t3, -8468
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -8468
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	print
	li	t0, -872
	li	t3, -8472
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -8472
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, s0, t1
	li	t3, -8472
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -8472
	add	t3, s0, t3
	lw	t0, 0(t3)
	lw	t1, 0(t0)
	li	t3, -8476
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -8476
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	toString
	mv	t1, a0
	li	t3, -8480
	add	t3, s0, t3
	sw	t1, 0(t3)
	la	t0, fuckLLVM_.str.214
	li	t3, -8484
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -8480
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	li	t3, -8484
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a1, t0
	call	string_add
	mv	t1, a0
	li	t3, -8488
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -8488
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	print
	li	t0, -876
	li	t3, -8492
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -8492
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, s0, t1
	li	t3, -8492
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -8492
	add	t3, s0, t3
	lw	t0, 0(t3)
	lw	t1, 0(t0)
	li	t3, -8496
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -8496
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	toString
	mv	t1, a0
	li	t3, -8500
	add	t3, s0, t3
	sw	t1, 0(t3)
	la	t0, fuckLLVM_.str.215
	li	t3, -8504
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -8500
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	li	t3, -8504
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a1, t0
	call	string_add
	mv	t1, a0
	li	t3, -8508
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -8508
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	print
	li	t0, -880
	li	t3, -8512
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -8512
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, s0, t1
	li	t3, -8512
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -8512
	add	t3, s0, t3
	lw	t0, 0(t3)
	lw	t1, 0(t0)
	li	t3, -8516
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -8516
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	toString
	mv	t1, a0
	li	t3, -8520
	add	t3, s0, t3
	sw	t1, 0(t3)
	la	t0, fuckLLVM_.str.216
	li	t3, -8524
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -8520
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	li	t3, -8524
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a1, t0
	call	string_add
	mv	t1, a0
	li	t3, -8528
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -8528
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	print
	li	t0, -884
	li	t3, -8532
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -8532
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, s0, t1
	li	t3, -8532
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -8532
	add	t3, s0, t3
	lw	t0, 0(t3)
	lw	t1, 0(t0)
	li	t3, -8536
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -8536
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	toString
	mv	t1, a0
	li	t3, -8540
	add	t3, s0, t3
	sw	t1, 0(t3)
	la	t0, fuckLLVM_.str.217
	li	t3, -8544
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -8540
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	li	t3, -8544
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a1, t0
	call	string_add
	mv	t1, a0
	li	t3, -8548
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -8548
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	print
	li	t0, -888
	li	t3, -8552
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -8552
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, s0, t1
	li	t3, -8552
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -8552
	add	t3, s0, t3
	lw	t0, 0(t3)
	lw	t1, 0(t0)
	li	t3, -8556
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -8556
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	toString
	mv	t1, a0
	li	t3, -8560
	add	t3, s0, t3
	sw	t1, 0(t3)
	la	t0, fuckLLVM_.str.218
	li	t3, -8564
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -8560
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	li	t3, -8564
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a1, t0
	call	string_add
	mv	t1, a0
	li	t3, -8568
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -8568
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	print
	li	t0, -892
	li	t3, -8572
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -8572
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, s0, t1
	li	t3, -8572
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -8572
	add	t3, s0, t3
	lw	t0, 0(t3)
	lw	t1, 0(t0)
	li	t3, -8576
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -8576
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	toString
	mv	t1, a0
	li	t3, -8580
	add	t3, s0, t3
	sw	t1, 0(t3)
	la	t0, fuckLLVM_.str.219
	li	t3, -8584
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -8580
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	li	t3, -8584
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a1, t0
	call	string_add
	mv	t1, a0
	li	t3, -8588
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -8588
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	print
	li	t0, -896
	li	t3, -8592
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -8592
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, s0, t1
	li	t3, -8592
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -8592
	add	t3, s0, t3
	lw	t0, 0(t3)
	lw	t1, 0(t0)
	li	t3, -8596
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -8596
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	toString
	mv	t1, a0
	li	t3, -8600
	add	t3, s0, t3
	sw	t1, 0(t3)
	la	t0, fuckLLVM_.str.220
	li	t3, -8604
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -8600
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	li	t3, -8604
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a1, t0
	call	string_add
	mv	t1, a0
	li	t3, -8608
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -8608
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	print
	li	t0, -900
	li	t3, -8612
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -8612
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, s0, t1
	li	t3, -8612
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -8612
	add	t3, s0, t3
	lw	t0, 0(t3)
	lw	t1, 0(t0)
	li	t3, -8616
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -8616
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	toString
	mv	t1, a0
	li	t3, -8620
	add	t3, s0, t3
	sw	t1, 0(t3)
	la	t0, fuckLLVM_.str.221
	li	t3, -8624
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -8620
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	li	t3, -8624
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a1, t0
	call	string_add
	mv	t1, a0
	li	t3, -8628
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -8628
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	print
	li	t0, -904
	li	t3, -8632
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -8632
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, s0, t1
	li	t3, -8632
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -8632
	add	t3, s0, t3
	lw	t0, 0(t3)
	lw	t1, 0(t0)
	li	t3, -8636
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -8636
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	toString
	mv	t1, a0
	li	t3, -8640
	add	t3, s0, t3
	sw	t1, 0(t3)
	la	t0, fuckLLVM_.str.222
	li	t3, -8644
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -8640
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	li	t3, -8644
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a1, t0
	call	string_add
	mv	t1, a0
	li	t3, -8648
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -8648
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	print
	li	t0, -908
	li	t3, -8652
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -8652
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, s0, t1
	li	t3, -8652
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -8652
	add	t3, s0, t3
	lw	t0, 0(t3)
	lw	t1, 0(t0)
	li	t3, -8656
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -8656
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	toString
	mv	t1, a0
	li	t3, -8660
	add	t3, s0, t3
	sw	t1, 0(t3)
	la	t0, fuckLLVM_.str.223
	li	t3, -8664
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -8660
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	li	t3, -8664
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a1, t0
	call	string_add
	mv	t1, a0
	li	t3, -8668
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -8668
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	print
	li	t0, -912
	li	t3, -8672
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -8672
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, s0, t1
	li	t3, -8672
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -8672
	add	t3, s0, t3
	lw	t0, 0(t3)
	lw	t1, 0(t0)
	li	t3, -8676
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -8676
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	toString
	mv	t1, a0
	li	t3, -8680
	add	t3, s0, t3
	sw	t1, 0(t3)
	la	t0, fuckLLVM_.str.224
	li	t3, -8684
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -8680
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	li	t3, -8684
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a1, t0
	call	string_add
	mv	t1, a0
	li	t3, -8688
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -8688
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	print
	li	t0, -916
	li	t3, -8692
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -8692
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, s0, t1
	li	t3, -8692
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -8692
	add	t3, s0, t3
	lw	t0, 0(t3)
	lw	t1, 0(t0)
	li	t3, -8696
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -8696
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	toString
	mv	t1, a0
	li	t3, -8700
	add	t3, s0, t3
	sw	t1, 0(t3)
	la	t0, fuckLLVM_.str.225
	li	t3, -8704
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -8700
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	li	t3, -8704
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a1, t0
	call	string_add
	mv	t1, a0
	li	t3, -8708
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -8708
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	print
	li	t0, -920
	li	t3, -8712
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -8712
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, s0, t1
	li	t3, -8712
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -8712
	add	t3, s0, t3
	lw	t0, 0(t3)
	lw	t1, 0(t0)
	li	t3, -8716
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -8716
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	toString
	mv	t1, a0
	li	t3, -8720
	add	t3, s0, t3
	sw	t1, 0(t3)
	la	t0, fuckLLVM_.str.226
	li	t3, -8724
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -8720
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	li	t3, -8724
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a1, t0
	call	string_add
	mv	t1, a0
	li	t3, -8728
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -8728
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	print
	li	t0, -924
	li	t3, -8732
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -8732
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, s0, t1
	li	t3, -8732
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -8732
	add	t3, s0, t3
	lw	t0, 0(t3)
	lw	t1, 0(t0)
	li	t3, -8736
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -8736
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	toString
	mv	t1, a0
	li	t3, -8740
	add	t3, s0, t3
	sw	t1, 0(t3)
	la	t0, fuckLLVM_.str.227
	li	t3, -8744
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -8740
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	li	t3, -8744
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a1, t0
	call	string_add
	mv	t1, a0
	li	t3, -8748
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -8748
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	print
	li	t0, -928
	li	t3, -8752
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -8752
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, s0, t1
	li	t3, -8752
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -8752
	add	t3, s0, t3
	lw	t0, 0(t3)
	lw	t1, 0(t0)
	li	t3, -8756
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -8756
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	toString
	mv	t1, a0
	li	t3, -8760
	add	t3, s0, t3
	sw	t1, 0(t3)
	la	t0, fuckLLVM_.str.228
	li	t3, -8764
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -8760
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	li	t3, -8764
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a1, t0
	call	string_add
	mv	t1, a0
	li	t3, -8768
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -8768
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	print
	li	t0, -932
	li	t3, -8772
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -8772
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, s0, t1
	li	t3, -8772
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -8772
	add	t3, s0, t3
	lw	t0, 0(t3)
	lw	t1, 0(t0)
	li	t3, -8776
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -8776
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	toString
	mv	t1, a0
	li	t3, -8780
	add	t3, s0, t3
	sw	t1, 0(t3)
	la	t0, fuckLLVM_.str.229
	li	t3, -8784
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -8780
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	li	t3, -8784
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a1, t0
	call	string_add
	mv	t1, a0
	li	t3, -8788
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -8788
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	print
	li	t0, -936
	li	t3, -8792
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -8792
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, s0, t1
	li	t3, -8792
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -8792
	add	t3, s0, t3
	lw	t0, 0(t3)
	lw	t1, 0(t0)
	li	t3, -8796
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -8796
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	toString
	mv	t1, a0
	li	t3, -8800
	add	t3, s0, t3
	sw	t1, 0(t3)
	la	t0, fuckLLVM_.str.230
	li	t3, -8804
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -8800
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	li	t3, -8804
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a1, t0
	call	string_add
	mv	t1, a0
	li	t3, -8808
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -8808
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	print
	li	t0, -940
	li	t3, -8812
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -8812
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, s0, t1
	li	t3, -8812
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -8812
	add	t3, s0, t3
	lw	t0, 0(t3)
	lw	t1, 0(t0)
	li	t3, -8816
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -8816
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	toString
	mv	t1, a0
	li	t3, -8820
	add	t3, s0, t3
	sw	t1, 0(t3)
	la	t0, fuckLLVM_.str.231
	li	t3, -8824
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -8820
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	li	t3, -8824
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a1, t0
	call	string_add
	mv	t1, a0
	li	t3, -8828
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -8828
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	print
	li	t0, -944
	li	t3, -8832
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -8832
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, s0, t1
	li	t3, -8832
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -8832
	add	t3, s0, t3
	lw	t0, 0(t3)
	lw	t1, 0(t0)
	li	t3, -8836
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -8836
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	toString
	mv	t1, a0
	li	t3, -8840
	add	t3, s0, t3
	sw	t1, 0(t3)
	la	t0, fuckLLVM_.str.232
	li	t3, -8844
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -8840
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	li	t3, -8844
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a1, t0
	call	string_add
	mv	t1, a0
	li	t3, -8848
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -8848
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	print
	li	t0, -948
	li	t3, -8852
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -8852
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, s0, t1
	li	t3, -8852
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -8852
	add	t3, s0, t3
	lw	t0, 0(t3)
	lw	t1, 0(t0)
	li	t3, -8856
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -8856
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	toString
	mv	t1, a0
	li	t3, -8860
	add	t3, s0, t3
	sw	t1, 0(t3)
	la	t0, fuckLLVM_.str.233
	li	t3, -8864
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -8860
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	li	t3, -8864
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a1, t0
	call	string_add
	mv	t1, a0
	li	t3, -8868
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -8868
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	print
	li	t0, -952
	li	t3, -8872
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -8872
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, s0, t1
	li	t3, -8872
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -8872
	add	t3, s0, t3
	lw	t0, 0(t3)
	lw	t1, 0(t0)
	li	t3, -8876
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -8876
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	toString
	mv	t1, a0
	li	t3, -8880
	add	t3, s0, t3
	sw	t1, 0(t3)
	la	t0, fuckLLVM_.str.234
	li	t3, -8884
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -8880
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	li	t3, -8884
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a1, t0
	call	string_add
	mv	t1, a0
	li	t3, -8888
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -8888
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	print
	li	t0, -956
	li	t3, -8892
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -8892
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, s0, t1
	li	t3, -8892
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -8892
	add	t3, s0, t3
	lw	t0, 0(t3)
	lw	t1, 0(t0)
	li	t3, -8896
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -8896
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	toString
	mv	t1, a0
	li	t3, -8900
	add	t3, s0, t3
	sw	t1, 0(t3)
	la	t0, fuckLLVM_.str.235
	li	t3, -8904
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -8900
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	li	t3, -8904
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a1, t0
	call	string_add
	mv	t1, a0
	li	t3, -8908
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -8908
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	print
	li	t0, -960
	li	t3, -8912
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -8912
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, s0, t1
	li	t3, -8912
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -8912
	add	t3, s0, t3
	lw	t0, 0(t3)
	lw	t1, 0(t0)
	li	t3, -8916
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -8916
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	toString
	mv	t1, a0
	li	t3, -8920
	add	t3, s0, t3
	sw	t1, 0(t3)
	la	t0, fuckLLVM_.str.236
	li	t3, -8924
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -8920
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	li	t3, -8924
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a1, t0
	call	string_add
	mv	t1, a0
	li	t3, -8928
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -8928
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	print
	li	t0, -964
	li	t3, -8932
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -8932
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, s0, t1
	li	t3, -8932
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -8932
	add	t3, s0, t3
	lw	t0, 0(t3)
	lw	t1, 0(t0)
	li	t3, -8936
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -8936
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	toString
	mv	t1, a0
	li	t3, -8940
	add	t3, s0, t3
	sw	t1, 0(t3)
	la	t0, fuckLLVM_.str.237
	li	t3, -8944
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -8940
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	li	t3, -8944
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a1, t0
	call	string_add
	mv	t1, a0
	li	t3, -8948
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -8948
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	print
	li	t0, -968
	li	t3, -8952
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -8952
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, s0, t1
	li	t3, -8952
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -8952
	add	t3, s0, t3
	lw	t0, 0(t3)
	lw	t1, 0(t0)
	li	t3, -8956
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -8956
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	toString
	mv	t1, a0
	li	t3, -8960
	add	t3, s0, t3
	sw	t1, 0(t3)
	la	t0, fuckLLVM_.str.238
	li	t3, -8964
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -8960
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	li	t3, -8964
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a1, t0
	call	string_add
	mv	t1, a0
	li	t3, -8968
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -8968
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	print
	li	t0, -972
	li	t3, -8972
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -8972
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, s0, t1
	li	t3, -8972
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -8972
	add	t3, s0, t3
	lw	t0, 0(t3)
	lw	t1, 0(t0)
	li	t3, -8976
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -8976
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	toString
	mv	t1, a0
	li	t3, -8980
	add	t3, s0, t3
	sw	t1, 0(t3)
	la	t0, fuckLLVM_.str.239
	li	t3, -8984
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -8980
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	li	t3, -8984
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a1, t0
	call	string_add
	mv	t1, a0
	li	t3, -8988
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -8988
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	print
	li	t0, -976
	li	t3, -8992
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -8992
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, s0, t1
	li	t3, -8992
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -8992
	add	t3, s0, t3
	lw	t0, 0(t3)
	lw	t1, 0(t0)
	li	t3, -8996
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -8996
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	toString
	mv	t1, a0
	li	t3, -9000
	add	t3, s0, t3
	sw	t1, 0(t3)
	la	t0, fuckLLVM_.str.240
	li	t3, -9004
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -9000
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	li	t3, -9004
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a1, t0
	call	string_add
	mv	t1, a0
	li	t3, -9008
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -9008
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	print
	li	t0, -980
	li	t3, -9012
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -9012
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, s0, t1
	li	t3, -9012
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -9012
	add	t3, s0, t3
	lw	t0, 0(t3)
	lw	t1, 0(t0)
	li	t3, -9016
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -9016
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	toString
	mv	t1, a0
	li	t3, -9020
	add	t3, s0, t3
	sw	t1, 0(t3)
	la	t0, fuckLLVM_.str.241
	li	t3, -9024
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -9020
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	li	t3, -9024
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a1, t0
	call	string_add
	mv	t1, a0
	li	t3, -9028
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -9028
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	print
	li	t0, -984
	li	t3, -9032
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -9032
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, s0, t1
	li	t3, -9032
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -9032
	add	t3, s0, t3
	lw	t0, 0(t3)
	lw	t1, 0(t0)
	li	t3, -9036
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -9036
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	toString
	mv	t1, a0
	li	t3, -9040
	add	t3, s0, t3
	sw	t1, 0(t3)
	la	t0, fuckLLVM_.str.242
	li	t3, -9044
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -9040
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	li	t3, -9044
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a1, t0
	call	string_add
	mv	t1, a0
	li	t3, -9048
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -9048
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	print
	li	t0, -988
	li	t3, -9052
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -9052
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, s0, t1
	li	t3, -9052
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -9052
	add	t3, s0, t3
	lw	t0, 0(t3)
	lw	t1, 0(t0)
	li	t3, -9056
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -9056
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	toString
	mv	t1, a0
	li	t3, -9060
	add	t3, s0, t3
	sw	t1, 0(t3)
	la	t0, fuckLLVM_.str.243
	li	t3, -9064
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -9060
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	li	t3, -9064
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a1, t0
	call	string_add
	mv	t1, a0
	li	t3, -9068
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -9068
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	print
	li	t0, -992
	li	t3, -9072
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -9072
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, s0, t1
	li	t3, -9072
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -9072
	add	t3, s0, t3
	lw	t0, 0(t3)
	lw	t1, 0(t0)
	li	t3, -9076
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -9076
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	toString
	mv	t1, a0
	li	t3, -9080
	add	t3, s0, t3
	sw	t1, 0(t3)
	la	t0, fuckLLVM_.str.244
	li	t3, -9084
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -9080
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	li	t3, -9084
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a1, t0
	call	string_add
	mv	t1, a0
	li	t3, -9088
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -9088
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	print
	li	t0, -996
	li	t3, -9092
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -9092
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, s0, t1
	li	t3, -9092
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -9092
	add	t3, s0, t3
	lw	t0, 0(t3)
	lw	t1, 0(t0)
	li	t3, -9096
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -9096
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	toString
	mv	t1, a0
	li	t3, -9100
	add	t3, s0, t3
	sw	t1, 0(t3)
	la	t0, fuckLLVM_.str.245
	li	t3, -9104
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -9100
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	li	t3, -9104
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a1, t0
	call	string_add
	mv	t1, a0
	li	t3, -9108
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -9108
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	print
	li	t0, -1000
	li	t3, -9112
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -9112
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, s0, t1
	li	t3, -9112
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -9112
	add	t3, s0, t3
	lw	t0, 0(t3)
	lw	t1, 0(t0)
	li	t3, -9116
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -9116
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	toString
	mv	t1, a0
	li	t3, -9120
	add	t3, s0, t3
	sw	t1, 0(t3)
	la	t0, fuckLLVM_.str.246
	li	t3, -9124
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -9120
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	li	t3, -9124
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a1, t0
	call	string_add
	mv	t1, a0
	li	t3, -9128
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -9128
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	print
	li	t0, -1004
	li	t3, -9132
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -9132
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, s0, t1
	li	t3, -9132
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -9132
	add	t3, s0, t3
	lw	t0, 0(t3)
	lw	t1, 0(t0)
	li	t3, -9136
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -9136
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	toString
	mv	t1, a0
	li	t3, -9140
	add	t3, s0, t3
	sw	t1, 0(t3)
	la	t0, fuckLLVM_.str.247
	li	t3, -9144
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -9140
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	li	t3, -9144
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a1, t0
	call	string_add
	mv	t1, a0
	li	t3, -9148
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -9148
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	print
	li	t0, -1008
	li	t3, -9152
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -9152
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, s0, t1
	li	t3, -9152
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -9152
	add	t3, s0, t3
	lw	t0, 0(t3)
	lw	t1, 0(t0)
	li	t3, -9156
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -9156
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	toString
	mv	t1, a0
	li	t3, -9160
	add	t3, s0, t3
	sw	t1, 0(t3)
	la	t0, fuckLLVM_.str.248
	li	t3, -9164
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -9160
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	li	t3, -9164
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a1, t0
	call	string_add
	mv	t1, a0
	li	t3, -9168
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -9168
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	print
	li	t0, -1012
	li	t3, -9172
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -9172
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, s0, t1
	li	t3, -9172
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -9172
	add	t3, s0, t3
	lw	t0, 0(t3)
	lw	t1, 0(t0)
	li	t3, -9176
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -9176
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	toString
	mv	t1, a0
	li	t3, -9180
	add	t3, s0, t3
	sw	t1, 0(t3)
	la	t0, fuckLLVM_.str.249
	li	t3, -9184
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -9180
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	li	t3, -9184
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a1, t0
	call	string_add
	mv	t1, a0
	li	t3, -9188
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -9188
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	print
	li	t0, -1016
	li	t3, -9192
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -9192
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, s0, t1
	li	t3, -9192
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -9192
	add	t3, s0, t3
	lw	t0, 0(t3)
	lw	t1, 0(t0)
	li	t3, -9196
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -9196
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	toString
	mv	t1, a0
	li	t3, -9200
	add	t3, s0, t3
	sw	t1, 0(t3)
	la	t0, fuckLLVM_.str.250
	li	t3, -9204
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -9200
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	li	t3, -9204
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a1, t0
	call	string_add
	mv	t1, a0
	li	t3, -9208
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -9208
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	print
	li	t0, -1020
	li	t3, -9212
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -9212
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, s0, t1
	li	t3, -9212
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -9212
	add	t3, s0, t3
	lw	t0, 0(t3)
	lw	t1, 0(t0)
	li	t3, -9216
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -9216
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	toString
	mv	t1, a0
	li	t3, -9220
	add	t3, s0, t3
	sw	t1, 0(t3)
	la	t0, fuckLLVM_.str.251
	li	t3, -9224
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -9220
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	li	t3, -9224
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a1, t0
	call	string_add
	mv	t1, a0
	li	t3, -9228
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -9228
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	print
	li	t0, -1024
	li	t3, -9232
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -9232
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, s0, t1
	li	t3, -9232
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -9232
	add	t3, s0, t3
	lw	t0, 0(t3)
	lw	t1, 0(t0)
	li	t3, -9236
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -9236
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	toString
	mv	t1, a0
	li	t3, -9240
	add	t3, s0, t3
	sw	t1, 0(t3)
	la	t0, fuckLLVM_.str.252
	li	t3, -9244
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -9240
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	li	t3, -9244
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a1, t0
	call	string_add
	mv	t1, a0
	li	t3, -9248
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -9248
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	print
	li	t0, -1028
	li	t3, -9252
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -9252
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, s0, t1
	li	t3, -9252
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -9252
	add	t3, s0, t3
	lw	t0, 0(t3)
	lw	t1, 0(t0)
	li	t3, -9256
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -9256
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	toString
	mv	t1, a0
	li	t3, -9260
	add	t3, s0, t3
	sw	t1, 0(t3)
	la	t0, fuckLLVM_.str.253
	li	t3, -9264
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -9260
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	li	t3, -9264
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a1, t0
	call	string_add
	mv	t1, a0
	li	t3, -9268
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -9268
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	print
	li	t0, -1032
	li	t3, -9272
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -9272
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, s0, t1
	li	t3, -9272
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -9272
	add	t3, s0, t3
	lw	t0, 0(t3)
	lw	t1, 0(t0)
	li	t3, -9276
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -9276
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	toString
	mv	t1, a0
	li	t3, -9280
	add	t3, s0, t3
	sw	t1, 0(t3)
	la	t0, fuckLLVM_.str.254
	li	t3, -9284
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -9280
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	li	t3, -9284
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a1, t0
	call	string_add
	mv	t1, a0
	li	t3, -9288
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -9288
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	print
	li	t0, -1036
	li	t3, -9292
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -9292
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, s0, t1
	li	t3, -9292
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -9292
	add	t3, s0, t3
	lw	t0, 0(t3)
	lw	t1, 0(t0)
	li	t3, -9296
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -9296
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	toString
	mv	t1, a0
	li	t3, -9300
	add	t3, s0, t3
	sw	t1, 0(t3)
	la	t0, fuckLLVM_.str.255
	li	t3, -9304
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -9300
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	li	t3, -9304
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a1, t0
	call	string_add
	mv	t1, a0
	li	t3, -9308
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -9308
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	print
	la	t0, fuckLLVM_.str.256
	li	t3, -9312
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -9312
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	println
	li	t0, -16
	li	t3, -9316
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -9316
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, s0, t1
	li	t3, -9316
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -9316
	add	t3, s0, t3
	lw	t0, 0(t3)
	lw	t1, 0(t0)
	li	t3, -9320
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -9320
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	toString
	mv	t1, a0
	li	t3, -9324
	add	t3, s0, t3
	sw	t1, 0(t3)
	la	t0, fuckLLVM_.str.257
	li	t3, -9328
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -9324
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	li	t3, -9328
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a1, t0
	call	string_add
	mv	t1, a0
	li	t3, -9332
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -9332
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	print
	li	t0, -20
	li	t3, -9336
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -9336
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, s0, t1
	li	t3, -9336
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -9336
	add	t3, s0, t3
	lw	t0, 0(t3)
	lw	t1, 0(t0)
	li	t3, -9340
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -9340
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	toString
	mv	t1, a0
	li	t3, -9344
	add	t3, s0, t3
	sw	t1, 0(t3)
	la	t0, fuckLLVM_.str.258
	li	t3, -9348
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -9344
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	li	t3, -9348
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a1, t0
	call	string_add
	mv	t1, a0
	li	t3, -9352
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -9352
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	print
	li	t0, -24
	li	t3, -9356
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -9356
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, s0, t1
	li	t3, -9356
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -9356
	add	t3, s0, t3
	lw	t0, 0(t3)
	lw	t1, 0(t0)
	li	t3, -9360
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -9360
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	toString
	mv	t1, a0
	li	t3, -9364
	add	t3, s0, t3
	sw	t1, 0(t3)
	la	t0, fuckLLVM_.str.259
	li	t3, -9368
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -9364
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	li	t3, -9368
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a1, t0
	call	string_add
	mv	t1, a0
	li	t3, -9372
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -9372
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	print
	li	t0, -28
	li	t3, -9376
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -9376
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, s0, t1
	li	t3, -9376
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -9376
	add	t3, s0, t3
	lw	t0, 0(t3)
	lw	t1, 0(t0)
	li	t3, -9380
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -9380
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	toString
	mv	t1, a0
	li	t3, -9384
	add	t3, s0, t3
	sw	t1, 0(t3)
	la	t0, fuckLLVM_.str.260
	li	t3, -9388
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -9384
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	li	t3, -9388
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a1, t0
	call	string_add
	mv	t1, a0
	li	t3, -9392
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -9392
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	print
	li	t0, -32
	li	t3, -9396
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -9396
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, s0, t1
	li	t3, -9396
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -9396
	add	t3, s0, t3
	lw	t0, 0(t3)
	lw	t1, 0(t0)
	li	t3, -9400
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -9400
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	toString
	mv	t1, a0
	li	t3, -9404
	add	t3, s0, t3
	sw	t1, 0(t3)
	la	t0, fuckLLVM_.str.261
	li	t3, -9408
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -9404
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	li	t3, -9408
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a1, t0
	call	string_add
	mv	t1, a0
	li	t3, -9412
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -9412
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	print
	li	t0, -36
	li	t3, -9416
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -9416
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, s0, t1
	li	t3, -9416
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -9416
	add	t3, s0, t3
	lw	t0, 0(t3)
	lw	t1, 0(t0)
	li	t3, -9420
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -9420
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	toString
	mv	t1, a0
	li	t3, -9424
	add	t3, s0, t3
	sw	t1, 0(t3)
	la	t0, fuckLLVM_.str.262
	li	t3, -9428
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -9424
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	li	t3, -9428
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a1, t0
	call	string_add
	mv	t1, a0
	li	t3, -9432
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -9432
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	print
	li	t0, -40
	li	t3, -9436
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -9436
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, s0, t1
	li	t3, -9436
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -9436
	add	t3, s0, t3
	lw	t0, 0(t3)
	lw	t1, 0(t0)
	li	t3, -9440
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -9440
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	toString
	mv	t1, a0
	li	t3, -9444
	add	t3, s0, t3
	sw	t1, 0(t3)
	la	t0, fuckLLVM_.str.263
	li	t3, -9448
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -9444
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	li	t3, -9448
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a1, t0
	call	string_add
	mv	t1, a0
	li	t3, -9452
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -9452
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	print
	li	t0, -44
	li	t3, -9456
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -9456
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, s0, t1
	li	t3, -9456
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -9456
	add	t3, s0, t3
	lw	t0, 0(t3)
	lw	t1, 0(t0)
	li	t3, -9460
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -9460
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	toString
	mv	t1, a0
	li	t3, -9464
	add	t3, s0, t3
	sw	t1, 0(t3)
	la	t0, fuckLLVM_.str.264
	li	t3, -9468
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -9464
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	li	t3, -9468
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a1, t0
	call	string_add
	mv	t1, a0
	li	t3, -9472
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -9472
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	print
	li	t0, -48
	li	t3, -9476
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -9476
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, s0, t1
	li	t3, -9476
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -9476
	add	t3, s0, t3
	lw	t0, 0(t3)
	lw	t1, 0(t0)
	li	t3, -9480
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -9480
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	toString
	mv	t1, a0
	li	t3, -9484
	add	t3, s0, t3
	sw	t1, 0(t3)
	la	t0, fuckLLVM_.str.265
	li	t3, -9488
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -9484
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	li	t3, -9488
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a1, t0
	call	string_add
	mv	t1, a0
	li	t3, -9492
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -9492
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	print
	li	t0, -52
	li	t3, -9496
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -9496
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, s0, t1
	li	t3, -9496
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -9496
	add	t3, s0, t3
	lw	t0, 0(t3)
	lw	t1, 0(t0)
	li	t3, -9500
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -9500
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	toString
	mv	t1, a0
	li	t3, -9504
	add	t3, s0, t3
	sw	t1, 0(t3)
	la	t0, fuckLLVM_.str.266
	li	t3, -9508
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -9504
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	li	t3, -9508
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a1, t0
	call	string_add
	mv	t1, a0
	li	t3, -9512
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -9512
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	print
	li	t0, -56
	li	t3, -9516
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -9516
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, s0, t1
	li	t3, -9516
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -9516
	add	t3, s0, t3
	lw	t0, 0(t3)
	lw	t1, 0(t0)
	li	t3, -9520
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -9520
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	toString
	mv	t1, a0
	li	t3, -9524
	add	t3, s0, t3
	sw	t1, 0(t3)
	la	t0, fuckLLVM_.str.267
	li	t3, -9528
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -9524
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	li	t3, -9528
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a1, t0
	call	string_add
	mv	t1, a0
	li	t3, -9532
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -9532
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	print
	li	t0, -60
	li	t3, -9536
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -9536
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, s0, t1
	li	t3, -9536
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -9536
	add	t3, s0, t3
	lw	t0, 0(t3)
	lw	t1, 0(t0)
	li	t3, -9540
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -9540
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	toString
	mv	t1, a0
	li	t3, -9544
	add	t3, s0, t3
	sw	t1, 0(t3)
	la	t0, fuckLLVM_.str.268
	li	t3, -9548
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -9544
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	li	t3, -9548
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a1, t0
	call	string_add
	mv	t1, a0
	li	t3, -9552
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -9552
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	print
	li	t0, -64
	li	t3, -9556
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -9556
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, s0, t1
	li	t3, -9556
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -9556
	add	t3, s0, t3
	lw	t0, 0(t3)
	lw	t1, 0(t0)
	li	t3, -9560
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -9560
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	toString
	mv	t1, a0
	li	t3, -9564
	add	t3, s0, t3
	sw	t1, 0(t3)
	la	t0, fuckLLVM_.str.269
	li	t3, -9568
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -9564
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	li	t3, -9568
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a1, t0
	call	string_add
	mv	t1, a0
	li	t3, -9572
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -9572
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	print
	li	t0, -68
	li	t3, -9576
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -9576
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, s0, t1
	li	t3, -9576
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -9576
	add	t3, s0, t3
	lw	t0, 0(t3)
	lw	t1, 0(t0)
	li	t3, -9580
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -9580
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	toString
	mv	t1, a0
	li	t3, -9584
	add	t3, s0, t3
	sw	t1, 0(t3)
	la	t0, fuckLLVM_.str.270
	li	t3, -9588
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -9584
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	li	t3, -9588
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a1, t0
	call	string_add
	mv	t1, a0
	li	t3, -9592
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -9592
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	print
	li	t0, -72
	li	t3, -9596
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -9596
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, s0, t1
	li	t3, -9596
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -9596
	add	t3, s0, t3
	lw	t0, 0(t3)
	lw	t1, 0(t0)
	li	t3, -9600
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -9600
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	toString
	mv	t1, a0
	li	t3, -9604
	add	t3, s0, t3
	sw	t1, 0(t3)
	la	t0, fuckLLVM_.str.271
	li	t3, -9608
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -9604
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	li	t3, -9608
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a1, t0
	call	string_add
	mv	t1, a0
	li	t3, -9612
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -9612
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	print
	li	t0, -76
	li	t3, -9616
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -9616
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, s0, t1
	li	t3, -9616
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -9616
	add	t3, s0, t3
	lw	t0, 0(t3)
	lw	t1, 0(t0)
	li	t3, -9620
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -9620
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	toString
	mv	t1, a0
	li	t3, -9624
	add	t3, s0, t3
	sw	t1, 0(t3)
	la	t0, fuckLLVM_.str.272
	li	t3, -9628
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -9624
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	li	t3, -9628
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a1, t0
	call	string_add
	mv	t1, a0
	li	t3, -9632
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -9632
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	print
	li	t0, -80
	li	t3, -9636
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -9636
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, s0, t1
	li	t3, -9636
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -9636
	add	t3, s0, t3
	lw	t0, 0(t3)
	lw	t1, 0(t0)
	li	t3, -9640
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -9640
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	toString
	mv	t1, a0
	li	t3, -9644
	add	t3, s0, t3
	sw	t1, 0(t3)
	la	t0, fuckLLVM_.str.273
	li	t3, -9648
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -9644
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	li	t3, -9648
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a1, t0
	call	string_add
	mv	t1, a0
	li	t3, -9652
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -9652
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	print
	li	t0, -84
	li	t3, -9656
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -9656
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, s0, t1
	li	t3, -9656
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -9656
	add	t3, s0, t3
	lw	t0, 0(t3)
	lw	t1, 0(t0)
	li	t3, -9660
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -9660
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	toString
	mv	t1, a0
	li	t3, -9664
	add	t3, s0, t3
	sw	t1, 0(t3)
	la	t0, fuckLLVM_.str.274
	li	t3, -9668
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -9664
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	li	t3, -9668
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a1, t0
	call	string_add
	mv	t1, a0
	li	t3, -9672
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -9672
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	print
	li	t0, -88
	li	t3, -9676
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -9676
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, s0, t1
	li	t3, -9676
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -9676
	add	t3, s0, t3
	lw	t0, 0(t3)
	lw	t1, 0(t0)
	li	t3, -9680
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -9680
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	toString
	mv	t1, a0
	li	t3, -9684
	add	t3, s0, t3
	sw	t1, 0(t3)
	la	t0, fuckLLVM_.str.275
	li	t3, -9688
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -9684
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	li	t3, -9688
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a1, t0
	call	string_add
	mv	t1, a0
	li	t3, -9692
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -9692
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	print
	li	t0, -92
	li	t3, -9696
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -9696
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, s0, t1
	li	t3, -9696
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -9696
	add	t3, s0, t3
	lw	t0, 0(t3)
	lw	t1, 0(t0)
	li	t3, -9700
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -9700
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	toString
	mv	t1, a0
	li	t3, -9704
	add	t3, s0, t3
	sw	t1, 0(t3)
	la	t0, fuckLLVM_.str.276
	li	t3, -9708
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -9704
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	li	t3, -9708
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a1, t0
	call	string_add
	mv	t1, a0
	li	t3, -9712
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -9712
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	print
	li	t0, -96
	li	t3, -9716
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -9716
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, s0, t1
	li	t3, -9716
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -9716
	add	t3, s0, t3
	lw	t0, 0(t3)
	lw	t1, 0(t0)
	li	t3, -9720
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -9720
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	toString
	mv	t1, a0
	li	t3, -9724
	add	t3, s0, t3
	sw	t1, 0(t3)
	la	t0, fuckLLVM_.str.277
	li	t3, -9728
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -9724
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	li	t3, -9728
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a1, t0
	call	string_add
	mv	t1, a0
	li	t3, -9732
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -9732
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	print
	li	t0, -100
	li	t3, -9736
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -9736
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, s0, t1
	li	t3, -9736
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -9736
	add	t3, s0, t3
	lw	t0, 0(t3)
	lw	t1, 0(t0)
	li	t3, -9740
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -9740
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	toString
	mv	t1, a0
	li	t3, -9744
	add	t3, s0, t3
	sw	t1, 0(t3)
	la	t0, fuckLLVM_.str.278
	li	t3, -9748
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -9744
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	li	t3, -9748
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a1, t0
	call	string_add
	mv	t1, a0
	li	t3, -9752
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -9752
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	print
	li	t0, -104
	li	t3, -9756
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -9756
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, s0, t1
	li	t3, -9756
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -9756
	add	t3, s0, t3
	lw	t0, 0(t3)
	lw	t1, 0(t0)
	li	t3, -9760
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -9760
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	toString
	mv	t1, a0
	li	t3, -9764
	add	t3, s0, t3
	sw	t1, 0(t3)
	la	t0, fuckLLVM_.str.279
	li	t3, -9768
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -9764
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	li	t3, -9768
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a1, t0
	call	string_add
	mv	t1, a0
	li	t3, -9772
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -9772
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	print
	li	t0, -108
	li	t3, -9776
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -9776
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, s0, t1
	li	t3, -9776
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -9776
	add	t3, s0, t3
	lw	t0, 0(t3)
	lw	t1, 0(t0)
	li	t3, -9780
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -9780
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	toString
	mv	t1, a0
	li	t3, -9784
	add	t3, s0, t3
	sw	t1, 0(t3)
	la	t0, fuckLLVM_.str.280
	li	t3, -9788
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -9784
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	li	t3, -9788
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a1, t0
	call	string_add
	mv	t1, a0
	li	t3, -9792
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -9792
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	print
	li	t0, -112
	li	t3, -9796
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -9796
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, s0, t1
	li	t3, -9796
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -9796
	add	t3, s0, t3
	lw	t0, 0(t3)
	lw	t1, 0(t0)
	li	t3, -9800
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -9800
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	toString
	mv	t1, a0
	li	t3, -9804
	add	t3, s0, t3
	sw	t1, 0(t3)
	la	t0, fuckLLVM_.str.281
	li	t3, -9808
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -9804
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	li	t3, -9808
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a1, t0
	call	string_add
	mv	t1, a0
	li	t3, -9812
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -9812
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	print
	li	t0, -116
	li	t3, -9816
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -9816
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, s0, t1
	li	t3, -9816
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -9816
	add	t3, s0, t3
	lw	t0, 0(t3)
	lw	t1, 0(t0)
	li	t3, -9820
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -9820
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	toString
	mv	t1, a0
	li	t3, -9824
	add	t3, s0, t3
	sw	t1, 0(t3)
	la	t0, fuckLLVM_.str.282
	li	t3, -9828
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -9824
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	li	t3, -9828
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a1, t0
	call	string_add
	mv	t1, a0
	li	t3, -9832
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -9832
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	print
	li	t0, -120
	li	t3, -9836
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -9836
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, s0, t1
	li	t3, -9836
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -9836
	add	t3, s0, t3
	lw	t0, 0(t3)
	lw	t1, 0(t0)
	li	t3, -9840
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -9840
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	toString
	mv	t1, a0
	li	t3, -9844
	add	t3, s0, t3
	sw	t1, 0(t3)
	la	t0, fuckLLVM_.str.283
	li	t3, -9848
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -9844
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	li	t3, -9848
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a1, t0
	call	string_add
	mv	t1, a0
	li	t3, -9852
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -9852
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	print
	li	t0, -124
	li	t3, -9856
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -9856
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, s0, t1
	li	t3, -9856
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -9856
	add	t3, s0, t3
	lw	t0, 0(t3)
	lw	t1, 0(t0)
	li	t3, -9860
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -9860
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	toString
	mv	t1, a0
	li	t3, -9864
	add	t3, s0, t3
	sw	t1, 0(t3)
	la	t0, fuckLLVM_.str.284
	li	t3, -9868
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -9864
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	li	t3, -9868
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a1, t0
	call	string_add
	mv	t1, a0
	li	t3, -9872
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -9872
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	print
	li	t0, -128
	li	t3, -9876
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -9876
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, s0, t1
	li	t3, -9876
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -9876
	add	t3, s0, t3
	lw	t0, 0(t3)
	lw	t1, 0(t0)
	li	t3, -9880
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -9880
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	toString
	mv	t1, a0
	li	t3, -9884
	add	t3, s0, t3
	sw	t1, 0(t3)
	la	t0, fuckLLVM_.str.285
	li	t3, -9888
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -9884
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	li	t3, -9888
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a1, t0
	call	string_add
	mv	t1, a0
	li	t3, -9892
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -9892
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	print
	li	t0, -132
	li	t3, -9896
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -9896
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, s0, t1
	li	t3, -9896
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -9896
	add	t3, s0, t3
	lw	t0, 0(t3)
	lw	t1, 0(t0)
	li	t3, -9900
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -9900
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	toString
	mv	t1, a0
	li	t3, -9904
	add	t3, s0, t3
	sw	t1, 0(t3)
	la	t0, fuckLLVM_.str.286
	li	t3, -9908
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -9904
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	li	t3, -9908
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a1, t0
	call	string_add
	mv	t1, a0
	li	t3, -9912
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -9912
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	print
	li	t0, -136
	li	t3, -9916
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -9916
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, s0, t1
	li	t3, -9916
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -9916
	add	t3, s0, t3
	lw	t0, 0(t3)
	lw	t1, 0(t0)
	li	t3, -9920
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -9920
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	toString
	mv	t1, a0
	li	t3, -9924
	add	t3, s0, t3
	sw	t1, 0(t3)
	la	t0, fuckLLVM_.str.287
	li	t3, -9928
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -9924
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	li	t3, -9928
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a1, t0
	call	string_add
	mv	t1, a0
	li	t3, -9932
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -9932
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	print
	li	t0, -140
	li	t3, -9936
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -9936
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, s0, t1
	li	t3, -9936
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -9936
	add	t3, s0, t3
	lw	t0, 0(t3)
	lw	t1, 0(t0)
	li	t3, -9940
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -9940
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	toString
	mv	t1, a0
	li	t3, -9944
	add	t3, s0, t3
	sw	t1, 0(t3)
	la	t0, fuckLLVM_.str.288
	li	t3, -9948
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -9944
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	li	t3, -9948
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a1, t0
	call	string_add
	mv	t1, a0
	li	t3, -9952
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -9952
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	print
	li	t0, -144
	li	t3, -9956
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -9956
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, s0, t1
	li	t3, -9956
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -9956
	add	t3, s0, t3
	lw	t0, 0(t3)
	lw	t1, 0(t0)
	li	t3, -9960
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -9960
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	toString
	mv	t1, a0
	li	t3, -9964
	add	t3, s0, t3
	sw	t1, 0(t3)
	la	t0, fuckLLVM_.str.289
	li	t3, -9968
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -9964
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	li	t3, -9968
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a1, t0
	call	string_add
	mv	t1, a0
	li	t3, -9972
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -9972
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	print
	li	t0, -148
	li	t3, -9976
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -9976
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, s0, t1
	li	t3, -9976
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -9976
	add	t3, s0, t3
	lw	t0, 0(t3)
	lw	t1, 0(t0)
	li	t3, -9980
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -9980
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	toString
	mv	t1, a0
	li	t3, -9984
	add	t3, s0, t3
	sw	t1, 0(t3)
	la	t0, fuckLLVM_.str.290
	li	t3, -9988
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -9984
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	li	t3, -9988
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a1, t0
	call	string_add
	mv	t1, a0
	li	t3, -9992
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -9992
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	print
	li	t0, -152
	li	t3, -9996
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -9996
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, s0, t1
	li	t3, -9996
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -9996
	add	t3, s0, t3
	lw	t0, 0(t3)
	lw	t1, 0(t0)
	li	t3, -10000
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -10000
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	toString
	mv	t1, a0
	li	t3, -10004
	add	t3, s0, t3
	sw	t1, 0(t3)
	la	t0, fuckLLVM_.str.291
	li	t3, -10008
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -10004
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	li	t3, -10008
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a1, t0
	call	string_add
	mv	t1, a0
	li	t3, -10012
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -10012
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	print
	li	t0, -156
	li	t3, -10016
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -10016
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, s0, t1
	li	t3, -10016
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -10016
	add	t3, s0, t3
	lw	t0, 0(t3)
	lw	t1, 0(t0)
	li	t3, -10020
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -10020
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	toString
	mv	t1, a0
	li	t3, -10024
	add	t3, s0, t3
	sw	t1, 0(t3)
	la	t0, fuckLLVM_.str.292
	li	t3, -10028
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -10024
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	li	t3, -10028
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a1, t0
	call	string_add
	mv	t1, a0
	li	t3, -10032
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -10032
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	print
	li	t0, -160
	li	t3, -10036
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -10036
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, s0, t1
	li	t3, -10036
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -10036
	add	t3, s0, t3
	lw	t0, 0(t3)
	lw	t1, 0(t0)
	li	t3, -10040
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -10040
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	toString
	mv	t1, a0
	li	t3, -10044
	add	t3, s0, t3
	sw	t1, 0(t3)
	la	t0, fuckLLVM_.str.293
	li	t3, -10048
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -10044
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	li	t3, -10048
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a1, t0
	call	string_add
	mv	t1, a0
	li	t3, -10052
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -10052
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	print
	li	t0, -164
	li	t3, -10056
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -10056
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, s0, t1
	li	t3, -10056
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -10056
	add	t3, s0, t3
	lw	t0, 0(t3)
	lw	t1, 0(t0)
	li	t3, -10060
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -10060
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	toString
	mv	t1, a0
	li	t3, -10064
	add	t3, s0, t3
	sw	t1, 0(t3)
	la	t0, fuckLLVM_.str.294
	li	t3, -10068
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -10064
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	li	t3, -10068
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a1, t0
	call	string_add
	mv	t1, a0
	li	t3, -10072
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -10072
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	print
	li	t0, -168
	li	t3, -10076
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -10076
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, s0, t1
	li	t3, -10076
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -10076
	add	t3, s0, t3
	lw	t0, 0(t3)
	lw	t1, 0(t0)
	li	t3, -10080
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -10080
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	toString
	mv	t1, a0
	li	t3, -10084
	add	t3, s0, t3
	sw	t1, 0(t3)
	la	t0, fuckLLVM_.str.295
	li	t3, -10088
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -10084
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	li	t3, -10088
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a1, t0
	call	string_add
	mv	t1, a0
	li	t3, -10092
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -10092
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	print
	li	t0, -172
	li	t3, -10096
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -10096
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, s0, t1
	li	t3, -10096
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -10096
	add	t3, s0, t3
	lw	t0, 0(t3)
	lw	t1, 0(t0)
	li	t3, -10100
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -10100
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	toString
	mv	t1, a0
	li	t3, -10104
	add	t3, s0, t3
	sw	t1, 0(t3)
	la	t0, fuckLLVM_.str.296
	li	t3, -10108
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -10104
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	li	t3, -10108
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a1, t0
	call	string_add
	mv	t1, a0
	li	t3, -10112
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -10112
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	print
	li	t0, -176
	li	t3, -10116
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -10116
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, s0, t1
	li	t3, -10116
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -10116
	add	t3, s0, t3
	lw	t0, 0(t3)
	lw	t1, 0(t0)
	li	t3, -10120
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -10120
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	toString
	mv	t1, a0
	li	t3, -10124
	add	t3, s0, t3
	sw	t1, 0(t3)
	la	t0, fuckLLVM_.str.297
	li	t3, -10128
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -10124
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	li	t3, -10128
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a1, t0
	call	string_add
	mv	t1, a0
	li	t3, -10132
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -10132
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	print
	li	t0, -180
	li	t3, -10136
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -10136
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, s0, t1
	li	t3, -10136
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -10136
	add	t3, s0, t3
	lw	t0, 0(t3)
	lw	t1, 0(t0)
	li	t3, -10140
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -10140
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	toString
	mv	t1, a0
	li	t3, -10144
	add	t3, s0, t3
	sw	t1, 0(t3)
	la	t0, fuckLLVM_.str.298
	li	t3, -10148
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -10144
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	li	t3, -10148
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a1, t0
	call	string_add
	mv	t1, a0
	li	t3, -10152
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -10152
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	print
	li	t0, -184
	li	t3, -10156
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -10156
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, s0, t1
	li	t3, -10156
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -10156
	add	t3, s0, t3
	lw	t0, 0(t3)
	lw	t1, 0(t0)
	li	t3, -10160
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -10160
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	toString
	mv	t1, a0
	li	t3, -10164
	add	t3, s0, t3
	sw	t1, 0(t3)
	la	t0, fuckLLVM_.str.299
	li	t3, -10168
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -10164
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	li	t3, -10168
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a1, t0
	call	string_add
	mv	t1, a0
	li	t3, -10172
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -10172
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	print
	li	t0, -188
	li	t3, -10176
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -10176
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, s0, t1
	li	t3, -10176
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -10176
	add	t3, s0, t3
	lw	t0, 0(t3)
	lw	t1, 0(t0)
	li	t3, -10180
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -10180
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	toString
	mv	t1, a0
	li	t3, -10184
	add	t3, s0, t3
	sw	t1, 0(t3)
	la	t0, fuckLLVM_.str.300
	li	t3, -10188
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -10184
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	li	t3, -10188
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a1, t0
	call	string_add
	mv	t1, a0
	li	t3, -10192
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -10192
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	print
	li	t0, -192
	li	t3, -10196
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -10196
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, s0, t1
	li	t3, -10196
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -10196
	add	t3, s0, t3
	lw	t0, 0(t3)
	lw	t1, 0(t0)
	li	t3, -10200
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -10200
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	toString
	mv	t1, a0
	li	t3, -10204
	add	t3, s0, t3
	sw	t1, 0(t3)
	la	t0, fuckLLVM_.str.301
	li	t3, -10208
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -10204
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	li	t3, -10208
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a1, t0
	call	string_add
	mv	t1, a0
	li	t3, -10212
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -10212
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	print
	li	t0, -196
	li	t3, -10216
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -10216
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, s0, t1
	li	t3, -10216
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -10216
	add	t3, s0, t3
	lw	t0, 0(t3)
	lw	t1, 0(t0)
	li	t3, -10220
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -10220
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	toString
	mv	t1, a0
	li	t3, -10224
	add	t3, s0, t3
	sw	t1, 0(t3)
	la	t0, fuckLLVM_.str.302
	li	t3, -10228
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -10224
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	li	t3, -10228
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a1, t0
	call	string_add
	mv	t1, a0
	li	t3, -10232
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -10232
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	print
	li	t0, -200
	li	t3, -10236
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -10236
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, s0, t1
	li	t3, -10236
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -10236
	add	t3, s0, t3
	lw	t0, 0(t3)
	lw	t1, 0(t0)
	li	t3, -10240
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -10240
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	toString
	mv	t1, a0
	li	t3, -10244
	add	t3, s0, t3
	sw	t1, 0(t3)
	la	t0, fuckLLVM_.str.303
	li	t3, -10248
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -10244
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	li	t3, -10248
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a1, t0
	call	string_add
	mv	t1, a0
	li	t3, -10252
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -10252
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	print
	li	t0, -204
	li	t3, -10256
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -10256
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, s0, t1
	li	t3, -10256
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -10256
	add	t3, s0, t3
	lw	t0, 0(t3)
	lw	t1, 0(t0)
	li	t3, -10260
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -10260
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	toString
	mv	t1, a0
	li	t3, -10264
	add	t3, s0, t3
	sw	t1, 0(t3)
	la	t0, fuckLLVM_.str.304
	li	t3, -10268
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -10264
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	li	t3, -10268
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a1, t0
	call	string_add
	mv	t1, a0
	li	t3, -10272
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -10272
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	print
	li	t0, -208
	li	t3, -10276
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -10276
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, s0, t1
	li	t3, -10276
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -10276
	add	t3, s0, t3
	lw	t0, 0(t3)
	lw	t1, 0(t0)
	li	t3, -10280
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -10280
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	toString
	mv	t1, a0
	li	t3, -10284
	add	t3, s0, t3
	sw	t1, 0(t3)
	la	t0, fuckLLVM_.str.305
	li	t3, -10288
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -10284
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	li	t3, -10288
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a1, t0
	call	string_add
	mv	t1, a0
	li	t3, -10292
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -10292
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	print
	li	t0, -212
	li	t3, -10296
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -10296
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, s0, t1
	li	t3, -10296
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -10296
	add	t3, s0, t3
	lw	t0, 0(t3)
	lw	t1, 0(t0)
	li	t3, -10300
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -10300
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	toString
	mv	t1, a0
	li	t3, -10304
	add	t3, s0, t3
	sw	t1, 0(t3)
	la	t0, fuckLLVM_.str.306
	li	t3, -10308
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -10304
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	li	t3, -10308
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a1, t0
	call	string_add
	mv	t1, a0
	li	t3, -10312
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -10312
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	print
	li	t0, -216
	li	t3, -10316
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -10316
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, s0, t1
	li	t3, -10316
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -10316
	add	t3, s0, t3
	lw	t0, 0(t3)
	lw	t1, 0(t0)
	li	t3, -10320
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -10320
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	toString
	mv	t1, a0
	li	t3, -10324
	add	t3, s0, t3
	sw	t1, 0(t3)
	la	t0, fuckLLVM_.str.307
	li	t3, -10328
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -10324
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	li	t3, -10328
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a1, t0
	call	string_add
	mv	t1, a0
	li	t3, -10332
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -10332
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	print
	li	t0, -220
	li	t3, -10336
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -10336
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, s0, t1
	li	t3, -10336
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -10336
	add	t3, s0, t3
	lw	t0, 0(t3)
	lw	t1, 0(t0)
	li	t3, -10340
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -10340
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	toString
	mv	t1, a0
	li	t3, -10344
	add	t3, s0, t3
	sw	t1, 0(t3)
	la	t0, fuckLLVM_.str.308
	li	t3, -10348
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -10344
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	li	t3, -10348
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a1, t0
	call	string_add
	mv	t1, a0
	li	t3, -10352
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -10352
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	print
	li	t0, -224
	li	t3, -10356
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -10356
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, s0, t1
	li	t3, -10356
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -10356
	add	t3, s0, t3
	lw	t0, 0(t3)
	lw	t1, 0(t0)
	li	t3, -10360
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -10360
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	toString
	mv	t1, a0
	li	t3, -10364
	add	t3, s0, t3
	sw	t1, 0(t3)
	la	t0, fuckLLVM_.str.309
	li	t3, -10368
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -10364
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	li	t3, -10368
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a1, t0
	call	string_add
	mv	t1, a0
	li	t3, -10372
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -10372
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	print
	li	t0, -228
	li	t3, -10376
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -10376
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, s0, t1
	li	t3, -10376
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -10376
	add	t3, s0, t3
	lw	t0, 0(t3)
	lw	t1, 0(t0)
	li	t3, -10380
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -10380
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	toString
	mv	t1, a0
	li	t3, -10384
	add	t3, s0, t3
	sw	t1, 0(t3)
	la	t0, fuckLLVM_.str.310
	li	t3, -10388
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -10384
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	li	t3, -10388
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a1, t0
	call	string_add
	mv	t1, a0
	li	t3, -10392
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -10392
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	print
	li	t0, -232
	li	t3, -10396
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -10396
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, s0, t1
	li	t3, -10396
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -10396
	add	t3, s0, t3
	lw	t0, 0(t3)
	lw	t1, 0(t0)
	li	t3, -10400
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -10400
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	toString
	mv	t1, a0
	li	t3, -10404
	add	t3, s0, t3
	sw	t1, 0(t3)
	la	t0, fuckLLVM_.str.311
	li	t3, -10408
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -10404
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	li	t3, -10408
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a1, t0
	call	string_add
	mv	t1, a0
	li	t3, -10412
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -10412
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	print
	li	t0, -236
	li	t3, -10416
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -10416
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, s0, t1
	li	t3, -10416
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -10416
	add	t3, s0, t3
	lw	t0, 0(t3)
	lw	t1, 0(t0)
	li	t3, -10420
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -10420
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	toString
	mv	t1, a0
	li	t3, -10424
	add	t3, s0, t3
	sw	t1, 0(t3)
	la	t0, fuckLLVM_.str.312
	li	t3, -10428
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -10424
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	li	t3, -10428
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a1, t0
	call	string_add
	mv	t1, a0
	li	t3, -10432
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -10432
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	print
	li	t0, -240
	li	t3, -10436
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -10436
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, s0, t1
	li	t3, -10436
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -10436
	add	t3, s0, t3
	lw	t0, 0(t3)
	lw	t1, 0(t0)
	li	t3, -10440
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -10440
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	toString
	mv	t1, a0
	li	t3, -10444
	add	t3, s0, t3
	sw	t1, 0(t3)
	la	t0, fuckLLVM_.str.313
	li	t3, -10448
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -10444
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	li	t3, -10448
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a1, t0
	call	string_add
	mv	t1, a0
	li	t3, -10452
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -10452
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	print
	li	t0, -244
	li	t3, -10456
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -10456
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, s0, t1
	li	t3, -10456
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -10456
	add	t3, s0, t3
	lw	t0, 0(t3)
	lw	t1, 0(t0)
	li	t3, -10460
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -10460
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	toString
	mv	t1, a0
	li	t3, -10464
	add	t3, s0, t3
	sw	t1, 0(t3)
	la	t0, fuckLLVM_.str.314
	li	t3, -10468
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -10464
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	li	t3, -10468
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a1, t0
	call	string_add
	mv	t1, a0
	li	t3, -10472
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -10472
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	print
	li	t0, -248
	li	t3, -10476
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -10476
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, s0, t1
	li	t3, -10476
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -10476
	add	t3, s0, t3
	lw	t0, 0(t3)
	lw	t1, 0(t0)
	li	t3, -10480
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -10480
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	toString
	mv	t1, a0
	li	t3, -10484
	add	t3, s0, t3
	sw	t1, 0(t3)
	la	t0, fuckLLVM_.str.315
	li	t3, -10488
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -10484
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	li	t3, -10488
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a1, t0
	call	string_add
	mv	t1, a0
	li	t3, -10492
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -10492
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	print
	li	t0, -252
	li	t3, -10496
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -10496
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, s0, t1
	li	t3, -10496
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -10496
	add	t3, s0, t3
	lw	t0, 0(t3)
	lw	t1, 0(t0)
	li	t3, -10500
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -10500
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	toString
	mv	t1, a0
	li	t3, -10504
	add	t3, s0, t3
	sw	t1, 0(t3)
	la	t0, fuckLLVM_.str.316
	li	t3, -10508
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -10504
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	li	t3, -10508
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a1, t0
	call	string_add
	mv	t1, a0
	li	t3, -10512
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -10512
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	print
	li	t0, -256
	li	t3, -10516
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -10516
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, s0, t1
	li	t3, -10516
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -10516
	add	t3, s0, t3
	lw	t0, 0(t3)
	lw	t1, 0(t0)
	li	t3, -10520
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -10520
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	toString
	mv	t1, a0
	li	t3, -10524
	add	t3, s0, t3
	sw	t1, 0(t3)
	la	t0, fuckLLVM_.str.317
	li	t3, -10528
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -10524
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	li	t3, -10528
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a1, t0
	call	string_add
	mv	t1, a0
	li	t3, -10532
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -10532
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	print
	li	t0, -260
	li	t3, -10536
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -10536
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, s0, t1
	li	t3, -10536
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -10536
	add	t3, s0, t3
	lw	t0, 0(t3)
	lw	t1, 0(t0)
	li	t3, -10540
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -10540
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	toString
	mv	t1, a0
	li	t3, -10544
	add	t3, s0, t3
	sw	t1, 0(t3)
	la	t0, fuckLLVM_.str.318
	li	t3, -10548
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -10544
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	li	t3, -10548
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a1, t0
	call	string_add
	mv	t1, a0
	li	t3, -10552
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -10552
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	print
	li	t0, -264
	li	t3, -10556
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -10556
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, s0, t1
	li	t3, -10556
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -10556
	add	t3, s0, t3
	lw	t0, 0(t3)
	lw	t1, 0(t0)
	li	t3, -10560
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -10560
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	toString
	mv	t1, a0
	li	t3, -10564
	add	t3, s0, t3
	sw	t1, 0(t3)
	la	t0, fuckLLVM_.str.319
	li	t3, -10568
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -10564
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	li	t3, -10568
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a1, t0
	call	string_add
	mv	t1, a0
	li	t3, -10572
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -10572
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	print
	li	t0, -268
	li	t3, -10576
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -10576
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, s0, t1
	li	t3, -10576
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -10576
	add	t3, s0, t3
	lw	t0, 0(t3)
	lw	t1, 0(t0)
	li	t3, -10580
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -10580
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	toString
	mv	t1, a0
	li	t3, -10584
	add	t3, s0, t3
	sw	t1, 0(t3)
	la	t0, fuckLLVM_.str.320
	li	t3, -10588
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -10584
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	li	t3, -10588
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a1, t0
	call	string_add
	mv	t1, a0
	li	t3, -10592
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -10592
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	print
	li	t0, -272
	li	t3, -10596
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -10596
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, s0, t1
	li	t3, -10596
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -10596
	add	t3, s0, t3
	lw	t0, 0(t3)
	lw	t1, 0(t0)
	li	t3, -10600
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -10600
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	toString
	mv	t1, a0
	li	t3, -10604
	add	t3, s0, t3
	sw	t1, 0(t3)
	la	t0, fuckLLVM_.str.321
	li	t3, -10608
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -10604
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	li	t3, -10608
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a1, t0
	call	string_add
	mv	t1, a0
	li	t3, -10612
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -10612
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	print
	li	t0, -276
	li	t3, -10616
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -10616
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, s0, t1
	li	t3, -10616
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -10616
	add	t3, s0, t3
	lw	t0, 0(t3)
	lw	t1, 0(t0)
	li	t3, -10620
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -10620
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	toString
	mv	t1, a0
	li	t3, -10624
	add	t3, s0, t3
	sw	t1, 0(t3)
	la	t0, fuckLLVM_.str.322
	li	t3, -10628
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -10624
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	li	t3, -10628
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a1, t0
	call	string_add
	mv	t1, a0
	li	t3, -10632
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -10632
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	print
	li	t0, -280
	li	t3, -10636
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -10636
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, s0, t1
	li	t3, -10636
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -10636
	add	t3, s0, t3
	lw	t0, 0(t3)
	lw	t1, 0(t0)
	li	t3, -10640
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -10640
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	toString
	mv	t1, a0
	li	t3, -10644
	add	t3, s0, t3
	sw	t1, 0(t3)
	la	t0, fuckLLVM_.str.323
	li	t3, -10648
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -10644
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	li	t3, -10648
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a1, t0
	call	string_add
	mv	t1, a0
	li	t3, -10652
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -10652
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	print
	li	t0, -284
	li	t3, -10656
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -10656
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, s0, t1
	li	t3, -10656
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -10656
	add	t3, s0, t3
	lw	t0, 0(t3)
	lw	t1, 0(t0)
	li	t3, -10660
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -10660
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	toString
	mv	t1, a0
	li	t3, -10664
	add	t3, s0, t3
	sw	t1, 0(t3)
	la	t0, fuckLLVM_.str.324
	li	t3, -10668
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -10664
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	li	t3, -10668
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a1, t0
	call	string_add
	mv	t1, a0
	li	t3, -10672
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -10672
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	print
	li	t0, -288
	li	t3, -10676
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -10676
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, s0, t1
	li	t3, -10676
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -10676
	add	t3, s0, t3
	lw	t0, 0(t3)
	lw	t1, 0(t0)
	li	t3, -10680
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -10680
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	toString
	mv	t1, a0
	li	t3, -10684
	add	t3, s0, t3
	sw	t1, 0(t3)
	la	t0, fuckLLVM_.str.325
	li	t3, -10688
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -10684
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	li	t3, -10688
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a1, t0
	call	string_add
	mv	t1, a0
	li	t3, -10692
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -10692
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	print
	li	t0, -292
	li	t3, -10696
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -10696
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, s0, t1
	li	t3, -10696
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -10696
	add	t3, s0, t3
	lw	t0, 0(t3)
	lw	t1, 0(t0)
	li	t3, -10700
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -10700
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	toString
	mv	t1, a0
	li	t3, -10704
	add	t3, s0, t3
	sw	t1, 0(t3)
	la	t0, fuckLLVM_.str.326
	li	t3, -10708
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -10704
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	li	t3, -10708
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a1, t0
	call	string_add
	mv	t1, a0
	li	t3, -10712
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -10712
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	print
	li	t0, -296
	li	t3, -10716
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -10716
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, s0, t1
	li	t3, -10716
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -10716
	add	t3, s0, t3
	lw	t0, 0(t3)
	lw	t1, 0(t0)
	li	t3, -10720
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -10720
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	toString
	mv	t1, a0
	li	t3, -10724
	add	t3, s0, t3
	sw	t1, 0(t3)
	la	t0, fuckLLVM_.str.327
	li	t3, -10728
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -10724
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	li	t3, -10728
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a1, t0
	call	string_add
	mv	t1, a0
	li	t3, -10732
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -10732
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	print
	li	t0, -300
	li	t3, -10736
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -10736
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, s0, t1
	li	t3, -10736
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -10736
	add	t3, s0, t3
	lw	t0, 0(t3)
	lw	t1, 0(t0)
	li	t3, -10740
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -10740
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	toString
	mv	t1, a0
	li	t3, -10744
	add	t3, s0, t3
	sw	t1, 0(t3)
	la	t0, fuckLLVM_.str.328
	li	t3, -10748
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -10744
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	li	t3, -10748
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a1, t0
	call	string_add
	mv	t1, a0
	li	t3, -10752
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -10752
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	print
	li	t0, -304
	li	t3, -10756
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -10756
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, s0, t1
	li	t3, -10756
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -10756
	add	t3, s0, t3
	lw	t0, 0(t3)
	lw	t1, 0(t0)
	li	t3, -10760
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -10760
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	toString
	mv	t1, a0
	li	t3, -10764
	add	t3, s0, t3
	sw	t1, 0(t3)
	la	t0, fuckLLVM_.str.329
	li	t3, -10768
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -10764
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	li	t3, -10768
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a1, t0
	call	string_add
	mv	t1, a0
	li	t3, -10772
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -10772
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	print
	li	t0, -308
	li	t3, -10776
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -10776
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, s0, t1
	li	t3, -10776
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -10776
	add	t3, s0, t3
	lw	t0, 0(t3)
	lw	t1, 0(t0)
	li	t3, -10780
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -10780
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	toString
	mv	t1, a0
	li	t3, -10784
	add	t3, s0, t3
	sw	t1, 0(t3)
	la	t0, fuckLLVM_.str.330
	li	t3, -10788
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -10784
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	li	t3, -10788
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a1, t0
	call	string_add
	mv	t1, a0
	li	t3, -10792
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -10792
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	print
	li	t0, -312
	li	t3, -10796
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -10796
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, s0, t1
	li	t3, -10796
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -10796
	add	t3, s0, t3
	lw	t0, 0(t3)
	lw	t1, 0(t0)
	li	t3, -10800
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -10800
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	toString
	mv	t1, a0
	li	t3, -10804
	add	t3, s0, t3
	sw	t1, 0(t3)
	la	t0, fuckLLVM_.str.331
	li	t3, -10808
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -10804
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	li	t3, -10808
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a1, t0
	call	string_add
	mv	t1, a0
	li	t3, -10812
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -10812
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	print
	li	t0, -316
	li	t3, -10816
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -10816
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, s0, t1
	li	t3, -10816
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -10816
	add	t3, s0, t3
	lw	t0, 0(t3)
	lw	t1, 0(t0)
	li	t3, -10820
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -10820
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	toString
	mv	t1, a0
	li	t3, -10824
	add	t3, s0, t3
	sw	t1, 0(t3)
	la	t0, fuckLLVM_.str.332
	li	t3, -10828
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -10824
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	li	t3, -10828
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a1, t0
	call	string_add
	mv	t1, a0
	li	t3, -10832
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -10832
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	print
	li	t0, -320
	li	t3, -10836
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -10836
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, s0, t1
	li	t3, -10836
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -10836
	add	t3, s0, t3
	lw	t0, 0(t3)
	lw	t1, 0(t0)
	li	t3, -10840
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -10840
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	toString
	mv	t1, a0
	li	t3, -10844
	add	t3, s0, t3
	sw	t1, 0(t3)
	la	t0, fuckLLVM_.str.333
	li	t3, -10848
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -10844
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	li	t3, -10848
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a1, t0
	call	string_add
	mv	t1, a0
	li	t3, -10852
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -10852
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	print
	li	t0, -324
	li	t3, -10856
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -10856
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, s0, t1
	li	t3, -10856
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -10856
	add	t3, s0, t3
	lw	t0, 0(t3)
	lw	t1, 0(t0)
	li	t3, -10860
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -10860
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	toString
	mv	t1, a0
	li	t3, -10864
	add	t3, s0, t3
	sw	t1, 0(t3)
	la	t0, fuckLLVM_.str.334
	li	t3, -10868
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -10864
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	li	t3, -10868
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a1, t0
	call	string_add
	mv	t1, a0
	li	t3, -10872
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -10872
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	print
	li	t0, -328
	li	t3, -10876
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -10876
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, s0, t1
	li	t3, -10876
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -10876
	add	t3, s0, t3
	lw	t0, 0(t3)
	lw	t1, 0(t0)
	li	t3, -10880
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -10880
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	toString
	mv	t1, a0
	li	t3, -10884
	add	t3, s0, t3
	sw	t1, 0(t3)
	la	t0, fuckLLVM_.str.335
	li	t3, -10888
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -10884
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	li	t3, -10888
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a1, t0
	call	string_add
	mv	t1, a0
	li	t3, -10892
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -10892
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	print
	li	t0, -332
	li	t3, -10896
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -10896
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, s0, t1
	li	t3, -10896
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -10896
	add	t3, s0, t3
	lw	t0, 0(t3)
	lw	t1, 0(t0)
	li	t3, -10900
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -10900
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	toString
	mv	t1, a0
	li	t3, -10904
	add	t3, s0, t3
	sw	t1, 0(t3)
	la	t0, fuckLLVM_.str.336
	li	t3, -10908
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -10904
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	li	t3, -10908
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a1, t0
	call	string_add
	mv	t1, a0
	li	t3, -10912
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -10912
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	print
	li	t0, -336
	li	t3, -10916
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -10916
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, s0, t1
	li	t3, -10916
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -10916
	add	t3, s0, t3
	lw	t0, 0(t3)
	lw	t1, 0(t0)
	li	t3, -10920
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -10920
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	toString
	mv	t1, a0
	li	t3, -10924
	add	t3, s0, t3
	sw	t1, 0(t3)
	la	t0, fuckLLVM_.str.337
	li	t3, -10928
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -10924
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	li	t3, -10928
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a1, t0
	call	string_add
	mv	t1, a0
	li	t3, -10932
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -10932
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	print
	li	t0, -340
	li	t3, -10936
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -10936
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, s0, t1
	li	t3, -10936
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -10936
	add	t3, s0, t3
	lw	t0, 0(t3)
	lw	t1, 0(t0)
	li	t3, -10940
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -10940
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	toString
	mv	t1, a0
	li	t3, -10944
	add	t3, s0, t3
	sw	t1, 0(t3)
	la	t0, fuckLLVM_.str.338
	li	t3, -10948
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -10944
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	li	t3, -10948
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a1, t0
	call	string_add
	mv	t1, a0
	li	t3, -10952
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -10952
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	print
	li	t0, -344
	li	t3, -10956
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -10956
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, s0, t1
	li	t3, -10956
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -10956
	add	t3, s0, t3
	lw	t0, 0(t3)
	lw	t1, 0(t0)
	li	t3, -10960
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -10960
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	toString
	mv	t1, a0
	li	t3, -10964
	add	t3, s0, t3
	sw	t1, 0(t3)
	la	t0, fuckLLVM_.str.339
	li	t3, -10968
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -10964
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	li	t3, -10968
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a1, t0
	call	string_add
	mv	t1, a0
	li	t3, -10972
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -10972
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	print
	li	t0, -348
	li	t3, -10976
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -10976
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, s0, t1
	li	t3, -10976
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -10976
	add	t3, s0, t3
	lw	t0, 0(t3)
	lw	t1, 0(t0)
	li	t3, -10980
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -10980
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	toString
	mv	t1, a0
	li	t3, -10984
	add	t3, s0, t3
	sw	t1, 0(t3)
	la	t0, fuckLLVM_.str.340
	li	t3, -10988
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -10984
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	li	t3, -10988
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a1, t0
	call	string_add
	mv	t1, a0
	li	t3, -10992
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -10992
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	print
	li	t0, -352
	li	t3, -10996
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -10996
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, s0, t1
	li	t3, -10996
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -10996
	add	t3, s0, t3
	lw	t0, 0(t3)
	lw	t1, 0(t0)
	li	t3, -11000
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -11000
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	toString
	mv	t1, a0
	li	t3, -11004
	add	t3, s0, t3
	sw	t1, 0(t3)
	la	t0, fuckLLVM_.str.341
	li	t3, -11008
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -11004
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	li	t3, -11008
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a1, t0
	call	string_add
	mv	t1, a0
	li	t3, -11012
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -11012
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	print
	li	t0, -356
	li	t3, -11016
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -11016
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, s0, t1
	li	t3, -11016
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -11016
	add	t3, s0, t3
	lw	t0, 0(t3)
	lw	t1, 0(t0)
	li	t3, -11020
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -11020
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	toString
	mv	t1, a0
	li	t3, -11024
	add	t3, s0, t3
	sw	t1, 0(t3)
	la	t0, fuckLLVM_.str.342
	li	t3, -11028
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -11024
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	li	t3, -11028
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a1, t0
	call	string_add
	mv	t1, a0
	li	t3, -11032
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -11032
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	print
	li	t0, -360
	li	t3, -11036
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -11036
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, s0, t1
	li	t3, -11036
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -11036
	add	t3, s0, t3
	lw	t0, 0(t3)
	lw	t1, 0(t0)
	li	t3, -11040
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -11040
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	toString
	mv	t1, a0
	li	t3, -11044
	add	t3, s0, t3
	sw	t1, 0(t3)
	la	t0, fuckLLVM_.str.343
	li	t3, -11048
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -11044
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	li	t3, -11048
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a1, t0
	call	string_add
	mv	t1, a0
	li	t3, -11052
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -11052
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	print
	li	t0, -364
	li	t3, -11056
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -11056
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, s0, t1
	li	t3, -11056
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -11056
	add	t3, s0, t3
	lw	t0, 0(t3)
	lw	t1, 0(t0)
	li	t3, -11060
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -11060
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	toString
	mv	t1, a0
	li	t3, -11064
	add	t3, s0, t3
	sw	t1, 0(t3)
	la	t0, fuckLLVM_.str.344
	li	t3, -11068
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -11064
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	li	t3, -11068
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a1, t0
	call	string_add
	mv	t1, a0
	li	t3, -11072
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -11072
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	print
	li	t0, -368
	li	t3, -11076
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -11076
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, s0, t1
	li	t3, -11076
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -11076
	add	t3, s0, t3
	lw	t0, 0(t3)
	lw	t1, 0(t0)
	li	t3, -11080
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -11080
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	toString
	mv	t1, a0
	li	t3, -11084
	add	t3, s0, t3
	sw	t1, 0(t3)
	la	t0, fuckLLVM_.str.345
	li	t3, -11088
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -11084
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	li	t3, -11088
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a1, t0
	call	string_add
	mv	t1, a0
	li	t3, -11092
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -11092
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	print
	li	t0, -372
	li	t3, -11096
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -11096
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, s0, t1
	li	t3, -11096
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -11096
	add	t3, s0, t3
	lw	t0, 0(t3)
	lw	t1, 0(t0)
	li	t3, -11100
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -11100
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	toString
	mv	t1, a0
	li	t3, -11104
	add	t3, s0, t3
	sw	t1, 0(t3)
	la	t0, fuckLLVM_.str.346
	li	t3, -11108
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -11104
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	li	t3, -11108
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a1, t0
	call	string_add
	mv	t1, a0
	li	t3, -11112
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -11112
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	print
	li	t0, -376
	li	t3, -11116
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -11116
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, s0, t1
	li	t3, -11116
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -11116
	add	t3, s0, t3
	lw	t0, 0(t3)
	lw	t1, 0(t0)
	li	t3, -11120
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -11120
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	toString
	mv	t1, a0
	li	t3, -11124
	add	t3, s0, t3
	sw	t1, 0(t3)
	la	t0, fuckLLVM_.str.347
	li	t3, -11128
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -11124
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	li	t3, -11128
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a1, t0
	call	string_add
	mv	t1, a0
	li	t3, -11132
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -11132
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	print
	li	t0, -380
	li	t3, -11136
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -11136
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, s0, t1
	li	t3, -11136
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -11136
	add	t3, s0, t3
	lw	t0, 0(t3)
	lw	t1, 0(t0)
	li	t3, -11140
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -11140
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	toString
	mv	t1, a0
	li	t3, -11144
	add	t3, s0, t3
	sw	t1, 0(t3)
	la	t0, fuckLLVM_.str.348
	li	t3, -11148
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -11144
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	li	t3, -11148
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a1, t0
	call	string_add
	mv	t1, a0
	li	t3, -11152
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -11152
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	print
	li	t0, -384
	li	t3, -11156
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -11156
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, s0, t1
	li	t3, -11156
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -11156
	add	t3, s0, t3
	lw	t0, 0(t3)
	lw	t1, 0(t0)
	li	t3, -11160
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -11160
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	toString
	mv	t1, a0
	li	t3, -11164
	add	t3, s0, t3
	sw	t1, 0(t3)
	la	t0, fuckLLVM_.str.349
	li	t3, -11168
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -11164
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	li	t3, -11168
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a1, t0
	call	string_add
	mv	t1, a0
	li	t3, -11172
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -11172
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	print
	li	t0, -388
	li	t3, -11176
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -11176
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, s0, t1
	li	t3, -11176
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -11176
	add	t3, s0, t3
	lw	t0, 0(t3)
	lw	t1, 0(t0)
	li	t3, -11180
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -11180
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	toString
	mv	t1, a0
	li	t3, -11184
	add	t3, s0, t3
	sw	t1, 0(t3)
	la	t0, fuckLLVM_.str.350
	li	t3, -11188
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -11184
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	li	t3, -11188
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a1, t0
	call	string_add
	mv	t1, a0
	li	t3, -11192
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -11192
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	print
	li	t0, -392
	li	t3, -11196
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -11196
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, s0, t1
	li	t3, -11196
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -11196
	add	t3, s0, t3
	lw	t0, 0(t3)
	lw	t1, 0(t0)
	li	t3, -11200
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -11200
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	toString
	mv	t1, a0
	li	t3, -11204
	add	t3, s0, t3
	sw	t1, 0(t3)
	la	t0, fuckLLVM_.str.351
	li	t3, -11208
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -11204
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	li	t3, -11208
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a1, t0
	call	string_add
	mv	t1, a0
	li	t3, -11212
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -11212
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	print
	li	t0, -396
	li	t3, -11216
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -11216
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, s0, t1
	li	t3, -11216
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -11216
	add	t3, s0, t3
	lw	t0, 0(t3)
	lw	t1, 0(t0)
	li	t3, -11220
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -11220
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	toString
	mv	t1, a0
	li	t3, -11224
	add	t3, s0, t3
	sw	t1, 0(t3)
	la	t0, fuckLLVM_.str.352
	li	t3, -11228
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -11224
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	li	t3, -11228
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a1, t0
	call	string_add
	mv	t1, a0
	li	t3, -11232
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -11232
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	print
	li	t0, -400
	li	t3, -11236
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -11236
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, s0, t1
	li	t3, -11236
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -11236
	add	t3, s0, t3
	lw	t0, 0(t3)
	lw	t1, 0(t0)
	li	t3, -11240
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -11240
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	toString
	mv	t1, a0
	li	t3, -11244
	add	t3, s0, t3
	sw	t1, 0(t3)
	la	t0, fuckLLVM_.str.353
	li	t3, -11248
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -11244
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	li	t3, -11248
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a1, t0
	call	string_add
	mv	t1, a0
	li	t3, -11252
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -11252
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	print
	li	t0, -404
	li	t3, -11256
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -11256
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, s0, t1
	li	t3, -11256
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -11256
	add	t3, s0, t3
	lw	t0, 0(t3)
	lw	t1, 0(t0)
	li	t3, -11260
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -11260
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	toString
	mv	t1, a0
	li	t3, -11264
	add	t3, s0, t3
	sw	t1, 0(t3)
	la	t0, fuckLLVM_.str.354
	li	t3, -11268
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -11264
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	li	t3, -11268
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a1, t0
	call	string_add
	mv	t1, a0
	li	t3, -11272
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -11272
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	print
	li	t0, -408
	li	t3, -11276
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -11276
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, s0, t1
	li	t3, -11276
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -11276
	add	t3, s0, t3
	lw	t0, 0(t3)
	lw	t1, 0(t0)
	li	t3, -11280
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -11280
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	toString
	mv	t1, a0
	li	t3, -11284
	add	t3, s0, t3
	sw	t1, 0(t3)
	la	t0, fuckLLVM_.str.355
	li	t3, -11288
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -11284
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	li	t3, -11288
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a1, t0
	call	string_add
	mv	t1, a0
	li	t3, -11292
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -11292
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	print
	li	t0, -412
	li	t3, -11296
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -11296
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, s0, t1
	li	t3, -11296
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -11296
	add	t3, s0, t3
	lw	t0, 0(t3)
	lw	t1, 0(t0)
	li	t3, -11300
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -11300
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	toString
	mv	t1, a0
	li	t3, -11304
	add	t3, s0, t3
	sw	t1, 0(t3)
	la	t0, fuckLLVM_.str.356
	li	t3, -11308
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -11304
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	li	t3, -11308
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a1, t0
	call	string_add
	mv	t1, a0
	li	t3, -11312
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -11312
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	print
	li	t0, -416
	li	t3, -11316
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -11316
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, s0, t1
	li	t3, -11316
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -11316
	add	t3, s0, t3
	lw	t0, 0(t3)
	lw	t1, 0(t0)
	li	t3, -11320
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -11320
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	toString
	mv	t1, a0
	li	t3, -11324
	add	t3, s0, t3
	sw	t1, 0(t3)
	la	t0, fuckLLVM_.str.357
	li	t3, -11328
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -11324
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	li	t3, -11328
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a1, t0
	call	string_add
	mv	t1, a0
	li	t3, -11332
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -11332
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	print
	li	t0, -420
	li	t3, -11336
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -11336
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, s0, t1
	li	t3, -11336
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -11336
	add	t3, s0, t3
	lw	t0, 0(t3)
	lw	t1, 0(t0)
	li	t3, -11340
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -11340
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	toString
	mv	t1, a0
	li	t3, -11344
	add	t3, s0, t3
	sw	t1, 0(t3)
	la	t0, fuckLLVM_.str.358
	li	t3, -11348
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -11344
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	li	t3, -11348
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a1, t0
	call	string_add
	mv	t1, a0
	li	t3, -11352
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -11352
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	print
	li	t0, -424
	li	t3, -11356
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -11356
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, s0, t1
	li	t3, -11356
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -11356
	add	t3, s0, t3
	lw	t0, 0(t3)
	lw	t1, 0(t0)
	li	t3, -11360
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -11360
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	toString
	mv	t1, a0
	li	t3, -11364
	add	t3, s0, t3
	sw	t1, 0(t3)
	la	t0, fuckLLVM_.str.359
	li	t3, -11368
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -11364
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	li	t3, -11368
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a1, t0
	call	string_add
	mv	t1, a0
	li	t3, -11372
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -11372
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	print
	li	t0, -428
	li	t3, -11376
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -11376
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, s0, t1
	li	t3, -11376
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -11376
	add	t3, s0, t3
	lw	t0, 0(t3)
	lw	t1, 0(t0)
	li	t3, -11380
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -11380
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	toString
	mv	t1, a0
	li	t3, -11384
	add	t3, s0, t3
	sw	t1, 0(t3)
	la	t0, fuckLLVM_.str.360
	li	t3, -11388
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -11384
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	li	t3, -11388
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a1, t0
	call	string_add
	mv	t1, a0
	li	t3, -11392
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -11392
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	print
	li	t0, -432
	li	t3, -11396
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -11396
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, s0, t1
	li	t3, -11396
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -11396
	add	t3, s0, t3
	lw	t0, 0(t3)
	lw	t1, 0(t0)
	li	t3, -11400
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -11400
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	toString
	mv	t1, a0
	li	t3, -11404
	add	t3, s0, t3
	sw	t1, 0(t3)
	la	t0, fuckLLVM_.str.361
	li	t3, -11408
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -11404
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	li	t3, -11408
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a1, t0
	call	string_add
	mv	t1, a0
	li	t3, -11412
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -11412
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	print
	li	t0, -436
	li	t3, -11416
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -11416
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, s0, t1
	li	t3, -11416
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -11416
	add	t3, s0, t3
	lw	t0, 0(t3)
	lw	t1, 0(t0)
	li	t3, -11420
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -11420
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	toString
	mv	t1, a0
	li	t3, -11424
	add	t3, s0, t3
	sw	t1, 0(t3)
	la	t0, fuckLLVM_.str.362
	li	t3, -11428
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -11424
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	li	t3, -11428
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a1, t0
	call	string_add
	mv	t1, a0
	li	t3, -11432
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -11432
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	print
	li	t0, -440
	li	t3, -11436
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -11436
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, s0, t1
	li	t3, -11436
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -11436
	add	t3, s0, t3
	lw	t0, 0(t3)
	lw	t1, 0(t0)
	li	t3, -11440
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -11440
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	toString
	mv	t1, a0
	li	t3, -11444
	add	t3, s0, t3
	sw	t1, 0(t3)
	la	t0, fuckLLVM_.str.363
	li	t3, -11448
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -11444
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	li	t3, -11448
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a1, t0
	call	string_add
	mv	t1, a0
	li	t3, -11452
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -11452
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	print
	li	t0, -444
	li	t3, -11456
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -11456
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, s0, t1
	li	t3, -11456
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -11456
	add	t3, s0, t3
	lw	t0, 0(t3)
	lw	t1, 0(t0)
	li	t3, -11460
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -11460
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	toString
	mv	t1, a0
	li	t3, -11464
	add	t3, s0, t3
	sw	t1, 0(t3)
	la	t0, fuckLLVM_.str.364
	li	t3, -11468
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -11464
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	li	t3, -11468
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a1, t0
	call	string_add
	mv	t1, a0
	li	t3, -11472
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -11472
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	print
	li	t0, -448
	li	t3, -11476
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -11476
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, s0, t1
	li	t3, -11476
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -11476
	add	t3, s0, t3
	lw	t0, 0(t3)
	lw	t1, 0(t0)
	li	t3, -11480
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -11480
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	toString
	mv	t1, a0
	li	t3, -11484
	add	t3, s0, t3
	sw	t1, 0(t3)
	la	t0, fuckLLVM_.str.365
	li	t3, -11488
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -11484
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	li	t3, -11488
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a1, t0
	call	string_add
	mv	t1, a0
	li	t3, -11492
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -11492
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	print
	li	t0, -452
	li	t3, -11496
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -11496
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, s0, t1
	li	t3, -11496
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -11496
	add	t3, s0, t3
	lw	t0, 0(t3)
	lw	t1, 0(t0)
	li	t3, -11500
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -11500
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	toString
	mv	t1, a0
	li	t3, -11504
	add	t3, s0, t3
	sw	t1, 0(t3)
	la	t0, fuckLLVM_.str.366
	li	t3, -11508
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -11504
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	li	t3, -11508
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a1, t0
	call	string_add
	mv	t1, a0
	li	t3, -11512
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -11512
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	print
	li	t0, -456
	li	t3, -11516
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -11516
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, s0, t1
	li	t3, -11516
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -11516
	add	t3, s0, t3
	lw	t0, 0(t3)
	lw	t1, 0(t0)
	li	t3, -11520
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -11520
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	toString
	mv	t1, a0
	li	t3, -11524
	add	t3, s0, t3
	sw	t1, 0(t3)
	la	t0, fuckLLVM_.str.367
	li	t3, -11528
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -11524
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	li	t3, -11528
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a1, t0
	call	string_add
	mv	t1, a0
	li	t3, -11532
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -11532
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	print
	li	t0, -460
	li	t3, -11536
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -11536
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, s0, t1
	li	t3, -11536
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -11536
	add	t3, s0, t3
	lw	t0, 0(t3)
	lw	t1, 0(t0)
	li	t3, -11540
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -11540
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	toString
	mv	t1, a0
	li	t3, -11544
	add	t3, s0, t3
	sw	t1, 0(t3)
	la	t0, fuckLLVM_.str.368
	li	t3, -11548
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -11544
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	li	t3, -11548
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a1, t0
	call	string_add
	mv	t1, a0
	li	t3, -11552
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -11552
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	print
	li	t0, -464
	li	t3, -11556
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -11556
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, s0, t1
	li	t3, -11556
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -11556
	add	t3, s0, t3
	lw	t0, 0(t3)
	lw	t1, 0(t0)
	li	t3, -11560
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -11560
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	toString
	mv	t1, a0
	li	t3, -11564
	add	t3, s0, t3
	sw	t1, 0(t3)
	la	t0, fuckLLVM_.str.369
	li	t3, -11568
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -11564
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	li	t3, -11568
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a1, t0
	call	string_add
	mv	t1, a0
	li	t3, -11572
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -11572
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	print
	li	t0, -468
	li	t3, -11576
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -11576
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, s0, t1
	li	t3, -11576
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -11576
	add	t3, s0, t3
	lw	t0, 0(t3)
	lw	t1, 0(t0)
	li	t3, -11580
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -11580
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	toString
	mv	t1, a0
	li	t3, -11584
	add	t3, s0, t3
	sw	t1, 0(t3)
	la	t0, fuckLLVM_.str.370
	li	t3, -11588
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -11584
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	li	t3, -11588
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a1, t0
	call	string_add
	mv	t1, a0
	li	t3, -11592
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -11592
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	print
	li	t0, -472
	li	t3, -11596
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -11596
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, s0, t1
	li	t3, -11596
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -11596
	add	t3, s0, t3
	lw	t0, 0(t3)
	lw	t1, 0(t0)
	li	t3, -11600
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -11600
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	toString
	mv	t1, a0
	li	t3, -11604
	add	t3, s0, t3
	sw	t1, 0(t3)
	la	t0, fuckLLVM_.str.371
	li	t3, -11608
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -11604
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	li	t3, -11608
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a1, t0
	call	string_add
	mv	t1, a0
	li	t3, -11612
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -11612
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	print
	li	t0, -476
	li	t3, -11616
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -11616
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, s0, t1
	li	t3, -11616
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -11616
	add	t3, s0, t3
	lw	t0, 0(t3)
	lw	t1, 0(t0)
	li	t3, -11620
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -11620
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	toString
	mv	t1, a0
	li	t3, -11624
	add	t3, s0, t3
	sw	t1, 0(t3)
	la	t0, fuckLLVM_.str.372
	li	t3, -11628
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -11624
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	li	t3, -11628
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a1, t0
	call	string_add
	mv	t1, a0
	li	t3, -11632
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -11632
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	print
	li	t0, -480
	li	t3, -11636
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -11636
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, s0, t1
	li	t3, -11636
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -11636
	add	t3, s0, t3
	lw	t0, 0(t3)
	lw	t1, 0(t0)
	li	t3, -11640
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -11640
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	toString
	mv	t1, a0
	li	t3, -11644
	add	t3, s0, t3
	sw	t1, 0(t3)
	la	t0, fuckLLVM_.str.373
	li	t3, -11648
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -11644
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	li	t3, -11648
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a1, t0
	call	string_add
	mv	t1, a0
	li	t3, -11652
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -11652
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	print
	li	t0, -484
	li	t3, -11656
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -11656
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, s0, t1
	li	t3, -11656
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -11656
	add	t3, s0, t3
	lw	t0, 0(t3)
	lw	t1, 0(t0)
	li	t3, -11660
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -11660
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	toString
	mv	t1, a0
	li	t3, -11664
	add	t3, s0, t3
	sw	t1, 0(t3)
	la	t0, fuckLLVM_.str.374
	li	t3, -11668
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -11664
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	li	t3, -11668
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a1, t0
	call	string_add
	mv	t1, a0
	li	t3, -11672
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -11672
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	print
	li	t0, -488
	li	t3, -11676
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -11676
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, s0, t1
	li	t3, -11676
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -11676
	add	t3, s0, t3
	lw	t0, 0(t3)
	lw	t1, 0(t0)
	li	t3, -11680
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -11680
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	toString
	mv	t1, a0
	li	t3, -11684
	add	t3, s0, t3
	sw	t1, 0(t3)
	la	t0, fuckLLVM_.str.375
	li	t3, -11688
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -11684
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	li	t3, -11688
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a1, t0
	call	string_add
	mv	t1, a0
	li	t3, -11692
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -11692
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	print
	li	t0, -492
	li	t3, -11696
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -11696
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, s0, t1
	li	t3, -11696
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -11696
	add	t3, s0, t3
	lw	t0, 0(t3)
	lw	t1, 0(t0)
	li	t3, -11700
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -11700
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	toString
	mv	t1, a0
	li	t3, -11704
	add	t3, s0, t3
	sw	t1, 0(t3)
	la	t0, fuckLLVM_.str.376
	li	t3, -11708
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -11704
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	li	t3, -11708
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a1, t0
	call	string_add
	mv	t1, a0
	li	t3, -11712
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -11712
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	print
	li	t0, -496
	li	t3, -11716
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -11716
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, s0, t1
	li	t3, -11716
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -11716
	add	t3, s0, t3
	lw	t0, 0(t3)
	lw	t1, 0(t0)
	li	t3, -11720
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -11720
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	toString
	mv	t1, a0
	li	t3, -11724
	add	t3, s0, t3
	sw	t1, 0(t3)
	la	t0, fuckLLVM_.str.377
	li	t3, -11728
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -11724
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	li	t3, -11728
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a1, t0
	call	string_add
	mv	t1, a0
	li	t3, -11732
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -11732
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	print
	li	t0, -500
	li	t3, -11736
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -11736
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, s0, t1
	li	t3, -11736
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -11736
	add	t3, s0, t3
	lw	t0, 0(t3)
	lw	t1, 0(t0)
	li	t3, -11740
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -11740
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	toString
	mv	t1, a0
	li	t3, -11744
	add	t3, s0, t3
	sw	t1, 0(t3)
	la	t0, fuckLLVM_.str.378
	li	t3, -11748
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -11744
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	li	t3, -11748
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a1, t0
	call	string_add
	mv	t1, a0
	li	t3, -11752
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -11752
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	print
	li	t0, -504
	li	t3, -11756
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -11756
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, s0, t1
	li	t3, -11756
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -11756
	add	t3, s0, t3
	lw	t0, 0(t3)
	lw	t1, 0(t0)
	li	t3, -11760
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -11760
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	toString
	mv	t1, a0
	li	t3, -11764
	add	t3, s0, t3
	sw	t1, 0(t3)
	la	t0, fuckLLVM_.str.379
	li	t3, -11768
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -11764
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	li	t3, -11768
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a1, t0
	call	string_add
	mv	t1, a0
	li	t3, -11772
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -11772
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	print
	li	t0, -508
	li	t3, -11776
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -11776
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, s0, t1
	li	t3, -11776
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -11776
	add	t3, s0, t3
	lw	t0, 0(t3)
	lw	t1, 0(t0)
	li	t3, -11780
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -11780
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	toString
	mv	t1, a0
	li	t3, -11784
	add	t3, s0, t3
	sw	t1, 0(t3)
	la	t0, fuckLLVM_.str.380
	li	t3, -11788
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -11784
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	li	t3, -11788
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a1, t0
	call	string_add
	mv	t1, a0
	li	t3, -11792
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -11792
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	print
	li	t0, -512
	li	t3, -11796
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -11796
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, s0, t1
	li	t3, -11796
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -11796
	add	t3, s0, t3
	lw	t0, 0(t3)
	lw	t1, 0(t0)
	li	t3, -11800
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -11800
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	toString
	mv	t1, a0
	li	t3, -11804
	add	t3, s0, t3
	sw	t1, 0(t3)
	la	t0, fuckLLVM_.str.381
	li	t3, -11808
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -11804
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	li	t3, -11808
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a1, t0
	call	string_add
	mv	t1, a0
	li	t3, -11812
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -11812
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	print
	li	t0, -516
	li	t3, -11816
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -11816
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, s0, t1
	li	t3, -11816
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -11816
	add	t3, s0, t3
	lw	t0, 0(t3)
	lw	t1, 0(t0)
	li	t3, -11820
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -11820
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	toString
	mv	t1, a0
	li	t3, -11824
	add	t3, s0, t3
	sw	t1, 0(t3)
	la	t0, fuckLLVM_.str.382
	li	t3, -11828
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -11824
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	li	t3, -11828
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a1, t0
	call	string_add
	mv	t1, a0
	li	t3, -11832
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -11832
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	print
	li	t0, -520
	li	t3, -11836
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -11836
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, s0, t1
	li	t3, -11836
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -11836
	add	t3, s0, t3
	lw	t0, 0(t3)
	lw	t1, 0(t0)
	li	t3, -11840
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -11840
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	toString
	mv	t1, a0
	li	t3, -11844
	add	t3, s0, t3
	sw	t1, 0(t3)
	la	t0, fuckLLVM_.str.383
	li	t3, -11848
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -11844
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	li	t3, -11848
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a1, t0
	call	string_add
	mv	t1, a0
	li	t3, -11852
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -11852
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	print
	li	t0, -524
	li	t3, -11856
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -11856
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, s0, t1
	li	t3, -11856
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -11856
	add	t3, s0, t3
	lw	t0, 0(t3)
	lw	t1, 0(t0)
	li	t3, -11860
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -11860
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	toString
	mv	t1, a0
	li	t3, -11864
	add	t3, s0, t3
	sw	t1, 0(t3)
	la	t0, fuckLLVM_.str.384
	li	t3, -11868
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -11864
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	li	t3, -11868
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a1, t0
	call	string_add
	mv	t1, a0
	li	t3, -11872
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -11872
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	print
	li	t0, -528
	li	t3, -11876
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -11876
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, s0, t1
	li	t3, -11876
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -11876
	add	t3, s0, t3
	lw	t0, 0(t3)
	lw	t1, 0(t0)
	li	t3, -11880
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -11880
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	toString
	mv	t1, a0
	li	t3, -11884
	add	t3, s0, t3
	sw	t1, 0(t3)
	la	t0, fuckLLVM_.str.385
	li	t3, -11888
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -11884
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	li	t3, -11888
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a1, t0
	call	string_add
	mv	t1, a0
	li	t3, -11892
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -11892
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	print
	li	t0, -532
	li	t3, -11896
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -11896
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, s0, t1
	li	t3, -11896
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -11896
	add	t3, s0, t3
	lw	t0, 0(t3)
	lw	t1, 0(t0)
	li	t3, -11900
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -11900
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	toString
	mv	t1, a0
	li	t3, -11904
	add	t3, s0, t3
	sw	t1, 0(t3)
	la	t0, fuckLLVM_.str.386
	li	t3, -11908
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -11904
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	li	t3, -11908
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a1, t0
	call	string_add
	mv	t1, a0
	li	t3, -11912
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -11912
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	print
	li	t0, -536
	li	t3, -11916
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -11916
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, s0, t1
	li	t3, -11916
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -11916
	add	t3, s0, t3
	lw	t0, 0(t3)
	lw	t1, 0(t0)
	li	t3, -11920
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -11920
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	toString
	mv	t1, a0
	li	t3, -11924
	add	t3, s0, t3
	sw	t1, 0(t3)
	la	t0, fuckLLVM_.str.387
	li	t3, -11928
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -11924
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	li	t3, -11928
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a1, t0
	call	string_add
	mv	t1, a0
	li	t3, -11932
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -11932
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	print
	li	t0, -540
	li	t3, -11936
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -11936
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, s0, t1
	li	t3, -11936
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -11936
	add	t3, s0, t3
	lw	t0, 0(t3)
	lw	t1, 0(t0)
	li	t3, -11940
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -11940
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	toString
	mv	t1, a0
	li	t3, -11944
	add	t3, s0, t3
	sw	t1, 0(t3)
	la	t0, fuckLLVM_.str.388
	li	t3, -11948
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -11944
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	li	t3, -11948
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a1, t0
	call	string_add
	mv	t1, a0
	li	t3, -11952
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -11952
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	print
	li	t0, -544
	li	t3, -11956
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -11956
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, s0, t1
	li	t3, -11956
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -11956
	add	t3, s0, t3
	lw	t0, 0(t3)
	lw	t1, 0(t0)
	li	t3, -11960
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -11960
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	toString
	mv	t1, a0
	li	t3, -11964
	add	t3, s0, t3
	sw	t1, 0(t3)
	la	t0, fuckLLVM_.str.389
	li	t3, -11968
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -11964
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	li	t3, -11968
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a1, t0
	call	string_add
	mv	t1, a0
	li	t3, -11972
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -11972
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	print
	li	t0, -548
	li	t3, -11976
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -11976
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, s0, t1
	li	t3, -11976
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -11976
	add	t3, s0, t3
	lw	t0, 0(t3)
	lw	t1, 0(t0)
	li	t3, -11980
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -11980
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	toString
	mv	t1, a0
	li	t3, -11984
	add	t3, s0, t3
	sw	t1, 0(t3)
	la	t0, fuckLLVM_.str.390
	li	t3, -11988
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -11984
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	li	t3, -11988
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a1, t0
	call	string_add
	mv	t1, a0
	li	t3, -11992
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -11992
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	print
	li	t0, -552
	li	t3, -11996
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -11996
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, s0, t1
	li	t3, -11996
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -11996
	add	t3, s0, t3
	lw	t0, 0(t3)
	lw	t1, 0(t0)
	li	t3, -12000
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -12000
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	toString
	mv	t1, a0
	li	t3, -12004
	add	t3, s0, t3
	sw	t1, 0(t3)
	la	t0, fuckLLVM_.str.391
	li	t3, -12008
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -12004
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	li	t3, -12008
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a1, t0
	call	string_add
	mv	t1, a0
	li	t3, -12012
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -12012
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	print
	li	t0, -556
	li	t3, -12016
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -12016
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, s0, t1
	li	t3, -12016
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -12016
	add	t3, s0, t3
	lw	t0, 0(t3)
	lw	t1, 0(t0)
	li	t3, -12020
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -12020
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	toString
	mv	t1, a0
	li	t3, -12024
	add	t3, s0, t3
	sw	t1, 0(t3)
	la	t0, fuckLLVM_.str.392
	li	t3, -12028
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -12024
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	li	t3, -12028
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a1, t0
	call	string_add
	mv	t1, a0
	li	t3, -12032
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -12032
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	print
	li	t0, -560
	li	t3, -12036
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -12036
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, s0, t1
	li	t3, -12036
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -12036
	add	t3, s0, t3
	lw	t0, 0(t3)
	lw	t1, 0(t0)
	li	t3, -12040
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -12040
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	toString
	mv	t1, a0
	li	t3, -12044
	add	t3, s0, t3
	sw	t1, 0(t3)
	la	t0, fuckLLVM_.str.393
	li	t3, -12048
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -12044
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	li	t3, -12048
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a1, t0
	call	string_add
	mv	t1, a0
	li	t3, -12052
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -12052
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	print
	li	t0, -564
	li	t3, -12056
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -12056
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, s0, t1
	li	t3, -12056
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -12056
	add	t3, s0, t3
	lw	t0, 0(t3)
	lw	t1, 0(t0)
	li	t3, -12060
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -12060
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	toString
	mv	t1, a0
	li	t3, -12064
	add	t3, s0, t3
	sw	t1, 0(t3)
	la	t0, fuckLLVM_.str.394
	li	t3, -12068
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -12064
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	li	t3, -12068
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a1, t0
	call	string_add
	mv	t1, a0
	li	t3, -12072
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -12072
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	print
	li	t0, -568
	li	t3, -12076
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -12076
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, s0, t1
	li	t3, -12076
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -12076
	add	t3, s0, t3
	lw	t0, 0(t3)
	lw	t1, 0(t0)
	li	t3, -12080
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -12080
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	toString
	mv	t1, a0
	li	t3, -12084
	add	t3, s0, t3
	sw	t1, 0(t3)
	la	t0, fuckLLVM_.str.395
	li	t3, -12088
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -12084
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	li	t3, -12088
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a1, t0
	call	string_add
	mv	t1, a0
	li	t3, -12092
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -12092
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	print
	li	t0, -572
	li	t3, -12096
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -12096
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, s0, t1
	li	t3, -12096
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -12096
	add	t3, s0, t3
	lw	t0, 0(t3)
	lw	t1, 0(t0)
	li	t3, -12100
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -12100
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	toString
	mv	t1, a0
	li	t3, -12104
	add	t3, s0, t3
	sw	t1, 0(t3)
	la	t0, fuckLLVM_.str.396
	li	t3, -12108
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -12104
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	li	t3, -12108
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a1, t0
	call	string_add
	mv	t1, a0
	li	t3, -12112
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -12112
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	print
	li	t0, -576
	li	t3, -12116
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -12116
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, s0, t1
	li	t3, -12116
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -12116
	add	t3, s0, t3
	lw	t0, 0(t3)
	lw	t1, 0(t0)
	li	t3, -12120
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -12120
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	toString
	mv	t1, a0
	li	t3, -12124
	add	t3, s0, t3
	sw	t1, 0(t3)
	la	t0, fuckLLVM_.str.397
	li	t3, -12128
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -12124
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	li	t3, -12128
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a1, t0
	call	string_add
	mv	t1, a0
	li	t3, -12132
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -12132
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	print
	li	t0, -580
	li	t3, -12136
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -12136
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, s0, t1
	li	t3, -12136
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -12136
	add	t3, s0, t3
	lw	t0, 0(t3)
	lw	t1, 0(t0)
	li	t3, -12140
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -12140
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	toString
	mv	t1, a0
	li	t3, -12144
	add	t3, s0, t3
	sw	t1, 0(t3)
	la	t0, fuckLLVM_.str.398
	li	t3, -12148
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -12144
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	li	t3, -12148
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a1, t0
	call	string_add
	mv	t1, a0
	li	t3, -12152
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -12152
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	print
	li	t0, -584
	li	t3, -12156
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -12156
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, s0, t1
	li	t3, -12156
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -12156
	add	t3, s0, t3
	lw	t0, 0(t3)
	lw	t1, 0(t0)
	li	t3, -12160
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -12160
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	toString
	mv	t1, a0
	li	t3, -12164
	add	t3, s0, t3
	sw	t1, 0(t3)
	la	t0, fuckLLVM_.str.399
	li	t3, -12168
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -12164
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	li	t3, -12168
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a1, t0
	call	string_add
	mv	t1, a0
	li	t3, -12172
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -12172
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	print
	li	t0, -588
	li	t3, -12176
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -12176
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, s0, t1
	li	t3, -12176
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -12176
	add	t3, s0, t3
	lw	t0, 0(t3)
	lw	t1, 0(t0)
	li	t3, -12180
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -12180
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	toString
	mv	t1, a0
	li	t3, -12184
	add	t3, s0, t3
	sw	t1, 0(t3)
	la	t0, fuckLLVM_.str.400
	li	t3, -12188
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -12184
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	li	t3, -12188
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a1, t0
	call	string_add
	mv	t1, a0
	li	t3, -12192
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -12192
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	print
	li	t0, -592
	li	t3, -12196
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -12196
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, s0, t1
	li	t3, -12196
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -12196
	add	t3, s0, t3
	lw	t0, 0(t3)
	lw	t1, 0(t0)
	li	t3, -12200
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -12200
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	toString
	mv	t1, a0
	li	t3, -12204
	add	t3, s0, t3
	sw	t1, 0(t3)
	la	t0, fuckLLVM_.str.401
	li	t3, -12208
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -12204
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	li	t3, -12208
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a1, t0
	call	string_add
	mv	t1, a0
	li	t3, -12212
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -12212
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	print
	li	t0, -596
	li	t3, -12216
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -12216
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, s0, t1
	li	t3, -12216
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -12216
	add	t3, s0, t3
	lw	t0, 0(t3)
	lw	t1, 0(t0)
	li	t3, -12220
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -12220
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	toString
	mv	t1, a0
	li	t3, -12224
	add	t3, s0, t3
	sw	t1, 0(t3)
	la	t0, fuckLLVM_.str.402
	li	t3, -12228
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -12224
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	li	t3, -12228
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a1, t0
	call	string_add
	mv	t1, a0
	li	t3, -12232
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -12232
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	print
	li	t0, -600
	li	t3, -12236
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -12236
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, s0, t1
	li	t3, -12236
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -12236
	add	t3, s0, t3
	lw	t0, 0(t3)
	lw	t1, 0(t0)
	li	t3, -12240
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -12240
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	toString
	mv	t1, a0
	li	t3, -12244
	add	t3, s0, t3
	sw	t1, 0(t3)
	la	t0, fuckLLVM_.str.403
	li	t3, -12248
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -12244
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	li	t3, -12248
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a1, t0
	call	string_add
	mv	t1, a0
	li	t3, -12252
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -12252
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	print
	li	t0, -604
	li	t3, -12256
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -12256
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, s0, t1
	li	t3, -12256
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -12256
	add	t3, s0, t3
	lw	t0, 0(t3)
	lw	t1, 0(t0)
	li	t3, -12260
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -12260
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	toString
	mv	t1, a0
	li	t3, -12264
	add	t3, s0, t3
	sw	t1, 0(t3)
	la	t0, fuckLLVM_.str.404
	li	t3, -12268
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -12264
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	li	t3, -12268
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a1, t0
	call	string_add
	mv	t1, a0
	li	t3, -12272
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -12272
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	print
	li	t0, -608
	li	t3, -12276
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -12276
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, s0, t1
	li	t3, -12276
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -12276
	add	t3, s0, t3
	lw	t0, 0(t3)
	lw	t1, 0(t0)
	li	t3, -12280
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -12280
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	toString
	mv	t1, a0
	li	t3, -12284
	add	t3, s0, t3
	sw	t1, 0(t3)
	la	t0, fuckLLVM_.str.405
	li	t3, -12288
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -12284
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	li	t3, -12288
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a1, t0
	call	string_add
	mv	t1, a0
	li	t3, -12292
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -12292
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	print
	li	t0, -612
	li	t3, -12296
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -12296
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, s0, t1
	li	t3, -12296
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -12296
	add	t3, s0, t3
	lw	t0, 0(t3)
	lw	t1, 0(t0)
	li	t3, -12300
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -12300
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	toString
	mv	t1, a0
	li	t3, -12304
	add	t3, s0, t3
	sw	t1, 0(t3)
	la	t0, fuckLLVM_.str.406
	li	t3, -12308
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -12304
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	li	t3, -12308
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a1, t0
	call	string_add
	mv	t1, a0
	li	t3, -12312
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -12312
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	print
	li	t0, -616
	li	t3, -12316
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -12316
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, s0, t1
	li	t3, -12316
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -12316
	add	t3, s0, t3
	lw	t0, 0(t3)
	lw	t1, 0(t0)
	li	t3, -12320
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -12320
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	toString
	mv	t1, a0
	li	t3, -12324
	add	t3, s0, t3
	sw	t1, 0(t3)
	la	t0, fuckLLVM_.str.407
	li	t3, -12328
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -12324
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	li	t3, -12328
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a1, t0
	call	string_add
	mv	t1, a0
	li	t3, -12332
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -12332
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	print
	li	t0, -620
	li	t3, -12336
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -12336
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, s0, t1
	li	t3, -12336
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -12336
	add	t3, s0, t3
	lw	t0, 0(t3)
	lw	t1, 0(t0)
	li	t3, -12340
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -12340
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	toString
	mv	t1, a0
	li	t3, -12344
	add	t3, s0, t3
	sw	t1, 0(t3)
	la	t0, fuckLLVM_.str.408
	li	t3, -12348
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -12344
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	li	t3, -12348
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a1, t0
	call	string_add
	mv	t1, a0
	li	t3, -12352
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -12352
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	print
	li	t0, -624
	li	t3, -12356
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -12356
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, s0, t1
	li	t3, -12356
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -12356
	add	t3, s0, t3
	lw	t0, 0(t3)
	lw	t1, 0(t0)
	li	t3, -12360
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -12360
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	toString
	mv	t1, a0
	li	t3, -12364
	add	t3, s0, t3
	sw	t1, 0(t3)
	la	t0, fuckLLVM_.str.409
	li	t3, -12368
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -12364
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	li	t3, -12368
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a1, t0
	call	string_add
	mv	t1, a0
	li	t3, -12372
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -12372
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	print
	li	t0, -628
	li	t3, -12376
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -12376
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, s0, t1
	li	t3, -12376
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -12376
	add	t3, s0, t3
	lw	t0, 0(t3)
	lw	t1, 0(t0)
	li	t3, -12380
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -12380
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	toString
	mv	t1, a0
	li	t3, -12384
	add	t3, s0, t3
	sw	t1, 0(t3)
	la	t0, fuckLLVM_.str.410
	li	t3, -12388
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -12384
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	li	t3, -12388
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a1, t0
	call	string_add
	mv	t1, a0
	li	t3, -12392
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -12392
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	print
	li	t0, -632
	li	t3, -12396
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -12396
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, s0, t1
	li	t3, -12396
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -12396
	add	t3, s0, t3
	lw	t0, 0(t3)
	lw	t1, 0(t0)
	li	t3, -12400
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -12400
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	toString
	mv	t1, a0
	li	t3, -12404
	add	t3, s0, t3
	sw	t1, 0(t3)
	la	t0, fuckLLVM_.str.411
	li	t3, -12408
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -12404
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	li	t3, -12408
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a1, t0
	call	string_add
	mv	t1, a0
	li	t3, -12412
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -12412
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	print
	li	t0, -636
	li	t3, -12416
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -12416
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, s0, t1
	li	t3, -12416
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -12416
	add	t3, s0, t3
	lw	t0, 0(t3)
	lw	t1, 0(t0)
	li	t3, -12420
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -12420
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	toString
	mv	t1, a0
	li	t3, -12424
	add	t3, s0, t3
	sw	t1, 0(t3)
	la	t0, fuckLLVM_.str.412
	li	t3, -12428
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -12424
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	li	t3, -12428
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a1, t0
	call	string_add
	mv	t1, a0
	li	t3, -12432
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -12432
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	print
	li	t0, -640
	li	t3, -12436
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -12436
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, s0, t1
	li	t3, -12436
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -12436
	add	t3, s0, t3
	lw	t0, 0(t3)
	lw	t1, 0(t0)
	li	t3, -12440
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -12440
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	toString
	mv	t1, a0
	li	t3, -12444
	add	t3, s0, t3
	sw	t1, 0(t3)
	la	t0, fuckLLVM_.str.413
	li	t3, -12448
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -12444
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	li	t3, -12448
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a1, t0
	call	string_add
	mv	t1, a0
	li	t3, -12452
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -12452
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	print
	li	t0, -644
	li	t3, -12456
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -12456
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, s0, t1
	li	t3, -12456
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -12456
	add	t3, s0, t3
	lw	t0, 0(t3)
	lw	t1, 0(t0)
	li	t3, -12460
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -12460
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	toString
	mv	t1, a0
	li	t3, -12464
	add	t3, s0, t3
	sw	t1, 0(t3)
	la	t0, fuckLLVM_.str.414
	li	t3, -12468
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -12464
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	li	t3, -12468
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a1, t0
	call	string_add
	mv	t1, a0
	li	t3, -12472
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -12472
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	print
	li	t0, -648
	li	t3, -12476
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -12476
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, s0, t1
	li	t3, -12476
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -12476
	add	t3, s0, t3
	lw	t0, 0(t3)
	lw	t1, 0(t0)
	li	t3, -12480
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -12480
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	toString
	mv	t1, a0
	li	t3, -12484
	add	t3, s0, t3
	sw	t1, 0(t3)
	la	t0, fuckLLVM_.str.415
	li	t3, -12488
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -12484
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	li	t3, -12488
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a1, t0
	call	string_add
	mv	t1, a0
	li	t3, -12492
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -12492
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	print
	li	t0, -652
	li	t3, -12496
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -12496
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, s0, t1
	li	t3, -12496
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -12496
	add	t3, s0, t3
	lw	t0, 0(t3)
	lw	t1, 0(t0)
	li	t3, -12500
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -12500
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	toString
	mv	t1, a0
	li	t3, -12504
	add	t3, s0, t3
	sw	t1, 0(t3)
	la	t0, fuckLLVM_.str.416
	li	t3, -12508
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -12504
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	li	t3, -12508
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a1, t0
	call	string_add
	mv	t1, a0
	li	t3, -12512
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -12512
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	print
	li	t0, -656
	li	t3, -12516
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -12516
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, s0, t1
	li	t3, -12516
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -12516
	add	t3, s0, t3
	lw	t0, 0(t3)
	lw	t1, 0(t0)
	li	t3, -12520
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -12520
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	toString
	mv	t1, a0
	li	t3, -12524
	add	t3, s0, t3
	sw	t1, 0(t3)
	la	t0, fuckLLVM_.str.417
	li	t3, -12528
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -12524
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	li	t3, -12528
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a1, t0
	call	string_add
	mv	t1, a0
	li	t3, -12532
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -12532
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	print
	li	t0, -660
	li	t3, -12536
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -12536
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, s0, t1
	li	t3, -12536
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -12536
	add	t3, s0, t3
	lw	t0, 0(t3)
	lw	t1, 0(t0)
	li	t3, -12540
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -12540
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	toString
	mv	t1, a0
	li	t3, -12544
	add	t3, s0, t3
	sw	t1, 0(t3)
	la	t0, fuckLLVM_.str.418
	li	t3, -12548
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -12544
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	li	t3, -12548
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a1, t0
	call	string_add
	mv	t1, a0
	li	t3, -12552
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -12552
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	print
	li	t0, -664
	li	t3, -12556
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -12556
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, s0, t1
	li	t3, -12556
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -12556
	add	t3, s0, t3
	lw	t0, 0(t3)
	lw	t1, 0(t0)
	li	t3, -12560
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -12560
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	toString
	mv	t1, a0
	li	t3, -12564
	add	t3, s0, t3
	sw	t1, 0(t3)
	la	t0, fuckLLVM_.str.419
	li	t3, -12568
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -12564
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	li	t3, -12568
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a1, t0
	call	string_add
	mv	t1, a0
	li	t3, -12572
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -12572
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	print
	li	t0, -668
	li	t3, -12576
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -12576
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, s0, t1
	li	t3, -12576
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -12576
	add	t3, s0, t3
	lw	t0, 0(t3)
	lw	t1, 0(t0)
	li	t3, -12580
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -12580
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	toString
	mv	t1, a0
	li	t3, -12584
	add	t3, s0, t3
	sw	t1, 0(t3)
	la	t0, fuckLLVM_.str.420
	li	t3, -12588
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -12584
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	li	t3, -12588
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a1, t0
	call	string_add
	mv	t1, a0
	li	t3, -12592
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -12592
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	print
	li	t0, -672
	li	t3, -12596
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -12596
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, s0, t1
	li	t3, -12596
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -12596
	add	t3, s0, t3
	lw	t0, 0(t3)
	lw	t1, 0(t0)
	li	t3, -12600
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -12600
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	toString
	mv	t1, a0
	li	t3, -12604
	add	t3, s0, t3
	sw	t1, 0(t3)
	la	t0, fuckLLVM_.str.421
	li	t3, -12608
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -12604
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	li	t3, -12608
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a1, t0
	call	string_add
	mv	t1, a0
	li	t3, -12612
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -12612
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	print
	li	t0, -676
	li	t3, -12616
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -12616
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, s0, t1
	li	t3, -12616
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -12616
	add	t3, s0, t3
	lw	t0, 0(t3)
	lw	t1, 0(t0)
	li	t3, -12620
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -12620
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	toString
	mv	t1, a0
	li	t3, -12624
	add	t3, s0, t3
	sw	t1, 0(t3)
	la	t0, fuckLLVM_.str.422
	li	t3, -12628
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -12624
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	li	t3, -12628
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a1, t0
	call	string_add
	mv	t1, a0
	li	t3, -12632
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -12632
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	print
	li	t0, -680
	li	t3, -12636
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -12636
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, s0, t1
	li	t3, -12636
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -12636
	add	t3, s0, t3
	lw	t0, 0(t3)
	lw	t1, 0(t0)
	li	t3, -12640
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -12640
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	toString
	mv	t1, a0
	li	t3, -12644
	add	t3, s0, t3
	sw	t1, 0(t3)
	la	t0, fuckLLVM_.str.423
	li	t3, -12648
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -12644
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	li	t3, -12648
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a1, t0
	call	string_add
	mv	t1, a0
	li	t3, -12652
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -12652
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	print
	li	t0, -684
	li	t3, -12656
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -12656
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, s0, t1
	li	t3, -12656
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -12656
	add	t3, s0, t3
	lw	t0, 0(t3)
	lw	t1, 0(t0)
	li	t3, -12660
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -12660
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	toString
	mv	t1, a0
	li	t3, -12664
	add	t3, s0, t3
	sw	t1, 0(t3)
	la	t0, fuckLLVM_.str.424
	li	t3, -12668
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -12664
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	li	t3, -12668
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a1, t0
	call	string_add
	mv	t1, a0
	li	t3, -12672
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -12672
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	print
	li	t0, -688
	li	t3, -12676
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -12676
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, s0, t1
	li	t3, -12676
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -12676
	add	t3, s0, t3
	lw	t0, 0(t3)
	lw	t1, 0(t0)
	li	t3, -12680
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -12680
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	toString
	mv	t1, a0
	li	t3, -12684
	add	t3, s0, t3
	sw	t1, 0(t3)
	la	t0, fuckLLVM_.str.425
	li	t3, -12688
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -12684
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	li	t3, -12688
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a1, t0
	call	string_add
	mv	t1, a0
	li	t3, -12692
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -12692
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	print
	li	t0, -692
	li	t3, -12696
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -12696
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, s0, t1
	li	t3, -12696
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -12696
	add	t3, s0, t3
	lw	t0, 0(t3)
	lw	t1, 0(t0)
	li	t3, -12700
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -12700
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	toString
	mv	t1, a0
	li	t3, -12704
	add	t3, s0, t3
	sw	t1, 0(t3)
	la	t0, fuckLLVM_.str.426
	li	t3, -12708
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -12704
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	li	t3, -12708
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a1, t0
	call	string_add
	mv	t1, a0
	li	t3, -12712
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -12712
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	print
	li	t0, -696
	li	t3, -12716
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -12716
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, s0, t1
	li	t3, -12716
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -12716
	add	t3, s0, t3
	lw	t0, 0(t3)
	lw	t1, 0(t0)
	li	t3, -12720
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -12720
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	toString
	mv	t1, a0
	li	t3, -12724
	add	t3, s0, t3
	sw	t1, 0(t3)
	la	t0, fuckLLVM_.str.427
	li	t3, -12728
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -12724
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	li	t3, -12728
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a1, t0
	call	string_add
	mv	t1, a0
	li	t3, -12732
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -12732
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	print
	li	t0, -700
	li	t3, -12736
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -12736
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, s0, t1
	li	t3, -12736
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -12736
	add	t3, s0, t3
	lw	t0, 0(t3)
	lw	t1, 0(t0)
	li	t3, -12740
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -12740
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	toString
	mv	t1, a0
	li	t3, -12744
	add	t3, s0, t3
	sw	t1, 0(t3)
	la	t0, fuckLLVM_.str.428
	li	t3, -12748
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -12744
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	li	t3, -12748
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a1, t0
	call	string_add
	mv	t1, a0
	li	t3, -12752
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -12752
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	print
	li	t0, -704
	li	t3, -12756
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -12756
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, s0, t1
	li	t3, -12756
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -12756
	add	t3, s0, t3
	lw	t0, 0(t3)
	lw	t1, 0(t0)
	li	t3, -12760
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -12760
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	toString
	mv	t1, a0
	li	t3, -12764
	add	t3, s0, t3
	sw	t1, 0(t3)
	la	t0, fuckLLVM_.str.429
	li	t3, -12768
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -12764
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	li	t3, -12768
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a1, t0
	call	string_add
	mv	t1, a0
	li	t3, -12772
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -12772
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	print
	li	t0, -708
	li	t3, -12776
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -12776
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, s0, t1
	li	t3, -12776
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -12776
	add	t3, s0, t3
	lw	t0, 0(t3)
	lw	t1, 0(t0)
	li	t3, -12780
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -12780
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	toString
	mv	t1, a0
	li	t3, -12784
	add	t3, s0, t3
	sw	t1, 0(t3)
	la	t0, fuckLLVM_.str.430
	li	t3, -12788
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -12784
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	li	t3, -12788
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a1, t0
	call	string_add
	mv	t1, a0
	li	t3, -12792
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -12792
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	print
	li	t0, -712
	li	t3, -12796
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -12796
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, s0, t1
	li	t3, -12796
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -12796
	add	t3, s0, t3
	lw	t0, 0(t3)
	lw	t1, 0(t0)
	li	t3, -12800
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -12800
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	toString
	mv	t1, a0
	li	t3, -12804
	add	t3, s0, t3
	sw	t1, 0(t3)
	la	t0, fuckLLVM_.str.431
	li	t3, -12808
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -12804
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	li	t3, -12808
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a1, t0
	call	string_add
	mv	t1, a0
	li	t3, -12812
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -12812
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	print
	li	t0, -716
	li	t3, -12816
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -12816
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, s0, t1
	li	t3, -12816
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -12816
	add	t3, s0, t3
	lw	t0, 0(t3)
	lw	t1, 0(t0)
	li	t3, -12820
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -12820
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	toString
	mv	t1, a0
	li	t3, -12824
	add	t3, s0, t3
	sw	t1, 0(t3)
	la	t0, fuckLLVM_.str.432
	li	t3, -12828
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -12824
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	li	t3, -12828
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a1, t0
	call	string_add
	mv	t1, a0
	li	t3, -12832
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -12832
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	print
	li	t0, -720
	li	t3, -12836
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -12836
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, s0, t1
	li	t3, -12836
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -12836
	add	t3, s0, t3
	lw	t0, 0(t3)
	lw	t1, 0(t0)
	li	t3, -12840
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -12840
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	toString
	mv	t1, a0
	li	t3, -12844
	add	t3, s0, t3
	sw	t1, 0(t3)
	la	t0, fuckLLVM_.str.433
	li	t3, -12848
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -12844
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	li	t3, -12848
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a1, t0
	call	string_add
	mv	t1, a0
	li	t3, -12852
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -12852
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	print
	li	t0, -724
	li	t3, -12856
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -12856
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, s0, t1
	li	t3, -12856
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -12856
	add	t3, s0, t3
	lw	t0, 0(t3)
	lw	t1, 0(t0)
	li	t3, -12860
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -12860
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	toString
	mv	t1, a0
	li	t3, -12864
	add	t3, s0, t3
	sw	t1, 0(t3)
	la	t0, fuckLLVM_.str.434
	li	t3, -12868
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -12864
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	li	t3, -12868
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a1, t0
	call	string_add
	mv	t1, a0
	li	t3, -12872
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -12872
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	print
	li	t0, -728
	li	t3, -12876
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -12876
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, s0, t1
	li	t3, -12876
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -12876
	add	t3, s0, t3
	lw	t0, 0(t3)
	lw	t1, 0(t0)
	li	t3, -12880
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -12880
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	toString
	mv	t1, a0
	li	t3, -12884
	add	t3, s0, t3
	sw	t1, 0(t3)
	la	t0, fuckLLVM_.str.435
	li	t3, -12888
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -12884
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	li	t3, -12888
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a1, t0
	call	string_add
	mv	t1, a0
	li	t3, -12892
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -12892
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	print
	li	t0, -732
	li	t3, -12896
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -12896
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, s0, t1
	li	t3, -12896
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -12896
	add	t3, s0, t3
	lw	t0, 0(t3)
	lw	t1, 0(t0)
	li	t3, -12900
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -12900
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	toString
	mv	t1, a0
	li	t3, -12904
	add	t3, s0, t3
	sw	t1, 0(t3)
	la	t0, fuckLLVM_.str.436
	li	t3, -12908
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -12904
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	li	t3, -12908
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a1, t0
	call	string_add
	mv	t1, a0
	li	t3, -12912
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -12912
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	print
	li	t0, -736
	li	t3, -12916
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -12916
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, s0, t1
	li	t3, -12916
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -12916
	add	t3, s0, t3
	lw	t0, 0(t3)
	lw	t1, 0(t0)
	li	t3, -12920
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -12920
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	toString
	mv	t1, a0
	li	t3, -12924
	add	t3, s0, t3
	sw	t1, 0(t3)
	la	t0, fuckLLVM_.str.437
	li	t3, -12928
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -12924
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	li	t3, -12928
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a1, t0
	call	string_add
	mv	t1, a0
	li	t3, -12932
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -12932
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	print
	li	t0, -740
	li	t3, -12936
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -12936
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, s0, t1
	li	t3, -12936
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -12936
	add	t3, s0, t3
	lw	t0, 0(t3)
	lw	t1, 0(t0)
	li	t3, -12940
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -12940
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	toString
	mv	t1, a0
	li	t3, -12944
	add	t3, s0, t3
	sw	t1, 0(t3)
	la	t0, fuckLLVM_.str.438
	li	t3, -12948
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -12944
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	li	t3, -12948
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a1, t0
	call	string_add
	mv	t1, a0
	li	t3, -12952
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -12952
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	print
	li	t0, -744
	li	t3, -12956
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -12956
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, s0, t1
	li	t3, -12956
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -12956
	add	t3, s0, t3
	lw	t0, 0(t3)
	lw	t1, 0(t0)
	li	t3, -12960
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -12960
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	toString
	mv	t1, a0
	li	t3, -12964
	add	t3, s0, t3
	sw	t1, 0(t3)
	la	t0, fuckLLVM_.str.439
	li	t3, -12968
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -12964
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	li	t3, -12968
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a1, t0
	call	string_add
	mv	t1, a0
	li	t3, -12972
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -12972
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	print
	li	t0, -748
	li	t3, -12976
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -12976
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, s0, t1
	li	t3, -12976
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -12976
	add	t3, s0, t3
	lw	t0, 0(t3)
	lw	t1, 0(t0)
	li	t3, -12980
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -12980
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	toString
	mv	t1, a0
	li	t3, -12984
	add	t3, s0, t3
	sw	t1, 0(t3)
	la	t0, fuckLLVM_.str.440
	li	t3, -12988
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -12984
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	li	t3, -12988
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a1, t0
	call	string_add
	mv	t1, a0
	li	t3, -12992
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -12992
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	print
	li	t0, -752
	li	t3, -12996
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -12996
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, s0, t1
	li	t3, -12996
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -12996
	add	t3, s0, t3
	lw	t0, 0(t3)
	lw	t1, 0(t0)
	li	t3, -13000
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -13000
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	toString
	mv	t1, a0
	li	t3, -13004
	add	t3, s0, t3
	sw	t1, 0(t3)
	la	t0, fuckLLVM_.str.441
	li	t3, -13008
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -13004
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	li	t3, -13008
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a1, t0
	call	string_add
	mv	t1, a0
	li	t3, -13012
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -13012
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	print
	li	t0, -756
	li	t3, -13016
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -13016
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, s0, t1
	li	t3, -13016
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -13016
	add	t3, s0, t3
	lw	t0, 0(t3)
	lw	t1, 0(t0)
	li	t3, -13020
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -13020
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	toString
	mv	t1, a0
	li	t3, -13024
	add	t3, s0, t3
	sw	t1, 0(t3)
	la	t0, fuckLLVM_.str.442
	li	t3, -13028
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -13024
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	li	t3, -13028
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a1, t0
	call	string_add
	mv	t1, a0
	li	t3, -13032
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -13032
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	print
	li	t0, -760
	li	t3, -13036
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -13036
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, s0, t1
	li	t3, -13036
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -13036
	add	t3, s0, t3
	lw	t0, 0(t3)
	lw	t1, 0(t0)
	li	t3, -13040
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -13040
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	toString
	mv	t1, a0
	li	t3, -13044
	add	t3, s0, t3
	sw	t1, 0(t3)
	la	t0, fuckLLVM_.str.443
	li	t3, -13048
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -13044
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	li	t3, -13048
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a1, t0
	call	string_add
	mv	t1, a0
	li	t3, -13052
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -13052
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	print
	li	t0, -764
	li	t3, -13056
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -13056
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, s0, t1
	li	t3, -13056
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -13056
	add	t3, s0, t3
	lw	t0, 0(t3)
	lw	t1, 0(t0)
	li	t3, -13060
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -13060
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	toString
	mv	t1, a0
	li	t3, -13064
	add	t3, s0, t3
	sw	t1, 0(t3)
	la	t0, fuckLLVM_.str.444
	li	t3, -13068
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -13064
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	li	t3, -13068
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a1, t0
	call	string_add
	mv	t1, a0
	li	t3, -13072
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -13072
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	print
	li	t0, -768
	li	t3, -13076
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -13076
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, s0, t1
	li	t3, -13076
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -13076
	add	t3, s0, t3
	lw	t0, 0(t3)
	lw	t1, 0(t0)
	li	t3, -13080
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -13080
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	toString
	mv	t1, a0
	li	t3, -13084
	add	t3, s0, t3
	sw	t1, 0(t3)
	la	t0, fuckLLVM_.str.445
	li	t3, -13088
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -13084
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	li	t3, -13088
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a1, t0
	call	string_add
	mv	t1, a0
	li	t3, -13092
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -13092
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	print
	li	t0, -772
	li	t3, -13096
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -13096
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, s0, t1
	li	t3, -13096
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -13096
	add	t3, s0, t3
	lw	t0, 0(t3)
	lw	t1, 0(t0)
	li	t3, -13100
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -13100
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	toString
	mv	t1, a0
	li	t3, -13104
	add	t3, s0, t3
	sw	t1, 0(t3)
	la	t0, fuckLLVM_.str.446
	li	t3, -13108
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -13104
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	li	t3, -13108
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a1, t0
	call	string_add
	mv	t1, a0
	li	t3, -13112
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -13112
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	print
	li	t0, -776
	li	t3, -13116
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -13116
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, s0, t1
	li	t3, -13116
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -13116
	add	t3, s0, t3
	lw	t0, 0(t3)
	lw	t1, 0(t0)
	li	t3, -13120
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -13120
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	toString
	mv	t1, a0
	li	t3, -13124
	add	t3, s0, t3
	sw	t1, 0(t3)
	la	t0, fuckLLVM_.str.447
	li	t3, -13128
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -13124
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	li	t3, -13128
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a1, t0
	call	string_add
	mv	t1, a0
	li	t3, -13132
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -13132
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	print
	li	t0, -780
	li	t3, -13136
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -13136
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, s0, t1
	li	t3, -13136
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -13136
	add	t3, s0, t3
	lw	t0, 0(t3)
	lw	t1, 0(t0)
	li	t3, -13140
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -13140
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	toString
	mv	t1, a0
	li	t3, -13144
	add	t3, s0, t3
	sw	t1, 0(t3)
	la	t0, fuckLLVM_.str.448
	li	t3, -13148
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -13144
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	li	t3, -13148
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a1, t0
	call	string_add
	mv	t1, a0
	li	t3, -13152
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -13152
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	print
	li	t0, -784
	li	t3, -13156
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -13156
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, s0, t1
	li	t3, -13156
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -13156
	add	t3, s0, t3
	lw	t0, 0(t3)
	lw	t1, 0(t0)
	li	t3, -13160
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -13160
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	toString
	mv	t1, a0
	li	t3, -13164
	add	t3, s0, t3
	sw	t1, 0(t3)
	la	t0, fuckLLVM_.str.449
	li	t3, -13168
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -13164
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	li	t3, -13168
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a1, t0
	call	string_add
	mv	t1, a0
	li	t3, -13172
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -13172
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	print
	li	t0, -788
	li	t3, -13176
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -13176
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, s0, t1
	li	t3, -13176
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -13176
	add	t3, s0, t3
	lw	t0, 0(t3)
	lw	t1, 0(t0)
	li	t3, -13180
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -13180
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	toString
	mv	t1, a0
	li	t3, -13184
	add	t3, s0, t3
	sw	t1, 0(t3)
	la	t0, fuckLLVM_.str.450
	li	t3, -13188
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -13184
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	li	t3, -13188
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a1, t0
	call	string_add
	mv	t1, a0
	li	t3, -13192
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -13192
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	print
	li	t0, -792
	li	t3, -13196
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -13196
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, s0, t1
	li	t3, -13196
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -13196
	add	t3, s0, t3
	lw	t0, 0(t3)
	lw	t1, 0(t0)
	li	t3, -13200
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -13200
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	toString
	mv	t1, a0
	li	t3, -13204
	add	t3, s0, t3
	sw	t1, 0(t3)
	la	t0, fuckLLVM_.str.451
	li	t3, -13208
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -13204
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	li	t3, -13208
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a1, t0
	call	string_add
	mv	t1, a0
	li	t3, -13212
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -13212
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	print
	li	t0, -796
	li	t3, -13216
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -13216
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, s0, t1
	li	t3, -13216
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -13216
	add	t3, s0, t3
	lw	t0, 0(t3)
	lw	t1, 0(t0)
	li	t3, -13220
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -13220
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	toString
	mv	t1, a0
	li	t3, -13224
	add	t3, s0, t3
	sw	t1, 0(t3)
	la	t0, fuckLLVM_.str.452
	li	t3, -13228
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -13224
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	li	t3, -13228
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a1, t0
	call	string_add
	mv	t1, a0
	li	t3, -13232
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -13232
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	print
	li	t0, -800
	li	t3, -13236
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -13236
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, s0, t1
	li	t3, -13236
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -13236
	add	t3, s0, t3
	lw	t0, 0(t3)
	lw	t1, 0(t0)
	li	t3, -13240
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -13240
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	toString
	mv	t1, a0
	li	t3, -13244
	add	t3, s0, t3
	sw	t1, 0(t3)
	la	t0, fuckLLVM_.str.453
	li	t3, -13248
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -13244
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	li	t3, -13248
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a1, t0
	call	string_add
	mv	t1, a0
	li	t3, -13252
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -13252
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	print
	li	t0, -804
	li	t3, -13256
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -13256
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, s0, t1
	li	t3, -13256
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -13256
	add	t3, s0, t3
	lw	t0, 0(t3)
	lw	t1, 0(t0)
	li	t3, -13260
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -13260
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	toString
	mv	t1, a0
	li	t3, -13264
	add	t3, s0, t3
	sw	t1, 0(t3)
	la	t0, fuckLLVM_.str.454
	li	t3, -13268
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -13264
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	li	t3, -13268
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a1, t0
	call	string_add
	mv	t1, a0
	li	t3, -13272
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -13272
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	print
	li	t0, -808
	li	t3, -13276
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -13276
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, s0, t1
	li	t3, -13276
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -13276
	add	t3, s0, t3
	lw	t0, 0(t3)
	lw	t1, 0(t0)
	li	t3, -13280
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -13280
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	toString
	mv	t1, a0
	li	t3, -13284
	add	t3, s0, t3
	sw	t1, 0(t3)
	la	t0, fuckLLVM_.str.455
	li	t3, -13288
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -13284
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	li	t3, -13288
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a1, t0
	call	string_add
	mv	t1, a0
	li	t3, -13292
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -13292
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	print
	li	t0, -812
	li	t3, -13296
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -13296
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, s0, t1
	li	t3, -13296
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -13296
	add	t3, s0, t3
	lw	t0, 0(t3)
	lw	t1, 0(t0)
	li	t3, -13300
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -13300
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	toString
	mv	t1, a0
	li	t3, -13304
	add	t3, s0, t3
	sw	t1, 0(t3)
	la	t0, fuckLLVM_.str.456
	li	t3, -13308
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -13304
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	li	t3, -13308
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a1, t0
	call	string_add
	mv	t1, a0
	li	t3, -13312
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -13312
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	print
	li	t0, -816
	li	t3, -13316
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -13316
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, s0, t1
	li	t3, -13316
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -13316
	add	t3, s0, t3
	lw	t0, 0(t3)
	lw	t1, 0(t0)
	li	t3, -13320
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -13320
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	toString
	mv	t1, a0
	li	t3, -13324
	add	t3, s0, t3
	sw	t1, 0(t3)
	la	t0, fuckLLVM_.str.457
	li	t3, -13328
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -13324
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	li	t3, -13328
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a1, t0
	call	string_add
	mv	t1, a0
	li	t3, -13332
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -13332
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	print
	li	t0, -820
	li	t3, -13336
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -13336
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, s0, t1
	li	t3, -13336
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -13336
	add	t3, s0, t3
	lw	t0, 0(t3)
	lw	t1, 0(t0)
	li	t3, -13340
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -13340
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	toString
	mv	t1, a0
	li	t3, -13344
	add	t3, s0, t3
	sw	t1, 0(t3)
	la	t0, fuckLLVM_.str.458
	li	t3, -13348
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -13344
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	li	t3, -13348
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a1, t0
	call	string_add
	mv	t1, a0
	li	t3, -13352
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -13352
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	print
	li	t0, -824
	li	t3, -13356
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -13356
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, s0, t1
	li	t3, -13356
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -13356
	add	t3, s0, t3
	lw	t0, 0(t3)
	lw	t1, 0(t0)
	li	t3, -13360
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -13360
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	toString
	mv	t1, a0
	li	t3, -13364
	add	t3, s0, t3
	sw	t1, 0(t3)
	la	t0, fuckLLVM_.str.459
	li	t3, -13368
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -13364
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	li	t3, -13368
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a1, t0
	call	string_add
	mv	t1, a0
	li	t3, -13372
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -13372
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	print
	li	t0, -828
	li	t3, -13376
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -13376
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, s0, t1
	li	t3, -13376
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -13376
	add	t3, s0, t3
	lw	t0, 0(t3)
	lw	t1, 0(t0)
	li	t3, -13380
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -13380
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	toString
	mv	t1, a0
	li	t3, -13384
	add	t3, s0, t3
	sw	t1, 0(t3)
	la	t0, fuckLLVM_.str.460
	li	t3, -13388
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -13384
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	li	t3, -13388
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a1, t0
	call	string_add
	mv	t1, a0
	li	t3, -13392
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -13392
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	print
	li	t0, -832
	li	t3, -13396
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -13396
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, s0, t1
	li	t3, -13396
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -13396
	add	t3, s0, t3
	lw	t0, 0(t3)
	lw	t1, 0(t0)
	li	t3, -13400
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -13400
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	toString
	mv	t1, a0
	li	t3, -13404
	add	t3, s0, t3
	sw	t1, 0(t3)
	la	t0, fuckLLVM_.str.461
	li	t3, -13408
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -13404
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	li	t3, -13408
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a1, t0
	call	string_add
	mv	t1, a0
	li	t3, -13412
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -13412
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	print
	li	t0, -836
	li	t3, -13416
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -13416
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, s0, t1
	li	t3, -13416
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -13416
	add	t3, s0, t3
	lw	t0, 0(t3)
	lw	t1, 0(t0)
	li	t3, -13420
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -13420
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	toString
	mv	t1, a0
	li	t3, -13424
	add	t3, s0, t3
	sw	t1, 0(t3)
	la	t0, fuckLLVM_.str.462
	li	t3, -13428
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -13424
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	li	t3, -13428
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a1, t0
	call	string_add
	mv	t1, a0
	li	t3, -13432
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -13432
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	print
	li	t0, -840
	li	t3, -13436
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -13436
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, s0, t1
	li	t3, -13436
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -13436
	add	t3, s0, t3
	lw	t0, 0(t3)
	lw	t1, 0(t0)
	li	t3, -13440
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -13440
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	toString
	mv	t1, a0
	li	t3, -13444
	add	t3, s0, t3
	sw	t1, 0(t3)
	la	t0, fuckLLVM_.str.463
	li	t3, -13448
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -13444
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	li	t3, -13448
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a1, t0
	call	string_add
	mv	t1, a0
	li	t3, -13452
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -13452
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	print
	li	t0, -844
	li	t3, -13456
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -13456
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, s0, t1
	li	t3, -13456
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -13456
	add	t3, s0, t3
	lw	t0, 0(t3)
	lw	t1, 0(t0)
	li	t3, -13460
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -13460
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	toString
	mv	t1, a0
	li	t3, -13464
	add	t3, s0, t3
	sw	t1, 0(t3)
	la	t0, fuckLLVM_.str.464
	li	t3, -13468
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -13464
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	li	t3, -13468
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a1, t0
	call	string_add
	mv	t1, a0
	li	t3, -13472
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -13472
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	print
	li	t0, -848
	li	t3, -13476
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -13476
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, s0, t1
	li	t3, -13476
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -13476
	add	t3, s0, t3
	lw	t0, 0(t3)
	lw	t1, 0(t0)
	li	t3, -13480
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -13480
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	toString
	mv	t1, a0
	li	t3, -13484
	add	t3, s0, t3
	sw	t1, 0(t3)
	la	t0, fuckLLVM_.str.465
	li	t3, -13488
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -13484
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	li	t3, -13488
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a1, t0
	call	string_add
	mv	t1, a0
	li	t3, -13492
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -13492
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	print
	li	t0, -852
	li	t3, -13496
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -13496
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, s0, t1
	li	t3, -13496
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -13496
	add	t3, s0, t3
	lw	t0, 0(t3)
	lw	t1, 0(t0)
	li	t3, -13500
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -13500
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	toString
	mv	t1, a0
	li	t3, -13504
	add	t3, s0, t3
	sw	t1, 0(t3)
	la	t0, fuckLLVM_.str.466
	li	t3, -13508
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -13504
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	li	t3, -13508
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a1, t0
	call	string_add
	mv	t1, a0
	li	t3, -13512
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -13512
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	print
	li	t0, -856
	li	t3, -13516
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -13516
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, s0, t1
	li	t3, -13516
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -13516
	add	t3, s0, t3
	lw	t0, 0(t3)
	lw	t1, 0(t0)
	li	t3, -13520
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -13520
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	toString
	mv	t1, a0
	li	t3, -13524
	add	t3, s0, t3
	sw	t1, 0(t3)
	la	t0, fuckLLVM_.str.467
	li	t3, -13528
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -13524
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	li	t3, -13528
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a1, t0
	call	string_add
	mv	t1, a0
	li	t3, -13532
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -13532
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	print
	li	t0, -860
	li	t3, -13536
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -13536
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, s0, t1
	li	t3, -13536
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -13536
	add	t3, s0, t3
	lw	t0, 0(t3)
	lw	t1, 0(t0)
	li	t3, -13540
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -13540
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	toString
	mv	t1, a0
	li	t3, -13544
	add	t3, s0, t3
	sw	t1, 0(t3)
	la	t0, fuckLLVM_.str.468
	li	t3, -13548
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -13544
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	li	t3, -13548
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a1, t0
	call	string_add
	mv	t1, a0
	li	t3, -13552
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -13552
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	print
	li	t0, -864
	li	t3, -13556
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -13556
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, s0, t1
	li	t3, -13556
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -13556
	add	t3, s0, t3
	lw	t0, 0(t3)
	lw	t1, 0(t0)
	li	t3, -13560
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -13560
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	toString
	mv	t1, a0
	li	t3, -13564
	add	t3, s0, t3
	sw	t1, 0(t3)
	la	t0, fuckLLVM_.str.469
	li	t3, -13568
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -13564
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	li	t3, -13568
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a1, t0
	call	string_add
	mv	t1, a0
	li	t3, -13572
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -13572
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	print
	li	t0, -868
	li	t3, -13576
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -13576
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, s0, t1
	li	t3, -13576
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -13576
	add	t3, s0, t3
	lw	t0, 0(t3)
	lw	t1, 0(t0)
	li	t3, -13580
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -13580
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	toString
	mv	t1, a0
	li	t3, -13584
	add	t3, s0, t3
	sw	t1, 0(t3)
	la	t0, fuckLLVM_.str.470
	li	t3, -13588
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -13584
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	li	t3, -13588
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a1, t0
	call	string_add
	mv	t1, a0
	li	t3, -13592
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -13592
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	print
	li	t0, -872
	li	t3, -13596
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -13596
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, s0, t1
	li	t3, -13596
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -13596
	add	t3, s0, t3
	lw	t0, 0(t3)
	lw	t1, 0(t0)
	li	t3, -13600
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -13600
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	toString
	mv	t1, a0
	li	t3, -13604
	add	t3, s0, t3
	sw	t1, 0(t3)
	la	t0, fuckLLVM_.str.471
	li	t3, -13608
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -13604
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	li	t3, -13608
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a1, t0
	call	string_add
	mv	t1, a0
	li	t3, -13612
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -13612
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	print
	li	t0, -876
	li	t3, -13616
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -13616
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, s0, t1
	li	t3, -13616
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -13616
	add	t3, s0, t3
	lw	t0, 0(t3)
	lw	t1, 0(t0)
	li	t3, -13620
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -13620
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	toString
	mv	t1, a0
	li	t3, -13624
	add	t3, s0, t3
	sw	t1, 0(t3)
	la	t0, fuckLLVM_.str.472
	li	t3, -13628
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -13624
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	li	t3, -13628
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a1, t0
	call	string_add
	mv	t1, a0
	li	t3, -13632
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -13632
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	print
	li	t0, -880
	li	t3, -13636
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -13636
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, s0, t1
	li	t3, -13636
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -13636
	add	t3, s0, t3
	lw	t0, 0(t3)
	lw	t1, 0(t0)
	li	t3, -13640
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -13640
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	toString
	mv	t1, a0
	li	t3, -13644
	add	t3, s0, t3
	sw	t1, 0(t3)
	la	t0, fuckLLVM_.str.473
	li	t3, -13648
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -13644
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	li	t3, -13648
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a1, t0
	call	string_add
	mv	t1, a0
	li	t3, -13652
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -13652
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	print
	li	t0, -884
	li	t3, -13656
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -13656
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, s0, t1
	li	t3, -13656
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -13656
	add	t3, s0, t3
	lw	t0, 0(t3)
	lw	t1, 0(t0)
	li	t3, -13660
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -13660
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	toString
	mv	t1, a0
	li	t3, -13664
	add	t3, s0, t3
	sw	t1, 0(t3)
	la	t0, fuckLLVM_.str.474
	li	t3, -13668
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -13664
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	li	t3, -13668
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a1, t0
	call	string_add
	mv	t1, a0
	li	t3, -13672
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -13672
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	print
	li	t0, -888
	li	t3, -13676
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -13676
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, s0, t1
	li	t3, -13676
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -13676
	add	t3, s0, t3
	lw	t0, 0(t3)
	lw	t1, 0(t0)
	li	t3, -13680
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -13680
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	toString
	mv	t1, a0
	li	t3, -13684
	add	t3, s0, t3
	sw	t1, 0(t3)
	la	t0, fuckLLVM_.str.475
	li	t3, -13688
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -13684
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	li	t3, -13688
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a1, t0
	call	string_add
	mv	t1, a0
	li	t3, -13692
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -13692
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	print
	li	t0, -892
	li	t3, -13696
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -13696
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, s0, t1
	li	t3, -13696
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -13696
	add	t3, s0, t3
	lw	t0, 0(t3)
	lw	t1, 0(t0)
	li	t3, -13700
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -13700
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	toString
	mv	t1, a0
	li	t3, -13704
	add	t3, s0, t3
	sw	t1, 0(t3)
	la	t0, fuckLLVM_.str.476
	li	t3, -13708
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -13704
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	li	t3, -13708
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a1, t0
	call	string_add
	mv	t1, a0
	li	t3, -13712
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -13712
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	print
	li	t0, -896
	li	t3, -13716
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -13716
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, s0, t1
	li	t3, -13716
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -13716
	add	t3, s0, t3
	lw	t0, 0(t3)
	lw	t1, 0(t0)
	li	t3, -13720
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -13720
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	toString
	mv	t1, a0
	li	t3, -13724
	add	t3, s0, t3
	sw	t1, 0(t3)
	la	t0, fuckLLVM_.str.477
	li	t3, -13728
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -13724
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	li	t3, -13728
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a1, t0
	call	string_add
	mv	t1, a0
	li	t3, -13732
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -13732
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	print
	li	t0, -900
	li	t3, -13736
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -13736
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, s0, t1
	li	t3, -13736
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -13736
	add	t3, s0, t3
	lw	t0, 0(t3)
	lw	t1, 0(t0)
	li	t3, -13740
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -13740
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	toString
	mv	t1, a0
	li	t3, -13744
	add	t3, s0, t3
	sw	t1, 0(t3)
	la	t0, fuckLLVM_.str.478
	li	t3, -13748
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -13744
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	li	t3, -13748
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a1, t0
	call	string_add
	mv	t1, a0
	li	t3, -13752
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -13752
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	print
	li	t0, -904
	li	t3, -13756
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -13756
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, s0, t1
	li	t3, -13756
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -13756
	add	t3, s0, t3
	lw	t0, 0(t3)
	lw	t1, 0(t0)
	li	t3, -13760
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -13760
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	toString
	mv	t1, a0
	li	t3, -13764
	add	t3, s0, t3
	sw	t1, 0(t3)
	la	t0, fuckLLVM_.str.479
	li	t3, -13768
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -13764
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	li	t3, -13768
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a1, t0
	call	string_add
	mv	t1, a0
	li	t3, -13772
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -13772
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	print
	li	t0, -908
	li	t3, -13776
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -13776
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, s0, t1
	li	t3, -13776
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -13776
	add	t3, s0, t3
	lw	t0, 0(t3)
	lw	t1, 0(t0)
	li	t3, -13780
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -13780
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	toString
	mv	t1, a0
	li	t3, -13784
	add	t3, s0, t3
	sw	t1, 0(t3)
	la	t0, fuckLLVM_.str.480
	li	t3, -13788
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -13784
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	li	t3, -13788
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a1, t0
	call	string_add
	mv	t1, a0
	li	t3, -13792
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -13792
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	print
	li	t0, -912
	li	t3, -13796
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -13796
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, s0, t1
	li	t3, -13796
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -13796
	add	t3, s0, t3
	lw	t0, 0(t3)
	lw	t1, 0(t0)
	li	t3, -13800
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -13800
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	toString
	mv	t1, a0
	li	t3, -13804
	add	t3, s0, t3
	sw	t1, 0(t3)
	la	t0, fuckLLVM_.str.481
	li	t3, -13808
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -13804
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	li	t3, -13808
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a1, t0
	call	string_add
	mv	t1, a0
	li	t3, -13812
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -13812
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	print
	li	t0, -916
	li	t3, -13816
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -13816
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, s0, t1
	li	t3, -13816
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -13816
	add	t3, s0, t3
	lw	t0, 0(t3)
	lw	t1, 0(t0)
	li	t3, -13820
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -13820
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	toString
	mv	t1, a0
	li	t3, -13824
	add	t3, s0, t3
	sw	t1, 0(t3)
	la	t0, fuckLLVM_.str.482
	li	t3, -13828
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -13824
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	li	t3, -13828
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a1, t0
	call	string_add
	mv	t1, a0
	li	t3, -13832
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -13832
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	print
	li	t0, -920
	li	t3, -13836
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -13836
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, s0, t1
	li	t3, -13836
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -13836
	add	t3, s0, t3
	lw	t0, 0(t3)
	lw	t1, 0(t0)
	li	t3, -13840
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -13840
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	toString
	mv	t1, a0
	li	t3, -13844
	add	t3, s0, t3
	sw	t1, 0(t3)
	la	t0, fuckLLVM_.str.483
	li	t3, -13848
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -13844
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	li	t3, -13848
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a1, t0
	call	string_add
	mv	t1, a0
	li	t3, -13852
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -13852
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	print
	li	t0, -924
	li	t3, -13856
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -13856
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, s0, t1
	li	t3, -13856
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -13856
	add	t3, s0, t3
	lw	t0, 0(t3)
	lw	t1, 0(t0)
	li	t3, -13860
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -13860
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	toString
	mv	t1, a0
	li	t3, -13864
	add	t3, s0, t3
	sw	t1, 0(t3)
	la	t0, fuckLLVM_.str.484
	li	t3, -13868
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -13864
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	li	t3, -13868
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a1, t0
	call	string_add
	mv	t1, a0
	li	t3, -13872
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -13872
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	print
	li	t0, -928
	li	t3, -13876
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -13876
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, s0, t1
	li	t3, -13876
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -13876
	add	t3, s0, t3
	lw	t0, 0(t3)
	lw	t1, 0(t0)
	li	t3, -13880
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -13880
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	toString
	mv	t1, a0
	li	t3, -13884
	add	t3, s0, t3
	sw	t1, 0(t3)
	la	t0, fuckLLVM_.str.485
	li	t3, -13888
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -13884
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	li	t3, -13888
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a1, t0
	call	string_add
	mv	t1, a0
	li	t3, -13892
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -13892
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	print
	li	t0, -932
	li	t3, -13896
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -13896
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, s0, t1
	li	t3, -13896
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -13896
	add	t3, s0, t3
	lw	t0, 0(t3)
	lw	t1, 0(t0)
	li	t3, -13900
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -13900
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	toString
	mv	t1, a0
	li	t3, -13904
	add	t3, s0, t3
	sw	t1, 0(t3)
	la	t0, fuckLLVM_.str.486
	li	t3, -13908
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -13904
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	li	t3, -13908
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a1, t0
	call	string_add
	mv	t1, a0
	li	t3, -13912
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -13912
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	print
	li	t0, -936
	li	t3, -13916
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -13916
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, s0, t1
	li	t3, -13916
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -13916
	add	t3, s0, t3
	lw	t0, 0(t3)
	lw	t1, 0(t0)
	li	t3, -13920
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -13920
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	toString
	mv	t1, a0
	li	t3, -13924
	add	t3, s0, t3
	sw	t1, 0(t3)
	la	t0, fuckLLVM_.str.487
	li	t3, -13928
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -13924
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	li	t3, -13928
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a1, t0
	call	string_add
	mv	t1, a0
	li	t3, -13932
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -13932
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	print
	li	t0, -940
	li	t3, -13936
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -13936
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, s0, t1
	li	t3, -13936
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -13936
	add	t3, s0, t3
	lw	t0, 0(t3)
	lw	t1, 0(t0)
	li	t3, -13940
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -13940
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	toString
	mv	t1, a0
	li	t3, -13944
	add	t3, s0, t3
	sw	t1, 0(t3)
	la	t0, fuckLLVM_.str.488
	li	t3, -13948
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -13944
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	li	t3, -13948
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a1, t0
	call	string_add
	mv	t1, a0
	li	t3, -13952
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -13952
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	print
	li	t0, -944
	li	t3, -13956
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -13956
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, s0, t1
	li	t3, -13956
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -13956
	add	t3, s0, t3
	lw	t0, 0(t3)
	lw	t1, 0(t0)
	li	t3, -13960
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -13960
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	toString
	mv	t1, a0
	li	t3, -13964
	add	t3, s0, t3
	sw	t1, 0(t3)
	la	t0, fuckLLVM_.str.489
	li	t3, -13968
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -13964
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	li	t3, -13968
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a1, t0
	call	string_add
	mv	t1, a0
	li	t3, -13972
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -13972
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	print
	li	t0, -948
	li	t3, -13976
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -13976
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, s0, t1
	li	t3, -13976
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -13976
	add	t3, s0, t3
	lw	t0, 0(t3)
	lw	t1, 0(t0)
	li	t3, -13980
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -13980
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	toString
	mv	t1, a0
	li	t3, -13984
	add	t3, s0, t3
	sw	t1, 0(t3)
	la	t0, fuckLLVM_.str.490
	li	t3, -13988
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -13984
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	li	t3, -13988
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a1, t0
	call	string_add
	mv	t1, a0
	li	t3, -13992
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -13992
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	print
	li	t0, -952
	li	t3, -13996
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -13996
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, s0, t1
	li	t3, -13996
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -13996
	add	t3, s0, t3
	lw	t0, 0(t3)
	lw	t1, 0(t0)
	li	t3, -14000
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -14000
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	toString
	mv	t1, a0
	li	t3, -14004
	add	t3, s0, t3
	sw	t1, 0(t3)
	la	t0, fuckLLVM_.str.491
	li	t3, -14008
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -14004
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	li	t3, -14008
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a1, t0
	call	string_add
	mv	t1, a0
	li	t3, -14012
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -14012
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	print
	li	t0, -956
	li	t3, -14016
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -14016
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, s0, t1
	li	t3, -14016
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -14016
	add	t3, s0, t3
	lw	t0, 0(t3)
	lw	t1, 0(t0)
	li	t3, -14020
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -14020
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	toString
	mv	t1, a0
	li	t3, -14024
	add	t3, s0, t3
	sw	t1, 0(t3)
	la	t0, fuckLLVM_.str.492
	li	t3, -14028
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -14024
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	li	t3, -14028
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a1, t0
	call	string_add
	mv	t1, a0
	li	t3, -14032
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -14032
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	print
	li	t0, -960
	li	t3, -14036
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -14036
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, s0, t1
	li	t3, -14036
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -14036
	add	t3, s0, t3
	lw	t0, 0(t3)
	lw	t1, 0(t0)
	li	t3, -14040
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -14040
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	toString
	mv	t1, a0
	li	t3, -14044
	add	t3, s0, t3
	sw	t1, 0(t3)
	la	t0, fuckLLVM_.str.493
	li	t3, -14048
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -14044
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	li	t3, -14048
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a1, t0
	call	string_add
	mv	t1, a0
	li	t3, -14052
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -14052
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	print
	li	t0, -964
	li	t3, -14056
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -14056
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, s0, t1
	li	t3, -14056
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -14056
	add	t3, s0, t3
	lw	t0, 0(t3)
	lw	t1, 0(t0)
	li	t3, -14060
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -14060
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	toString
	mv	t1, a0
	li	t3, -14064
	add	t3, s0, t3
	sw	t1, 0(t3)
	la	t0, fuckLLVM_.str.494
	li	t3, -14068
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -14064
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	li	t3, -14068
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a1, t0
	call	string_add
	mv	t1, a0
	li	t3, -14072
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -14072
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	print
	li	t0, -968
	li	t3, -14076
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -14076
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, s0, t1
	li	t3, -14076
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -14076
	add	t3, s0, t3
	lw	t0, 0(t3)
	lw	t1, 0(t0)
	li	t3, -14080
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -14080
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	toString
	mv	t1, a0
	li	t3, -14084
	add	t3, s0, t3
	sw	t1, 0(t3)
	la	t0, fuckLLVM_.str.495
	li	t3, -14088
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -14084
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	li	t3, -14088
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a1, t0
	call	string_add
	mv	t1, a0
	li	t3, -14092
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -14092
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	print
	li	t0, -972
	li	t3, -14096
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -14096
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, s0, t1
	li	t3, -14096
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -14096
	add	t3, s0, t3
	lw	t0, 0(t3)
	lw	t1, 0(t0)
	li	t3, -14100
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -14100
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	toString
	mv	t1, a0
	li	t3, -14104
	add	t3, s0, t3
	sw	t1, 0(t3)
	la	t0, fuckLLVM_.str.496
	li	t3, -14108
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -14104
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	li	t3, -14108
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a1, t0
	call	string_add
	mv	t1, a0
	li	t3, -14112
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -14112
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	print
	li	t0, -976
	li	t3, -14116
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -14116
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, s0, t1
	li	t3, -14116
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -14116
	add	t3, s0, t3
	lw	t0, 0(t3)
	lw	t1, 0(t0)
	li	t3, -14120
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -14120
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	toString
	mv	t1, a0
	li	t3, -14124
	add	t3, s0, t3
	sw	t1, 0(t3)
	la	t0, fuckLLVM_.str.497
	li	t3, -14128
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -14124
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	li	t3, -14128
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a1, t0
	call	string_add
	mv	t1, a0
	li	t3, -14132
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -14132
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	print
	li	t0, -980
	li	t3, -14136
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -14136
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, s0, t1
	li	t3, -14136
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -14136
	add	t3, s0, t3
	lw	t0, 0(t3)
	lw	t1, 0(t0)
	li	t3, -14140
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -14140
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	toString
	mv	t1, a0
	li	t3, -14144
	add	t3, s0, t3
	sw	t1, 0(t3)
	la	t0, fuckLLVM_.str.498
	li	t3, -14148
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -14144
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	li	t3, -14148
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a1, t0
	call	string_add
	mv	t1, a0
	li	t3, -14152
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -14152
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	print
	li	t0, -984
	li	t3, -14156
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -14156
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, s0, t1
	li	t3, -14156
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -14156
	add	t3, s0, t3
	lw	t0, 0(t3)
	lw	t1, 0(t0)
	li	t3, -14160
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -14160
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	toString
	mv	t1, a0
	li	t3, -14164
	add	t3, s0, t3
	sw	t1, 0(t3)
	la	t0, fuckLLVM_.str.499
	li	t3, -14168
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -14164
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	li	t3, -14168
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a1, t0
	call	string_add
	mv	t1, a0
	li	t3, -14172
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -14172
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	print
	li	t0, -988
	li	t3, -14176
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -14176
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, s0, t1
	li	t3, -14176
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -14176
	add	t3, s0, t3
	lw	t0, 0(t3)
	lw	t1, 0(t0)
	li	t3, -14180
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -14180
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	toString
	mv	t1, a0
	li	t3, -14184
	add	t3, s0, t3
	sw	t1, 0(t3)
	la	t0, fuckLLVM_.str.500
	li	t3, -14188
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -14184
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	li	t3, -14188
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a1, t0
	call	string_add
	mv	t1, a0
	li	t3, -14192
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -14192
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	print
	li	t0, -992
	li	t3, -14196
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -14196
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, s0, t1
	li	t3, -14196
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -14196
	add	t3, s0, t3
	lw	t0, 0(t3)
	lw	t1, 0(t0)
	li	t3, -14200
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -14200
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	toString
	mv	t1, a0
	li	t3, -14204
	add	t3, s0, t3
	sw	t1, 0(t3)
	la	t0, fuckLLVM_.str.501
	li	t3, -14208
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -14204
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	li	t3, -14208
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a1, t0
	call	string_add
	mv	t1, a0
	li	t3, -14212
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -14212
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	print
	li	t0, -996
	li	t3, -14216
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -14216
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, s0, t1
	li	t3, -14216
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -14216
	add	t3, s0, t3
	lw	t0, 0(t3)
	lw	t1, 0(t0)
	li	t3, -14220
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -14220
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	toString
	mv	t1, a0
	li	t3, -14224
	add	t3, s0, t3
	sw	t1, 0(t3)
	la	t0, fuckLLVM_.str.502
	li	t3, -14228
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -14224
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	li	t3, -14228
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a1, t0
	call	string_add
	mv	t1, a0
	li	t3, -14232
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -14232
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	print
	li	t0, -1000
	li	t3, -14236
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -14236
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, s0, t1
	li	t3, -14236
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -14236
	add	t3, s0, t3
	lw	t0, 0(t3)
	lw	t1, 0(t0)
	li	t3, -14240
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -14240
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	toString
	mv	t1, a0
	li	t3, -14244
	add	t3, s0, t3
	sw	t1, 0(t3)
	la	t0, fuckLLVM_.str.503
	li	t3, -14248
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -14244
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	li	t3, -14248
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a1, t0
	call	string_add
	mv	t1, a0
	li	t3, -14252
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -14252
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	print
	li	t0, -1004
	li	t3, -14256
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -14256
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, s0, t1
	li	t3, -14256
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -14256
	add	t3, s0, t3
	lw	t0, 0(t3)
	lw	t1, 0(t0)
	li	t3, -14260
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -14260
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	toString
	mv	t1, a0
	li	t3, -14264
	add	t3, s0, t3
	sw	t1, 0(t3)
	la	t0, fuckLLVM_.str.504
	li	t3, -14268
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -14264
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	li	t3, -14268
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a1, t0
	call	string_add
	mv	t1, a0
	li	t3, -14272
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -14272
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	print
	li	t0, -1008
	li	t3, -14276
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -14276
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, s0, t1
	li	t3, -14276
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -14276
	add	t3, s0, t3
	lw	t0, 0(t3)
	lw	t1, 0(t0)
	li	t3, -14280
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -14280
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	toString
	mv	t1, a0
	li	t3, -14284
	add	t3, s0, t3
	sw	t1, 0(t3)
	la	t0, fuckLLVM_.str.505
	li	t3, -14288
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -14284
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	li	t3, -14288
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a1, t0
	call	string_add
	mv	t1, a0
	li	t3, -14292
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -14292
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	print
	li	t0, -1012
	li	t3, -14296
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -14296
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, s0, t1
	li	t3, -14296
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -14296
	add	t3, s0, t3
	lw	t0, 0(t3)
	lw	t1, 0(t0)
	li	t3, -14300
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -14300
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	toString
	mv	t1, a0
	li	t3, -14304
	add	t3, s0, t3
	sw	t1, 0(t3)
	la	t0, fuckLLVM_.str.506
	li	t3, -14308
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -14304
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	li	t3, -14308
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a1, t0
	call	string_add
	mv	t1, a0
	li	t3, -14312
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -14312
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	print
	li	t0, -1016
	li	t3, -14316
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -14316
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, s0, t1
	li	t3, -14316
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -14316
	add	t3, s0, t3
	lw	t0, 0(t3)
	lw	t1, 0(t0)
	li	t3, -14320
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -14320
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	toString
	mv	t1, a0
	li	t3, -14324
	add	t3, s0, t3
	sw	t1, 0(t3)
	la	t0, fuckLLVM_.str.507
	li	t3, -14328
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -14324
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	li	t3, -14328
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a1, t0
	call	string_add
	mv	t1, a0
	li	t3, -14332
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -14332
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	print
	li	t0, -1020
	li	t3, -14336
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -14336
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, s0, t1
	li	t3, -14336
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -14336
	add	t3, s0, t3
	lw	t0, 0(t3)
	lw	t1, 0(t0)
	li	t3, -14340
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -14340
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	toString
	mv	t1, a0
	li	t3, -14344
	add	t3, s0, t3
	sw	t1, 0(t3)
	la	t0, fuckLLVM_.str.508
	li	t3, -14348
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -14344
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	li	t3, -14348
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a1, t0
	call	string_add
	mv	t1, a0
	li	t3, -14352
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -14352
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	print
	li	t0, -1024
	li	t3, -14356
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -14356
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, s0, t1
	li	t3, -14356
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -14356
	add	t3, s0, t3
	lw	t0, 0(t3)
	lw	t1, 0(t0)
	li	t3, -14360
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -14360
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	toString
	mv	t1, a0
	li	t3, -14364
	add	t3, s0, t3
	sw	t1, 0(t3)
	la	t0, fuckLLVM_.str.509
	li	t3, -14368
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -14364
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	li	t3, -14368
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a1, t0
	call	string_add
	mv	t1, a0
	li	t3, -14372
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -14372
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	print
	li	t0, -1028
	li	t3, -14376
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -14376
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, s0, t1
	li	t3, -14376
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -14376
	add	t3, s0, t3
	lw	t0, 0(t3)
	lw	t1, 0(t0)
	li	t3, -14380
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -14380
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	toString
	mv	t1, a0
	li	t3, -14384
	add	t3, s0, t3
	sw	t1, 0(t3)
	la	t0, fuckLLVM_.str.510
	li	t3, -14388
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -14384
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	li	t3, -14388
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a1, t0
	call	string_add
	mv	t1, a0
	li	t3, -14392
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -14392
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	print
	li	t0, -1032
	li	t3, -14396
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -14396
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, s0, t1
	li	t3, -14396
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -14396
	add	t3, s0, t3
	lw	t0, 0(t3)
	lw	t1, 0(t0)
	li	t3, -14400
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -14400
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	toString
	mv	t1, a0
	li	t3, -14404
	add	t3, s0, t3
	sw	t1, 0(t3)
	la	t0, fuckLLVM_.str.511
	li	t3, -14408
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -14404
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	li	t3, -14408
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a1, t0
	call	string_add
	mv	t1, a0
	li	t3, -14412
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -14412
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	print
	li	t0, -1036
	li	t3, -14416
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -14416
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, s0, t1
	li	t3, -14416
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -14416
	add	t3, s0, t3
	lw	t0, 0(t3)
	lw	t1, 0(t0)
	li	t3, -14420
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -14420
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	toString
	mv	t1, a0
	li	t3, -14424
	add	t3, s0, t3
	sw	t1, 0(t3)
	la	t0, fuckLLVM_.str.512
	li	t3, -14428
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -14424
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	li	t3, -14428
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a1, t0
	call	string_add
	mv	t1, a0
	li	t3, -14432
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -14432
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	print
	la	t0, fuckLLVM_.str.513
	li	t3, -14436
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -14436
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	call	println
	li	t0, 0
	li	t3, -14440
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t0, -12
	li	t3, -14444
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -14444
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, s0, t1
	li	t3, -14444
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -14440
	add	t3, s0, t3
	lw	t0, 0(t3)
	li	t3, -14444
	add	t3, s0, t3
	lw	t1, 0(t3)
	sw	t0, 0(t1)
	j	.main_return
	j	.main_return
.main_return:
	li	t0, -12
	li	t3, -14448
	add	t3, s0, t3
	sw	t0, 0(t3)
	li	t3, -14448
	add	t3, s0, t3
	lw	t1, 0(t3)
	add	t2, s0, t1
	li	t3, -14448
	add	t3, s0, t3
	sw	t2, 0(t3)
	li	t3, -14448
	add	t3, s0, t3
	lw	t0, 0(t3)
	lw	t1, 0(t0)
	li	t3, -14452
	add	t3, s0, t3
	sw	t1, 0(t3)
	li	t3, -14452
	add	t3, s0, t3
	lw	t0, 0(t3)
	mv	a0, t0
	li	t0, 14464
	add	t1, sp, t0
	lw	ra, -4(t1)
	lw	s0, -8(t1)
	add	sp, sp, t0
	ret

	.section	.sbss
	.type	fuckLLVM_count,@object
	.globl	fuckLLVM_count
	.p2align	2
fuckLLVM_count:
	.word	0
	.size	fuckLLVM_count, 8

	.section	.rodata
	.type	fuckLLVM_.str.0,@object
fuckLLVM_.str.0:
	.asciz	"  "
	.size	fuckLLVM_.str.0, 2

	.section	.rodata
	.type	fuckLLVM_.str.1,@object
fuckLLVM_.str.1:
	.asciz	"  "
	.size	fuckLLVM_.str.1, 2

	.section	.rodata
	.type	fuckLLVM_.str.2,@object
fuckLLVM_.str.2:
	.asciz	"  "
	.size	fuckLLVM_.str.2, 2

	.section	.rodata
	.type	fuckLLVM_.str.3,@object
fuckLLVM_.str.3:
	.asciz	"  "
	.size	fuckLLVM_.str.3, 2

	.section	.rodata
	.type	fuckLLVM_.str.4,@object
fuckLLVM_.str.4:
	.asciz	"  "
	.size	fuckLLVM_.str.4, 2

	.section	.rodata
	.type	fuckLLVM_.str.5,@object
fuckLLVM_.str.5:
	.asciz	"  "
	.size	fuckLLVM_.str.5, 2

	.section	.rodata
	.type	fuckLLVM_.str.6,@object
fuckLLVM_.str.6:
	.asciz	"  "
	.size	fuckLLVM_.str.6, 2

	.section	.rodata
	.type	fuckLLVM_.str.7,@object
fuckLLVM_.str.7:
	.asciz	"  "
	.size	fuckLLVM_.str.7, 2

	.section	.rodata
	.type	fuckLLVM_.str.8,@object
fuckLLVM_.str.8:
	.asciz	"  "
	.size	fuckLLVM_.str.8, 2

	.section	.rodata
	.type	fuckLLVM_.str.9,@object
fuckLLVM_.str.9:
	.asciz	"  "
	.size	fuckLLVM_.str.9, 2

	.section	.rodata
	.type	fuckLLVM_.str.10,@object
fuckLLVM_.str.10:
	.asciz	"  "
	.size	fuckLLVM_.str.10, 2

	.section	.rodata
	.type	fuckLLVM_.str.11,@object
fuckLLVM_.str.11:
	.asciz	"  "
	.size	fuckLLVM_.str.11, 2

	.section	.rodata
	.type	fuckLLVM_.str.12,@object
fuckLLVM_.str.12:
	.asciz	"  "
	.size	fuckLLVM_.str.12, 2

	.section	.rodata
	.type	fuckLLVM_.str.13,@object
fuckLLVM_.str.13:
	.asciz	"  "
	.size	fuckLLVM_.str.13, 2

	.section	.rodata
	.type	fuckLLVM_.str.14,@object
fuckLLVM_.str.14:
	.asciz	"  "
	.size	fuckLLVM_.str.14, 2

	.section	.rodata
	.type	fuckLLVM_.str.15,@object
fuckLLVM_.str.15:
	.asciz	"  "
	.size	fuckLLVM_.str.15, 2

	.section	.rodata
	.type	fuckLLVM_.str.16,@object
fuckLLVM_.str.16:
	.asciz	"  "
	.size	fuckLLVM_.str.16, 2

	.section	.rodata
	.type	fuckLLVM_.str.17,@object
fuckLLVM_.str.17:
	.asciz	"  "
	.size	fuckLLVM_.str.17, 2

	.section	.rodata
	.type	fuckLLVM_.str.18,@object
fuckLLVM_.str.18:
	.asciz	"  "
	.size	fuckLLVM_.str.18, 2

	.section	.rodata
	.type	fuckLLVM_.str.19,@object
fuckLLVM_.str.19:
	.asciz	"  "
	.size	fuckLLVM_.str.19, 2

	.section	.rodata
	.type	fuckLLVM_.str.20,@object
fuckLLVM_.str.20:
	.asciz	"  "
	.size	fuckLLVM_.str.20, 2

	.section	.rodata
	.type	fuckLLVM_.str.21,@object
fuckLLVM_.str.21:
	.asciz	"  "
	.size	fuckLLVM_.str.21, 2

	.section	.rodata
	.type	fuckLLVM_.str.22,@object
fuckLLVM_.str.22:
	.asciz	"  "
	.size	fuckLLVM_.str.22, 2

	.section	.rodata
	.type	fuckLLVM_.str.23,@object
fuckLLVM_.str.23:
	.asciz	"  "
	.size	fuckLLVM_.str.23, 2

	.section	.rodata
	.type	fuckLLVM_.str.24,@object
fuckLLVM_.str.24:
	.asciz	"  "
	.size	fuckLLVM_.str.24, 2

	.section	.rodata
	.type	fuckLLVM_.str.25,@object
fuckLLVM_.str.25:
	.asciz	"  "
	.size	fuckLLVM_.str.25, 2

	.section	.rodata
	.type	fuckLLVM_.str.26,@object
fuckLLVM_.str.26:
	.asciz	"  "
	.size	fuckLLVM_.str.26, 2

	.section	.rodata
	.type	fuckLLVM_.str.27,@object
fuckLLVM_.str.27:
	.asciz	"  "
	.size	fuckLLVM_.str.27, 2

	.section	.rodata
	.type	fuckLLVM_.str.28,@object
fuckLLVM_.str.28:
	.asciz	"  "
	.size	fuckLLVM_.str.28, 2

	.section	.rodata
	.type	fuckLLVM_.str.29,@object
fuckLLVM_.str.29:
	.asciz	"  "
	.size	fuckLLVM_.str.29, 2

	.section	.rodata
	.type	fuckLLVM_.str.30,@object
fuckLLVM_.str.30:
	.asciz	"  "
	.size	fuckLLVM_.str.30, 2

	.section	.rodata
	.type	fuckLLVM_.str.31,@object
fuckLLVM_.str.31:
	.asciz	"  "
	.size	fuckLLVM_.str.31, 2

	.section	.rodata
	.type	fuckLLVM_.str.32,@object
fuckLLVM_.str.32:
	.asciz	"  "
	.size	fuckLLVM_.str.32, 2

	.section	.rodata
	.type	fuckLLVM_.str.33,@object
fuckLLVM_.str.33:
	.asciz	"  "
	.size	fuckLLVM_.str.33, 2

	.section	.rodata
	.type	fuckLLVM_.str.34,@object
fuckLLVM_.str.34:
	.asciz	"  "
	.size	fuckLLVM_.str.34, 2

	.section	.rodata
	.type	fuckLLVM_.str.35,@object
fuckLLVM_.str.35:
	.asciz	"  "
	.size	fuckLLVM_.str.35, 2

	.section	.rodata
	.type	fuckLLVM_.str.36,@object
fuckLLVM_.str.36:
	.asciz	"  "
	.size	fuckLLVM_.str.36, 2

	.section	.rodata
	.type	fuckLLVM_.str.37,@object
fuckLLVM_.str.37:
	.asciz	"  "
	.size	fuckLLVM_.str.37, 2

	.section	.rodata
	.type	fuckLLVM_.str.38,@object
fuckLLVM_.str.38:
	.asciz	"  "
	.size	fuckLLVM_.str.38, 2

	.section	.rodata
	.type	fuckLLVM_.str.39,@object
fuckLLVM_.str.39:
	.asciz	"  "
	.size	fuckLLVM_.str.39, 2

	.section	.rodata
	.type	fuckLLVM_.str.40,@object
fuckLLVM_.str.40:
	.asciz	"  "
	.size	fuckLLVM_.str.40, 2

	.section	.rodata
	.type	fuckLLVM_.str.41,@object
fuckLLVM_.str.41:
	.asciz	"  "
	.size	fuckLLVM_.str.41, 2

	.section	.rodata
	.type	fuckLLVM_.str.42,@object
fuckLLVM_.str.42:
	.asciz	"  "
	.size	fuckLLVM_.str.42, 2

	.section	.rodata
	.type	fuckLLVM_.str.43,@object
fuckLLVM_.str.43:
	.asciz	"  "
	.size	fuckLLVM_.str.43, 2

	.section	.rodata
	.type	fuckLLVM_.str.44,@object
fuckLLVM_.str.44:
	.asciz	"  "
	.size	fuckLLVM_.str.44, 2

	.section	.rodata
	.type	fuckLLVM_.str.45,@object
fuckLLVM_.str.45:
	.asciz	"  "
	.size	fuckLLVM_.str.45, 2

	.section	.rodata
	.type	fuckLLVM_.str.46,@object
fuckLLVM_.str.46:
	.asciz	"  "
	.size	fuckLLVM_.str.46, 2

	.section	.rodata
	.type	fuckLLVM_.str.47,@object
fuckLLVM_.str.47:
	.asciz	"  "
	.size	fuckLLVM_.str.47, 2

	.section	.rodata
	.type	fuckLLVM_.str.48,@object
fuckLLVM_.str.48:
	.asciz	"  "
	.size	fuckLLVM_.str.48, 2

	.section	.rodata
	.type	fuckLLVM_.str.49,@object
fuckLLVM_.str.49:
	.asciz	"  "
	.size	fuckLLVM_.str.49, 2

	.section	.rodata
	.type	fuckLLVM_.str.50,@object
fuckLLVM_.str.50:
	.asciz	"  "
	.size	fuckLLVM_.str.50, 2

	.section	.rodata
	.type	fuckLLVM_.str.51,@object
fuckLLVM_.str.51:
	.asciz	"  "
	.size	fuckLLVM_.str.51, 2

	.section	.rodata
	.type	fuckLLVM_.str.52,@object
fuckLLVM_.str.52:
	.asciz	"  "
	.size	fuckLLVM_.str.52, 2

	.section	.rodata
	.type	fuckLLVM_.str.53,@object
fuckLLVM_.str.53:
	.asciz	"  "
	.size	fuckLLVM_.str.53, 2

	.section	.rodata
	.type	fuckLLVM_.str.54,@object
fuckLLVM_.str.54:
	.asciz	"  "
	.size	fuckLLVM_.str.54, 2

	.section	.rodata
	.type	fuckLLVM_.str.55,@object
fuckLLVM_.str.55:
	.asciz	"  "
	.size	fuckLLVM_.str.55, 2

	.section	.rodata
	.type	fuckLLVM_.str.56,@object
fuckLLVM_.str.56:
	.asciz	"  "
	.size	fuckLLVM_.str.56, 2

	.section	.rodata
	.type	fuckLLVM_.str.57,@object
fuckLLVM_.str.57:
	.asciz	"  "
	.size	fuckLLVM_.str.57, 2

	.section	.rodata
	.type	fuckLLVM_.str.58,@object
fuckLLVM_.str.58:
	.asciz	"  "
	.size	fuckLLVM_.str.58, 2

	.section	.rodata
	.type	fuckLLVM_.str.59,@object
fuckLLVM_.str.59:
	.asciz	"  "
	.size	fuckLLVM_.str.59, 2

	.section	.rodata
	.type	fuckLLVM_.str.60,@object
fuckLLVM_.str.60:
	.asciz	"  "
	.size	fuckLLVM_.str.60, 2

	.section	.rodata
	.type	fuckLLVM_.str.61,@object
fuckLLVM_.str.61:
	.asciz	"  "
	.size	fuckLLVM_.str.61, 2

	.section	.rodata
	.type	fuckLLVM_.str.62,@object
fuckLLVM_.str.62:
	.asciz	"  "
	.size	fuckLLVM_.str.62, 2

	.section	.rodata
	.type	fuckLLVM_.str.63,@object
fuckLLVM_.str.63:
	.asciz	"  "
	.size	fuckLLVM_.str.63, 2

	.section	.rodata
	.type	fuckLLVM_.str.64,@object
fuckLLVM_.str.64:
	.asciz	"  "
	.size	fuckLLVM_.str.64, 2

	.section	.rodata
	.type	fuckLLVM_.str.65,@object
fuckLLVM_.str.65:
	.asciz	"  "
	.size	fuckLLVM_.str.65, 2

	.section	.rodata
	.type	fuckLLVM_.str.66,@object
fuckLLVM_.str.66:
	.asciz	"  "
	.size	fuckLLVM_.str.66, 2

	.section	.rodata
	.type	fuckLLVM_.str.67,@object
fuckLLVM_.str.67:
	.asciz	"  "
	.size	fuckLLVM_.str.67, 2

	.section	.rodata
	.type	fuckLLVM_.str.68,@object
fuckLLVM_.str.68:
	.asciz	"  "
	.size	fuckLLVM_.str.68, 2

	.section	.rodata
	.type	fuckLLVM_.str.69,@object
fuckLLVM_.str.69:
	.asciz	"  "
	.size	fuckLLVM_.str.69, 2

	.section	.rodata
	.type	fuckLLVM_.str.70,@object
fuckLLVM_.str.70:
	.asciz	"  "
	.size	fuckLLVM_.str.70, 2

	.section	.rodata
	.type	fuckLLVM_.str.71,@object
fuckLLVM_.str.71:
	.asciz	"  "
	.size	fuckLLVM_.str.71, 2

	.section	.rodata
	.type	fuckLLVM_.str.72,@object
fuckLLVM_.str.72:
	.asciz	"  "
	.size	fuckLLVM_.str.72, 2

	.section	.rodata
	.type	fuckLLVM_.str.73,@object
fuckLLVM_.str.73:
	.asciz	"  "
	.size	fuckLLVM_.str.73, 2

	.section	.rodata
	.type	fuckLLVM_.str.74,@object
fuckLLVM_.str.74:
	.asciz	"  "
	.size	fuckLLVM_.str.74, 2

	.section	.rodata
	.type	fuckLLVM_.str.75,@object
fuckLLVM_.str.75:
	.asciz	"  "
	.size	fuckLLVM_.str.75, 2

	.section	.rodata
	.type	fuckLLVM_.str.76,@object
fuckLLVM_.str.76:
	.asciz	"  "
	.size	fuckLLVM_.str.76, 2

	.section	.rodata
	.type	fuckLLVM_.str.77,@object
fuckLLVM_.str.77:
	.asciz	"  "
	.size	fuckLLVM_.str.77, 2

	.section	.rodata
	.type	fuckLLVM_.str.78,@object
fuckLLVM_.str.78:
	.asciz	"  "
	.size	fuckLLVM_.str.78, 2

	.section	.rodata
	.type	fuckLLVM_.str.79,@object
fuckLLVM_.str.79:
	.asciz	"  "
	.size	fuckLLVM_.str.79, 2

	.section	.rodata
	.type	fuckLLVM_.str.80,@object
fuckLLVM_.str.80:
	.asciz	"  "
	.size	fuckLLVM_.str.80, 2

	.section	.rodata
	.type	fuckLLVM_.str.81,@object
fuckLLVM_.str.81:
	.asciz	"  "
	.size	fuckLLVM_.str.81, 2

	.section	.rodata
	.type	fuckLLVM_.str.82,@object
fuckLLVM_.str.82:
	.asciz	"  "
	.size	fuckLLVM_.str.82, 2

	.section	.rodata
	.type	fuckLLVM_.str.83,@object
fuckLLVM_.str.83:
	.asciz	"  "
	.size	fuckLLVM_.str.83, 2

	.section	.rodata
	.type	fuckLLVM_.str.84,@object
fuckLLVM_.str.84:
	.asciz	"  "
	.size	fuckLLVM_.str.84, 2

	.section	.rodata
	.type	fuckLLVM_.str.85,@object
fuckLLVM_.str.85:
	.asciz	"  "
	.size	fuckLLVM_.str.85, 2

	.section	.rodata
	.type	fuckLLVM_.str.86,@object
fuckLLVM_.str.86:
	.asciz	"  "
	.size	fuckLLVM_.str.86, 2

	.section	.rodata
	.type	fuckLLVM_.str.87,@object
fuckLLVM_.str.87:
	.asciz	"  "
	.size	fuckLLVM_.str.87, 2

	.section	.rodata
	.type	fuckLLVM_.str.88,@object
fuckLLVM_.str.88:
	.asciz	"  "
	.size	fuckLLVM_.str.88, 2

	.section	.rodata
	.type	fuckLLVM_.str.89,@object
fuckLLVM_.str.89:
	.asciz	"  "
	.size	fuckLLVM_.str.89, 2

	.section	.rodata
	.type	fuckLLVM_.str.90,@object
fuckLLVM_.str.90:
	.asciz	"  "
	.size	fuckLLVM_.str.90, 2

	.section	.rodata
	.type	fuckLLVM_.str.91,@object
fuckLLVM_.str.91:
	.asciz	"  "
	.size	fuckLLVM_.str.91, 2

	.section	.rodata
	.type	fuckLLVM_.str.92,@object
fuckLLVM_.str.92:
	.asciz	"  "
	.size	fuckLLVM_.str.92, 2

	.section	.rodata
	.type	fuckLLVM_.str.93,@object
fuckLLVM_.str.93:
	.asciz	"  "
	.size	fuckLLVM_.str.93, 2

	.section	.rodata
	.type	fuckLLVM_.str.94,@object
fuckLLVM_.str.94:
	.asciz	"  "
	.size	fuckLLVM_.str.94, 2

	.section	.rodata
	.type	fuckLLVM_.str.95,@object
fuckLLVM_.str.95:
	.asciz	"  "
	.size	fuckLLVM_.str.95, 2

	.section	.rodata
	.type	fuckLLVM_.str.96,@object
fuckLLVM_.str.96:
	.asciz	"  "
	.size	fuckLLVM_.str.96, 2

	.section	.rodata
	.type	fuckLLVM_.str.97,@object
fuckLLVM_.str.97:
	.asciz	"  "
	.size	fuckLLVM_.str.97, 2

	.section	.rodata
	.type	fuckLLVM_.str.98,@object
fuckLLVM_.str.98:
	.asciz	"  "
	.size	fuckLLVM_.str.98, 2

	.section	.rodata
	.type	fuckLLVM_.str.99,@object
fuckLLVM_.str.99:
	.asciz	"  "
	.size	fuckLLVM_.str.99, 2

	.section	.rodata
	.type	fuckLLVM_.str.100,@object
fuckLLVM_.str.100:
	.asciz	"  "
	.size	fuckLLVM_.str.100, 2

	.section	.rodata
	.type	fuckLLVM_.str.101,@object
fuckLLVM_.str.101:
	.asciz	"  "
	.size	fuckLLVM_.str.101, 2

	.section	.rodata
	.type	fuckLLVM_.str.102,@object
fuckLLVM_.str.102:
	.asciz	"  "
	.size	fuckLLVM_.str.102, 2

	.section	.rodata
	.type	fuckLLVM_.str.103,@object
fuckLLVM_.str.103:
	.asciz	"  "
	.size	fuckLLVM_.str.103, 2

	.section	.rodata
	.type	fuckLLVM_.str.104,@object
fuckLLVM_.str.104:
	.asciz	"  "
	.size	fuckLLVM_.str.104, 2

	.section	.rodata
	.type	fuckLLVM_.str.105,@object
fuckLLVM_.str.105:
	.asciz	"  "
	.size	fuckLLVM_.str.105, 2

	.section	.rodata
	.type	fuckLLVM_.str.106,@object
fuckLLVM_.str.106:
	.asciz	"  "
	.size	fuckLLVM_.str.106, 2

	.section	.rodata
	.type	fuckLLVM_.str.107,@object
fuckLLVM_.str.107:
	.asciz	"  "
	.size	fuckLLVM_.str.107, 2

	.section	.rodata
	.type	fuckLLVM_.str.108,@object
fuckLLVM_.str.108:
	.asciz	"  "
	.size	fuckLLVM_.str.108, 2

	.section	.rodata
	.type	fuckLLVM_.str.109,@object
fuckLLVM_.str.109:
	.asciz	"  "
	.size	fuckLLVM_.str.109, 2

	.section	.rodata
	.type	fuckLLVM_.str.110,@object
fuckLLVM_.str.110:
	.asciz	"  "
	.size	fuckLLVM_.str.110, 2

	.section	.rodata
	.type	fuckLLVM_.str.111,@object
fuckLLVM_.str.111:
	.asciz	"  "
	.size	fuckLLVM_.str.111, 2

	.section	.rodata
	.type	fuckLLVM_.str.112,@object
fuckLLVM_.str.112:
	.asciz	"  "
	.size	fuckLLVM_.str.112, 2

	.section	.rodata
	.type	fuckLLVM_.str.113,@object
fuckLLVM_.str.113:
	.asciz	"  "
	.size	fuckLLVM_.str.113, 2

	.section	.rodata
	.type	fuckLLVM_.str.114,@object
fuckLLVM_.str.114:
	.asciz	"  "
	.size	fuckLLVM_.str.114, 2

	.section	.rodata
	.type	fuckLLVM_.str.115,@object
fuckLLVM_.str.115:
	.asciz	"  "
	.size	fuckLLVM_.str.115, 2

	.section	.rodata
	.type	fuckLLVM_.str.116,@object
fuckLLVM_.str.116:
	.asciz	"  "
	.size	fuckLLVM_.str.116, 2

	.section	.rodata
	.type	fuckLLVM_.str.117,@object
fuckLLVM_.str.117:
	.asciz	"  "
	.size	fuckLLVM_.str.117, 2

	.section	.rodata
	.type	fuckLLVM_.str.118,@object
fuckLLVM_.str.118:
	.asciz	"  "
	.size	fuckLLVM_.str.118, 2

	.section	.rodata
	.type	fuckLLVM_.str.119,@object
fuckLLVM_.str.119:
	.asciz	"  "
	.size	fuckLLVM_.str.119, 2

	.section	.rodata
	.type	fuckLLVM_.str.120,@object
fuckLLVM_.str.120:
	.asciz	"  "
	.size	fuckLLVM_.str.120, 2

	.section	.rodata
	.type	fuckLLVM_.str.121,@object
fuckLLVM_.str.121:
	.asciz	"  "
	.size	fuckLLVM_.str.121, 2

	.section	.rodata
	.type	fuckLLVM_.str.122,@object
fuckLLVM_.str.122:
	.asciz	"  "
	.size	fuckLLVM_.str.122, 2

	.section	.rodata
	.type	fuckLLVM_.str.123,@object
fuckLLVM_.str.123:
	.asciz	"  "
	.size	fuckLLVM_.str.123, 2

	.section	.rodata
	.type	fuckLLVM_.str.124,@object
fuckLLVM_.str.124:
	.asciz	"  "
	.size	fuckLLVM_.str.124, 2

	.section	.rodata
	.type	fuckLLVM_.str.125,@object
fuckLLVM_.str.125:
	.asciz	"  "
	.size	fuckLLVM_.str.125, 2

	.section	.rodata
	.type	fuckLLVM_.str.126,@object
fuckLLVM_.str.126:
	.asciz	"  "
	.size	fuckLLVM_.str.126, 2

	.section	.rodata
	.type	fuckLLVM_.str.127,@object
fuckLLVM_.str.127:
	.asciz	"  "
	.size	fuckLLVM_.str.127, 2

	.section	.rodata
	.type	fuckLLVM_.str.128,@object
fuckLLVM_.str.128:
	.asciz	"  "
	.size	fuckLLVM_.str.128, 2

	.section	.rodata
	.type	fuckLLVM_.str.129,@object
fuckLLVM_.str.129:
	.asciz	"  "
	.size	fuckLLVM_.str.129, 2

	.section	.rodata
	.type	fuckLLVM_.str.130,@object
fuckLLVM_.str.130:
	.asciz	"  "
	.size	fuckLLVM_.str.130, 2

	.section	.rodata
	.type	fuckLLVM_.str.131,@object
fuckLLVM_.str.131:
	.asciz	"  "
	.size	fuckLLVM_.str.131, 2

	.section	.rodata
	.type	fuckLLVM_.str.132,@object
fuckLLVM_.str.132:
	.asciz	"  "
	.size	fuckLLVM_.str.132, 2

	.section	.rodata
	.type	fuckLLVM_.str.133,@object
fuckLLVM_.str.133:
	.asciz	"  "
	.size	fuckLLVM_.str.133, 2

	.section	.rodata
	.type	fuckLLVM_.str.134,@object
fuckLLVM_.str.134:
	.asciz	"  "
	.size	fuckLLVM_.str.134, 2

	.section	.rodata
	.type	fuckLLVM_.str.135,@object
fuckLLVM_.str.135:
	.asciz	"  "
	.size	fuckLLVM_.str.135, 2

	.section	.rodata
	.type	fuckLLVM_.str.136,@object
fuckLLVM_.str.136:
	.asciz	"  "
	.size	fuckLLVM_.str.136, 2

	.section	.rodata
	.type	fuckLLVM_.str.137,@object
fuckLLVM_.str.137:
	.asciz	"  "
	.size	fuckLLVM_.str.137, 2

	.section	.rodata
	.type	fuckLLVM_.str.138,@object
fuckLLVM_.str.138:
	.asciz	"  "
	.size	fuckLLVM_.str.138, 2

	.section	.rodata
	.type	fuckLLVM_.str.139,@object
fuckLLVM_.str.139:
	.asciz	"  "
	.size	fuckLLVM_.str.139, 2

	.section	.rodata
	.type	fuckLLVM_.str.140,@object
fuckLLVM_.str.140:
	.asciz	"  "
	.size	fuckLLVM_.str.140, 2

	.section	.rodata
	.type	fuckLLVM_.str.141,@object
fuckLLVM_.str.141:
	.asciz	"  "
	.size	fuckLLVM_.str.141, 2

	.section	.rodata
	.type	fuckLLVM_.str.142,@object
fuckLLVM_.str.142:
	.asciz	"  "
	.size	fuckLLVM_.str.142, 2

	.section	.rodata
	.type	fuckLLVM_.str.143,@object
fuckLLVM_.str.143:
	.asciz	"  "
	.size	fuckLLVM_.str.143, 2

	.section	.rodata
	.type	fuckLLVM_.str.144,@object
fuckLLVM_.str.144:
	.asciz	"  "
	.size	fuckLLVM_.str.144, 2

	.section	.rodata
	.type	fuckLLVM_.str.145,@object
fuckLLVM_.str.145:
	.asciz	"  "
	.size	fuckLLVM_.str.145, 2

	.section	.rodata
	.type	fuckLLVM_.str.146,@object
fuckLLVM_.str.146:
	.asciz	"  "
	.size	fuckLLVM_.str.146, 2

	.section	.rodata
	.type	fuckLLVM_.str.147,@object
fuckLLVM_.str.147:
	.asciz	"  "
	.size	fuckLLVM_.str.147, 2

	.section	.rodata
	.type	fuckLLVM_.str.148,@object
fuckLLVM_.str.148:
	.asciz	"  "
	.size	fuckLLVM_.str.148, 2

	.section	.rodata
	.type	fuckLLVM_.str.149,@object
fuckLLVM_.str.149:
	.asciz	"  "
	.size	fuckLLVM_.str.149, 2

	.section	.rodata
	.type	fuckLLVM_.str.150,@object
fuckLLVM_.str.150:
	.asciz	"  "
	.size	fuckLLVM_.str.150, 2

	.section	.rodata
	.type	fuckLLVM_.str.151,@object
fuckLLVM_.str.151:
	.asciz	"  "
	.size	fuckLLVM_.str.151, 2

	.section	.rodata
	.type	fuckLLVM_.str.152,@object
fuckLLVM_.str.152:
	.asciz	"  "
	.size	fuckLLVM_.str.152, 2

	.section	.rodata
	.type	fuckLLVM_.str.153,@object
fuckLLVM_.str.153:
	.asciz	"  "
	.size	fuckLLVM_.str.153, 2

	.section	.rodata
	.type	fuckLLVM_.str.154,@object
fuckLLVM_.str.154:
	.asciz	"  "
	.size	fuckLLVM_.str.154, 2

	.section	.rodata
	.type	fuckLLVM_.str.155,@object
fuckLLVM_.str.155:
	.asciz	"  "
	.size	fuckLLVM_.str.155, 2

	.section	.rodata
	.type	fuckLLVM_.str.156,@object
fuckLLVM_.str.156:
	.asciz	"  "
	.size	fuckLLVM_.str.156, 2

	.section	.rodata
	.type	fuckLLVM_.str.157,@object
fuckLLVM_.str.157:
	.asciz	"  "
	.size	fuckLLVM_.str.157, 2

	.section	.rodata
	.type	fuckLLVM_.str.158,@object
fuckLLVM_.str.158:
	.asciz	"  "
	.size	fuckLLVM_.str.158, 2

	.section	.rodata
	.type	fuckLLVM_.str.159,@object
fuckLLVM_.str.159:
	.asciz	"  "
	.size	fuckLLVM_.str.159, 2

	.section	.rodata
	.type	fuckLLVM_.str.160,@object
fuckLLVM_.str.160:
	.asciz	"  "
	.size	fuckLLVM_.str.160, 2

	.section	.rodata
	.type	fuckLLVM_.str.161,@object
fuckLLVM_.str.161:
	.asciz	"  "
	.size	fuckLLVM_.str.161, 2

	.section	.rodata
	.type	fuckLLVM_.str.162,@object
fuckLLVM_.str.162:
	.asciz	"  "
	.size	fuckLLVM_.str.162, 2

	.section	.rodata
	.type	fuckLLVM_.str.163,@object
fuckLLVM_.str.163:
	.asciz	"  "
	.size	fuckLLVM_.str.163, 2

	.section	.rodata
	.type	fuckLLVM_.str.164,@object
fuckLLVM_.str.164:
	.asciz	"  "
	.size	fuckLLVM_.str.164, 2

	.section	.rodata
	.type	fuckLLVM_.str.165,@object
fuckLLVM_.str.165:
	.asciz	"  "
	.size	fuckLLVM_.str.165, 2

	.section	.rodata
	.type	fuckLLVM_.str.166,@object
fuckLLVM_.str.166:
	.asciz	"  "
	.size	fuckLLVM_.str.166, 2

	.section	.rodata
	.type	fuckLLVM_.str.167,@object
fuckLLVM_.str.167:
	.asciz	"  "
	.size	fuckLLVM_.str.167, 2

	.section	.rodata
	.type	fuckLLVM_.str.168,@object
fuckLLVM_.str.168:
	.asciz	"  "
	.size	fuckLLVM_.str.168, 2

	.section	.rodata
	.type	fuckLLVM_.str.169,@object
fuckLLVM_.str.169:
	.asciz	"  "
	.size	fuckLLVM_.str.169, 2

	.section	.rodata
	.type	fuckLLVM_.str.170,@object
fuckLLVM_.str.170:
	.asciz	"  "
	.size	fuckLLVM_.str.170, 2

	.section	.rodata
	.type	fuckLLVM_.str.171,@object
fuckLLVM_.str.171:
	.asciz	"  "
	.size	fuckLLVM_.str.171, 2

	.section	.rodata
	.type	fuckLLVM_.str.172,@object
fuckLLVM_.str.172:
	.asciz	"  "
	.size	fuckLLVM_.str.172, 2

	.section	.rodata
	.type	fuckLLVM_.str.173,@object
fuckLLVM_.str.173:
	.asciz	"  "
	.size	fuckLLVM_.str.173, 2

	.section	.rodata
	.type	fuckLLVM_.str.174,@object
fuckLLVM_.str.174:
	.asciz	"  "
	.size	fuckLLVM_.str.174, 2

	.section	.rodata
	.type	fuckLLVM_.str.175,@object
fuckLLVM_.str.175:
	.asciz	"  "
	.size	fuckLLVM_.str.175, 2

	.section	.rodata
	.type	fuckLLVM_.str.176,@object
fuckLLVM_.str.176:
	.asciz	"  "
	.size	fuckLLVM_.str.176, 2

	.section	.rodata
	.type	fuckLLVM_.str.177,@object
fuckLLVM_.str.177:
	.asciz	"  "
	.size	fuckLLVM_.str.177, 2

	.section	.rodata
	.type	fuckLLVM_.str.178,@object
fuckLLVM_.str.178:
	.asciz	"  "
	.size	fuckLLVM_.str.178, 2

	.section	.rodata
	.type	fuckLLVM_.str.179,@object
fuckLLVM_.str.179:
	.asciz	"  "
	.size	fuckLLVM_.str.179, 2

	.section	.rodata
	.type	fuckLLVM_.str.180,@object
fuckLLVM_.str.180:
	.asciz	"  "
	.size	fuckLLVM_.str.180, 2

	.section	.rodata
	.type	fuckLLVM_.str.181,@object
fuckLLVM_.str.181:
	.asciz	"  "
	.size	fuckLLVM_.str.181, 2

	.section	.rodata
	.type	fuckLLVM_.str.182,@object
fuckLLVM_.str.182:
	.asciz	"  "
	.size	fuckLLVM_.str.182, 2

	.section	.rodata
	.type	fuckLLVM_.str.183,@object
fuckLLVM_.str.183:
	.asciz	"  "
	.size	fuckLLVM_.str.183, 2

	.section	.rodata
	.type	fuckLLVM_.str.184,@object
fuckLLVM_.str.184:
	.asciz	"  "
	.size	fuckLLVM_.str.184, 2

	.section	.rodata
	.type	fuckLLVM_.str.185,@object
fuckLLVM_.str.185:
	.asciz	"  "
	.size	fuckLLVM_.str.185, 2

	.section	.rodata
	.type	fuckLLVM_.str.186,@object
fuckLLVM_.str.186:
	.asciz	"  "
	.size	fuckLLVM_.str.186, 2

	.section	.rodata
	.type	fuckLLVM_.str.187,@object
fuckLLVM_.str.187:
	.asciz	"  "
	.size	fuckLLVM_.str.187, 2

	.section	.rodata
	.type	fuckLLVM_.str.188,@object
fuckLLVM_.str.188:
	.asciz	"  "
	.size	fuckLLVM_.str.188, 2

	.section	.rodata
	.type	fuckLLVM_.str.189,@object
fuckLLVM_.str.189:
	.asciz	"  "
	.size	fuckLLVM_.str.189, 2

	.section	.rodata
	.type	fuckLLVM_.str.190,@object
fuckLLVM_.str.190:
	.asciz	"  "
	.size	fuckLLVM_.str.190, 2

	.section	.rodata
	.type	fuckLLVM_.str.191,@object
fuckLLVM_.str.191:
	.asciz	"  "
	.size	fuckLLVM_.str.191, 2

	.section	.rodata
	.type	fuckLLVM_.str.192,@object
fuckLLVM_.str.192:
	.asciz	"  "
	.size	fuckLLVM_.str.192, 2

	.section	.rodata
	.type	fuckLLVM_.str.193,@object
fuckLLVM_.str.193:
	.asciz	"  "
	.size	fuckLLVM_.str.193, 2

	.section	.rodata
	.type	fuckLLVM_.str.194,@object
fuckLLVM_.str.194:
	.asciz	"  "
	.size	fuckLLVM_.str.194, 2

	.section	.rodata
	.type	fuckLLVM_.str.195,@object
fuckLLVM_.str.195:
	.asciz	"  "
	.size	fuckLLVM_.str.195, 2

	.section	.rodata
	.type	fuckLLVM_.str.196,@object
fuckLLVM_.str.196:
	.asciz	"  "
	.size	fuckLLVM_.str.196, 2

	.section	.rodata
	.type	fuckLLVM_.str.197,@object
fuckLLVM_.str.197:
	.asciz	"  "
	.size	fuckLLVM_.str.197, 2

	.section	.rodata
	.type	fuckLLVM_.str.198,@object
fuckLLVM_.str.198:
	.asciz	"  "
	.size	fuckLLVM_.str.198, 2

	.section	.rodata
	.type	fuckLLVM_.str.199,@object
fuckLLVM_.str.199:
	.asciz	"  "
	.size	fuckLLVM_.str.199, 2

	.section	.rodata
	.type	fuckLLVM_.str.200,@object
fuckLLVM_.str.200:
	.asciz	"  "
	.size	fuckLLVM_.str.200, 2

	.section	.rodata
	.type	fuckLLVM_.str.201,@object
fuckLLVM_.str.201:
	.asciz	"  "
	.size	fuckLLVM_.str.201, 2

	.section	.rodata
	.type	fuckLLVM_.str.202,@object
fuckLLVM_.str.202:
	.asciz	"  "
	.size	fuckLLVM_.str.202, 2

	.section	.rodata
	.type	fuckLLVM_.str.203,@object
fuckLLVM_.str.203:
	.asciz	"  "
	.size	fuckLLVM_.str.203, 2

	.section	.rodata
	.type	fuckLLVM_.str.204,@object
fuckLLVM_.str.204:
	.asciz	"  "
	.size	fuckLLVM_.str.204, 2

	.section	.rodata
	.type	fuckLLVM_.str.205,@object
fuckLLVM_.str.205:
	.asciz	"  "
	.size	fuckLLVM_.str.205, 2

	.section	.rodata
	.type	fuckLLVM_.str.206,@object
fuckLLVM_.str.206:
	.asciz	"  "
	.size	fuckLLVM_.str.206, 2

	.section	.rodata
	.type	fuckLLVM_.str.207,@object
fuckLLVM_.str.207:
	.asciz	"  "
	.size	fuckLLVM_.str.207, 2

	.section	.rodata
	.type	fuckLLVM_.str.208,@object
fuckLLVM_.str.208:
	.asciz	"  "
	.size	fuckLLVM_.str.208, 2

	.section	.rodata
	.type	fuckLLVM_.str.209,@object
fuckLLVM_.str.209:
	.asciz	"  "
	.size	fuckLLVM_.str.209, 2

	.section	.rodata
	.type	fuckLLVM_.str.210,@object
fuckLLVM_.str.210:
	.asciz	"  "
	.size	fuckLLVM_.str.210, 2

	.section	.rodata
	.type	fuckLLVM_.str.211,@object
fuckLLVM_.str.211:
	.asciz	"  "
	.size	fuckLLVM_.str.211, 2

	.section	.rodata
	.type	fuckLLVM_.str.212,@object
fuckLLVM_.str.212:
	.asciz	"  "
	.size	fuckLLVM_.str.212, 2

	.section	.rodata
	.type	fuckLLVM_.str.213,@object
fuckLLVM_.str.213:
	.asciz	"  "
	.size	fuckLLVM_.str.213, 2

	.section	.rodata
	.type	fuckLLVM_.str.214,@object
fuckLLVM_.str.214:
	.asciz	"  "
	.size	fuckLLVM_.str.214, 2

	.section	.rodata
	.type	fuckLLVM_.str.215,@object
fuckLLVM_.str.215:
	.asciz	"  "
	.size	fuckLLVM_.str.215, 2

	.section	.rodata
	.type	fuckLLVM_.str.216,@object
fuckLLVM_.str.216:
	.asciz	"  "
	.size	fuckLLVM_.str.216, 2

	.section	.rodata
	.type	fuckLLVM_.str.217,@object
fuckLLVM_.str.217:
	.asciz	"  "
	.size	fuckLLVM_.str.217, 2

	.section	.rodata
	.type	fuckLLVM_.str.218,@object
fuckLLVM_.str.218:
	.asciz	"  "
	.size	fuckLLVM_.str.218, 2

	.section	.rodata
	.type	fuckLLVM_.str.219,@object
fuckLLVM_.str.219:
	.asciz	"  "
	.size	fuckLLVM_.str.219, 2

	.section	.rodata
	.type	fuckLLVM_.str.220,@object
fuckLLVM_.str.220:
	.asciz	"  "
	.size	fuckLLVM_.str.220, 2

	.section	.rodata
	.type	fuckLLVM_.str.221,@object
fuckLLVM_.str.221:
	.asciz	"  "
	.size	fuckLLVM_.str.221, 2

	.section	.rodata
	.type	fuckLLVM_.str.222,@object
fuckLLVM_.str.222:
	.asciz	"  "
	.size	fuckLLVM_.str.222, 2

	.section	.rodata
	.type	fuckLLVM_.str.223,@object
fuckLLVM_.str.223:
	.asciz	"  "
	.size	fuckLLVM_.str.223, 2

	.section	.rodata
	.type	fuckLLVM_.str.224,@object
fuckLLVM_.str.224:
	.asciz	"  "
	.size	fuckLLVM_.str.224, 2

	.section	.rodata
	.type	fuckLLVM_.str.225,@object
fuckLLVM_.str.225:
	.asciz	"  "
	.size	fuckLLVM_.str.225, 2

	.section	.rodata
	.type	fuckLLVM_.str.226,@object
fuckLLVM_.str.226:
	.asciz	"  "
	.size	fuckLLVM_.str.226, 2

	.section	.rodata
	.type	fuckLLVM_.str.227,@object
fuckLLVM_.str.227:
	.asciz	"  "
	.size	fuckLLVM_.str.227, 2

	.section	.rodata
	.type	fuckLLVM_.str.228,@object
fuckLLVM_.str.228:
	.asciz	"  "
	.size	fuckLLVM_.str.228, 2

	.section	.rodata
	.type	fuckLLVM_.str.229,@object
fuckLLVM_.str.229:
	.asciz	"  "
	.size	fuckLLVM_.str.229, 2

	.section	.rodata
	.type	fuckLLVM_.str.230,@object
fuckLLVM_.str.230:
	.asciz	"  "
	.size	fuckLLVM_.str.230, 2

	.section	.rodata
	.type	fuckLLVM_.str.231,@object
fuckLLVM_.str.231:
	.asciz	"  "
	.size	fuckLLVM_.str.231, 2

	.section	.rodata
	.type	fuckLLVM_.str.232,@object
fuckLLVM_.str.232:
	.asciz	"  "
	.size	fuckLLVM_.str.232, 2

	.section	.rodata
	.type	fuckLLVM_.str.233,@object
fuckLLVM_.str.233:
	.asciz	"  "
	.size	fuckLLVM_.str.233, 2

	.section	.rodata
	.type	fuckLLVM_.str.234,@object
fuckLLVM_.str.234:
	.asciz	"  "
	.size	fuckLLVM_.str.234, 2

	.section	.rodata
	.type	fuckLLVM_.str.235,@object
fuckLLVM_.str.235:
	.asciz	"  "
	.size	fuckLLVM_.str.235, 2

	.section	.rodata
	.type	fuckLLVM_.str.236,@object
fuckLLVM_.str.236:
	.asciz	"  "
	.size	fuckLLVM_.str.236, 2

	.section	.rodata
	.type	fuckLLVM_.str.237,@object
fuckLLVM_.str.237:
	.asciz	"  "
	.size	fuckLLVM_.str.237, 2

	.section	.rodata
	.type	fuckLLVM_.str.238,@object
fuckLLVM_.str.238:
	.asciz	"  "
	.size	fuckLLVM_.str.238, 2

	.section	.rodata
	.type	fuckLLVM_.str.239,@object
fuckLLVM_.str.239:
	.asciz	"  "
	.size	fuckLLVM_.str.239, 2

	.section	.rodata
	.type	fuckLLVM_.str.240,@object
fuckLLVM_.str.240:
	.asciz	"  "
	.size	fuckLLVM_.str.240, 2

	.section	.rodata
	.type	fuckLLVM_.str.241,@object
fuckLLVM_.str.241:
	.asciz	"  "
	.size	fuckLLVM_.str.241, 2

	.section	.rodata
	.type	fuckLLVM_.str.242,@object
fuckLLVM_.str.242:
	.asciz	"  "
	.size	fuckLLVM_.str.242, 2

	.section	.rodata
	.type	fuckLLVM_.str.243,@object
fuckLLVM_.str.243:
	.asciz	"  "
	.size	fuckLLVM_.str.243, 2

	.section	.rodata
	.type	fuckLLVM_.str.244,@object
fuckLLVM_.str.244:
	.asciz	"  "
	.size	fuckLLVM_.str.244, 2

	.section	.rodata
	.type	fuckLLVM_.str.245,@object
fuckLLVM_.str.245:
	.asciz	"  "
	.size	fuckLLVM_.str.245, 2

	.section	.rodata
	.type	fuckLLVM_.str.246,@object
fuckLLVM_.str.246:
	.asciz	"  "
	.size	fuckLLVM_.str.246, 2

	.section	.rodata
	.type	fuckLLVM_.str.247,@object
fuckLLVM_.str.247:
	.asciz	"  "
	.size	fuckLLVM_.str.247, 2

	.section	.rodata
	.type	fuckLLVM_.str.248,@object
fuckLLVM_.str.248:
	.asciz	"  "
	.size	fuckLLVM_.str.248, 2

	.section	.rodata
	.type	fuckLLVM_.str.249,@object
fuckLLVM_.str.249:
	.asciz	"  "
	.size	fuckLLVM_.str.249, 2

	.section	.rodata
	.type	fuckLLVM_.str.250,@object
fuckLLVM_.str.250:
	.asciz	"  "
	.size	fuckLLVM_.str.250, 2

	.section	.rodata
	.type	fuckLLVM_.str.251,@object
fuckLLVM_.str.251:
	.asciz	"  "
	.size	fuckLLVM_.str.251, 2

	.section	.rodata
	.type	fuckLLVM_.str.252,@object
fuckLLVM_.str.252:
	.asciz	"  "
	.size	fuckLLVM_.str.252, 2

	.section	.rodata
	.type	fuckLLVM_.str.253,@object
fuckLLVM_.str.253:
	.asciz	"  "
	.size	fuckLLVM_.str.253, 2

	.section	.rodata
	.type	fuckLLVM_.str.254,@object
fuckLLVM_.str.254:
	.asciz	"  "
	.size	fuckLLVM_.str.254, 2

	.section	.rodata
	.type	fuckLLVM_.str.255,@object
fuckLLVM_.str.255:
	.asciz	"  "
	.size	fuckLLVM_.str.255, 2

	.section	.rodata
	.type	fuckLLVM_.str.256,@object
fuckLLVM_.str.256:
	.asciz	" "
	.size	fuckLLVM_.str.256, 1

	.section	.rodata
	.type	fuckLLVM_.str.257,@object
fuckLLVM_.str.257:
	.asciz	"  "
	.size	fuckLLVM_.str.257, 2

	.section	.rodata
	.type	fuckLLVM_.str.258,@object
fuckLLVM_.str.258:
	.asciz	"  "
	.size	fuckLLVM_.str.258, 2

	.section	.rodata
	.type	fuckLLVM_.str.259,@object
fuckLLVM_.str.259:
	.asciz	"  "
	.size	fuckLLVM_.str.259, 2

	.section	.rodata
	.type	fuckLLVM_.str.260,@object
fuckLLVM_.str.260:
	.asciz	"  "
	.size	fuckLLVM_.str.260, 2

	.section	.rodata
	.type	fuckLLVM_.str.261,@object
fuckLLVM_.str.261:
	.asciz	"  "
	.size	fuckLLVM_.str.261, 2

	.section	.rodata
	.type	fuckLLVM_.str.262,@object
fuckLLVM_.str.262:
	.asciz	"  "
	.size	fuckLLVM_.str.262, 2

	.section	.rodata
	.type	fuckLLVM_.str.263,@object
fuckLLVM_.str.263:
	.asciz	"  "
	.size	fuckLLVM_.str.263, 2

	.section	.rodata
	.type	fuckLLVM_.str.264,@object
fuckLLVM_.str.264:
	.asciz	"  "
	.size	fuckLLVM_.str.264, 2

	.section	.rodata
	.type	fuckLLVM_.str.265,@object
fuckLLVM_.str.265:
	.asciz	"  "
	.size	fuckLLVM_.str.265, 2

	.section	.rodata
	.type	fuckLLVM_.str.266,@object
fuckLLVM_.str.266:
	.asciz	"  "
	.size	fuckLLVM_.str.266, 2

	.section	.rodata
	.type	fuckLLVM_.str.267,@object
fuckLLVM_.str.267:
	.asciz	"  "
	.size	fuckLLVM_.str.267, 2

	.section	.rodata
	.type	fuckLLVM_.str.268,@object
fuckLLVM_.str.268:
	.asciz	"  "
	.size	fuckLLVM_.str.268, 2

	.section	.rodata
	.type	fuckLLVM_.str.269,@object
fuckLLVM_.str.269:
	.asciz	"  "
	.size	fuckLLVM_.str.269, 2

	.section	.rodata
	.type	fuckLLVM_.str.270,@object
fuckLLVM_.str.270:
	.asciz	"  "
	.size	fuckLLVM_.str.270, 2

	.section	.rodata
	.type	fuckLLVM_.str.271,@object
fuckLLVM_.str.271:
	.asciz	"  "
	.size	fuckLLVM_.str.271, 2

	.section	.rodata
	.type	fuckLLVM_.str.272,@object
fuckLLVM_.str.272:
	.asciz	"  "
	.size	fuckLLVM_.str.272, 2

	.section	.rodata
	.type	fuckLLVM_.str.273,@object
fuckLLVM_.str.273:
	.asciz	"  "
	.size	fuckLLVM_.str.273, 2

	.section	.rodata
	.type	fuckLLVM_.str.274,@object
fuckLLVM_.str.274:
	.asciz	"  "
	.size	fuckLLVM_.str.274, 2

	.section	.rodata
	.type	fuckLLVM_.str.275,@object
fuckLLVM_.str.275:
	.asciz	"  "
	.size	fuckLLVM_.str.275, 2

	.section	.rodata
	.type	fuckLLVM_.str.276,@object
fuckLLVM_.str.276:
	.asciz	"  "
	.size	fuckLLVM_.str.276, 2

	.section	.rodata
	.type	fuckLLVM_.str.277,@object
fuckLLVM_.str.277:
	.asciz	"  "
	.size	fuckLLVM_.str.277, 2

	.section	.rodata
	.type	fuckLLVM_.str.278,@object
fuckLLVM_.str.278:
	.asciz	"  "
	.size	fuckLLVM_.str.278, 2

	.section	.rodata
	.type	fuckLLVM_.str.279,@object
fuckLLVM_.str.279:
	.asciz	"  "
	.size	fuckLLVM_.str.279, 2

	.section	.rodata
	.type	fuckLLVM_.str.280,@object
fuckLLVM_.str.280:
	.asciz	"  "
	.size	fuckLLVM_.str.280, 2

	.section	.rodata
	.type	fuckLLVM_.str.281,@object
fuckLLVM_.str.281:
	.asciz	"  "
	.size	fuckLLVM_.str.281, 2

	.section	.rodata
	.type	fuckLLVM_.str.282,@object
fuckLLVM_.str.282:
	.asciz	"  "
	.size	fuckLLVM_.str.282, 2

	.section	.rodata
	.type	fuckLLVM_.str.283,@object
fuckLLVM_.str.283:
	.asciz	"  "
	.size	fuckLLVM_.str.283, 2

	.section	.rodata
	.type	fuckLLVM_.str.284,@object
fuckLLVM_.str.284:
	.asciz	"  "
	.size	fuckLLVM_.str.284, 2

	.section	.rodata
	.type	fuckLLVM_.str.285,@object
fuckLLVM_.str.285:
	.asciz	"  "
	.size	fuckLLVM_.str.285, 2

	.section	.rodata
	.type	fuckLLVM_.str.286,@object
fuckLLVM_.str.286:
	.asciz	"  "
	.size	fuckLLVM_.str.286, 2

	.section	.rodata
	.type	fuckLLVM_.str.287,@object
fuckLLVM_.str.287:
	.asciz	"  "
	.size	fuckLLVM_.str.287, 2

	.section	.rodata
	.type	fuckLLVM_.str.288,@object
fuckLLVM_.str.288:
	.asciz	"  "
	.size	fuckLLVM_.str.288, 2

	.section	.rodata
	.type	fuckLLVM_.str.289,@object
fuckLLVM_.str.289:
	.asciz	"  "
	.size	fuckLLVM_.str.289, 2

	.section	.rodata
	.type	fuckLLVM_.str.290,@object
fuckLLVM_.str.290:
	.asciz	"  "
	.size	fuckLLVM_.str.290, 2

	.section	.rodata
	.type	fuckLLVM_.str.291,@object
fuckLLVM_.str.291:
	.asciz	"  "
	.size	fuckLLVM_.str.291, 2

	.section	.rodata
	.type	fuckLLVM_.str.292,@object
fuckLLVM_.str.292:
	.asciz	"  "
	.size	fuckLLVM_.str.292, 2

	.section	.rodata
	.type	fuckLLVM_.str.293,@object
fuckLLVM_.str.293:
	.asciz	"  "
	.size	fuckLLVM_.str.293, 2

	.section	.rodata
	.type	fuckLLVM_.str.294,@object
fuckLLVM_.str.294:
	.asciz	"  "
	.size	fuckLLVM_.str.294, 2

	.section	.rodata
	.type	fuckLLVM_.str.295,@object
fuckLLVM_.str.295:
	.asciz	"  "
	.size	fuckLLVM_.str.295, 2

	.section	.rodata
	.type	fuckLLVM_.str.296,@object
fuckLLVM_.str.296:
	.asciz	"  "
	.size	fuckLLVM_.str.296, 2

	.section	.rodata
	.type	fuckLLVM_.str.297,@object
fuckLLVM_.str.297:
	.asciz	"  "
	.size	fuckLLVM_.str.297, 2

	.section	.rodata
	.type	fuckLLVM_.str.298,@object
fuckLLVM_.str.298:
	.asciz	"  "
	.size	fuckLLVM_.str.298, 2

	.section	.rodata
	.type	fuckLLVM_.str.299,@object
fuckLLVM_.str.299:
	.asciz	"  "
	.size	fuckLLVM_.str.299, 2

	.section	.rodata
	.type	fuckLLVM_.str.300,@object
fuckLLVM_.str.300:
	.asciz	"  "
	.size	fuckLLVM_.str.300, 2

	.section	.rodata
	.type	fuckLLVM_.str.301,@object
fuckLLVM_.str.301:
	.asciz	"  "
	.size	fuckLLVM_.str.301, 2

	.section	.rodata
	.type	fuckLLVM_.str.302,@object
fuckLLVM_.str.302:
	.asciz	"  "
	.size	fuckLLVM_.str.302, 2

	.section	.rodata
	.type	fuckLLVM_.str.303,@object
fuckLLVM_.str.303:
	.asciz	"  "
	.size	fuckLLVM_.str.303, 2

	.section	.rodata
	.type	fuckLLVM_.str.304,@object
fuckLLVM_.str.304:
	.asciz	"  "
	.size	fuckLLVM_.str.304, 2

	.section	.rodata
	.type	fuckLLVM_.str.305,@object
fuckLLVM_.str.305:
	.asciz	"  "
	.size	fuckLLVM_.str.305, 2

	.section	.rodata
	.type	fuckLLVM_.str.306,@object
fuckLLVM_.str.306:
	.asciz	"  "
	.size	fuckLLVM_.str.306, 2

	.section	.rodata
	.type	fuckLLVM_.str.307,@object
fuckLLVM_.str.307:
	.asciz	"  "
	.size	fuckLLVM_.str.307, 2

	.section	.rodata
	.type	fuckLLVM_.str.308,@object
fuckLLVM_.str.308:
	.asciz	"  "
	.size	fuckLLVM_.str.308, 2

	.section	.rodata
	.type	fuckLLVM_.str.309,@object
fuckLLVM_.str.309:
	.asciz	"  "
	.size	fuckLLVM_.str.309, 2

	.section	.rodata
	.type	fuckLLVM_.str.310,@object
fuckLLVM_.str.310:
	.asciz	"  "
	.size	fuckLLVM_.str.310, 2

	.section	.rodata
	.type	fuckLLVM_.str.311,@object
fuckLLVM_.str.311:
	.asciz	"  "
	.size	fuckLLVM_.str.311, 2

	.section	.rodata
	.type	fuckLLVM_.str.312,@object
fuckLLVM_.str.312:
	.asciz	"  "
	.size	fuckLLVM_.str.312, 2

	.section	.rodata
	.type	fuckLLVM_.str.313,@object
fuckLLVM_.str.313:
	.asciz	"  "
	.size	fuckLLVM_.str.313, 2

	.section	.rodata
	.type	fuckLLVM_.str.314,@object
fuckLLVM_.str.314:
	.asciz	"  "
	.size	fuckLLVM_.str.314, 2

	.section	.rodata
	.type	fuckLLVM_.str.315,@object
fuckLLVM_.str.315:
	.asciz	"  "
	.size	fuckLLVM_.str.315, 2

	.section	.rodata
	.type	fuckLLVM_.str.316,@object
fuckLLVM_.str.316:
	.asciz	"  "
	.size	fuckLLVM_.str.316, 2

	.section	.rodata
	.type	fuckLLVM_.str.317,@object
fuckLLVM_.str.317:
	.asciz	"  "
	.size	fuckLLVM_.str.317, 2

	.section	.rodata
	.type	fuckLLVM_.str.318,@object
fuckLLVM_.str.318:
	.asciz	"  "
	.size	fuckLLVM_.str.318, 2

	.section	.rodata
	.type	fuckLLVM_.str.319,@object
fuckLLVM_.str.319:
	.asciz	"  "
	.size	fuckLLVM_.str.319, 2

	.section	.rodata
	.type	fuckLLVM_.str.320,@object
fuckLLVM_.str.320:
	.asciz	"  "
	.size	fuckLLVM_.str.320, 2

	.section	.rodata
	.type	fuckLLVM_.str.321,@object
fuckLLVM_.str.321:
	.asciz	"  "
	.size	fuckLLVM_.str.321, 2

	.section	.rodata
	.type	fuckLLVM_.str.322,@object
fuckLLVM_.str.322:
	.asciz	"  "
	.size	fuckLLVM_.str.322, 2

	.section	.rodata
	.type	fuckLLVM_.str.323,@object
fuckLLVM_.str.323:
	.asciz	"  "
	.size	fuckLLVM_.str.323, 2

	.section	.rodata
	.type	fuckLLVM_.str.324,@object
fuckLLVM_.str.324:
	.asciz	"  "
	.size	fuckLLVM_.str.324, 2

	.section	.rodata
	.type	fuckLLVM_.str.325,@object
fuckLLVM_.str.325:
	.asciz	"  "
	.size	fuckLLVM_.str.325, 2

	.section	.rodata
	.type	fuckLLVM_.str.326,@object
fuckLLVM_.str.326:
	.asciz	"  "
	.size	fuckLLVM_.str.326, 2

	.section	.rodata
	.type	fuckLLVM_.str.327,@object
fuckLLVM_.str.327:
	.asciz	"  "
	.size	fuckLLVM_.str.327, 2

	.section	.rodata
	.type	fuckLLVM_.str.328,@object
fuckLLVM_.str.328:
	.asciz	"  "
	.size	fuckLLVM_.str.328, 2

	.section	.rodata
	.type	fuckLLVM_.str.329,@object
fuckLLVM_.str.329:
	.asciz	"  "
	.size	fuckLLVM_.str.329, 2

	.section	.rodata
	.type	fuckLLVM_.str.330,@object
fuckLLVM_.str.330:
	.asciz	"  "
	.size	fuckLLVM_.str.330, 2

	.section	.rodata
	.type	fuckLLVM_.str.331,@object
fuckLLVM_.str.331:
	.asciz	"  "
	.size	fuckLLVM_.str.331, 2

	.section	.rodata
	.type	fuckLLVM_.str.332,@object
fuckLLVM_.str.332:
	.asciz	"  "
	.size	fuckLLVM_.str.332, 2

	.section	.rodata
	.type	fuckLLVM_.str.333,@object
fuckLLVM_.str.333:
	.asciz	"  "
	.size	fuckLLVM_.str.333, 2

	.section	.rodata
	.type	fuckLLVM_.str.334,@object
fuckLLVM_.str.334:
	.asciz	"  "
	.size	fuckLLVM_.str.334, 2

	.section	.rodata
	.type	fuckLLVM_.str.335,@object
fuckLLVM_.str.335:
	.asciz	"  "
	.size	fuckLLVM_.str.335, 2

	.section	.rodata
	.type	fuckLLVM_.str.336,@object
fuckLLVM_.str.336:
	.asciz	"  "
	.size	fuckLLVM_.str.336, 2

	.section	.rodata
	.type	fuckLLVM_.str.337,@object
fuckLLVM_.str.337:
	.asciz	"  "
	.size	fuckLLVM_.str.337, 2

	.section	.rodata
	.type	fuckLLVM_.str.338,@object
fuckLLVM_.str.338:
	.asciz	"  "
	.size	fuckLLVM_.str.338, 2

	.section	.rodata
	.type	fuckLLVM_.str.339,@object
fuckLLVM_.str.339:
	.asciz	"  "
	.size	fuckLLVM_.str.339, 2

	.section	.rodata
	.type	fuckLLVM_.str.340,@object
fuckLLVM_.str.340:
	.asciz	"  "
	.size	fuckLLVM_.str.340, 2

	.section	.rodata
	.type	fuckLLVM_.str.341,@object
fuckLLVM_.str.341:
	.asciz	"  "
	.size	fuckLLVM_.str.341, 2

	.section	.rodata
	.type	fuckLLVM_.str.342,@object
fuckLLVM_.str.342:
	.asciz	"  "
	.size	fuckLLVM_.str.342, 2

	.section	.rodata
	.type	fuckLLVM_.str.343,@object
fuckLLVM_.str.343:
	.asciz	"  "
	.size	fuckLLVM_.str.343, 2

	.section	.rodata
	.type	fuckLLVM_.str.344,@object
fuckLLVM_.str.344:
	.asciz	"  "
	.size	fuckLLVM_.str.344, 2

	.section	.rodata
	.type	fuckLLVM_.str.345,@object
fuckLLVM_.str.345:
	.asciz	"  "
	.size	fuckLLVM_.str.345, 2

	.section	.rodata
	.type	fuckLLVM_.str.346,@object
fuckLLVM_.str.346:
	.asciz	"  "
	.size	fuckLLVM_.str.346, 2

	.section	.rodata
	.type	fuckLLVM_.str.347,@object
fuckLLVM_.str.347:
	.asciz	"  "
	.size	fuckLLVM_.str.347, 2

	.section	.rodata
	.type	fuckLLVM_.str.348,@object
fuckLLVM_.str.348:
	.asciz	"  "
	.size	fuckLLVM_.str.348, 2

	.section	.rodata
	.type	fuckLLVM_.str.349,@object
fuckLLVM_.str.349:
	.asciz	"  "
	.size	fuckLLVM_.str.349, 2

	.section	.rodata
	.type	fuckLLVM_.str.350,@object
fuckLLVM_.str.350:
	.asciz	"  "
	.size	fuckLLVM_.str.350, 2

	.section	.rodata
	.type	fuckLLVM_.str.351,@object
fuckLLVM_.str.351:
	.asciz	"  "
	.size	fuckLLVM_.str.351, 2

	.section	.rodata
	.type	fuckLLVM_.str.352,@object
fuckLLVM_.str.352:
	.asciz	"  "
	.size	fuckLLVM_.str.352, 2

	.section	.rodata
	.type	fuckLLVM_.str.353,@object
fuckLLVM_.str.353:
	.asciz	"  "
	.size	fuckLLVM_.str.353, 2

	.section	.rodata
	.type	fuckLLVM_.str.354,@object
fuckLLVM_.str.354:
	.asciz	"  "
	.size	fuckLLVM_.str.354, 2

	.section	.rodata
	.type	fuckLLVM_.str.355,@object
fuckLLVM_.str.355:
	.asciz	"  "
	.size	fuckLLVM_.str.355, 2

	.section	.rodata
	.type	fuckLLVM_.str.356,@object
fuckLLVM_.str.356:
	.asciz	"  "
	.size	fuckLLVM_.str.356, 2

	.section	.rodata
	.type	fuckLLVM_.str.357,@object
fuckLLVM_.str.357:
	.asciz	"  "
	.size	fuckLLVM_.str.357, 2

	.section	.rodata
	.type	fuckLLVM_.str.358,@object
fuckLLVM_.str.358:
	.asciz	"  "
	.size	fuckLLVM_.str.358, 2

	.section	.rodata
	.type	fuckLLVM_.str.359,@object
fuckLLVM_.str.359:
	.asciz	"  "
	.size	fuckLLVM_.str.359, 2

	.section	.rodata
	.type	fuckLLVM_.str.360,@object
fuckLLVM_.str.360:
	.asciz	"  "
	.size	fuckLLVM_.str.360, 2

	.section	.rodata
	.type	fuckLLVM_.str.361,@object
fuckLLVM_.str.361:
	.asciz	"  "
	.size	fuckLLVM_.str.361, 2

	.section	.rodata
	.type	fuckLLVM_.str.362,@object
fuckLLVM_.str.362:
	.asciz	"  "
	.size	fuckLLVM_.str.362, 2

	.section	.rodata
	.type	fuckLLVM_.str.363,@object
fuckLLVM_.str.363:
	.asciz	"  "
	.size	fuckLLVM_.str.363, 2

	.section	.rodata
	.type	fuckLLVM_.str.364,@object
fuckLLVM_.str.364:
	.asciz	"  "
	.size	fuckLLVM_.str.364, 2

	.section	.rodata
	.type	fuckLLVM_.str.365,@object
fuckLLVM_.str.365:
	.asciz	"  "
	.size	fuckLLVM_.str.365, 2

	.section	.rodata
	.type	fuckLLVM_.str.366,@object
fuckLLVM_.str.366:
	.asciz	"  "
	.size	fuckLLVM_.str.366, 2

	.section	.rodata
	.type	fuckLLVM_.str.367,@object
fuckLLVM_.str.367:
	.asciz	"  "
	.size	fuckLLVM_.str.367, 2

	.section	.rodata
	.type	fuckLLVM_.str.368,@object
fuckLLVM_.str.368:
	.asciz	"  "
	.size	fuckLLVM_.str.368, 2

	.section	.rodata
	.type	fuckLLVM_.str.369,@object
fuckLLVM_.str.369:
	.asciz	"  "
	.size	fuckLLVM_.str.369, 2

	.section	.rodata
	.type	fuckLLVM_.str.370,@object
fuckLLVM_.str.370:
	.asciz	"  "
	.size	fuckLLVM_.str.370, 2

	.section	.rodata
	.type	fuckLLVM_.str.371,@object
fuckLLVM_.str.371:
	.asciz	"  "
	.size	fuckLLVM_.str.371, 2

	.section	.rodata
	.type	fuckLLVM_.str.372,@object
fuckLLVM_.str.372:
	.asciz	"  "
	.size	fuckLLVM_.str.372, 2

	.section	.rodata
	.type	fuckLLVM_.str.373,@object
fuckLLVM_.str.373:
	.asciz	"  "
	.size	fuckLLVM_.str.373, 2

	.section	.rodata
	.type	fuckLLVM_.str.374,@object
fuckLLVM_.str.374:
	.asciz	"  "
	.size	fuckLLVM_.str.374, 2

	.section	.rodata
	.type	fuckLLVM_.str.375,@object
fuckLLVM_.str.375:
	.asciz	"  "
	.size	fuckLLVM_.str.375, 2

	.section	.rodata
	.type	fuckLLVM_.str.376,@object
fuckLLVM_.str.376:
	.asciz	"  "
	.size	fuckLLVM_.str.376, 2

	.section	.rodata
	.type	fuckLLVM_.str.377,@object
fuckLLVM_.str.377:
	.asciz	"  "
	.size	fuckLLVM_.str.377, 2

	.section	.rodata
	.type	fuckLLVM_.str.378,@object
fuckLLVM_.str.378:
	.asciz	"  "
	.size	fuckLLVM_.str.378, 2

	.section	.rodata
	.type	fuckLLVM_.str.379,@object
fuckLLVM_.str.379:
	.asciz	"  "
	.size	fuckLLVM_.str.379, 2

	.section	.rodata
	.type	fuckLLVM_.str.380,@object
fuckLLVM_.str.380:
	.asciz	"  "
	.size	fuckLLVM_.str.380, 2

	.section	.rodata
	.type	fuckLLVM_.str.381,@object
fuckLLVM_.str.381:
	.asciz	"  "
	.size	fuckLLVM_.str.381, 2

	.section	.rodata
	.type	fuckLLVM_.str.382,@object
fuckLLVM_.str.382:
	.asciz	"  "
	.size	fuckLLVM_.str.382, 2

	.section	.rodata
	.type	fuckLLVM_.str.383,@object
fuckLLVM_.str.383:
	.asciz	"  "
	.size	fuckLLVM_.str.383, 2

	.section	.rodata
	.type	fuckLLVM_.str.384,@object
fuckLLVM_.str.384:
	.asciz	"  "
	.size	fuckLLVM_.str.384, 2

	.section	.rodata
	.type	fuckLLVM_.str.385,@object
fuckLLVM_.str.385:
	.asciz	"  "
	.size	fuckLLVM_.str.385, 2

	.section	.rodata
	.type	fuckLLVM_.str.386,@object
fuckLLVM_.str.386:
	.asciz	"  "
	.size	fuckLLVM_.str.386, 2

	.section	.rodata
	.type	fuckLLVM_.str.387,@object
fuckLLVM_.str.387:
	.asciz	"  "
	.size	fuckLLVM_.str.387, 2

	.section	.rodata
	.type	fuckLLVM_.str.388,@object
fuckLLVM_.str.388:
	.asciz	"  "
	.size	fuckLLVM_.str.388, 2

	.section	.rodata
	.type	fuckLLVM_.str.389,@object
fuckLLVM_.str.389:
	.asciz	"  "
	.size	fuckLLVM_.str.389, 2

	.section	.rodata
	.type	fuckLLVM_.str.390,@object
fuckLLVM_.str.390:
	.asciz	"  "
	.size	fuckLLVM_.str.390, 2

	.section	.rodata
	.type	fuckLLVM_.str.391,@object
fuckLLVM_.str.391:
	.asciz	"  "
	.size	fuckLLVM_.str.391, 2

	.section	.rodata
	.type	fuckLLVM_.str.392,@object
fuckLLVM_.str.392:
	.asciz	"  "
	.size	fuckLLVM_.str.392, 2

	.section	.rodata
	.type	fuckLLVM_.str.393,@object
fuckLLVM_.str.393:
	.asciz	"  "
	.size	fuckLLVM_.str.393, 2

	.section	.rodata
	.type	fuckLLVM_.str.394,@object
fuckLLVM_.str.394:
	.asciz	"  "
	.size	fuckLLVM_.str.394, 2

	.section	.rodata
	.type	fuckLLVM_.str.395,@object
fuckLLVM_.str.395:
	.asciz	"  "
	.size	fuckLLVM_.str.395, 2

	.section	.rodata
	.type	fuckLLVM_.str.396,@object
fuckLLVM_.str.396:
	.asciz	"  "
	.size	fuckLLVM_.str.396, 2

	.section	.rodata
	.type	fuckLLVM_.str.397,@object
fuckLLVM_.str.397:
	.asciz	"  "
	.size	fuckLLVM_.str.397, 2

	.section	.rodata
	.type	fuckLLVM_.str.398,@object
fuckLLVM_.str.398:
	.asciz	"  "
	.size	fuckLLVM_.str.398, 2

	.section	.rodata
	.type	fuckLLVM_.str.399,@object
fuckLLVM_.str.399:
	.asciz	"  "
	.size	fuckLLVM_.str.399, 2

	.section	.rodata
	.type	fuckLLVM_.str.400,@object
fuckLLVM_.str.400:
	.asciz	"  "
	.size	fuckLLVM_.str.400, 2

	.section	.rodata
	.type	fuckLLVM_.str.401,@object
fuckLLVM_.str.401:
	.asciz	"  "
	.size	fuckLLVM_.str.401, 2

	.section	.rodata
	.type	fuckLLVM_.str.402,@object
fuckLLVM_.str.402:
	.asciz	"  "
	.size	fuckLLVM_.str.402, 2

	.section	.rodata
	.type	fuckLLVM_.str.403,@object
fuckLLVM_.str.403:
	.asciz	"  "
	.size	fuckLLVM_.str.403, 2

	.section	.rodata
	.type	fuckLLVM_.str.404,@object
fuckLLVM_.str.404:
	.asciz	"  "
	.size	fuckLLVM_.str.404, 2

	.section	.rodata
	.type	fuckLLVM_.str.405,@object
fuckLLVM_.str.405:
	.asciz	"  "
	.size	fuckLLVM_.str.405, 2

	.section	.rodata
	.type	fuckLLVM_.str.406,@object
fuckLLVM_.str.406:
	.asciz	"  "
	.size	fuckLLVM_.str.406, 2

	.section	.rodata
	.type	fuckLLVM_.str.407,@object
fuckLLVM_.str.407:
	.asciz	"  "
	.size	fuckLLVM_.str.407, 2

	.section	.rodata
	.type	fuckLLVM_.str.408,@object
fuckLLVM_.str.408:
	.asciz	"  "
	.size	fuckLLVM_.str.408, 2

	.section	.rodata
	.type	fuckLLVM_.str.409,@object
fuckLLVM_.str.409:
	.asciz	"  "
	.size	fuckLLVM_.str.409, 2

	.section	.rodata
	.type	fuckLLVM_.str.410,@object
fuckLLVM_.str.410:
	.asciz	"  "
	.size	fuckLLVM_.str.410, 2

	.section	.rodata
	.type	fuckLLVM_.str.411,@object
fuckLLVM_.str.411:
	.asciz	"  "
	.size	fuckLLVM_.str.411, 2

	.section	.rodata
	.type	fuckLLVM_.str.412,@object
fuckLLVM_.str.412:
	.asciz	"  "
	.size	fuckLLVM_.str.412, 2

	.section	.rodata
	.type	fuckLLVM_.str.413,@object
fuckLLVM_.str.413:
	.asciz	"  "
	.size	fuckLLVM_.str.413, 2

	.section	.rodata
	.type	fuckLLVM_.str.414,@object
fuckLLVM_.str.414:
	.asciz	"  "
	.size	fuckLLVM_.str.414, 2

	.section	.rodata
	.type	fuckLLVM_.str.415,@object
fuckLLVM_.str.415:
	.asciz	"  "
	.size	fuckLLVM_.str.415, 2

	.section	.rodata
	.type	fuckLLVM_.str.416,@object
fuckLLVM_.str.416:
	.asciz	"  "
	.size	fuckLLVM_.str.416, 2

	.section	.rodata
	.type	fuckLLVM_.str.417,@object
fuckLLVM_.str.417:
	.asciz	"  "
	.size	fuckLLVM_.str.417, 2

	.section	.rodata
	.type	fuckLLVM_.str.418,@object
fuckLLVM_.str.418:
	.asciz	"  "
	.size	fuckLLVM_.str.418, 2

	.section	.rodata
	.type	fuckLLVM_.str.419,@object
fuckLLVM_.str.419:
	.asciz	"  "
	.size	fuckLLVM_.str.419, 2

	.section	.rodata
	.type	fuckLLVM_.str.420,@object
fuckLLVM_.str.420:
	.asciz	"  "
	.size	fuckLLVM_.str.420, 2

	.section	.rodata
	.type	fuckLLVM_.str.421,@object
fuckLLVM_.str.421:
	.asciz	"  "
	.size	fuckLLVM_.str.421, 2

	.section	.rodata
	.type	fuckLLVM_.str.422,@object
fuckLLVM_.str.422:
	.asciz	"  "
	.size	fuckLLVM_.str.422, 2

	.section	.rodata
	.type	fuckLLVM_.str.423,@object
fuckLLVM_.str.423:
	.asciz	"  "
	.size	fuckLLVM_.str.423, 2

	.section	.rodata
	.type	fuckLLVM_.str.424,@object
fuckLLVM_.str.424:
	.asciz	"  "
	.size	fuckLLVM_.str.424, 2

	.section	.rodata
	.type	fuckLLVM_.str.425,@object
fuckLLVM_.str.425:
	.asciz	"  "
	.size	fuckLLVM_.str.425, 2

	.section	.rodata
	.type	fuckLLVM_.str.426,@object
fuckLLVM_.str.426:
	.asciz	"  "
	.size	fuckLLVM_.str.426, 2

	.section	.rodata
	.type	fuckLLVM_.str.427,@object
fuckLLVM_.str.427:
	.asciz	"  "
	.size	fuckLLVM_.str.427, 2

	.section	.rodata
	.type	fuckLLVM_.str.428,@object
fuckLLVM_.str.428:
	.asciz	"  "
	.size	fuckLLVM_.str.428, 2

	.section	.rodata
	.type	fuckLLVM_.str.429,@object
fuckLLVM_.str.429:
	.asciz	"  "
	.size	fuckLLVM_.str.429, 2

	.section	.rodata
	.type	fuckLLVM_.str.430,@object
fuckLLVM_.str.430:
	.asciz	"  "
	.size	fuckLLVM_.str.430, 2

	.section	.rodata
	.type	fuckLLVM_.str.431,@object
fuckLLVM_.str.431:
	.asciz	"  "
	.size	fuckLLVM_.str.431, 2

	.section	.rodata
	.type	fuckLLVM_.str.432,@object
fuckLLVM_.str.432:
	.asciz	"  "
	.size	fuckLLVM_.str.432, 2

	.section	.rodata
	.type	fuckLLVM_.str.433,@object
fuckLLVM_.str.433:
	.asciz	"  "
	.size	fuckLLVM_.str.433, 2

	.section	.rodata
	.type	fuckLLVM_.str.434,@object
fuckLLVM_.str.434:
	.asciz	"  "
	.size	fuckLLVM_.str.434, 2

	.section	.rodata
	.type	fuckLLVM_.str.435,@object
fuckLLVM_.str.435:
	.asciz	"  "
	.size	fuckLLVM_.str.435, 2

	.section	.rodata
	.type	fuckLLVM_.str.436,@object
fuckLLVM_.str.436:
	.asciz	"  "
	.size	fuckLLVM_.str.436, 2

	.section	.rodata
	.type	fuckLLVM_.str.437,@object
fuckLLVM_.str.437:
	.asciz	"  "
	.size	fuckLLVM_.str.437, 2

	.section	.rodata
	.type	fuckLLVM_.str.438,@object
fuckLLVM_.str.438:
	.asciz	"  "
	.size	fuckLLVM_.str.438, 2

	.section	.rodata
	.type	fuckLLVM_.str.439,@object
fuckLLVM_.str.439:
	.asciz	"  "
	.size	fuckLLVM_.str.439, 2

	.section	.rodata
	.type	fuckLLVM_.str.440,@object
fuckLLVM_.str.440:
	.asciz	"  "
	.size	fuckLLVM_.str.440, 2

	.section	.rodata
	.type	fuckLLVM_.str.441,@object
fuckLLVM_.str.441:
	.asciz	"  "
	.size	fuckLLVM_.str.441, 2

	.section	.rodata
	.type	fuckLLVM_.str.442,@object
fuckLLVM_.str.442:
	.asciz	"  "
	.size	fuckLLVM_.str.442, 2

	.section	.rodata
	.type	fuckLLVM_.str.443,@object
fuckLLVM_.str.443:
	.asciz	"  "
	.size	fuckLLVM_.str.443, 2

	.section	.rodata
	.type	fuckLLVM_.str.444,@object
fuckLLVM_.str.444:
	.asciz	"  "
	.size	fuckLLVM_.str.444, 2

	.section	.rodata
	.type	fuckLLVM_.str.445,@object
fuckLLVM_.str.445:
	.asciz	"  "
	.size	fuckLLVM_.str.445, 2

	.section	.rodata
	.type	fuckLLVM_.str.446,@object
fuckLLVM_.str.446:
	.asciz	"  "
	.size	fuckLLVM_.str.446, 2

	.section	.rodata
	.type	fuckLLVM_.str.447,@object
fuckLLVM_.str.447:
	.asciz	"  "
	.size	fuckLLVM_.str.447, 2

	.section	.rodata
	.type	fuckLLVM_.str.448,@object
fuckLLVM_.str.448:
	.asciz	"  "
	.size	fuckLLVM_.str.448, 2

	.section	.rodata
	.type	fuckLLVM_.str.449,@object
fuckLLVM_.str.449:
	.asciz	"  "
	.size	fuckLLVM_.str.449, 2

	.section	.rodata
	.type	fuckLLVM_.str.450,@object
fuckLLVM_.str.450:
	.asciz	"  "
	.size	fuckLLVM_.str.450, 2

	.section	.rodata
	.type	fuckLLVM_.str.451,@object
fuckLLVM_.str.451:
	.asciz	"  "
	.size	fuckLLVM_.str.451, 2

	.section	.rodata
	.type	fuckLLVM_.str.452,@object
fuckLLVM_.str.452:
	.asciz	"  "
	.size	fuckLLVM_.str.452, 2

	.section	.rodata
	.type	fuckLLVM_.str.453,@object
fuckLLVM_.str.453:
	.asciz	"  "
	.size	fuckLLVM_.str.453, 2

	.section	.rodata
	.type	fuckLLVM_.str.454,@object
fuckLLVM_.str.454:
	.asciz	"  "
	.size	fuckLLVM_.str.454, 2

	.section	.rodata
	.type	fuckLLVM_.str.455,@object
fuckLLVM_.str.455:
	.asciz	"  "
	.size	fuckLLVM_.str.455, 2

	.section	.rodata
	.type	fuckLLVM_.str.456,@object
fuckLLVM_.str.456:
	.asciz	"  "
	.size	fuckLLVM_.str.456, 2

	.section	.rodata
	.type	fuckLLVM_.str.457,@object
fuckLLVM_.str.457:
	.asciz	"  "
	.size	fuckLLVM_.str.457, 2

	.section	.rodata
	.type	fuckLLVM_.str.458,@object
fuckLLVM_.str.458:
	.asciz	"  "
	.size	fuckLLVM_.str.458, 2

	.section	.rodata
	.type	fuckLLVM_.str.459,@object
fuckLLVM_.str.459:
	.asciz	"  "
	.size	fuckLLVM_.str.459, 2

	.section	.rodata
	.type	fuckLLVM_.str.460,@object
fuckLLVM_.str.460:
	.asciz	"  "
	.size	fuckLLVM_.str.460, 2

	.section	.rodata
	.type	fuckLLVM_.str.461,@object
fuckLLVM_.str.461:
	.asciz	"  "
	.size	fuckLLVM_.str.461, 2

	.section	.rodata
	.type	fuckLLVM_.str.462,@object
fuckLLVM_.str.462:
	.asciz	"  "
	.size	fuckLLVM_.str.462, 2

	.section	.rodata
	.type	fuckLLVM_.str.463,@object
fuckLLVM_.str.463:
	.asciz	"  "
	.size	fuckLLVM_.str.463, 2

	.section	.rodata
	.type	fuckLLVM_.str.464,@object
fuckLLVM_.str.464:
	.asciz	"  "
	.size	fuckLLVM_.str.464, 2

	.section	.rodata
	.type	fuckLLVM_.str.465,@object
fuckLLVM_.str.465:
	.asciz	"  "
	.size	fuckLLVM_.str.465, 2

	.section	.rodata
	.type	fuckLLVM_.str.466,@object
fuckLLVM_.str.466:
	.asciz	"  "
	.size	fuckLLVM_.str.466, 2

	.section	.rodata
	.type	fuckLLVM_.str.467,@object
fuckLLVM_.str.467:
	.asciz	"  "
	.size	fuckLLVM_.str.467, 2

	.section	.rodata
	.type	fuckLLVM_.str.468,@object
fuckLLVM_.str.468:
	.asciz	"  "
	.size	fuckLLVM_.str.468, 2

	.section	.rodata
	.type	fuckLLVM_.str.469,@object
fuckLLVM_.str.469:
	.asciz	"  "
	.size	fuckLLVM_.str.469, 2

	.section	.rodata
	.type	fuckLLVM_.str.470,@object
fuckLLVM_.str.470:
	.asciz	"  "
	.size	fuckLLVM_.str.470, 2

	.section	.rodata
	.type	fuckLLVM_.str.471,@object
fuckLLVM_.str.471:
	.asciz	"  "
	.size	fuckLLVM_.str.471, 2

	.section	.rodata
	.type	fuckLLVM_.str.472,@object
fuckLLVM_.str.472:
	.asciz	"  "
	.size	fuckLLVM_.str.472, 2

	.section	.rodata
	.type	fuckLLVM_.str.473,@object
fuckLLVM_.str.473:
	.asciz	"  "
	.size	fuckLLVM_.str.473, 2

	.section	.rodata
	.type	fuckLLVM_.str.474,@object
fuckLLVM_.str.474:
	.asciz	"  "
	.size	fuckLLVM_.str.474, 2

	.section	.rodata
	.type	fuckLLVM_.str.475,@object
fuckLLVM_.str.475:
	.asciz	"  "
	.size	fuckLLVM_.str.475, 2

	.section	.rodata
	.type	fuckLLVM_.str.476,@object
fuckLLVM_.str.476:
	.asciz	"  "
	.size	fuckLLVM_.str.476, 2

	.section	.rodata
	.type	fuckLLVM_.str.477,@object
fuckLLVM_.str.477:
	.asciz	"  "
	.size	fuckLLVM_.str.477, 2

	.section	.rodata
	.type	fuckLLVM_.str.478,@object
fuckLLVM_.str.478:
	.asciz	"  "
	.size	fuckLLVM_.str.478, 2

	.section	.rodata
	.type	fuckLLVM_.str.479,@object
fuckLLVM_.str.479:
	.asciz	"  "
	.size	fuckLLVM_.str.479, 2

	.section	.rodata
	.type	fuckLLVM_.str.480,@object
fuckLLVM_.str.480:
	.asciz	"  "
	.size	fuckLLVM_.str.480, 2

	.section	.rodata
	.type	fuckLLVM_.str.481,@object
fuckLLVM_.str.481:
	.asciz	"  "
	.size	fuckLLVM_.str.481, 2

	.section	.rodata
	.type	fuckLLVM_.str.482,@object
fuckLLVM_.str.482:
	.asciz	"  "
	.size	fuckLLVM_.str.482, 2

	.section	.rodata
	.type	fuckLLVM_.str.483,@object
fuckLLVM_.str.483:
	.asciz	"  "
	.size	fuckLLVM_.str.483, 2

	.section	.rodata
	.type	fuckLLVM_.str.484,@object
fuckLLVM_.str.484:
	.asciz	"  "
	.size	fuckLLVM_.str.484, 2

	.section	.rodata
	.type	fuckLLVM_.str.485,@object
fuckLLVM_.str.485:
	.asciz	"  "
	.size	fuckLLVM_.str.485, 2

	.section	.rodata
	.type	fuckLLVM_.str.486,@object
fuckLLVM_.str.486:
	.asciz	"  "
	.size	fuckLLVM_.str.486, 2

	.section	.rodata
	.type	fuckLLVM_.str.487,@object
fuckLLVM_.str.487:
	.asciz	"  "
	.size	fuckLLVM_.str.487, 2

	.section	.rodata
	.type	fuckLLVM_.str.488,@object
fuckLLVM_.str.488:
	.asciz	"  "
	.size	fuckLLVM_.str.488, 2

	.section	.rodata
	.type	fuckLLVM_.str.489,@object
fuckLLVM_.str.489:
	.asciz	"  "
	.size	fuckLLVM_.str.489, 2

	.section	.rodata
	.type	fuckLLVM_.str.490,@object
fuckLLVM_.str.490:
	.asciz	"  "
	.size	fuckLLVM_.str.490, 2

	.section	.rodata
	.type	fuckLLVM_.str.491,@object
fuckLLVM_.str.491:
	.asciz	"  "
	.size	fuckLLVM_.str.491, 2

	.section	.rodata
	.type	fuckLLVM_.str.492,@object
fuckLLVM_.str.492:
	.asciz	"  "
	.size	fuckLLVM_.str.492, 2

	.section	.rodata
	.type	fuckLLVM_.str.493,@object
fuckLLVM_.str.493:
	.asciz	"  "
	.size	fuckLLVM_.str.493, 2

	.section	.rodata
	.type	fuckLLVM_.str.494,@object
fuckLLVM_.str.494:
	.asciz	"  "
	.size	fuckLLVM_.str.494, 2

	.section	.rodata
	.type	fuckLLVM_.str.495,@object
fuckLLVM_.str.495:
	.asciz	"  "
	.size	fuckLLVM_.str.495, 2

	.section	.rodata
	.type	fuckLLVM_.str.496,@object
fuckLLVM_.str.496:
	.asciz	"  "
	.size	fuckLLVM_.str.496, 2

	.section	.rodata
	.type	fuckLLVM_.str.497,@object
fuckLLVM_.str.497:
	.asciz	"  "
	.size	fuckLLVM_.str.497, 2

	.section	.rodata
	.type	fuckLLVM_.str.498,@object
fuckLLVM_.str.498:
	.asciz	"  "
	.size	fuckLLVM_.str.498, 2

	.section	.rodata
	.type	fuckLLVM_.str.499,@object
fuckLLVM_.str.499:
	.asciz	"  "
	.size	fuckLLVM_.str.499, 2

	.section	.rodata
	.type	fuckLLVM_.str.500,@object
fuckLLVM_.str.500:
	.asciz	"  "
	.size	fuckLLVM_.str.500, 2

	.section	.rodata
	.type	fuckLLVM_.str.501,@object
fuckLLVM_.str.501:
	.asciz	"  "
	.size	fuckLLVM_.str.501, 2

	.section	.rodata
	.type	fuckLLVM_.str.502,@object
fuckLLVM_.str.502:
	.asciz	"  "
	.size	fuckLLVM_.str.502, 2

	.section	.rodata
	.type	fuckLLVM_.str.503,@object
fuckLLVM_.str.503:
	.asciz	"  "
	.size	fuckLLVM_.str.503, 2

	.section	.rodata
	.type	fuckLLVM_.str.504,@object
fuckLLVM_.str.504:
	.asciz	"  "
	.size	fuckLLVM_.str.504, 2

	.section	.rodata
	.type	fuckLLVM_.str.505,@object
fuckLLVM_.str.505:
	.asciz	"  "
	.size	fuckLLVM_.str.505, 2

	.section	.rodata
	.type	fuckLLVM_.str.506,@object
fuckLLVM_.str.506:
	.asciz	"  "
	.size	fuckLLVM_.str.506, 2

	.section	.rodata
	.type	fuckLLVM_.str.507,@object
fuckLLVM_.str.507:
	.asciz	"  "
	.size	fuckLLVM_.str.507, 2

	.section	.rodata
	.type	fuckLLVM_.str.508,@object
fuckLLVM_.str.508:
	.asciz	"  "
	.size	fuckLLVM_.str.508, 2

	.section	.rodata
	.type	fuckLLVM_.str.509,@object
fuckLLVM_.str.509:
	.asciz	"  "
	.size	fuckLLVM_.str.509, 2

	.section	.rodata
	.type	fuckLLVM_.str.510,@object
fuckLLVM_.str.510:
	.asciz	"  "
	.size	fuckLLVM_.str.510, 2

	.section	.rodata
	.type	fuckLLVM_.str.511,@object
fuckLLVM_.str.511:
	.asciz	"  "
	.size	fuckLLVM_.str.511, 2

	.section	.rodata
	.type	fuckLLVM_.str.512,@object
fuckLLVM_.str.512:
	.asciz	"  "
	.size	fuckLLVM_.str.512, 2

	.section	.rodata
	.type	fuckLLVM_.str.513,@object
fuckLLVM_.str.513:
	.asciz	" "
	.size	fuckLLVM_.str.513, 1

