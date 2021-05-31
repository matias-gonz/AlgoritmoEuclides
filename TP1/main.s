	.section .mdebug.abi32
	.previous
	.nan	legacy
	.module	fp=xx
	.module	nooddspreg
	.abicalls
	.text
$Ltext0:
	.cfi_sections	.debug_frame
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
	.ascii	" \000"
	.text
	.align	2
	.globl	parse_line
$LFB2 = .
	.file 1 "main.c"
	.loc 1 5 0
	.cfi_startproc
	.set	nomips16
	.set	nomicromips
	.ent	parse_line
	.type	parse_line, @function
parse_line:
	.frame	$fp,40,$31		# vars= 8, regs= 2/0, args= 16, gp= 8
	.mask	0xc0000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.cpload	$25
	.set	nomacro
	addiu	$sp,$sp,-40
	.cfi_def_cfa_offset 40
	sw	$31,36($sp)
	sw	$fp,32($sp)
	.cfi_offset 31, -4
	.cfi_offset 30, -8
	move	$fp,$sp
	.cfi_def_cfa_register 30
	.cprestore	16
	sw	$4,40($fp)
	sw	$5,44($fp)
	sw	$6,48($fp)
	.loc 1 8 0
	lw	$2,%got($LC4)($28)
	addiu	$5,$2,%lo($LC4)
	lw	$4,40($fp)
	lw	$2,%call16(strtok)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,strtok
1:	jalr	$25
	nop

$LVL0 = .
	lw	$28,16($fp)
	sw	$2,24($fp)
	.loc 1 9 0
	lw	$2,24($fp)
	bne	$2,$0,$L2
	nop

	.loc 1 10 0
	li	$2,1			# 0x1
	b	$L3
	nop

$L2:
	.loc 1 12 0
	lw	$4,24($fp)
	lw	$2,%call16(atoi)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,atoi
1:	jalr	$25
	nop

$LVL1 = .
	lw	$28,16($fp)
	move	$3,$2
	lw	$2,44($fp)
	sw	$3,0($2)
	.loc 1 13 0
	lw	$2,44($fp)
	lw	$2,0($2)
	bne	$2,$0,$L4
	nop

	.loc 1 14 0
	li	$2,1			# 0x1
	b	$L3
	nop

$L4:
	.loc 1 17 0
	lw	$2,%got($LC4)($28)
	addiu	$5,$2,%lo($LC4)
	move	$4,$0
	lw	$2,%call16(strtok)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,strtok
1:	jalr	$25
	nop

$LVL2 = .
	lw	$28,16($fp)
	sw	$2,24($fp)
	.loc 1 18 0
	lw	$2,24($fp)
	bne	$2,$0,$L5
	nop

	.loc 1 19 0
	li	$2,1			# 0x1
	b	$L3
	nop

$L5:
	.loc 1 21 0
	lw	$4,24($fp)
	lw	$2,%call16(atoi)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,atoi
1:	jalr	$25
	nop

$LVL3 = .
	lw	$28,16($fp)
	move	$3,$2
	lw	$2,48($fp)
	sw	$3,0($2)
	.loc 1 22 0
	lw	$2,48($fp)
	lw	$2,0($2)
	bne	$2,$0,$L6
	nop

	.loc 1 23 0
	li	$2,1			# 0x1
	b	$L3
	nop

$L6:
	.loc 1 26 0
	lw	$2,%got($LC4)($28)
	addiu	$5,$2,%lo($LC4)
	move	$4,$0
	lw	$2,%call16(strtok)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,strtok
1:	jalr	$25
	nop

$LVL4 = .
	lw	$28,16($fp)
	sw	$2,24($fp)
	.loc 1 27 0
	lw	$2,24($fp)
	beq	$2,$0,$L7
	nop

	.loc 1 28 0
	li	$2,1			# 0x1
	b	$L3
	nop

$L7:
	.loc 1 30 0
	move	$2,$0
$L3:
	.loc 1 31 0
	move	$sp,$fp
	.cfi_def_cfa_register 29
	lw	$31,36($sp)
	lw	$fp,32($sp)
	addiu	$sp,$sp,40
	.cfi_restore 30
	.cfi_restore 31
	.cfi_def_cfa_offset 0
	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	parse_line
	.cfi_endproc
$LFE2:
	.size	parse_line, .-parse_line
	.rdata
	.align	2
$LC5:
	.ascii	"%99[^\012]\012\000"
	.align	2
$LC6:
	.ascii	"Error: Empty file\012\000"
	.align	2
$LC7:
	.ascii	"Error at fprintf\000"
	.align	2
$LC8:
	.ascii	"Error while parsing line\012\000"
	.align	2
$LC9:
	.ascii	"Error at realloc\012\000"
	.text
	.align	2
	.globl	read_file
$LFB3 = .
	.loc 1 33 0
	.cfi_startproc
	.set	nomips16
	.set	nomicromips
	.ent	read_file
	.type	read_file, @function
read_file:
	.frame	$fp,152,$31		# vars= 120, regs= 2/0, args= 16, gp= 8
	.mask	0xc0000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.cpload	$25
	.set	nomacro
	addiu	$sp,$sp,-152
	.cfi_def_cfa_offset 152
	sw	$31,148($sp)
	sw	$fp,144($sp)
	.cfi_offset 31, -4
	.cfi_offset 30, -8
	move	$fp,$sp
	.cfi_def_cfa_register 30
	.cprestore	16
	sw	$4,152($fp)
	sw	$5,156($fp)
	.loc 1 35 0
	sw	$0,24($fp)
	.loc 1 37 0
	addiu	$2,$fp,36
	move	$6,$2
	lw	$2,%got($LC5)($28)
	addiu	$5,$2,%lo($LC5)
	lw	$4,152($fp)
	lw	$2,%call16(__isoc99_fscanf)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,__isoc99_fscanf
