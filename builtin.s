	.text
	.attribute	4, 16
	.attribute	5, "rv32i2p0_m2p0"
	.file	"builtin.c"
	.globl	print                           # -- Begin function print
	.p2align	2
	.type	print,@function
print:                                  # @print
	.cfi_startproc
# %bb.0:
	addi	sp, sp, -16
	.cfi_def_cfa_offset 16
	sw	ra, 12(sp)                      # 4-byte Folded Spill
	sw	s0, 8(sp)                       # 4-byte Folded Spill
	.cfi_offset ra, -4
	.cfi_offset s0, -8
	addi	s0, sp, 16
	.cfi_def_cfa s0, 0
	sw	a0, -16(s0)
	lw	a1, -16(s0)
	lui	a0, %hi(.L.str)
	addi	a0, a0, %lo(.L.str)
	call	printf@plt
	lw	s0, 8(sp)                       # 4-byte Folded Reload
	lw	ra, 12(sp)                      # 4-byte Folded Reload
	addi	sp, sp, 16
	ret
.Lfunc_end0:
	.size	print, .Lfunc_end0-print
	.cfi_endproc
                                        # -- End function
	.globl	println                         # -- Begin function println
	.p2align	2
	.type	println,@function
println:                                # @println
	.cfi_startproc
# %bb.0:
	addi	sp, sp, -16
	.cfi_def_cfa_offset 16
	sw	ra, 12(sp)                      # 4-byte Folded Spill
	sw	s0, 8(sp)                       # 4-byte Folded Spill
	.cfi_offset ra, -4
	.cfi_offset s0, -8
	addi	s0, sp, 16
	.cfi_def_cfa s0, 0
	sw	a0, -16(s0)
	lw	a1, -16(s0)
	lui	a0, %hi(.L.str.1)
	addi	a0, a0, %lo(.L.str.1)
	call	printf@plt
	lw	s0, 8(sp)                       # 4-byte Folded Reload
	lw	ra, 12(sp)                      # 4-byte Folded Reload
	addi	sp, sp, 16
	ret
.Lfunc_end1:
	.size	println, .Lfunc_end1-println
	.cfi_endproc
                                        # -- End function
	.globl	printInt                        # -- Begin function printInt
	.p2align	2
	.type	printInt,@function
printInt:                               # @printInt
	.cfi_startproc
# %bb.0:
	addi	sp, sp, -16
	.cfi_def_cfa_offset 16
	sw	ra, 12(sp)                      # 4-byte Folded Spill
	sw	s0, 8(sp)                       # 4-byte Folded Spill
	.cfi_offset ra, -4
	.cfi_offset s0, -8
	addi	s0, sp, 16
	.cfi_def_cfa s0, 0
	sw	a0, -12(s0)
	lw	a1, -12(s0)
	lui	a0, %hi(.L.str.2)
	addi	a0, a0, %lo(.L.str.2)
	call	printf@plt
	lw	s0, 8(sp)                       # 4-byte Folded Reload
	lw	ra, 12(sp)                      # 4-byte Folded Reload
	addi	sp, sp, 16
	ret
.Lfunc_end2:
	.size	printInt, .Lfunc_end2-printInt
	.cfi_endproc
                                        # -- End function
	.globl	printlnInt                      # -- Begin function printlnInt
	.p2align	2
	.type	printlnInt,@function
printlnInt:                             # @printlnInt
	.cfi_startproc
# %bb.0:
	addi	sp, sp, -16
	.cfi_def_cfa_offset 16
	sw	ra, 12(sp)                      # 4-byte Folded Spill
	sw	s0, 8(sp)                       # 4-byte Folded Spill
	.cfi_offset ra, -4
	.cfi_offset s0, -8
	addi	s0, sp, 16
	.cfi_def_cfa s0, 0
	sw	a0, -12(s0)
	lw	a1, -12(s0)
	lui	a0, %hi(.L.str.3)
	addi	a0, a0, %lo(.L.str.3)
	call	printf@plt
	lw	s0, 8(sp)                       # 4-byte Folded Reload
	lw	ra, 12(sp)                      # 4-byte Folded Reload
	addi	sp, sp, 16
	ret
