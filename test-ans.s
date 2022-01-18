	.text
	.attribute	4, 16
	.attribute	5, "rv32i2p0_m2p0"
	.file	"llvm-test.ll"
	.globl	__init                          # -- Begin function __init
	.p2align	2
	.type	__init,@function
__init:                                 # @__init
	.cfi_startproc
# %bb.0:                                # %__init_entry
	ret
.Lfunc_end0:
	.size	__init, .Lfunc_end0-__init
	.cfi_endproc
                                        # -- End function
	.globl	main                            # -- Begin function main
	.p2align	2
	.type	main,@function
main:                                   # @main
	.cfi_startproc
# %bb.0:                                # %main_entry
	addi	sp, sp, -48
	.cfi_def_cfa_offset 48
	sw	ra, 44(sp)                      # 4-byte Folded Spill
	sw	s0, 40(sp)                      # 4-byte Folded Spill
	sw	s1, 36(sp)                      # 4-byte Folded Spill
	sw	s2, 32(sp)                      # 4-byte Folded Spill
	sw	s3, 28(sp)                      # 4-byte Folded Spill
	sw	s4, 24(sp)                      # 4-byte Folded Spill
	sw	s5, 20(sp)                      # 4-byte Folded Spill
	sw	s6, 16(sp)                      # 4-byte Folded Spill
	.cfi_offset ra, -4
	.cfi_offset s0, -8
	.cfi_offset s1, -12
	.cfi_offset s2, -16
	.cfi_offset s3, -20
	.cfi_offset s4, -24
	.cfi_offset s5, -28
	.cfi_offset s6, -32
	call	__init@plt
	call	getInt@plt
	lui	s3, %hi(fuckLLVM_n)
	sw	a0, %lo(fuckLLVM_n)(s3)
	call	getInt@plt
	lui	s1, %hi(fuckLLVM_p)
	sw	a0, %lo(fuckLLVM_p)(s1)
	call	getInt@plt
	lw	a1, %lo(fuckLLVM_p)(s1)
	lui	s6, %hi(fuckLLVM_k)
	sub	a1, a1, a0
	addi	a2, zero, 2
	sw	a0, %lo(fuckLLVM_k)(s6)
	blt	a1, a2, .LBB1_2
# %bb.1:                                # %ID7_if_true
	lui	a0, %hi(.LfuckLLVM_.str.0)
	addi	a0, a0, %lo(.LfuckLLVM_.str.0)
	call	print@plt
.LBB1_2:                                # %ID7_if_out
	lw	a0, %lo(fuckLLVM_p)(s1)
	lw	a1, %lo(fuckLLVM_k)(s6)
	sub	a0, a0, a1
	lui	s0, %hi(fuckLLVM_i)
	sw	a0, %lo(fuckLLVM_i)(s0)
	lui	a0, %hi(.LfuckLLVM_.str.1)
	addi	s2, a0, %lo(.LfuckLLVM_.str.1)
	lui	a0, %hi(.LfuckLLVM_.str.2)
	addi	s4, a0, %lo(.LfuckLLVM_.str.2)
	lui	a0, %hi(.LfuckLLVM_.str.3)
	addi	s5, a0, %lo(.LfuckLLVM_.str.3)
	j	.LBB1_6
.LBB1_3:                                # %ID26_if_true
                                        #   in Loop: Header=BB1_6 Depth=1
	mv	a0, s2
	call	print@plt
	lw	a0, %lo(fuckLLVM_i)(s0)
	call	toString@plt
	call	print@plt
	mv	a0, s4
.LBB1_4:                                # %ID23_if_out
                                        #   in Loop: Header=BB1_6 Depth=1
	call	print@plt
.LBB1_5:                                # %ID23_if_out
                                        #   in Loop: Header=BB1_6 Depth=1
	lw	a0, %lo(fuckLLVM_i)(s0)
	addi	a0, a0, 1
	sw	a0, %lo(fuckLLVM_i)(s0)
.LBB1_6:                                # %ID12_for_condition
                                        # =>This Inner Loop Header: Depth=1
	lw	a0, %lo(fuckLLVM_p)(s1)
	lw	a1, %lo(fuckLLVM_k)(s6)
	lw	a2, %lo(fuckLLVM_i)(s0)
	add	a0, a0, a1
	blt	a0, a2, .LBB1_12
# %bb.7:                                # %ID12_for_suite
                                        #   in Loop: Header=BB1_6 Depth=1
	lw	a1, %lo(fuckLLVM_i)(s0)
	mv	a0, zero
	blez	a1, .LBB1_9
# %bb.8:                                # %ID19_AndAnd_true
                                        #   in Loop: Header=BB1_6 Depth=1
	lw	a0, %lo(fuckLLVM_i)(s0)
	lw	a1, %lo(fuckLLVM_n)(s3)
	slt	a0, a1, a0
	xori	a0, a0, 1
