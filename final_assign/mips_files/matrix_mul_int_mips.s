	.file	1 "matrix_mul_int_mips.c"
	.section .mdebug.abi32
	.previous
	.nan	legacy
	.module	fp=xx
	.module	nooddspreg
	.abicalls
	.text
	.rdata
	.align	2
$LC0:
	.ascii	"%d\011\000"
	.text
	.align	2
	.globl	main
	.set	nomips16
	.set	nomicromips
	.ent	main
	.type	main, @function
main:
	.frame	$fp,248,$31		# vars= 184, regs= 10/0, args= 16, gp= 8
	.mask	0xc0ff0000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$sp,$sp,-248
	sw	$31,244($sp)
	sw	$fp,240($sp)
	sw	$23,236($sp)
	sw	$22,232($sp)
	sw	$21,228($sp)
	sw	$20,224($sp)
	sw	$19,220($sp)
	sw	$18,216($sp)
	sw	$17,212($sp)
	sw	$16,208($sp)
	move	$fp,$sp
	lui	$28,%hi(__gnu_local_gp)
	addiu	$28,$28,%lo(__gnu_local_gp)
	.cprestore	16
	lw	$2,%got(__stack_chk_guard)($28)
	lw	$2,0($2)
	sw	$2,204($fp)
	move	$2,$sp
	sw	$2,28($fp)
	li	$2,3			# 0x3
	sw	$2,144($fp)
	lw	$3,144($fp)
	lw	$2,144($fp)
	sw	$2,32($fp)
	addiu	$2,$3,-1
	sw	$2,160($fp)
	move	$2,$3
	move	$7,$2
	move	$6,$0
	srl	$2,$7,27
	sll	$4,$6,5
	or	$4,$2,$4
	sll	$5,$7,5
	move	$5,$3
	move	$2,$5
	sll	$3,$2,2
	sw	$3,36($fp)
	lw	$6,32($fp)
	addiu	$2,$6,-1
	sw	$2,164($fp)
	move	$2,$5
	move	$13,$2
	move	$12,$0
	move	$2,$6
	move	$9,$2
	move	$8,$0
	mul	$3,$12,$9
	mul	$2,$8,$13
	addu	$4,$3,$2
	multu	$13,$9
	mflo	$3
	mfhi	$2
	addu	$4,$4,$2
	move	$2,$4
	srl	$4,$3,27
	sll	$10,$2,5
	or	$10,$4,$10
	sll	$11,$3,5
	move	$2,$5
	move	$17,$2
	move	$16,$0
	move	$2,$6
	move	$25,$2
	move	$24,$0
	mul	$3,$16,$25
	mul	$2,$24,$17
	addu	$4,$3,$2
	multu	$17,$25
	mflo	$3
	mfhi	$2
	addu	$4,$4,$2
	move	$2,$4
	srl	$4,$3,27
	sll	$14,$2,5
	or	$14,$4,$14
	sll	$15,$3,5
	move	$3,$5
	move	$2,$6
	mul	$2,$3,$2
	sll	$2,$2,2
	addiu	$2,$2,7
	srl	$2,$2,3
	sll	$2,$2,3
	subu	$sp,$sp,$2
	addiu	$2,$sp,16
	addiu	$2,$2,3
	srl	$2,$2,2
	sll	$2,$2,2
	sw	$2,168($fp)
	lw	$5,144($fp)
	lw	$6,144($fp)
	addiu	$2,$5,-1
	sw	$2,172($fp)
	move	$2,$5
	move	$21,$2
	move	$20,$0
	srl	$2,$21,27
	sll	$18,$20,5
	or	$18,$2,$18
	sll	$19,$21,5
	move	$2,$5
	sll	$7,$2,2
	addiu	$2,$6,-1
	sw	$2,176($fp)
	move	$2,$5
	sw	$2,108($fp)
	sw	$0,104($fp)
	move	$2,$6
	sw	$2,100($fp)
	sw	$0,96($fp)
	lw	$9,108($fp)
	lw	$8,104($fp)
	move	$2,$8
	lw	$11,100($fp)
	lw	$10,96($fp)
	move	$3,$11
	mul	$3,$2,$3
	move	$2,$10
	move	$4,$9
	mul	$2,$2,$4
	addu	$4,$3,$2
	move	$2,$9
	move	$3,$11
	multu	$2,$3
	mflo	$3
	mfhi	$2
	addu	$4,$4,$2
	move	$2,$4
	srl	$4,$3,27
	sll	$22,$2,5
	or	$22,$4,$22
	sll	$23,$3,5
	move	$2,$5
	sw	$2,92($fp)
	sw	$0,88($fp)
	move	$2,$6
	sw	$2,84($fp)
	sw	$0,80($fp)
	lw	$9,92($fp)
	lw	$8,88($fp)
	move	$2,$8
	lw	$11,84($fp)
	lw	$10,80($fp)
	move	$3,$11
	mul	$3,$2,$3
	move	$2,$10
	move	$4,$9
	mul	$2,$2,$4
	addu	$4,$3,$2
	move	$2,$9
	move	$3,$11
	multu	$2,$3
	mflo	$3
	mfhi	$2
	addu	$4,$4,$2
	move	$2,$4
	srl	$4,$3,27
	sll	$8,$2,5
	sw	$8,136($fp)
	lw	$8,136($fp)
	or	$4,$4,$8
	sw	$4,136($fp)
	sll	$2,$3,5
	sw	$2,140($fp)
	move	$3,$5
	move	$2,$6
	mul	$2,$3,$2
	sll	$2,$2,2
	addiu	$2,$2,7
	srl	$2,$2,3
	sll	$2,$2,3
	subu	$sp,$sp,$2
	addiu	$2,$sp,16
	addiu	$2,$2,3
	srl	$2,$2,2
	sll	$2,$2,2
	sw	$2,180($fp)
	lw	$4,144($fp)
	lw	$5,144($fp)
	addiu	$2,$4,-1
	sw	$2,184($fp)
	move	$2,$4
	sw	$2,76($fp)
	sw	$0,72($fp)
	lw	$9,76($fp)
	lw	$8,72($fp)
	move	$2,$9
	srl	$2,$2,27
	move	$3,$8
	sll	$3,$3,5
	sw	$3,128($fp)
	lw	$3,128($fp)
	or	$2,$2,$3
	sw	$2,128($fp)
	move	$2,$9
	sll	$2,$2,5
	sw	$2,132($fp)
	move	$2,$4
	sll	$16,$2,2
	addiu	$2,$5,-1
	sw	$2,188($fp)
	move	$2,$4
	sw	$2,68($fp)
	sw	$0,64($fp)
	move	$2,$5
	sw	$2,60($fp)
	sw	$0,56($fp)
	lw	$9,68($fp)
	lw	$8,64($fp)
	move	$2,$8
	lw	$11,60($fp)
	lw	$10,56($fp)
	move	$3,$11
	mul	$3,$2,$3
	move	$2,$10
	move	$6,$9
	mul	$2,$2,$6
	addu	$6,$3,$2
	move	$2,$9
	move	$3,$11
	multu	$2,$3
	mflo	$3
	mfhi	$2
	addu	$6,$6,$2
	move	$2,$6
	srl	$6,$3,27
	sll	$8,$2,5
	sw	$8,120($fp)
	lw	$8,120($fp)
	or	$6,$6,$8
	sw	$6,120($fp)
	sll	$2,$3,5
	sw	$2,124($fp)
	move	$2,$4
	sw	$2,52($fp)
	sw	$0,48($fp)
	move	$2,$5
	sw	$2,44($fp)
	sw	$0,40($fp)
	lw	$9,52($fp)
	lw	$8,48($fp)
	move	$2,$8
	lw	$11,44($fp)
	lw	$10,40($fp)
	move	$3,$11
	mul	$3,$2,$3
	move	$2,$10
	move	$6,$9
	mul	$2,$2,$6
	addu	$6,$3,$2
	move	$2,$9
	move	$3,$11
	multu	$2,$3
	mflo	$3
	mfhi	$2
	addu	$6,$6,$2
	move	$2,$6
	srl	$6,$3,27
	sll	$8,$2,5
	sw	$8,112($fp)
	lw	$8,112($fp)
	or	$6,$6,$8
	sw	$6,112($fp)
	sll	$2,$3,5
	sw	$2,116($fp)
	move	$3,$4
	move	$2,$5
	mul	$2,$3,$2
	sll	$2,$2,2
	addiu	$2,$2,7
	srl	$2,$2,3
	sll	$2,$2,3
	subu	$sp,$sp,$2
	addiu	$2,$sp,16
	addiu	$2,$2,3
	srl	$2,$2,2
	sll	$2,$2,2
	sw	$2,192($fp)
	lw	$2,144($fp)
	sw	$2,196($fp)
	lw	$2,144($fp)
	sw	$2,200($fp)
	sw	$0,156($fp)
	.option	pic0
	b	$L2
	nop

	.option	pic2
