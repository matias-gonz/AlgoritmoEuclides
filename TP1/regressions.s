	.file	1 "regressions.c"
	.section .mdebug.abi32
	.previous
	.nan	legacy
	.module	fp=xx
	.module	nooddspreg
	.abicalls
	.rdata
	.align	2
$LC1:
	.ascii	"GCD(%d, %d) = %d\012\000"
	.align	2
$LC2:
	.ascii	"regressions.c\000"
	.align	2
$LC3:
	.ascii	"io[k].gcd_ab == ref[k].gcd_ab\000"
	.align	2
$LC0:
	.word	1
	.word	1
	.word	1
	.word	1
	.word	1
	.word	1
	.word	-1
	.word	1
	.word	1
	.word	-1
	.word	-1
	.word	1
	.word	1
	.word	-1
	.word	1
	.word	-1
	.word	1
	.word	1
	.word	-1
	.word	-1
	.word	1
	.word	-1
	.word	-1
	.word	1
	.word	13
	.word	1
	.word	1
	.word	1
	.word	13
	.word	1
	.word	2
	.word	2
	.word	2
	.word	3
	.word	3
	.word	3
	.word	7
	.word	1
	.word	1
	.word	1
	.word	1
	.word	1
	.word	-7
	.word	1
	.word	1
	.word	-1
	.word	-7
	.word	1
	.word	7
	.word	-1
	.word	1
	.word	-1
	.word	7
	.word	1
	.word	-7
	.word	-1
	.word	1
	.word	-1
	.word	-7
	.word	1
	.word	91
	.word	1
	.word	1
	.word	7
	.word	13
	.word	1
	.word	14
	.word	2
	.word	2
	.word	21
	.word	3
	.word	3
	.word	13
	.word	13
	.word	13
	.word	13
	.word	13
	.word	13
	.word	-13
	.word	13
	.word	13
	.word	-13
	.word	-13
	.word	13
	.word	13
	.word	-13
	.word	13
	.word	-13
	.word	13
	.word	13
	.word	-13
	.word	-13
	.word	13
	.word	-13
	.word	-13
	.word	13
	.word	169
	.word	13
	.word	13
	.word	13
	.word	169
	.word	13
	.word	26
	.word	26
	.word	26
	.word	39
	.word	39
	.word	39
	.word	100
	.word	10
	.word	10
	.word	10
	.word	10
	.word	10
	.word	-100
	.word	10
	.word	10
	.word	-10
	.word	-100
	.word	10
	.word	100
	.word	-10
	.word	10
	.word	-10
	.word	100
	.word	10
	.word	-100
	.word	-10
	.word	10
	.word	-10
	.word	-100
	.word	10
	.word	1300
	.word	10
	.word	10
	.word	100
	.word	130
	.word	10
	.word	200
	.word	20
	.word	20
	.word	300
	.word	30
	.word	30
	.word	100
	.word	60
	.word	20
	.word	60
	.word	20
	.word	20
	.word	-100
	.word	60
	.word	20
	.word	-60
	.word	-100
	.word	20
	.word	100
	.word	-60
	.word	20
	.word	-60
	.word	100
	.word	20
	.word	-100
	.word	-60
	.word	20
	.word	-60
	.word	-100
	.word	20
	.word	1300
	.word	60
	.word	20
	.word	100
	.word	780
	.word	20
	.word	200
	.word	120
	.word	40
	.word	300
	.word	180
	.word	60
	.word	50
	.word	75
	.word	25
	.word	75
	.word	25
	.word	25
	.word	-50
	.word	75
	.word	25
	.word	-75
	.word	-50
	.word	25
	.word	50
	.word	-75
	.word	25
	.word	-75
	.word	50
	.word	25
	.word	-50
	.word	-75
	.word	25
	.word	-75
	.word	-50
	.word	25
	.word	650
	.word	75
	.word	25
	.word	50
	.word	975
	.word	25
	.word	100
	.word	150
	.word	50
	.word	150
	.word	225
	.word	75
	.text
	.align	2
	.globl	main
	.set	nomips16
	.set	nomicromips
	.ent	main
	.type	main, @function
main:
	.frame	$fp,1768,$31		# vars= 1736, regs= 2/0, args= 16, gp= 8
	.mask	0xc0000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.cpload	$25
	.set	nomacro
	addiu	$sp,$sp,-1768
	sw	$31,1764($sp)
	sw	$fp,1760($sp)
	move	$fp,$sp
	.cprestore	16
	sw	$4,1768($fp)
	sw	$5,1772($fp)
	lw	$2,%got($LC0)($28)
	addiu	$3,$fp,28
	addiu	$2,$2,%lo($LC0)
	li	$4,864			# 0x360
	move	$6,$4
	move	$5,$2
	move	$4,$3
	lw	$2,%call16(memcpy)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,memcpy