.LBB1_9:                                # %ID19_AndAnd_out
                                        #   in Loop: Header=BB1_6 Depth=1
	beqz	a0, .LBB1_5
# %bb.10:                               # %ID23_if_true
                                        #   in Loop: Header=BB1_6 Depth=1
	lw	a0, %lo(fuckLLVM_i)(s0)
	lw	a1, %lo(fuckLLVM_p)(s1)
	beq	a0, a1, .LBB1_3
# %bb.11:                               # %ID26_if_false
                                        #   in Loop: Header=BB1_6 Depth=1
	lw	a0, %lo(fuckLLVM_i)(s0)
	call	printInt@plt
	mv	a0, s5
	j	.LBB1_4
.LBB1_12:                               # %ID12_for_out
	lui	a0, %hi(fuckLLVM_p)
	lw	a0, %lo(fuckLLVM_p)(a0)
	lui	a1, %hi(fuckLLVM_k)
	lw	a1, %lo(fuckLLVM_k)(a1)
	lui	a2, %hi(fuckLLVM_n)
	lw	a2, %lo(fuckLLVM_n)(a2)
	add	a0, a0, a1
	bge	a0, a2, .LBB1_14
# %bb.13:                               # %ID45_if_true
	lui	a0, %hi(.LfuckLLVM_.str.4)
	addi	a0, a0, %lo(.LfuckLLVM_.str.4)
	call	print@plt
.LBB1_14:                               # %ID45_if_out
	sw	zero, 12(sp)
	mv	a0, zero
	lw	s6, 16(sp)                      # 4-byte Folded Reload
	lw	s5, 20(sp)                      # 4-byte Folded Reload
	lw	s4, 24(sp)                      # 4-byte Folded Reload
	lw	s3, 28(sp)                      # 4-byte Folded Reload
	lw	s2, 32(sp)                      # 4-byte Folded Reload
	lw	s1, 36(sp)                      # 4-byte Folded Reload
	lw	s0, 40(sp)                      # 4-byte Folded Reload
	lw	ra, 44(sp)                      # 4-byte Folded Reload
	addi	sp, sp, 48
	ret
.Lfunc_end1:
	.size	main, .Lfunc_end1-main
	.cfi_endproc
                                        # -- End function
	.type	fuckLLVM_n,@object              # @fuckLLVM_n
	.section	.sbss,"aw",@nobits
	.globl	fuckLLVM_n
	.p2align	2
fuckLLVM_n:
	.word	0                               # 0x0
	.size	fuckLLVM_n, 4

	.type	fuckLLVM_p,@object              # @fuckLLVM_p
	.globl	fuckLLVM_p
	.p2align	2
fuckLLVM_p:
	.word	0                               # 0x0
	.size	fuckLLVM_p, 4

	.type	fuckLLVM_k,@object              # @fuckLLVM_k
	.globl	fuckLLVM_k
	.p2align	2
fuckLLVM_k:
	.word	0                               # 0x0
	.size	fuckLLVM_k, 4

	.type	fuckLLVM_i,@object              # @fuckLLVM_i
	.globl	fuckLLVM_i
	.p2align	2
fuckLLVM_i:
	.word	0                               # 0x0
	.size	fuckLLVM_i, 4

	.type	fuckLLVM_a,@object              # @fuckLLVM_a
	.globl	fuckLLVM_a
	.p2align	2
fuckLLVM_a:
	.word	0
	.size	fuckLLVM_a, 4

	.type	.LfuckLLVM_.str.0,@object       # @fuckLLVM_.str.0
	.section	.rodata,"a",@progbits
.LfuckLLVM_.str.0:
	.asciz	"<< "
	.size	.LfuckLLVM_.str.0, 4

	.type	.LfuckLLVM_.str.1,@object       # @fuckLLVM_.str.1
.LfuckLLVM_.str.1:
	.asciz	"("
	.size	.LfuckLLVM_.str.1, 2

	.type	.LfuckLLVM_.str.2,@object       # @fuckLLVM_.str.2
.LfuckLLVM_.str.2:
	.asciz	") "
	.size	.LfuckLLVM_.str.2, 3

	.type	.LfuckLLVM_.str.3,@object       # @fuckLLVM_.str.3
.LfuckLLVM_.str.3:
	.asciz	" "
	.size	.LfuckLLVM_.str.3, 2

	.type	.LfuckLLVM_.str.4,@object       # @fuckLLVM_.str.4
.LfuckLLVM_.str.4:
	.asciz	">> "
	.size	.LfuckLLVM_.str.4, 4

	.type	.LfuckLLVM_.str.5,@object       # @fuckLLVM_.str.5
.LfuckLLVM_.str.5:
	.byte	10
	.size	.LfuckLLVM_.str.5, 1

	.section	".note.GNU-stack","",@progbits