$L5:
	sw	$0,152($fp)
	.option	pic0
	b	$L3
	nop

	.option	pic2
$L4:
	lw	$2,36($fp)
	srl	$5,$2,2
	lw	$3,156($fp)
	lw	$2,152($fp)
	addu	$3,$3,$2
	lw	$4,168($fp)
	lw	$2,156($fp)
	mul	$5,$5,$2
	lw	$2,152($fp)
	addu	$2,$5,$2
	sll	$2,$2,2
	addu	$2,$4,$2
	sw	$3,0($2)
	lw	$2,152($fp)
	addiu	$2,$2,1
	sw	$2,152($fp)
$L3:
	lw	$3,152($fp)
	lw	$2,200($fp)
	slt	$2,$3,$2
	bne	$2,$0,$L4
	nop

	lw	$2,156($fp)
	addiu	$2,$2,1
	sw	$2,156($fp)
$L2:
	lw	$3,156($fp)
	lw	$2,196($fp)
	slt	$2,$3,$2
	bne	$2,$0,$L5
	nop

	sw	$0,156($fp)
	.option	pic0
	b	$L6
	nop

	.option	pic2
$L9:
	sw	$0,152($fp)
	.option	pic0
	b	$L7
	nop

	.option	pic2
$L8:
	lw	$2,156($fp)
	addiu	$3,$2,10
	lw	$2,152($fp)
	addiu	$2,$2,-10
	srl	$5,$7,2
	mul	$3,$3,$2
	lw	$4,180($fp)
	lw	$2,156($fp)
	mul	$5,$5,$2
	lw	$2,152($fp)
	addu	$2,$5,$2
	sll	$2,$2,2
	addu	$2,$4,$2
	sw	$3,0($2)
	lw	$2,152($fp)
	addiu	$2,$2,1
	sw	$2,152($fp)