1:	jalr	$25
	nop

	lw	$28,16($fp)
	sw	$0,24($fp)
	b	$L2
	nop

$L3:
	lw	$3,24($fp)
	move	$2,$3
	sll	$2,$2,1
	addu	$2,$2,$3
	sll	$2,$2,2
	addiu	$3,$fp,24
	addu	$2,$3,$2
	lw	$4,4($2)
	lw	$3,24($fp)
	move	$2,$3
	sll	$2,$2,1
	addu	$2,$2,$3
	sll	$2,$2,2
	addiu	$3,$fp,24
	addu	$2,$3,$2
	sw	$4,868($2)
	lw	$3,24($fp)
	move	$2,$3
	sll	$2,$2,1
	addu	$2,$2,$3
	sll	$2,$2,2
	addiu	$3,$fp,24
	addu	$2,$3,$2
	lw	$4,8($2)
	lw	$3,24($fp)
	move	$2,$3
	sll	$2,$2,1
	addu	$2,$2,$3
	sll	$2,$2,2
	addiu	$3,$fp,24
	addu	$2,$3,$2
	sw	$4,872($2)
	lw	$3,24($fp)
	move	$2,$3
	sll	$2,$2,1
	addu	$2,$2,$3
	sll	$2,$2,2
	addiu	$3,$fp,24
	addu	$2,$3,$2
	li	$3,-1			# 0xffffffffffffffff
	sw	$3,876($2)
	lw	$2,24($fp)
	addiu	$2,$2,1
	sw	$2,24($fp)
$L2:
	lw	$2,24($fp)
	sltu	$2,$2,72
	bne	$2,$0,$L3
	nop

	addiu	$2,$fp,892
	li	$5,72			# 0x48
	move	$4,$2
	lw	$2,%call16(euclides)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,euclides
1:	jalr	$25
	nop

	lw	$28,16($fp)
	sw	$0,24($fp)
	b	$L4
	nop

$L6:
	lw	$3,24($fp)
	move	$2,$3
	sll	$2,$2,1
	addu	$2,$2,$3
	sll	$2,$2,2
	addiu	$3,$fp,24
	addu	$2,$3,$2
	lw	$4,868($2)
	lw	$3,24($fp)
	move	$2,$3
	sll	$2,$2,1
	addu	$2,$2,$3
	sll	$2,$2,2
	addiu	$3,$fp,24
	addu	$2,$3,$2
	lw	$5,872($2)
	lw	$3,24($fp)
	move	$2,$3
	sll	$2,$2,1
	addu	$2,$2,$3
	sll	$2,$2,2
	addiu	$3,$fp,24
	addu	$2,$3,$2
	lw	$2,876($2)
	move	$7,$2
	move	$6,$5
	move	$5,$4
	lw	$2,%got($LC1)($28)
	addiu	$4,$2,%lo($LC1)
	lw	$2,%call16(printf)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,printf
1:	jalr	$25
	nop

	lw	$28,16($fp)
	lw	$3,24($fp)
	move	$2,$3
	sll	$2,$2,1
	addu	$2,$2,$3
	sll	$2,$2,2
	addiu	$3,$fp,24
	addu	$2,$3,$2
	lw	$4,876($2)
	lw	$3,24($fp)
	move	$2,$3
	sll	$2,$2,1
	addu	$2,$2,$3
	sll	$2,$2,2
	addiu	$3,$fp,24
	addu	$2,$3,$2
	lw	$2,12($2)
	beq	$4,$2,$L5
	nop

	lw	$2,%got(__PRETTY_FUNCTION__.2090)($28)
	addiu	$7,$2,%lo(__PRETTY_FUNCTION__.2090)
	li	$6,57			# 0x39
	lw	$2,%got($LC2)($28)
	addiu	$5,$2,%lo($LC2)
	lw	$2,%got($LC3)($28)
	addiu	$4,$2,%lo($LC3)
	lw	$2,%call16(__assert_fail)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,__assert_fail
1:	jalr	$25
	nop

$L5:
	lw	$2,24($fp)
	addiu	$2,$2,1
	sw	$2,24($fp)
$L4:
	lw	$2,24($fp)
	sltu	$2,$2,72
	bne	$2,$0,$L6
	nop

	move	$2,$0
	move	$sp,$fp
	lw	$31,1764($sp)
	lw	$fp,1760($sp)
	addiu	$sp,$sp,1768
	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	main
	.size	main, .-main
	.rdata
	.align	2
	.type	__PRETTY_FUNCTION__.2090, @object
	.size	__PRETTY_FUNCTION__.2090, 5
__PRETTY_FUNCTION__.2090:
	.ascii	"main\000"
	.ident	"GCC: (Debian 6.3.0-18+deb9u1) 6.3.0 20170516"
