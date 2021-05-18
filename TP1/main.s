	.file	1 "main.c"
	.section .mdebug.abi32
	.previous
	.nan	legacy
	.module	fp=xx
	.module	nooddspreg
	.abicalls
	.rdata
	.align	2
$LC0:
	.ascii	"version\000"
	.align	2
$LC1:
	.ascii	"help\000"
	.align	2
$LC2:
	.ascii	"input\000"
	.align	2
$LC3:
	.ascii	"output\000"
	.section	.data.rel.ro.local,"aw",@progbits
	.align	2
	.type	longOpts, @object
	.size	longOpts, 80
longOpts:
	.word	$LC0
	.word	0
	.word	0
	.word	86
	.word	$LC1
	.word	0
	.word	0
	.word	104
	.word	$LC2
	.word	1
	.word	0
	.word	105
	.word	$LC3
	.word	1
	.word	0
	.word	111
	.word	0
	.word	0
	.word	0
	.word	0
	.rdata
	.align	2
$LC4:
	.ascii	"%i %i\012\000"
	.align	2
$LC5:
	.ascii	"Error realloc\000"
	.align	2
$LC6:
	.ascii	"GCD(%i,%i) = %i\012\000"
	.text
	.align	2
	.globl	main
	.set	nomips16
	.set	nomicromips
	.ent	main
	.type	main, @function
main:
	.frame	$fp,80,$31		# vars= 40, regs= 2/0, args= 24, gp= 8
	.mask	0xc0000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.cpload	$25
	.set	nomacro
	addiu	$sp,$sp,-80
	sw	$31,76($sp)
	sw	$fp,72($sp)
	move	$fp,$sp
	.cprestore	24
	sw	$4,80($fp)
	sw	$5,84($fp)
	addiu	$2,$fp,52
	move	$6,$2
	lw	$5,84($fp)
	lw	$4,80($fp)
	lw	$2,%call16(parse_args)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,parse_args
1:	jalr	$25
	nop

	lw	$28,24($fp)
	sw	$0,32($fp)
	sw	$0,36($fp)
	sw	$0,40($fp)
	lw	$2,52($fp)
	beq	$2,$0,$L2
	nop

	lw	$3,52($fp)
	addiu	$4,$fp,64
	addiu	$2,$fp,60
	move	$7,$4
	move	$6,$2
	lw	$2,%got($LC4)($28)
	addiu	$5,$2,%lo($LC4)
	move	$4,$3
	lw	$2,%call16(__isoc99_fscanf)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,__isoc99_fscanf
1:	jalr	$25
	nop

	lw	$28,24($fp)
	sw	$2,44($fp)
	b	$L3
	nop

$L5:
	lw	$2,40($fp)
	addiu	$3,$2,1
	move	$2,$3
	sll	$2,$2,1
	addu	$2,$2,$3
	sll	$2,$2,2
	move	$5,$2
	lw	$4,36($fp)
	lw	$2,%call16(realloc)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,realloc
1:	jalr	$25
	nop

	lw	$28,24($fp)
	sw	$2,36($fp)
	lw	$2,36($fp)
	bne	$2,$0,$L4
	nop

	lw	$2,%got($LC5)($28)
	addiu	$4,$2,%lo($LC5)
	lw	$2,%call16(perror)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,perror
1:	jalr	$25
	nop

	lw	$28,24($fp)