1:	jalr	$25
	nop

$LVL5 = .
	lw	$28,16($fp)
	sw	$2,28($fp)
	.loc 1 38 0
	lw	$3,28($fp)
	li	$2,-1			# 0xffffffffffffffff
	bne	$3,$2,$L9
	nop

	.loc 1 39 0
	lw	$2,%got(stderr)($28)
	lw	$3,0($2)
	lw	$2,%got($LC6)($28)
	addiu	$5,$2,%lo($LC6)
	move	$4,$3
	lw	$2,%call16(fprintf)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,fprintf
1:	jalr	$25
	nop

$LVL6 = .
	lw	$28,16($fp)
	bgez	$2,$L10
	nop

	.loc 1 40 0
	lw	$2,%got($LC7)($28)
	addiu	$4,$2,%lo($LC7)
	lw	$2,%call16(perror)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,perror
1:	jalr	$25
	nop

$LVL7 = .
	lw	$28,16($fp)
	.loc 1 41 0
	li	$4,1			# 0x1
	lw	$2,%call16(exit)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,exit
1:	jalr	$25
	nop

$LVL8 = .
$L10:
	.loc 1 43 0
	move	$2,$0
	b	$L20
	nop

$L9:
	.loc 1 45 0
	addiu	$4,$fp,140
	addiu	$3,$fp,136
	addiu	$2,$fp,36
	move	$6,$4
	move	$5,$3
	move	$4,$2
	lw	$2,%got(parse_line)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,parse_line
1:	jalr	$25
	nop

$LVL9 = .
	lw	$28,16($fp)
	sw	$2,32($fp)
	.loc 1 46 0
	lw	$3,32($fp)
	li	$2,1			# 0x1
	bne	$3,$2,$L14
	nop

	.loc 1 48 0
	lw	$2,%got(stderr)($28)
	lw	$3,0($2)
	lw	$2,%got($LC8)($28)
	addiu	$5,$2,%lo($LC8)
	move	$4,$3
	lw	$2,%call16(fprintf)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,fprintf
1:	jalr	$25
	nop

$LVL10 = .
	lw	$28,16($fp)
	bgez	$2,$L13
	nop

	.loc 1 49 0
	lw	$2,%got($LC7)($28)
	addiu	$4,$2,%lo($LC7)
	lw	$2,%call16(perror)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,perror
1:	jalr	$25
	nop

$LVL11 = .
	lw	$28,16($fp)
	.loc 1 50 0
	li	$4,1			# 0x1
	lw	$2,%call16(exit)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,exit
1:	jalr	$25
	nop

$LVL12 = .
$L13:
	.loc 1 52 0
	move	$2,$0
	b	$L20
	nop

$L19:
	.loc 1 57 0
	lw	$2,156($fp)
	lw	$2,0($2)
	addiu	$3,$2,1
	move	$2,$3
	sll	$2,$2,1
	addu	$2,$2,$3
	sll	$2,$2,2
	move	$5,$2
	lw	$4,24($fp)
	lw	$2,%call16(realloc)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,realloc
1:	jalr	$25
	nop

$LVL13 = .
	lw	$28,16($fp)
	sw	$2,24($fp)
	.loc 1 58 0
	lw	$2,24($fp)
	bne	$2,$0,$L15
	nop

	.loc 1 60 0
	lw	$2,%got(stderr)($28)
	lw	$3,0($2)
	lw	$2,%got($LC9)($28)
	addiu	$5,$2,%lo($LC9)
	move	$4,$3
	lw	$2,%call16(fprintf)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,fprintf
1:	jalr	$25
	nop

$LVL14 = .
	lw	$28,16($fp)
	bgez	$2,$L16
	nop

	.loc 1 61 0
	lw	$2,%got($LC7)($28)
	addiu	$4,$2,%lo($LC7)
	lw	$2,%call16(perror)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,perror
1:	jalr	$25
	nop

$LVL15 = .
	lw	$28,16($fp)
	.loc 1 62 0
	li	$4,1			# 0x1
	lw	$2,%call16(exit)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,exit
1:	jalr	$25
	nop

$LVL16 = .
$L16:
	.loc 1 64 0
	move	$2,$0
	b	$L20
	nop

$L15:
	.loc 1 66 0
	lw	$2,156($fp)
	lw	$3,0($2)
	move	$2,$3
	sll	$2,$2,1
	addu	$2,$2,$3
	sll	$2,$2,2
	move	$3,$2
	lw	$2,24($fp)
	addu	$2,$2,$3
	lw	$3,136($fp)
	sw	$3,0($2)
	.loc 1 67 0
	lw	$2,156($fp)
	lw	$3,0($2)
	move	$2,$3
	sll	$2,$2,1
	addu	$2,$2,$3
	sll	$2,$2,2
	move	$3,$2
	lw	$2,24($fp)
	addu	$2,$2,$3
	lw	$3,140($fp)
	sw	$3,4($2)
	.loc 1 68 0
	lw	$2,156($fp)
	lw	$2,0($2)
	addiu	$3,$2,1
	lw	$2,156($fp)
	sw	$3,0($2)
	.loc 1 69 0
	addiu	$2,$fp,36
	move	$6,$2
	lw	$2,%got($LC5)($28)
	addiu	$5,$2,%lo($LC5)
	lw	$4,152($fp)
	lw	$2,%call16(__isoc99_fscanf)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,__isoc99_fscanf