.Lfunc_end3:
	.size	printlnInt, .Lfunc_end3-printlnInt
	.cfi_endproc
                                        # -- End function
	.globl	getString                       # -- Begin function getString
	.p2align	2
	.type	getString,@function
getString:                              # @getString
	.cfi_startproc
# %bb.0:
	addi	sp, sp, -16
	.cfi_def_cfa_offset 16
	sw	ra, 12(sp)                      # 4-byte Folded Spill
	sw	s0, 8(sp)                       # 4-byte Folded Spill
	.cfi_offset ra, -4
	.cfi_offset s0, -8
	addi	s0, sp, 16
	.cfi_def_cfa s0, 0
	addi	a0, zero, 1024
	mv	a1, zero
	call	malloc@plt
	sw	a0, -16(s0)
	lw	a1, -16(s0)
	lui	a0, %hi(.L.str)
	addi	a0, a0, %lo(.L.str)
	call	scanf@plt
	lw	a0, -16(s0)
	lw	s0, 8(sp)                       # 4-byte Folded Reload
	lw	ra, 12(sp)                      # 4-byte Folded Reload
	addi	sp, sp, 16
	ret
.Lfunc_end4:
	.size	getString, .Lfunc_end4-getString
	.cfi_endproc
                                        # -- End function
	.globl	getInt                          # -- Begin function getInt
	.p2align	2
	.type	getInt,@function
getInt:                                 # @getInt
	.cfi_startproc
# %bb.0:
	addi	sp, sp, -16
	.cfi_def_cfa_offset 16
	sw	ra, 12(sp)                      # 4-byte Folded Spill
	sw	s0, 8(sp)                       # 4-byte Folded Spill
	.cfi_offset ra, -4
	.cfi_offset s0, -8
	addi	s0, sp, 16
	.cfi_def_cfa s0, 0
	lui	a0, %hi(.L.str.2)
	addi	a0, a0, %lo(.L.str.2)
	addi	a1, s0, -12
	call	scanf@plt
	lw	a0, -12(s0)
	lw	s0, 8(sp)                       # 4-byte Folded Reload
	lw	ra, 12(sp)                      # 4-byte Folded Reload
	addi	sp, sp, 16
	ret
.Lfunc_end5:
	.size	getInt, .Lfunc_end5-getInt
	.cfi_endproc
                                        # -- End function
	.globl	toString                        # -- Begin function toString
	.p2align	2
	.type	toString,@function
toString:                               # @toString
	.cfi_startproc
# %bb.0:
	addi	sp, sp, -16
	.cfi_def_cfa_offset 16
	sw	ra, 12(sp)                      # 4-byte Folded Spill
	sw	s0, 8(sp)                       # 4-byte Folded Spill
	.cfi_offset ra, -4
	.cfi_offset s0, -8
	addi	s0, sp, 16
	.cfi_def_cfa s0, 0
	sw	a0, -12(s0)
	addi	a0, zero, 15
	mv	a1, zero
	call	malloc@plt
	sw	a0, -16(s0)
	lw	a0, -16(s0)
	lw	a5, -12(s0)
	lui	a1, %hi(.L.str.2)
	addi	a4, a1, %lo(.L.str.2)
	mv	a1, zero
	addi	a2, zero, -1
	addi	a3, zero, -1
	call	__sprintf_chk@plt
	lw	a0, -16(s0)
	lw	s0, 8(sp)                       # 4-byte Folded Reload
	lw	ra, 12(sp)                      # 4-byte Folded Reload
	addi	sp, sp, 16
	ret
.Lfunc_end6:
	.size	toString, .Lfunc_end6-toString
	.cfi_endproc
                                        # -- End function
	.globl	length                          # -- Begin function length
	.p2align	2
	.type	length,@function
length:                                 # @length
	.cfi_startproc
# %bb.0:
	addi	sp, sp, -32
	.cfi_def_cfa_offset 32
	sw	ra, 28(sp)                      # 4-byte Folded Spill
	sw	s0, 24(sp)                      # 4-byte Folded Spill
	.cfi_offset ra, -4
	.cfi_offset s0, -8
	addi	s0, sp, 32
	.cfi_def_cfa s0, 0
	sw	a0, -16(s0)
	sw	zero, -20(s0)
	j	.LBB7_1
