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
	.globl	TA                              # -- Begin function TA
	.p2align	2
	.type	TA,@function
TA:                                     # @TA
	.cfi_startproc
# %bb.0:                                # %TA
	addi	sp, sp, -16
	.cfi_def_cfa_offset 16
	sw	a0, 12(sp)
	addi	sp, sp, 16
	ret
.Lfunc_end1:
	.size	TA, .Lfunc_end1-TA
	.cfi_endproc
                                        # -- End function
	.globl	work                            # -- Begin function work
	.p2align	2
	.type	work,@function
work:                                   # @work
	.cfi_startproc
# %bb.0:                                # %work_entry
	addi	sp, sp, -16
	.cfi_def_cfa_offset 16
	sw	ra, 12(sp)                      # 4-byte Folded Spill
	.cfi_offset ra, -4
	sw	a0, 8(sp)
	sw	a1, 4(sp)
	lw	a0, 4(a1)
	call	printlnInt@plt
	lw	a0, 4(sp)
	lw	a0, 4(a0)
	addi	a1, zero, 100
	blt	a1, a0, .LBB2_2
# %bb.1:                                # %work_ID12_if_true
	lw	a0, 8(sp)
	lui	a1, %hi(.LfuckLLVM_.str.0)
	addi	a1, a1, %lo(.LfuckLLVM_.str.0)
	call	string_add@plt
	lw	a1, 4(sp)
	lw	a1, 0(a1)
	call	string_add@plt
	lui	a1, %hi(.LfuckLLVM_.str.1)
	addi	a1, a1, %lo(.LfuckLLVM_.str.1)
	j	.LBB2_3
.LBB2_2:                                # %work_ID12_if_false
	lw	a0, 8(sp)
	lui	a1, %hi(.LfuckLLVM_.str.2)
	addi	a1, a1, %lo(.LfuckLLVM_.str.2)
	call	string_add@plt
	lw	a1, 4(sp)
	lw	a1, 0(a1)
	call	string_add@plt
	lui	a1, %hi(.LfuckLLVM_.str.3)
	addi	a1, a1, %lo(.LfuckLLVM_.str.3)
.LBB2_3:                                # %work_ID12_if_out
	call	string_add@plt
	call	println@plt
	lw	a0, 4(sp)
	lw	a1, 4(a0)
	lui	a2, %hi(fuckLLVM_work_anger)
	lw	a2, %lo(fuckLLVM_work_anger)(a2)
	add	a1, a1, a2
	sw	a1, 4(a0)
	lw	ra, 12(sp)                      # 4-byte Folded Reload
	addi	sp, sp, 16
	ret
.Lfunc_end2:
	.size	work, .Lfunc_end2-work
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
	.cfi_offset ra, -4
	.cfi_offset s0, -8
	call	__init@plt
	sw	zero, 20(sp)
	addi	a0, zero, 12
	mv	a1, zero
	call	malloc@plt
	mv	s0, a0
	call	TA@plt
	sw	s0, 16(sp)
	lui	a0, %hi(.LfuckLLVM_.str.4)
	addi	a0, a0, %lo(.LfuckLLVM_.str.4)
	sw	a0, 0(s0)
	lw	a0, 16(sp)
	sw	zero, 4(a0)
	addi	a0, zero, 12
	mv	a1, zero
	call	malloc@plt
	mv	s0, a0
	call	TA@plt
	sw	s0, 12(sp)
	lui	a0, %hi(.LfuckLLVM_.str.5)
	addi	a0, a0, %lo(.LfuckLLVM_.str.5)
	sw	a0, 0(s0)
	lw	a0, 12(sp)
	lui	a1, %hi(fuckLLVM_init_anger)
	lw	a1, %lo(fuckLLVM_init_anger)(a1)
	sw	a1, 4(a0)
	lw	a1, 16(sp)
	lui	a0, %hi(.LfuckLLVM_.str.6)
	addi	a0, a0, %lo(.LfuckLLVM_.str.6)
	call	work@plt
	lw	a1, 12(sp)
	lui	a0, %hi(.LfuckLLVM_.str.7)
	addi	a0, a0, %lo(.LfuckLLVM_.str.7)
	call	work@plt
	lw	a1, 12(sp)
	lui	a0, %hi(.LfuckLLVM_.str.8)
	addi	a0, a0, %lo(.LfuckLLVM_.str.8)
	call	work@plt
	sw	zero, 20(sp)
	mv	a0, zero
	lw	s0, 24(sp)                      # 4-byte Folded Reload
	lw	ra, 28(sp)                      # 4-byte Folded Reload
	addi	sp, sp, 32
	ret
.Lfunc_end3:
	.size	main, .Lfunc_end3-main
	.cfi_endproc
                                        # -- End function
	.type	fuckLLVM_init_anger,@object     # @fuckLLVM_init_anger
	.section	.sdata,"aw",@progbits
	.globl	fuckLLVM_init_anger
	.p2align	2
fuckLLVM_init_anger:
	.word	100                             # 0x64
	.size	fuckLLVM_init_anger, 4

	.type	fuckLLVM_work_anger,@object     # @fuckLLVM_work_anger
	.globl	fuckLLVM_work_anger
	.p2align	2
fuckLLVM_work_anger:
	.word	10                              # 0xa
	.size	fuckLLVM_work_anger, 4

	.type	.LfuckLLVM_.str.0,@object       # @fuckLLVM_.str.0
	.section	.rodata,"a",@progbits
.LfuckLLVM_.str.0:
	.asciz	", "
	.size	.LfuckLLVM_.str.0, 3

	.type	.LfuckLLVM_.str.1,@object       # @fuckLLVM_.str.1
	.p2align	4
.LfuckLLVM_.str.1:
	.asciz	" enjoys this work. XD"
	.size	.LfuckLLVM_.str.1, 22

	.type	.LfuckLLVM_.str.2,@object       # @fuckLLVM_.str.2
.LfuckLLVM_.str.2:
	.asciz	", "
	.size	.LfuckLLVM_.str.2, 3

	.type	.LfuckLLVM_.str.3,@object       # @fuckLLVM_.str.3
	.p2align	4
.LfuckLLVM_.str.3:
	.asciz	" wants to give up!!!!!"
	.size	.LfuckLLVM_.str.3, 23

	.type	.LfuckLLVM_.str.4,@object       # @fuckLLVM_.str.4
.LfuckLLVM_.str.4:
	.asciz	"the leading TA"
	.size	.LfuckLLVM_.str.4, 15

	.type	.LfuckLLVM_.str.5,@object       # @fuckLLVM_.str.5
.LfuckLLVM_.str.5:
	.asciz	"the striking TA"
	.size	.LfuckLLVM_.str.5, 16

	.type	.LfuckLLVM_.str.6,@object       # @fuckLLVM_.str.6
.LfuckLLVM_.str.6:
	.asciz	"MR"
	.size	.LfuckLLVM_.str.6, 3

	.type	.LfuckLLVM_.str.7,@object       # @fuckLLVM_.str.7
.LfuckLLVM_.str.7:
	.asciz	"Mars"
	.size	.LfuckLLVM_.str.7, 5

	.type	.LfuckLLVM_.str.8,@object       # @fuckLLVM_.str.8
.LfuckLLVM_.str.8:
	.asciz	"Mars"
	.size	.LfuckLLVM_.str.8, 5

	.section	".note.GNU-stack","",@progbits