$L7:
	lw	$3,152($fp)
	lw	$2,200($fp)
	slt	$2,$3,$2
	bne	$2,$0,$L8
	nop

	lw	$2,156($fp)
	addiu	$2,$2,1
	sw	$2,156($fp)
$L6:
	lw	$3,156($fp)
	lw	$2,196($fp)
	slt	$2,$3,$2
	bne	$2,$0,$L9
	nop

	sw	$0,156($fp)
	.option	pic0
	b	$L10
	nop

	.option	pic2
$L15:
	sw	$0,152($fp)
	.option	pic0
	b	$L11
	nop

	.option	pic2
$L14:
	srl	$4,$16,2
	lw	$3,192($fp)
	lw	$2,156($fp)
	mul	$4,$4,$2
	lw	$2,152($fp)
	addu	$2,$4,$2
	sll	$2,$2,2
	addu	$2,$3,$2
	sw	$0,0($2)
	sw	$0,148($fp)
	.option	pic0
	b	$L12
	nop

	.option	pic2
$L13:
	srl	$4,$16,2
	lw	$3,192($fp)
	lw	$2,156($fp)
	mul	$4,$4,$2
	lw	$2,152($fp)
	addu	$2,$4,$2
	sll	$2,$2,2
	addu	$2,$3,$2
	lw	$3,0($2)
	lw	$2,36($fp)
	srl	$5,$2,2
	lw	$4,168($fp)
	lw	$2,156($fp)
	mul	$5,$5,$2
	lw	$2,148($fp)
	addu	$2,$5,$2
	sll	$2,$2,2
	addu	$2,$4,$2
	lw	$4,0($2)
	srl	$6,$7,2
	lw	$5,180($fp)
	lw	$2,148($fp)
	mul	$6,$6,$2
	lw	$2,152($fp)
	addu	$2,$6,$2
	sll	$2,$2,2
	addu	$2,$5,$2
	lw	$2,0($2)
	mul	$2,$4,$2
	srl	$5,$16,2
	addu	$3,$3,$2
	lw	$4,192($fp)
	lw	$2,156($fp)
	mul	$5,$5,$2
	lw	$2,152($fp)
	addu	$2,$5,$2
	sll	$2,$2,2
	addu	$2,$4,$2
	sw	$3,0($2)
	lw	$2,148($fp)
	addiu	$2,$2,1
	sw	$2,148($fp)