.LBB7_1:                                # =>This Inner Loop Header: Depth=1
	lw	a0, -16(s0)
	lb	a0, 0(a0)
	beqz	a0, .LBB7_4
	j	.LBB7_2
.LBB7_2:                                #   in Loop: Header=BB7_1 Depth=1
	lw	a0, -20(s0)
	addi	a0, a0, 1
	sw	a0, -20(s0)
	j	.LBB7_3
.LBB7_3:                                #   in Loop: Header=BB7_1 Depth=1
	lw	a0, -16(s0)
	addi	a0, a0, 1
	sw	a0, -16(s0)
	j	.LBB7_1
.LBB7_4:
	lw	a0, -20(s0)
	lw	s0, 24(sp)                      # 4-byte Folded Reload
	lw	ra, 28(sp)                      # 4-byte Folded Reload
	addi	sp, sp, 32
	ret
.Lfunc_end7:
	.size	length, .Lfunc_end7-length
	.cfi_endproc
                                        # -- End function
	.globl	substring                       # -- Begin function substring
	.p2align	2
	.type	substring,@function
substring:                              # @substring
	.cfi_startproc
# %bb.0:
	addi	sp, sp, -48
	.cfi_def_cfa_offset 48
	sw	ra, 44(sp)                      # 4-byte Folded Spill
	sw	s0, 40(sp)                      # 4-byte Folded Spill
	.cfi_offset ra, -4
	.cfi_offset s0, -8
	addi	s0, sp, 48
	.cfi_def_cfa s0, 0
	sw	a0, -16(s0)
	sw	a1, -20(s0)
	sw	a2, -24(s0)
	lw	a0, -24(s0)
	lw	a1, -20(s0)
	sub	a0, a0, a1
	addi	a0, a0, 1
	srai	a1, a0, 31
	call	malloc@plt
	sw	a0, -32(s0)
	lw	a0, -20(s0)
	sw	a0, -36(s0)
	j	.LBB8_1
.LBB8_1:                                # =>This Inner Loop Header: Depth=1
	lw	a0, -36(s0)
	lw	a1, -24(s0)
	bge	a0, a1, .LBB8_4
	j	.LBB8_2
.LBB8_2:                                #   in Loop: Header=BB8_1 Depth=1
	lw	a0, -16(s0)
	lw	a1, -36(s0)
	add	a0, a0, a1
	lb	a0, 0(a0)
	lw	a2, -32(s0)
	lw	a3, -20(s0)
	sub	a1, a1, a3
	add	a1, a2, a1
	sb	a0, 0(a1)
	j	.LBB8_3
.LBB8_3:                                #   in Loop: Header=BB8_1 Depth=1
	lw	a0, -36(s0)
	addi	a0, a0, 1
	sw	a0, -36(s0)
	j	.LBB8_1
.LBB8_4:
	lw	a0, -32(s0)
	lw	a1, -24(s0)
	lw	a2, -20(s0)
	sub	a1, a1, a2
	add	a0, a0, a1
	sb	zero, 0(a0)
	lw	a0, -32(s0)
	lw	s0, 40(sp)                      # 4-byte Folded Reload
	lw	ra, 44(sp)                      # 4-byte Folded Reload
	addi	sp, sp, 48
	ret
.Lfunc_end8:
	.size	substring, .Lfunc_end8-substring
	.cfi_endproc
                                        # -- End function
	.globl	parseInt                        # -- Begin function parseInt
	.p2align	2
	.type	parseInt,@function
parseInt:                               # @parseInt
	.cfi_startproc
# %bb.0:
	addi	sp, sp, -32
	.cfi_def_cfa_offset 32
	sw	ra, 28(sp)                      # 4-byte Folded Spill
	sw	s0, 24(sp)                      # 4-byte Folded Spill
	.cfi_offset ra, -4
	.cfi_offset s0, -8
	addi	s0, sp, 32
	.cfi_def_cfa s0, 0
	sw	a0, -16(s0)
	sw	zero, -20(s0)
	sb	zero, -21(s0)
	lw	a0, -16(s0)
	lb	a0, 0(a0)
	addi	a1, zero, 45
	bne	a0, a1, .LBB9_2
	j	.LBB9_1