1:	jalr	$25
	nop

$LVL17 = .
	lw	$28,16($fp)
	sw	$2,28($fp)
	.loc 1 70 0
	lw	$3,28($fp)
	li	$2,-1			# 0xffffffffffffffff
	beq	$3,$2,$L17
	nop

	.loc 1 71 0
	addiu	$4,$fp,140
	addiu	$3,$fp,136
	addiu	$2,$fp,36
	move	$6,$4
	move	$5,$3
	move	$4,$2
	lw	$2,%got(parse_line)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,parse_line
1:	jalr	$25
	nop

$LVL18 = .
	lw	$28,16($fp)
	sw	$2,32($fp)
$L17:
	.loc 1 72 0
	lw	$3,32($fp)
	li	$2,1			# 0x1
	bne	$3,$2,$L14
	nop

	.loc 1 74 0
	lw	$2,%got(stderr)($28)
	lw	$3,0($2)
	lw	$2,%got($LC8)($28)
	addiu	$5,$2,%lo($LC8)
	move	$4,$3
	lw	$2,%call16(fprintf)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,fprintf
1:	jalr	$25
	nop

$LVL19 = .
	lw	$28,16($fp)
	bgez	$2,$L18
	nop

	.loc 1 75 0
	lw	$2,%got($LC7)($28)
	addiu	$4,$2,%lo($LC7)
	lw	$2,%call16(perror)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,perror
1:	jalr	$25
	nop

$LVL20 = .
	lw	$28,16($fp)
	.loc 1 76 0
	lw	$4,24($fp)
	lw	$2,%call16(free)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,free
1:	jalr	$25
	nop

$LVL21 = .
	lw	$28,16($fp)
	.loc 1 77 0
	li	$4,1			# 0x1
	lw	$2,%call16(exit)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,exit
1:	jalr	$25
	nop

$LVL22 = .
$L18:
	.loc 1 79 0
	lw	$4,24($fp)
	lw	$2,%call16(free)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,free
1:	jalr	$25
	nop

$LVL23 = .
	lw	$28,16($fp)
	.loc 1 80 0
	move	$2,$0
	b	$L20
	nop

$L14:
	.loc 1 55 0
	lw	$3,28($fp)
	li	$2,-1			# 0xffffffffffffffff
	bne	$3,$2,$L19
	nop

	.loc 1 83 0
	lw	$2,24($fp)
$L20:
	.loc 1 84 0 discriminator 1
	move	$sp,$fp
	.cfi_def_cfa_register 29
	lw	$31,148($sp)
	lw	$fp,144($sp)
	addiu	$sp,$sp,152
	.cfi_restore 30
	.cfi_restore 31
	.cfi_def_cfa_offset 0
	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	read_file
	.cfi_endproc
$LFE3:
	.size	read_file, .-read_file
	.rdata
	.align	2
$LC10:
	.ascii	"GCD(%i,%i) = %i\012\000"
	.align	2
$LC11:
	.ascii	"Error at writing file\000"
	.text
	.align	2
	.globl	main
$LFB4 = .
	.loc 1 87 0
	.cfi_startproc
	.set	nomips16
	.set	nomicromips
	.ent	main
	.type	main, @function
main:
	.frame	$fp,64,$31		# vars= 24, regs= 2/0, args= 24, gp= 8
	.mask	0xc0000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.cpload	$25
	.set	nomacro
	addiu	$sp,$sp,-64
	.cfi_def_cfa_offset 64
	sw	$31,60($sp)
	sw	$fp,56($sp)
	.cfi_offset 31, -4
	.cfi_offset 30, -8
	move	$fp,$sp
	.cfi_def_cfa_register 30
	.cprestore	24
	sw	$4,64($fp)
	sw	$5,68($fp)
	.loc 1 89 0
	addiu	$2,$fp,44
	move	$6,$2
	lw	$5,68($fp)
	lw	$4,64($fp)
	lw	$2,%call16(parse_args)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,parse_args
1:	jalr	$25
	nop

$LVL24 = .
	lw	$28,24($fp)
	.loc 1 90 0
	sw	$0,32($fp)
	.loc 1 92 0
	sw	$0,36($fp)
	.loc 1 93 0
	sw	$0,52($fp)
	.loc 1 95 0
	lw	$2,44($fp)
	beq	$2,$0,$L22
	nop

	.loc 1 97 0
	lw	$2,44($fp)
	addiu	$3,$fp,52
	move	$5,$3
	move	$4,$2
	lw	$2,%got(read_file)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,read_file
1:	jalr	$25
	nop

$LVL25 = .
	lw	$28,24($fp)
	sw	$2,36($fp)
	.loc 1 98 0
	lw	$2,36($fp)
	bne	$2,$0,$L22
	nop

	.loc 1 99 0
	li	$2,1			# 0x1
	sw	$2,32($fp)
$L22:
	.loc 1 103 0
	lw	$3,32($fp)
	li	$2,1			# 0x1
	beq	$3,$2,$L23
	nop

	.loc 1 105 0
	lw	$2,52($fp)
	move	$5,$2
	lw	$4,36($fp)
	lw	$2,%call16(euclides)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,euclides
1:	jalr	$25
	nop

$LVL26 = .
	lw	$28,24($fp)
	.loc 1 107 0
	lw	$2,48($fp)
	beq	$2,$0,$L23
	nop