$L12:
	lw	$3,148($fp)
	lw	$2,200($fp)
	slt	$2,$3,$2
	bne	$2,$0,$L13
	nop

	lw	$2,152($fp)
	addiu	$2,$2,1
	sw	$2,152($fp)
$L11:
	lw	$3,152($fp)
	lw	$2,200($fp)
	slt	$2,$3,$2
	bne	$2,$0,$L14
	nop

	lw	$2,156($fp)
	addiu	$2,$2,1
	sw	$2,156($fp)
$L10:
	lw	$3,156($fp)
	lw	$2,196($fp)
	slt	$2,$3,$2
	bne	$2,$0,$L15
	nop

	sw	$0,156($fp)
	.option	pic0
	b	$L16
	nop

	.option	pic2
$L19:
	sw	$0,152($fp)
	.option	pic0
	b	$L17
	nop

	.option	pic2
$L18:
	srl	$4,$16,2
	lw	$3,192($fp)
	lw	$2,156($fp)
	mul	$4,$4,$2
	lw	$2,152($fp)
	addu	$2,$4,$2
	sll	$2,$2,2
	addu	$2,$3,$2
	lw	$2,0($2)
	move	$5,$2
	lui	$2,%hi($LC0)
	addiu	$4,$2,%lo($LC0)
	lw	$2,%call16(printf)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,printf
1:	jalr	$25
	nop

	lw	$28,16($fp)
	lw	$2,152($fp)
	addiu	$2,$2,1
	sw	$2,152($fp)
$L17:
	lw	$3,152($fp)
	lw	$2,200($fp)
	slt	$2,$3,$2
	bne	$2,$0,$L18
	nop

	li	$4,10			# 0xa
	lw	$2,%call16(putchar)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,putchar
1:	jalr	$25
	nop

	lw	$28,16($fp)
	lw	$2,156($fp)
	addiu	$2,$2,1
	sw	$2,156($fp)
$L16:
	lw	$3,156($fp)
	lw	$2,196($fp)
	slt	$2,$3,$2
	bne	$2,$0,$L19
	nop

	move	$2,$0
	lw	$sp,28($fp)
	move	$4,$2
	lw	$2,%got(__stack_chk_guard)($28)
	lw	$3,204($fp)
	lw	$2,0($2)
	beq	$3,$2,$L21
	nop

	lw	$2,%call16(__stack_chk_fail)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,__stack_chk_fail
1:	jalr	$25
	nop

$L21:
	move	$2,$4
	move	$sp,$fp
	lw	$31,244($sp)
	lw	$fp,240($sp)
	lw	$23,236($sp)
	lw	$22,232($sp)
	lw	$21,228($sp)
	lw	$20,224($sp)
	lw	$19,220($sp)
	lw	$18,216($sp)
	lw	$17,212($sp)
	lw	$16,208($sp)
	addiu	$sp,$sp,248
	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	main
	.size	main, .-main
	.ident	"GCC: (Ubuntu 9.4.0-1ubuntu1~20.04) 9.4.0"
