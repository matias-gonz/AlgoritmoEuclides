	.file	1 "gcd.c"
	.section .mdebug.abi32
	.previous
	.nan	legacy
	.module	fp=xx
	.module	nooddspreg
	.abicalls
	.text
	.align	2
	.globl	euclides
	.set	nomips16
	.set	nomicromips
	.ent	euclides
	.type	euclides, @function
euclides:
	.frame	$fp,48,$31		# vars= 8, regs= 3/0, args= 16, gp= 8
	.mask	0xc0010000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.cpload	$25
	.set	nomacro
	addiu	$sp,$sp,-48
	sw	$31,44($sp)
	sw	$fp,40($sp)
	sw	$16,36($sp)
	move	$fp,$sp
	.cprestore	16
	sw	$4,48($fp)
	sw	$5,52($fp)
	sw	$0,24($fp)
	b	$L2
	nop

$L5:
	lw	$3,24($fp)
	move	$2,$3
	sll	$2,$2,1
	addu	$2,$2,$3
	sll	$2,$2,2
	move	$3,$2
	lw	$2,48($fp)
	addu	$16,$2,$3
	lw	$3,24($fp)
	move	$2,$3
	sll	$2,$2,1
	addu	$2,$2,$3
	sll	$2,$2,2
	move	$3,$2
	lw	$2,48($fp)
	addu	$2,$2,$3
	lw	$2,0($2)
	bgez	$2,$L3
	nop

	subu	$2,$0,$2
$L3:
	move	$4,$2
	lw	$3,24($fp)
	move	$2,$3
	sll	$2,$2,1
	addu	$2,$2,$3
	sll	$2,$2,2
	move	$3,$2
	lw	$2,48($fp)
	addu	$2,$2,$3
	lw	$2,4($2)
	bgez	$2,$L4
	nop

	subu	$2,$0,$2
$L4:
	move	$5,$2
	lw	$2,%got(euclides_)($28)
	addiu	$2,$2,%lo(euclides_)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,euclides_
1:	jalr	$25
	nop

	lw	$28,16($fp)
	sw	$2,8($16)
	lw	$2,24($fp)
	addiu	$2,$2,1
	sw	$2,24($fp)
$L2:
	lw	$3,24($fp)
	lw	$2,52($fp)
	sltu	$2,$3,$2
	bne	$2,$0,$L5
	nop

	nop
	move	$sp,$fp
	lw	$31,44($sp)
	lw	$fp,40($sp)
	lw	$16,36($sp)
	addiu	$sp,$sp,48
	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	euclides
	.size	euclides, .-euclides
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	euclides_
	.type	euclides_, @function
euclides_:
	.frame	$fp,32,$31		# vars= 16, regs= 1/0, args= 0, gp= 8
	.mask	0x40000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$sp,$sp,-32
	sw	$fp,28($sp)
	move	$fp,$sp
	sw	$4,32($fp)
	sw	$5,36($fp)
	lw	$2,36($fp)
	lw	$4,32($fp)
	lw	$3,32($fp)
	slt	$4,$4,$2
	movz	$2,$3,$4
	sw	$2,8($fp)
	lw	$2,36($fp)
	lw	$4,32($fp)
	lw	$3,32($fp)
	slt	$4,$2,$4
	movz	$2,$3,$4
	sw	$2,12($fp)
$L9:
	lw	$3,8($fp)
	lw	$2,12($fp)
	teq	$2,$0,7
	div	$0,$3,$2
	mfhi	$2
	sw	$2,16($fp)
	lw	$2,16($fp)
	beq	$2,$0,$L12
	nop

	lw	$2,12($fp)
	sw	$2,8($fp)
	lw	$2,16($fp)
	sw	$2,12($fp)
	b	$L9
	nop

$L12:
	nop
	lw	$2,12($fp)
	move	$sp,$fp
	lw	$fp,28($sp)
	addiu	$sp,$sp,32
	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	euclides_
	.size	euclides_, .-euclides_
	.ident	"GCC: (Debian 6.3.0-18+deb9u1) 6.3.0 20170516"