$LBB2 = .
	.loc 1 109 0
	sw	$0,40($fp)
	b	$L24
	nop

$L26:
	.loc 1 111 0
	lw	$4,48($fp)
	lw	$3,40($fp)
	move	$2,$3
	sll	$2,$2,1
	addu	$2,$2,$3
	sll	$2,$2,2
	move	$3,$2
	lw	$2,36($fp)
	addu	$2,$2,$3
	lw	$5,0($2)
	lw	$3,40($fp)
	move	$2,$3
	sll	$2,$2,1
	addu	$2,$2,$3
	sll	$2,$2,2
	move	$3,$2
	lw	$2,36($fp)
	addu	$2,$2,$3
	lw	$6,4($2)
	lw	$3,40($fp)
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
	lw	$2,%got($LC10)($28)
	addiu	$5,$2,%lo($LC10)
	lw	$2,%call16(fprintf)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,fprintf
1:	jalr	$25
	nop

$LVL27 = .
	lw	$28,24($fp)
	bgez	$2,$L25
	nop

	.loc 1 113 0
	lw	$2,%got($LC11)($28)
	addiu	$4,$2,%lo($LC11)
	lw	$2,%call16(perror)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,perror
1:	jalr	$25
	nop

$LVL28 = .
	lw	$28,24($fp)
	.loc 1 114 0
	li	$2,1			# 0x1
	sw	$2,32($fp)
	.loc 1 115 0
	lw	$2,52($fp)
	sw	$2,40($fp)
$L25:
	.loc 1 109 0 discriminator 2
	lw	$2,40($fp)
	addiu	$2,$2,1
	sw	$2,40($fp)
$L24:
	.loc 1 109 0 is_stmt 0 discriminator 1
	lw	$2,52($fp)
	lw	$3,40($fp)
	sltu	$2,$3,$2
	bne	$2,$0,$L26
	nop

$L23:
$LBE2 = .
	.loc 1 122 0 is_stmt 1
	lw	$2,44($fp)
	beq	$2,$0,$L27
	nop

	.loc 1 124 0
	lw	$2,44($fp)
	move	$4,$2
	lw	$2,%call16(fclose)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,fclose
1:	jalr	$25
	nop

$LVL29 = .
	lw	$28,24($fp)
	move	$3,$2
	li	$2,-1			# 0xffffffffffffffff
	bne	$3,$2,$L27
	nop

	.loc 1 126 0
	li	$2,1			# 0x1
	sw	$2,32($fp)
$L27:
	.loc 1 130 0
	lw	$2,48($fp)
	beq	$2,$0,$L28
	nop

	.loc 1 132 0
	lw	$2,48($fp)
	move	$4,$2
	lw	$2,%call16(fclose)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,fclose
1:	jalr	$25
	nop

$LVL30 = .
	lw	$28,24($fp)
	move	$3,$2
	li	$2,-1			# 0xffffffffffffffff
	bne	$3,$2,$L28
	nop

	.loc 1 134 0
	li	$2,1			# 0x1
	sw	$2,32($fp)
$L28:
	.loc 1 138 0
	lw	$4,36($fp)
	lw	$2,%call16(free)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,free
1:	jalr	$25
	nop

$LVL31 = .
	lw	$28,24($fp)
	.loc 1 140 0
	lw	$2,32($fp)
	.loc 1 141 0
	move	$sp,$fp
	.cfi_def_cfa_register 29
	lw	$31,60($sp)
	lw	$fp,56($sp)
	addiu	$sp,$sp,64
	.cfi_restore 30
	.cfi_restore 31
	.cfi_def_cfa_offset 0
	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	main
	.cfi_endproc
$LFE4:
	.size	main, .-main
$Letext0:
	.file 2 "/usr/lib/gcc/mips-linux-gnu/6/include/stddef.h"
	.file 3 "/usr/include/mips-linux-gnu/bits/types.h"
	.file 4 "/usr/include/stdio.h"
	.file 5 "/usr/include/libio.h"
	.file 6 "/usr/include/mips-linux-gnu/bits/sys_errlist.h"
	.file 7 "/usr/include/getopt.h"
	.file 8 "args_parser.h"
	.file 9 "gcd.h"
	.section	.debug_info,"",@progbits
