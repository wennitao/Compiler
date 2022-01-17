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
	addi	sp, sp, -32
	.cfi_def_cfa_offset 32
	sw	ra, 28(sp)                      # 4-byte Folded Spill
	.cfi_offset ra, -4
	call	__init@plt
	addi	a0, zero, 2
	sw	a0, 16(sp)
	addi	a0, zero, 3
	sw	a0, 20(sp)
	addi	a0, zero, 4
	sw	a0, 12(sp)
	addi	a0, zero, 4
	call	printlnInt@plt
	sw	zero, 24(sp)
	lw	a0, 24(sp)
	lw	ra, 28(sp)                      # 4-byte Folded Reload
	addi	sp, sp, 32
	ret
.Lfunc_end1:
	.size	main, .Lfunc_end1-main
	.cfi_endproc
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