.LBB9_1:
	addi	a0, zero, 1
	sb	a0, -21(s0)
	j	.LBB9_2
.LBB9_2:
	j	.LBB9_3
.LBB9_3:                                # =>This Inner Loop Header: Depth=1
	lw	a0, -16(s0)
	lb	a0, 0(a0)
	beqz	a0, .LBB9_6
	j	.LBB9_4
.LBB9_4:                                #   in Loop: Header=BB9_3 Depth=1
	lw	a0, -20(s0)
	addi	a1, zero, 10
	mul	a0, a0, a1
	lw	a1, -16(s0)
	lb	a1, 0(a1)
	add	a0, a1, a0
	addi	a0, a0, -48
	sw	a0, -20(s0)
	j	.LBB9_5
.LBB9_5:                                #   in Loop: Header=BB9_3 Depth=1
	lw	a0, -16(s0)
	addi	a0, a0, 1
	sw	a0, -16(s0)
	j	.LBB9_3
.LBB9_6:
	lbu	a0, -21(s0)
	andi	a0, a0, 1
	beqz	a0, .LBB9_8
	j	.LBB9_7
.LBB9_7:
	lw	a0, -20(s0)
	neg	a0, a0
	j	.LBB9_9
.LBB9_8:
	lw	a0, -20(s0)
	j	.LBB9_9
.LBB9_9:
	lw	s0, 24(sp)                      # 4-byte Folded Reload
	lw	ra, 28(sp)                      # 4-byte Folded Reload
	addi	sp, sp, 32
	ret
.Lfunc_end9:
	.size	parseInt, .Lfunc_end9-parseInt
	.cfi_endproc
                                        # -- End function
	.globl	ord                             # -- Begin function ord
	.p2align	2
	.type	ord,@function
ord:                                    # @ord
	.cfi_startproc
# %bb.0:
	addi	sp, sp, -32
	.cfi_def_cfa_offset 32
	sw	ra, 28(sp)                      # 4-byte Folded Spill
	sw	s0, 24(sp)                      # 4-byte Folded Spill
	.cfi_offset ra, -4
	.cfi_offset s0, -8
	addi	s0, sp, 32
	.cfi_def_cfa s0, 0
	sw	a0, -16(s0)
	sw	a1, -20(s0)
	lw	a0, -16(s0)
	lw	a1, -20(s0)
	add	a0, a0, a1
	lb	a0, 0(a0)
	lw	s0, 24(sp)                      # 4-byte Folded Reload
	lw	ra, 28(sp)                      # 4-byte Folded Reload
	addi	sp, sp, 32
	ret
.Lfunc_end10:
	.size	ord, .Lfunc_end10-ord
	.cfi_endproc
                                        # -- End function
	.globl	string_add                      # -- Begin function string_add
	.p2align	2
	.type	string_add,@function
string_add:                             # @string_add
	.cfi_startproc
# %bb.0:
	addi	sp, sp, -48
	.cfi_def_cfa_offset 48
	sw	ra, 44(sp)                      # 4-byte Folded Spill
	sw	s0, 40(sp)                      # 4-byte Folded Spill
	sw	s1, 36(sp)                      # 4-byte Folded Spill
	sw	s2, 32(sp)                      # 4-byte Folded Spill
	.cfi_offset ra, -4
	.cfi_offset s0, -8
	.cfi_offset s1, -12
	.cfi_offset s2, -16
	addi	s0, sp, 48
	.cfi_def_cfa s0, 0
	sw	a0, -24(s0)
	sw	a1, -32(s0)
	lw	a0, -24(s0)
	call	strlen@plt
	mv	s1, a0
	mv	s2, a1
	lw	a0, -32(s0)
	call	strlen@plt
	add	a1, s2, a1
	add	a2, s1, a0
	sltu	a0, a2, s1
	add	a1, a1, a0
	addi	a0, a2, 1
	sltu	a2, a0, a2
	add	a1, a1, a2
	call	malloc@plt
	sw	a0, -40(s0)
	lw	a0, -40(s0)
	sb	zero, 0(a0)
	lw	a0, -40(s0)
	lw	a1, -24(s0)
	addi	a2, zero, -1
	addi	a3, zero, -1
	call	__strcat_chk@plt
	lw	a0, -40(s0)
	lw	a1, -32(s0)
	addi	a2, zero, -1
	addi	a3, zero, -1
	call	__strcat_chk@plt
	lw	a0, -40(s0)
	lw	s2, 32(sp)                      # 4-byte Folded Reload
	lw	s1, 36(sp)                      # 4-byte Folded Reload
	lw	s0, 40(sp)                      # 4-byte Folded Reload
	lw	ra, 44(sp)                      # 4-byte Folded Reload
	addi	sp, sp, 48
	ret