$Ldebug_info0:
	.4byte	0x59e
	.2byte	0x4
	.4byte	$Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	$LASF85
	.byte	0xc
	.4byte	$LASF86
	.4byte	$LASF87
	.4byte	$Ltext0
	.4byte	$Letext0-$Ltext0
	.4byte	$Ldebug_line0
	.uleb128 0x2
	.4byte	$LASF8
	.byte	0x2
	.byte	0xd8
	.4byte	0x30
	.uleb128 0x3
	.byte	0x4
	.byte	0x7
	.4byte	$LASF0
	.uleb128 0x3
	.byte	0x1
	.byte	0x8
	.4byte	$LASF1
	.uleb128 0x3
	.byte	0x2
	.byte	0x7
	.4byte	$LASF2
	.uleb128 0x3
	.byte	0x4
	.byte	0x7
	.4byte	$LASF3
	.uleb128 0x3
	.byte	0x1
	.byte	0x6
	.4byte	$LASF4
	.uleb128 0x3
	.byte	0x2
	.byte	0x5
	.4byte	$LASF5
	.uleb128 0x4
	.byte	0x4
	.byte	0x5
	.ascii	"int\000"
	.uleb128 0x3
	.byte	0x8
	.byte	0x5
	.4byte	$LASF6
	.uleb128 0x3
	.byte	0x8
	.byte	0x7
	.4byte	$LASF7
	.uleb128 0x2
	.4byte	$LASF9
	.byte	0x3
	.byte	0x37
	.4byte	0x61
	.uleb128 0x2
	.4byte	$LASF10
	.byte	0x3
	.byte	0x83
	.4byte	0x85
	.uleb128 0x3
	.byte	0x4
	.byte	0x5
	.4byte	$LASF11
	.uleb128 0x2
	.4byte	$LASF12
	.byte	0x3
	.byte	0x84
	.4byte	0x6f
	.uleb128 0x3
	.byte	0x4
	.byte	0x7
	.4byte	$LASF13
	.uleb128 0x5
	.byte	0x4
	.uleb128 0x6
	.byte	0x4
	.4byte	0xa6
	.uleb128 0x3
	.byte	0x1
	.byte	0x6
	.4byte	$LASF14
	.uleb128 0x7
	.4byte	0xa6
	.uleb128 0x2
	.4byte	$LASF15
	.byte	0x4
	.byte	0x30
	.4byte	0xbd
	.uleb128 0x8
	.4byte	$LASF45
	.byte	0x98
	.byte	0x5
	.byte	0xf1
	.4byte	0x23a
	.uleb128 0x9
	.4byte	$LASF16
	.byte	0x5
	.byte	0xf2
	.4byte	0x5a
	.byte	0
	.uleb128 0x9
	.4byte	$LASF17
	.byte	0x5
	.byte	0xf7
	.4byte	0xa0
	.byte	0x4
	.uleb128 0x9
	.4byte	$LASF18
	.byte	0x5
	.byte	0xf8
	.4byte	0xa0
	.byte	0x8
	.uleb128 0x9
	.4byte	$LASF19
	.byte	0x5
	.byte	0xf9
	.4byte	0xa0
	.byte	0xc
	.uleb128 0x9
	.4byte	$LASF20
	.byte	0x5
	.byte	0xfa
	.4byte	0xa0
	.byte	0x10
	.uleb128 0x9
	.4byte	$LASF21
	.byte	0x5
	.byte	0xfb
	.4byte	0xa0
	.byte	0x14
	.uleb128 0x9
	.4byte	$LASF22
	.byte	0x5
	.byte	0xfc
	.4byte	0xa0
	.byte	0x18
	.uleb128 0x9
	.4byte	$LASF23
	.byte	0x5
	.byte	0xfd
	.4byte	0xa0
	.byte	0x1c
	.uleb128 0x9
	.4byte	$LASF24
	.byte	0x5
	.byte	0xfe
	.4byte	0xa0
	.byte	0x20
	.uleb128 0xa
	.4byte	$LASF25
	.byte	0x5
	.2byte	0x100
	.4byte	0xa0
	.byte	0x24
	.uleb128 0xa
	.4byte	$LASF26
	.byte	0x5
	.2byte	0x101
	.4byte	0xa0
	.byte	0x28
	.uleb128 0xa
	.4byte	$LASF27
	.byte	0x5
	.2byte	0x102
	.4byte	0xa0
	.byte	0x2c
	.uleb128 0xa
	.4byte	$LASF28
	.byte	0x5
	.2byte	0x104
	.4byte	0x272
	.byte	0x30
	.uleb128 0xa
	.4byte	$LASF29
	.byte	0x5
	.2byte	0x106
	.4byte	0x278
	.byte	0x34
	.uleb128 0xa
	.4byte	$LASF30
	.byte	0x5
	.2byte	0x108
	.4byte	0x5a
	.byte	0x38
	.uleb128 0xa
	.4byte	$LASF31
	.byte	0x5
	.2byte	0x10c
	.4byte	0x5a
	.byte	0x3c
	.uleb128 0xa
	.4byte	$LASF32
	.byte	0x5
	.2byte	0x10e
	.4byte	0x7a
	.byte	0x40
	.uleb128 0xa
	.4byte	$LASF33
	.byte	0x5
	.2byte	0x112
	.4byte	0x3e
	.byte	0x44
	.uleb128 0xa
	.4byte	$LASF34
	.byte	0x5
	.2byte	0x113
	.4byte	0x4c
	.byte	0x46
	.uleb128 0xa
	.4byte	$LASF35
	.byte	0x5
	.2byte	0x114
	.4byte	0x27e
	.byte	0x47
	.uleb128 0xa
	.4byte	$LASF36
	.byte	0x5
	.2byte	0x118
	.4byte	0x28e
	.byte	0x48
	.uleb128 0xa
	.4byte	$LASF37
	.byte	0x5
	.2byte	0x121
	.4byte	0x8c
	.byte	0x50
	.uleb128 0xa
	.4byte	$LASF38
	.byte	0x5
	.2byte	0x129
	.4byte	0x9e
	.byte	0x58
	.uleb128 0xa
	.4byte	$LASF39
	.byte	0x5
	.2byte	0x12a
	.4byte	0x9e
	.byte	0x5c
	.uleb128 0xa
	.4byte	$LASF40
	.byte	0x5
	.2byte	0x12b
	.4byte	0x9e
	.byte	0x60
	.uleb128 0xa
	.4byte	$LASF41
	.byte	0x5
	.2byte	0x12c
	.4byte	0x9e
	.byte	0x64
	.uleb128 0xa
	.4byte	$LASF42
	.byte	0x5
	.2byte	0x12e
	.4byte	0x25
	.byte	0x68
	.uleb128 0xa
	.4byte	$LASF43
	.byte	0x5
	.2byte	0x12f
	.4byte	0x5a
	.byte	0x6c
	.uleb128 0xa
	.4byte	$LASF44
	.byte	0x5
	.2byte	0x131
	.4byte	0x294
	.byte	0x70
	.byte	0
	.uleb128 0xb
	.4byte	$LASF88
	.byte	0x5
	.byte	0x96
	.uleb128 0x8
	.4byte	$LASF46
	.byte	0xc
	.byte	0x5
	.byte	0x9c
	.4byte	0x272
	.uleb128 0x9
	.4byte	$LASF47
	.byte	0x5
	.byte	0x9d
	.4byte	0x272
	.byte	0
	.uleb128 0x9
	.4byte	$LASF48
	.byte	0x5
	.byte	0x9e
	.4byte	0x278
	.byte	0x4
	.uleb128 0x9
	.4byte	$LASF49
	.byte	0x5
	.byte	0xa2
	.4byte	0x5a
	.byte	0x8
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x241
	.uleb128 0x6
	.byte	0x4
	.4byte	0xbd
	.uleb128 0xc
	.4byte	0xa6
	.4byte	0x28e
	.uleb128 0xd
	.4byte	0x97
	.byte	0
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x23a
	.uleb128 0xc
	.4byte	0xa6
	.4byte	0x2a4
	.uleb128 0xd
	.4byte	0x97
	.byte	0x27
	.byte	0
	.uleb128 0xe
	.4byte	$LASF89
	.uleb128 0xf
	.4byte	$LASF50
	.byte	0x5
	.2byte	0x13b
	.4byte	0x2a4
	.uleb128 0xf
	.4byte	$LASF51
	.byte	0x5
	.2byte	0x13c
	.4byte	0x2a4
	.uleb128 0xf
	.4byte	$LASF52
	.byte	0x5
	.2byte	0x13d
	.4byte	0x2a4
	.uleb128 0x6
	.byte	0x4
	.4byte	0xad
	.uleb128 0x7
	.4byte	0x2cd
	.uleb128 0x10
	.4byte	$LASF53
	.byte	0x4
	.byte	0xaa
	.4byte	0x278
	.uleb128 0x10
	.4byte	$LASF54
	.byte	0x4
	.byte	0xab
	.4byte	0x278
	.uleb128 0x10
	.4byte	$LASF55
	.byte	0x4
	.byte	0xac
	.4byte	0x278
	.uleb128 0x10
	.4byte	$LASF56
	.byte	0x6
	.byte	0x1a
	.4byte	0x5a
	.uleb128 0xc
	.4byte	0x2d3
	.4byte	0x30f
	.uleb128 0x11
	.byte	0
	.uleb128 0x7
	.4byte	0x304
	.uleb128 0x10
	.4byte	$LASF57
	.byte	0x6
	.byte	0x1b
	.4byte	0x30f
	.uleb128 0x10
	.4byte	$LASF58
	.byte	0x7
	.byte	0x39
	.4byte	0xa0
	.uleb128 0x10
	.4byte	$LASF59
	.byte	0x7
	.byte	0x47
	.4byte	0x5a
	.uleb128 0x10
	.4byte	$LASF60
	.byte	0x7
	.byte	0x4c
	.4byte	0x5a
	.uleb128 0x10
	.4byte	$LASF61
	.byte	0x7
	.byte	0x50
	.4byte	0x5a
	.uleb128 0x8
	.4byte	$LASF62
	.byte	0x10
	.byte	0x7
	.byte	0x68
	.4byte	0x388
	.uleb128 0x9
	.4byte	$LASF63
	.byte	0x7
	.byte	0x6a
	.4byte	0x2cd
	.byte	0
	.uleb128 0x9
	.4byte	$LASF64
	.byte	0x7
	.byte	0x6d
	.4byte	0x5a
	.byte	0x4
	.uleb128 0x9
	.4byte	$LASF65
	.byte	0x7
	.byte	0x6e
	.4byte	0x38d
	.byte	0x8
	.uleb128 0x12
	.ascii	"val\000"
	.byte	0x7
	.byte	0x6f
	.4byte	0x5a
	.byte	0xc
	.byte	0
	.uleb128 0x7
	.4byte	0x34b
	.uleb128 0x6
	.byte	0x4
	.4byte	0x5a
	.uleb128 0xc
	.4byte	0x388
	.4byte	0x3a3
	.uleb128 0xd
	.4byte	0x97
	.byte	0x4
	.byte	0
	.uleb128 0x7
	.4byte	0x393
	.uleb128 0x13
	.4byte	$LASF75
	.byte	0x8
	.byte	0xb
	.4byte	0x3a3
	.uleb128 0x5
	.byte	0x3
	.4byte	longOpts
	.uleb128 0x8
	.4byte	$LASF66
	.byte	0x8
	.byte	0x8
	.byte	0x12
	.4byte	0x3de
	.uleb128 0x9
	.4byte	$LASF67
	.byte	0x8
	.byte	0x13
	.4byte	0x3de
	.byte	0
	.uleb128 0x9
	.4byte	$LASF68
	.byte	0x8
	.byte	0x14
	.4byte	0x3de
	.byte	0x4
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0xb2
	.uleb128 0x2
	.4byte	$LASF66
	.byte	0x8
	.byte	0x15
	.4byte	0x3b9
	.uleb128 0x3
	.byte	0x8
	.byte	0x4
	.4byte	$LASF69
	.uleb128 0x14
	.ascii	"gcd\000"
	.byte	0xc
	.byte	0x9
	.byte	0x6
	.4byte	0x427
	.uleb128 0x9
	.4byte	$LASF70
	.byte	0x9
	.byte	0x8
	.4byte	0x5a
	.byte	0
	.uleb128 0x9
	.4byte	$LASF71
	.byte	0x9
	.byte	0x9
	.4byte	0x5a
	.byte	0x4
	.uleb128 0x9
	.4byte	$LASF72
	.byte	0x9
	.byte	0xa
	.4byte	0x5a
	.byte	0x8
	.byte	0
	.uleb128 0x15
	.4byte	$LASF78
	.byte	0x1
	.byte	0x56
	.4byte	0x5a
	.4byte	$LFB4
	.4byte	$LFE4-$LFB4
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x4ab
	.uleb128 0x16
	.4byte	$LASF73
	.byte	0x1
	.byte	0x56
	.4byte	0x5a
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x16
	.4byte	$LASF74
	.byte	0x1
	.byte	0x56
	.4byte	0x4ab
	.uleb128 0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x13
	.4byte	$LASF76
	.byte	0x1
	.byte	0x58
	.4byte	0x3e4
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x13
	.4byte	$LASF77
	.byte	0x1
	.byte	0x5a
	.4byte	0x5a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x17
	.ascii	"gcd\000"
	.byte	0x1
	.byte	0x5c
	.4byte	0x4b1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x17
	.ascii	"len\000"
	.byte	0x1
	.byte	0x5d
	.4byte	0x25
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.uleb128 0x18
	.4byte	$LBB2
	.4byte	$LBE2-$LBB2
	.uleb128 0x17
	.ascii	"i\000"
	.byte	0x1
	.byte	0x6d
	.4byte	0x25
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0xa0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x3f6
	.uleb128 0x15
	.4byte	$LASF79
	.byte	0x1
	.byte	0x21
	.4byte	0x4b1
	.4byte	$LFB3
	.4byte	$LFE3-$LFB3
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x541
	.uleb128 0x16
	.4byte	$LASF80
	.byte	0x1
	.byte	0x21
	.4byte	0x3de
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x19
	.ascii	"len\000"
	.byte	0x1
	.byte	0x21
	.4byte	0x541
	.uleb128 0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x13
	.4byte	$LASF81
	.byte	0x1
	.byte	0x22
	.4byte	0x547
	.uleb128 0x3
	.byte	0x91
	.sleb128 -116
	.uleb128 0x17
	.ascii	"gcd\000"
	.byte	0x1
	.byte	0x23
	.4byte	0x4b1
	.uleb128 0x3
	.byte	0x91
	.sleb128 -128
	.uleb128 0x17
	.ascii	"a\000"
	.byte	0x1
	.byte	0x24
	.4byte	0x5a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -16
	.uleb128 0x17
	.ascii	"b\000"
	.byte	0x1
	.byte	0x24
	.4byte	0x5a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.uleb128 0x13
	.4byte	$LASF82
	.byte	0x1
	.byte	0x25
	.4byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -124
	.uleb128 0x13
	.4byte	$LASF83
	.byte	0x1
	.byte	0x2d
	.4byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -120
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x25
	.uleb128 0xc
	.4byte	0xa6
	.4byte	0x557
	.uleb128 0xd
	.4byte	0x97
	.byte	0x63
	.byte	0
	.uleb128 0x1a
	.4byte	$LASF90
	.byte	0x1
	.byte	0x5
	.4byte	0x5a
	.4byte	$LFB2
	.4byte	$LFE2-$LFB2
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x16
	.4byte	$LASF81
	.byte	0x1
	.byte	0x5
	.4byte	0xa0
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x19
	.ascii	"a\000"
	.byte	0x1
	.byte	0x5
	.4byte	0x38d
	.uleb128 0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x19
	.ascii	"b\000"
	.byte	0x1
	.byte	0x5
	.4byte	0x38d
	.uleb128 0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x13
	.4byte	$LASF84
	.byte	0x1
	.byte	0x6
	.4byte	0xa0
	.uleb128 0x2
	.byte	0x91
	.sleb128 -16
	.byte	0
	.byte	0
	.section	.debug_abbrev,"",@progbits
