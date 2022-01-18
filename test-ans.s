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
	addi	sp, sp, -16
	.cfi_def_cfa_offset 16
	sw	ra, 12(sp)                      # 4-byte Folded Spill
	.cfi_offset ra, -4
	addi	a0, zero, 20
	mv	a1, zero
	call	malloc@plt
	addi	a1, zero, 4
	sw	a1, 0(a0)
	addi	a0, a0, 4
	lui	a1, %hi(fuckLLVM_a)
	sw	a0, %lo(fuckLLVM_a)(a1)
	lw	ra, 12(sp)                      # 4-byte Folded Reload
	addi	sp, sp, 16
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
	addi	sp, sp, -32
	.cfi_def_cfa_offset 32
	sw	ra, 28(sp)                      # 4-byte Folded Spill
	sw	s0, 24(sp)                      # 4-byte Folded Spill
	sw	s1, 20(sp)                      # 4-byte Folded Spill
	.cfi_offset ra, -4
	.cfi_offset s0, -8
	.cfi_offset s1, -12
	call	__init@plt
	lui	s0, %hi(fuckLLVM_a)
	lw	a0, %lo(fuckLLVM_a)(s0)
	sw	zero, 16(sp)
	lw	s1, -4(a0)
	srli	a1, s1, 30
	slli	a2, s1, 2
	addi	a0, a2, 4
	sltu	a2, a0, a2
	add	a1, a1, a2
	call	malloc@plt
	sw	s1, 0(a0)
	addi	a0, a0, 4
	sw	a0, 12(sp)
	sw	zero, 8(sp)
.LBB1_1:                                # %ID14_for_condition
                                        # =>This Inner Loop Header: Depth=1
	lw	a0, %lo(fuckLLVM_a)(s0)
	lw	a1, 8(sp)
	lw	a0, -4(a0)
	bge	a1, a0, .LBB1_3
# %bb.2:                                # %ID14_for_suite
                                        #   in Loop: Header=BB1_1 Depth=1
	lw	a0, 8(sp)
	lw	a1, %lo(fuckLLVM_a)(s0)
	slli	a0, a0, 2
	add	a0, a1, a0
	sw	zero, 0(a0)
	lw	a0, 8(sp)
	lw	a1, 12(sp)
	slli	a0, a0, 2
	add	s1, a1, a0
	call	getInt@plt
	sw	a0, 0(s1)
	lw	a0, 8(sp)
	lw	a1, 12(sp)
	slli	a0, a0, 2
	add	a0, a1, a0
	lw	a0, 0(a0)
	call	printlnInt@plt
	lw	a0, 8(sp)
	addi	a0, a0, 1
	sw	a0, 8(sp)
	j	.LBB1_1
.LBB1_3:                                # %ID14_for_out
	sw	zero, 8(sp)
	lui	s0, %hi(fuckLLVM_a)
.LBB1_4:                                # %ID34_for_condition
                                        # =>This Inner Loop Header: Depth=1
	lw	a0, %lo(fuckLLVM_a)(s0)
	lw	a1, 8(sp)
	lw	a0, -4(a0)
	bge	a1, a0, .LBB1_6
# %bb.5:                                # %ID34_for_suite
                                        #   in Loop: Header=BB1_4 Depth=1
	lw	a0, 8(sp)
	lw	a1, %lo(fuckLLVM_a)(s0)
	slli	a0, a0, 2
	add	a0, a1, a0
	lw	a0, 0(a0)
	call	toString@plt
	call	print@plt
	lw	a0, 8(sp)
	addi	a0, a0, 1
	sw	a0, 8(sp)
	j	.LBB1_4
.LBB1_6:                                # %ID34_for_out
	lui	a0, %hi(.LfuckLLVM_.str.0)
	addi	a0, a0, %lo(.LfuckLLVM_.str.0)
	call	println@plt
	lw	a0, 12(sp)
	lui	s0, %hi(fuckLLVM_a)
	sw	a0, %lo(fuckLLVM_a)(s0)
	sw	zero, 8(sp)
.LBB1_7:                                # %ID53_for_condition
                                        # =>This Inner Loop Header: Depth=1
	lw	a0, %lo(fuckLLVM_a)(s0)
	lw	a1, 8(sp)
	lw	a0, -4(a0)
	bge	a1, a0, .LBB1_9
# %bb.8:                                # %ID53_for_suite
                                        #   in Loop: Header=BB1_7 Depth=1
	lw	a0, 8(sp)
	lw	a1, %lo(fuckLLVM_a)(s0)
	slli	a0, a0, 2
	add	a0, a1, a0
	lw	a0, 0(a0)
	call	toString@plt
	call	print@plt
	lw	a0, 8(sp)
	addi	a0, a0, 1
	sw	a0, 8(sp)
	j	.LBB1_7
.LBB1_9:                                # %ID53_for_out
	sw	zero, 16(sp)
	lw	a0, 16(sp)
	lw	s1, 20(sp)                      # 4-byte Folded Reload
	lw	s0, 24(sp)                      # 4-byte Folded Reload
	lw	ra, 28(sp)                      # 4-byte Folded Reload
	addi	sp, sp, 32
	ret
.Lfunc_end1:
	.size	main, .Lfunc_end1-main
	.cfi_endproc
                                        # -- End function
	.type	fuckLLVM_a,@object              # @fuckLLVM_a
	.section	.sbss,"aw",@nobits
	.globl	fuckLLVM_a
	.p2align	2
fuckLLVM_a:
	.word	0
	.size	fuckLLVM_a, 4

	.type	.LfuckLLVM_.str.0,@object       # @fuckLLVM_.str.0
	.section	.rodata,"a",@progbits
.LfuckLLVM_.str.0:
	.zero	1
	.size	.LfuckLLVM_.str.0, 1

	.section	".note.GNU-stack","",@progbits