$L4:
	lw	$3,40($fp)
	move	$2,$3
	sll	$2,$2,1
	addu	$2,$2,$3
	sll	$2,$2,2
	move	$3,$2
	lw	$2,36($fp)
	addu	$2,$2,$3
	lw	$3,60($fp)
	sw	$3,0($2)
	lw	$3,40($fp)
	move	$2,$3
	sll	$2,$2,1
	addu	$2,$2,$3
	sll	$2,$2,2
	move	$3,$2
	lw	$2,36($fp)
	addu	$2,$2,$3
	lw	$3,64($fp)
	sw	$3,4($2)
	lw	$2,40($fp)
	addiu	$2,$2,1
	sw	$2,40($fp)
	lw	$3,52($fp)
	addiu	$4,$fp,64
	addiu	$2,$fp,60
	move	$7,$4
	move	$6,$2
	lw	$2,%got($LC4)($28)
	addiu	$5,$2,%lo($LC4)
	move	$4,$3
	lw	$2,%call16(__isoc99_fscanf)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,__isoc99_fscanf
1:	jalr	$25
	nop

	lw	$28,24($fp)
	sw	$2,44($fp)
$L3:
	lw	$3,44($fp)
	li	$2,2			# 0x2
	beq	$3,$2,$L5
	nop

$L2:
	lw	$5,40($fp)
	lw	$4,36($fp)
	lw	$2,%call16(euclides)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,euclides
1:	jalr	$25
	nop

	lw	$28,24($fp)
	lw	$2,56($fp)
	beq	$2,$0,$L6
	nop

	sw	$0,48($fp)
	b	$L7
	nop

$L8:
	lw	$4,56($fp)
	lw	$3,48($fp)
	move	$2,$3
	sll	$2,$2,1
	addu	$2,$2,$3
	sll	$2,$2,2
	move	$3,$2
	lw	$2,36($fp)
	addu	$2,$2,$3
	lw	$5,0($2)
	lw	$3,48($fp)
	move	$2,$3
	sll	$2,$2,1
	addu	$2,$2,$3
	sll	$2,$2,2
	move	$3,$2
	lw	$2,36($fp)
	addu	$2,$2,$3
	lw	$6,4($2)
	lw	$3,48($fp)
	move	$2,$3
	sll	$2,$2,1
	addu	$2,$2,$3
	sll	$2,$2,2
	move	$3,$2
	lw	$2,36($fp)
	addu	$2,$2,$3
	lw	$2,8($2)
	sw	$2,16($sp)
	move	$7,$6
	move	$6,$5
	lw	$2,%got($LC6)($28)
	addiu	$5,$2,%lo($LC6)
	lw	$2,%call16(fprintf)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,fprintf
1:	jalr	$25
	nop

	lw	$28,24($fp)
	lw	$2,48($fp)
	addiu	$2,$2,1
	sw	$2,48($fp)
$L7:
	lw	$3,48($fp)
	lw	$2,40($fp)
	sltu	$2,$3,$2
	bne	$2,$0,$L8
	nop

$L6:
	lw	$2,52($fp)
	beq	$2,$0,$L9
	nop

	lw	$2,52($fp)
	move	$4,$2
	lw	$2,%call16(fclose)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,fclose
1:	jalr	$25
	nop

	lw	$28,24($fp)
	move	$3,$2
	li	$2,-1			# 0xffffffffffffffff
	bne	$3,$2,$L9
	nop

	li	$2,1			# 0x1
	sw	$2,32($fp)
$L9:
	lw	$2,56($fp)
	beq	$2,$0,$L10
	nop

	lw	$2,56($fp)
	move	$4,$2
	lw	$2,%call16(fclose)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,fclose
1:	jalr	$25
	nop

	lw	$28,24($fp)
	move	$3,$2
	li	$2,-1			# 0xffffffffffffffff
	bne	$3,$2,$L10
	nop

	li	$2,1			# 0x1
	sw	$2,32($fp)
$L10:
	lw	$4,36($fp)
	lw	$2,%call16(free)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,free
1:	jalr	$25
	nop

	lw	$28,24($fp)
	lw	$2,32($fp)
	move	$sp,$fp
	lw	$31,76($sp)
	lw	$fp,72($sp)
	addiu	$sp,$sp,80
	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	main
	.size	main, .-main
	.ident	"GCC: (Debian 6.3.0-18+deb9u1) 6.3.0 20170516"