$Ldebug_abbrev0:
	.uleb128 0x1
	.uleb128 0x11
	.byte	0x1
	.uleb128 0x25
	.uleb128 0xe
	.uleb128 0x13
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1b
	.uleb128 0xe
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.uleb128 0x10
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x2
	.uleb128 0x16
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x3
	.uleb128 0x24
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3e
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0xe
	.byte	0
	.byte	0
	.uleb128 0x4
	.uleb128 0x24
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3e
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0x8
	.byte	0
	.byte	0
	.uleb128 0x5
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x6
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x7
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x8
	.uleb128 0x13
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x9
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xa
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xb
	.uleb128 0x16
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xc
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xd
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xe
	.uleb128 0x13
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0xf
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x10
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x11
	.uleb128 0x21
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x12
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x13
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x14
	.uleb128 0x13
	.byte	0x1
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x15
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.uleb128 0x40
	.uleb128 0x18
	.uleb128 0x2116
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x16
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x17
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x18
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x19
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x1a
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.uleb128 0x40
	.uleb128 0x18
	.uleb128 0x2116
	.uleb128 0x19
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_aranges,"",@progbits
	.4byte	0x1c
	.2byte	0x2
	.4byte	$Ldebug_info0
	.byte	0x4
	.byte	0
	.2byte	0
	.2byte	0
	.4byte	$Ltext0
	.4byte	$Letext0-$Ltext0
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
$Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
$LASF10:
	.ascii	"__off_t\000"