.Lfunc_end11:
	.size	string_add, .Lfunc_end11-string_add
	.cfi_endproc
                                        # -- End function
	.globl	string_equal                    # -- Begin function string_equal
	.p2align	2
	.type	string_equal,@function
string_equal:                           # @string_equal
	.cfi_startproc
# %bb.0:
	addi	sp, sp, -32
	.cfi_def_cfa_offset 32
	sw	ra, 28(sp)                      # 4-byte Folded Spill
	sw	s0, 24(sp)                      # 4-byte Folded Spill
	.cfi_offset ra, -4
	.cfi_offset s0, -8
	addi	s0, sp, 32
	.cfi_def_cfa s0, 0
	sw	a0, -16(s0)
	sw	a1, -24(s0)
	lw	a0, -16(s0)
	lw	a1, -24(s0)
	call	strcmp@plt
	seqz	a0, a0
	lw	s0, 24(sp)                      # 4-byte Folded Reload
	lw	ra, 28(sp)                      # 4-byte Folded Reload
	addi	sp, sp, 32
	ret
.Lfunc_end12:
	.size	string_equal, .Lfunc_end12-string_equal
	.cfi_endproc
                                        # -- End function
	.globl	string_notEqual                 # -- Begin function string_notEqual
	.p2align	2
	.type	string_notEqual,@function
string_notEqual:                        # @string_notEqual
	.cfi_startproc
# %bb.0:
	addi	sp, sp, -32
	.cfi_def_cfa_offset 32
	sw	ra, 28(sp)                      # 4-byte Folded Spill
	sw	s0, 24(sp)                      # 4-byte Folded Spill
	.cfi_offset ra, -4
	.cfi_offset s0, -8
	addi	s0, sp, 32
	.cfi_def_cfa s0, 0
	sw	a0, -16(s0)
	sw	a1, -24(s0)
	lw	a0, -16(s0)
	lw	a1, -24(s0)
	call	strcmp@plt
	snez	a0, a0
	lw	s0, 24(sp)                      # 4-byte Folded Reload
	lw	ra, 28(sp)                      # 4-byte Folded Reload
	addi	sp, sp, 32
	ret
.Lfunc_end13:
	.size	string_notEqual, .Lfunc_end13-string_notEqual
	.cfi_endproc
                                        # -- End function
	.globl	string_less                     # -- Begin function string_less
	.p2align	2
	.type	string_less,@function
string_less:                            # @string_less
	.cfi_startproc
# %bb.0:
	addi	sp, sp, -32
	.cfi_def_cfa_offset 32
	sw	ra, 28(sp)                      # 4-byte Folded Spill
	sw	s0, 24(sp)                      # 4-byte Folded Spill
	.cfi_offset ra, -4
	.cfi_offset s0, -8
	addi	s0, sp, 32
	.cfi_def_cfa s0, 0
	sw	a0, -16(s0)
	sw	a1, -24(s0)
	lw	a0, -16(s0)
	lw	a1, -24(s0)
	call	strcmp@plt
	srli	a0, a0, 31
	lw	s0, 24(sp)                      # 4-byte Folded Reload
	lw	ra, 28(sp)                      # 4-byte Folded Reload
	addi	sp, sp, 32
	ret