$LASF17:
	.ascii	"_IO_read_ptr\000"
$LASF29:
	.ascii	"_chain\000"
$LASF8:
	.ascii	"size_t\000"
$LASF35:
	.ascii	"_shortbuf\000"
$LASF52:
	.ascii	"_IO_2_1_stderr_\000"
$LASF23:
	.ascii	"_IO_buf_base\000"
$LASF83:
	.ascii	"parse_line_success\000"
$LASF7:
	.ascii	"long long unsigned int\000"
$LASF6:
	.ascii	"long long int\000"
$LASF4:
	.ascii	"signed char\000"
$LASF30:
	.ascii	"_fileno\000"
$LASF18:
	.ascii	"_IO_read_end\000"
$LASF11:
	.ascii	"long int\000"
$LASF16:
	.ascii	"_flags\000"
$LASF24:
	.ascii	"_IO_buf_end\000"
$LASF33:
	.ascii	"_cur_column\000"
$LASF9:
	.ascii	"__quad_t\000"
$LASF70:
	.ascii	"num_a\000"
$LASF66:
	.ascii	"args_t\000"
$LASF32:
	.ascii	"_old_offset\000"
$LASF37:
	.ascii	"_offset\000"
$LASF64:
	.ascii	"has_arg\000"
$LASF81:
	.ascii	"line\000"
$LASF46:
	.ascii	"_IO_marker\000"
$LASF53:
	.ascii	"stdin\000"
$LASF0:
	.ascii	"unsigned int\000"
$LASF3:
	.ascii	"long unsigned int\000"
$LASF89:
	.ascii	"_IO_FILE_plus\000"
$LASF21:
	.ascii	"_IO_write_ptr\000"
$LASF63:
	.ascii	"name\000"
$LASF56:
	.ascii	"sys_nerr\000"
$LASF48:
	.ascii	"_sbuf\000"
$LASF2:
	.ascii	"short unsigned int\000"
$LASF25:
	.ascii	"_IO_save_base\000"
$LASF86:
	.ascii	"main.c\000"
$LASF36:
	.ascii	"_lock\000"
$LASF31:
	.ascii	"_flags2\000"
$LASF43:
	.ascii	"_mode\000"
$LASF54:
	.ascii	"stdout\000"
$LASF50:
	.ascii	"_IO_2_1_stdin_\000"
$LASF58:
	.ascii	"optarg\000"
$LASF79:
	.ascii	"read_file\000"
$LASF13:
	.ascii	"sizetype\000"
$LASF69:
	.ascii	"long double\000"
$LASF59:
	.ascii	"optind\000"
$LASF22:
	.ascii	"_IO_write_end\000"
$LASF75:
	.ascii	"longOpts\000"
$LASF88:
	.ascii	"_IO_lock_t\000"
$LASF45:
	.ascii	"_IO_FILE\000"
$LASF67:
	.ascii	"in_file\000"
$LASF49:
	.ascii	"_pos\000"
$LASF77:
	.ascii	"error\000"
$LASF57:
	.ascii	"sys_errlist\000"
$LASF28:
	.ascii	"_markers\000"
$LASF80:
	.ascii	"file\000"
$LASF1:
	.ascii	"unsigned char\000"
$LASF5:
	.ascii	"short int\000"
$LASF62:
	.ascii	"option\000"
$LASF65:
	.ascii	"flag\000"
$LASF68:
	.ascii	"out_file\000"
$LASF34:
	.ascii	"_vtable_offset\000"
$LASF71:
	.ascii	"num_b\000"
$LASF51:
	.ascii	"_IO_2_1_stdout_\000"
$LASF15:
	.ascii	"FILE\000"
$LASF61:
	.ascii	"optopt\000"
$LASF72:
	.ascii	"gcd_ab\000"
$LASF14:
	.ascii	"char\000"
$LASF82:
	.ascii	"line_read\000"
$LASF85:
	.ascii	"GNU C11 6.3.0 20170516 -meb -march=mips32r2 -mfpxx -mlls"
	.ascii	"c -mno-lxc1-sxc1 -mips32r2 -mabi=32 -g -O0\000"
$LASF60:
	.ascii	"opterr\000"
$LASF47:
	.ascii	"_next\000"
$LASF12:
	.ascii	"__off64_t\000"
$LASF19:
	.ascii	"_IO_read_base\000"
$LASF27:
	.ascii	"_IO_save_end\000"
$LASF38:
	.ascii	"__pad1\000"
$LASF39:
	.ascii	"__pad2\000"
$LASF40:
	.ascii	"__pad3\000"
$LASF41:
	.ascii	"__pad4\000"
$LASF42:
	.ascii	"__pad5\000"
$LASF84:
	.ascii	"found\000"
$LASF44:
	.ascii	"_unused2\000"
$LASF55:
	.ascii	"stderr\000"
$LASF74:
	.ascii	"argv\000"
$LASF87:
	.ascii	"/tmp\000"
$LASF26:
	.ascii	"_IO_backup_base\000"
$LASF90:
	.ascii	"parse_line\000"
$LASF73:
	.ascii	"argc\000"
$LASF76:
	.ascii	"args\000"
$LASF78:
	.ascii	"main\000"
$LASF20:
	.ascii	"_IO_write_base\000"
	.ident	"GCC: (Debian 6.3.0-18+deb9u1) 6.3.0 20170516"