.Lfunc_end14:
	.size	string_less, .Lfunc_end14-string_less
	.cfi_endproc
                                        # -- End function
	.globl	string_lessEqual                # -- Begin function string_lessEqual
	.p2align	2
	.type	string_lessEqual,@function
string_lessEqual:                       # @string_lessEqual
	.cfi_startproc
# %bb.0:
	addi	sp, sp, -32
	.cfi_def_cfa_offset 32
	sw	ra, 28(sp)                      # 4-byte Folded Spill
	sw	s0, 24(sp)                      # 4-byte Folded Spill
	.cfi_offset ra, -4
	.cfi_offset s0, -8
	addi	s0, sp, 32
	.cfi_def_cfa s0, 0
	sw	a0, -16(s0)
	sw	a1, -24(s0)
	lw	a0, -16(s0)
	lw	a1, -24(s0)
	call	strcmp@plt
	slti	a0, a0, 1
	lw	s0, 24(sp)                      # 4-byte Folded Reload
	lw	ra, 28(sp)                      # 4-byte Folded Reload
	addi	sp, sp, 32
	ret
.Lfunc_end15:
	.size	string_lessEqual, .Lfunc_end15-string_lessEqual
	.cfi_endproc
                                        # -- End function
	.globl	string_greater                  # -- Begin function string_greater
	.p2align	2
	.type	string_greater,@function
string_greater:                         # @string_greater
	.cfi_startproc
# %bb.0:
	addi	sp, sp, -32
	.cfi_def_cfa_offset 32
	sw	ra, 28(sp)                      # 4-byte Folded Spill
	sw	s0, 24(sp)                      # 4-byte Folded Spill
	.cfi_offset ra, -4
	.cfi_offset s0, -8
	addi	s0, sp, 32
	.cfi_def_cfa s0, 0
	sw	a0, -16(s0)
	sw	a1, -24(s0)
	lw	a0, -16(s0)
	lw	a1, -24(s0)
	call	strcmp@plt
	sgtz	a0, a0
	lw	s0, 24(sp)                      # 4-byte Folded Reload
	lw	ra, 28(sp)                      # 4-byte Folded Reload
	addi	sp, sp, 32
	ret
.Lfunc_end16:
	.size	string_greater, .Lfunc_end16-string_greater
	.cfi_endproc
                                        # -- End function
	.globl	string_greaterEqual             # -- Begin function string_greaterEqual
	.p2align	2
	.type	string_greaterEqual,@function
string_greaterEqual:                    # @string_greaterEqual
	.cfi_startproc
# %bb.0:
	addi	sp, sp, -32
	.cfi_def_cfa_offset 32
	sw	ra, 28(sp)                      # 4-byte Folded Spill
	sw	s0, 24(sp)                      # 4-byte Folded Spill
	.cfi_offset ra, -4
	.cfi_offset s0, -8
	addi	s0, sp, 32
	.cfi_def_cfa s0, 0
	sw	a0, -16(s0)
	sw	a1, -24(s0)
	lw	a0, -16(s0)
	lw	a1, -24(s0)
	call	strcmp@plt
	not	a0, a0
	srli	a0, a0, 31
	lw	s0, 24(sp)                      # 4-byte Folded Reload
	lw	ra, 28(sp)                      # 4-byte Folded Reload
	addi	sp, sp, 32
	ret
.Lfunc_end17:
	.size	string_greaterEqual, .Lfunc_end17-string_greaterEqual
	.cfi_endproc
                                        # -- End function
	.type	.L.str,@object                  # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"%s"
	.size	.L.str, 3

	.type	.L.str.1,@object                # @.str.1
.L.str.1:
	.asciz	"%s\n"
	.size	.L.str.1, 4

	.type	.L.str.2,@object                # @.str.2
.L.str.2:
	.asciz	"%d"
	.size	.L.str.2, 3

	.type	.L.str.3,@object                # @.str.3
.L.str.3:
	.asciz	"%d\n"
	.size	.L.str.3, 4

	.ident	"Homebrew clang version 13.0.0"
	.section	".note.GNU-stack","",@progbits
