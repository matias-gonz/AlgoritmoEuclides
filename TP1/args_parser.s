	.file	1 "args_parser.c"
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
	.ascii	"Vhi:o:\000"
	.text
	.align	2
	.globl	parse_args
	.set	nomips16
	.set	nomicromips
	.ent	parse_args
	.type	parse_args, @function
parse_args:
	.frame	$fp,48,$31		# vars= 8, regs= 2/0, args= 24, gp= 8
	.mask	0xc0000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.cpload	$25
	.set	nomacro
	addiu	$sp,$sp,-48
	sw	$31,44($sp)
	sw	$fp,40($sp)
	move	$fp,$sp
	.cprestore	24
	sw	$4,48($fp)
	sw	$5,52($fp)
	sw	$6,56($fp)
	lw	$4,56($fp)
	lw	$2,%got(init_default_args)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,init_default_args
1:	jalr	$25
	nop

	lw	$28,24($fp)
	sw	$0,32($fp)
	sw	$0,36($fp)
	b	$L2
	nop

$L9:
	lw	$2,32($fp)
	li	$3,104			# 0x68
	beq	$2,$3,$L4
	nop

	slt	$3,$2,105
	beq	$3,$0,$L5
	nop

	li	$3,86			# 0x56
	beq	$2,$3,$L6
	nop

	b	$L3
	nop

$L5:
	li	$3,105			# 0x69
	beq	$2,$3,$L7
	nop

	li	$3,111			# 0x6f
	beq	$2,$3,$L8
	nop

	b	$L3
	nop

$L6:
	lw	$2,%got(print_version)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,print_version
1:	jalr	$25
	nop

	lw	$28,24($fp)
	move	$5,$0
	lw	$4,56($fp)
	lw	$2,%got(p_exit)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,p_exit
1:	jalr	$25
	nop

	lw	$28,24($fp)
$L4:
	lw	$2,%got(stdout)($28)
	lw	$2,0($2)
	move	$4,$2
	lw	$2,%got(display_usage)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,display_usage
1:	jalr	$25
	nop

	lw	$28,24($fp)
	move	$5,$0
	lw	$4,56($fp)
	lw	$2,%got(p_exit)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,p_exit
1:	jalr	$25
	nop

	lw	$28,24($fp)
$L7:
	lw	$4,56($fp)
	lw	$2,%got(set_input_file)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,set_input_file
1:	jalr	$25
	nop

	lw	$28,24($fp)
	b	$L2
	nop

$L8:
	lw	$4,56($fp)
	lw	$2,%got(set_output_file)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,set_output_file
1:	jalr	$25
	nop

	lw	$28,24($fp)
	b	$L2
	nop

$L3:
	lw	$2,%got(stderr)($28)
	lw	$2,0($2)
	move	$4,$2
	lw	$2,%got(display_usage)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,display_usage
1:	jalr	$25
	nop

	lw	$28,24($fp)
	li	$5,1			# 0x1
	lw	$4,56($fp)
	lw	$2,%got(p_exit)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,p_exit
1:	jalr	$25
	nop

	lw	$28,24($fp)
$L2:
	addiu	$2,$fp,36
	sw	$2,16($sp)
	lw	$2,%got(longOpts)($28)
	addiu	$7,$2,%lo(longOpts)
	lw	$2,%got($LC4)($28)
	addiu	$6,$2,%lo($LC4)
	lw	$5,52($fp)
	lw	$4,48($fp)
	lw	$2,%call16(getopt_long)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,getopt_long
1:	jalr	$25
	nop

	lw	$28,24($fp)
	sw	$2,32($fp)
	lw	$3,32($fp)
	li	$2,-1			# 0xffffffffffffffff
	bne	$3,$2,$L9
	nop

	nop
	move	$sp,$fp
	lw	$31,44($sp)
	lw	$fp,40($sp)
	addiu	$sp,$sp,48
	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	parse_args
	.size	parse_args, .-parse_args
	.align	2
	.globl	init_default_args
	.set	nomips16
	.set	nomicromips
	.ent	init_default_args
	.type	init_default_args, @function
init_default_args:
	.frame	$fp,8,$31		# vars= 0, regs= 1/0, args= 0, gp= 0
	.mask	0x40000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.cpload	$25
	.set	nomacro
	addiu	$sp,$sp,-8
	sw	$fp,4($sp)
	move	$fp,$sp
	sw	$4,8($fp)
	lw	$2,%got(stdin)($28)
	lw	$3,0($2)
	lw	$2,8($fp)
	sw	$3,0($2)
	lw	$2,%got(stdout)($28)
	lw	$3,0($2)
	lw	$2,8($fp)
	sw	$3,4($2)
	nop
	move	$sp,$fp
	lw	$fp,4($sp)
	addiu	$sp,$sp,8
	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	init_default_args
	.size	init_default_args, .-init_default_args
	.rdata
	.align	2
$LC5:
	.ascii	"tp1 Version 1.0\000"
	.text
	.align	2
	.globl	print_version
	.set	nomips16
	.set	nomicromips
	.ent	print_version
	.type	print_version, @function
print_version:
	.frame	$fp,32,$31		# vars= 0, regs= 2/0, args= 16, gp= 8
	.mask	0xc0000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.cpload	$25
	.set	nomacro
	addiu	$sp,$sp,-32
	sw	$31,28($sp)
	sw	$fp,24($sp)
	move	$fp,$sp
	.cprestore	16
	lw	$2,%got($LC5)($28)
	addiu	$4,$2,%lo($LC5)
	lw	$2,%call16(puts)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,puts
1:	jalr	$25
	nop

	lw	$28,16($fp)
	nop
	move	$sp,$fp
	lw	$31,28($sp)
	lw	$fp,24($sp)
	addiu	$sp,$sp,32
	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	print_version
	.size	print_version, .-print_version
	.rdata
	.align	2
$LC6:
	.ascii	"Error closing file\000"
	.text
	.align	2
	.globl	p_exit
	.set	nomips16
	.set	nomicromips
	.ent	p_exit
	.type	p_exit, @function
p_exit:
	.frame	$fp,32,$31		# vars= 0, regs= 2/0, args= 16, gp= 8
	.mask	0xc0000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.cpload	$25
	.set	nomacro
	addiu	$sp,$sp,-32
	sw	$31,28($sp)
	sw	$fp,24($sp)
	move	$fp,$sp
	.cprestore	16
	sw	$4,32($fp)
	sw	$5,36($fp)
	lw	$2,32($fp)
	lw	$2,0($2)
	move	$4,$2
	lw	$2,%call16(fclose)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,fclose
1:	jalr	$25
	nop

	lw	$28,16($fp)
	move	$3,$2
	li	$2,-1			# 0xffffffffffffffff
	bne	$3,$2,$L13
	nop

	lw	$2,%got($LC6)($28)
	addiu	$4,$2,%lo($LC6)
	lw	$2,%call16(perror)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,perror
1:	jalr	$25
	nop

	lw	$28,16($fp)
	li	$2,1			# 0x1
	sw	$2,36($fp)
$L13:
	lw	$2,32($fp)
	lw	$2,4($2)
	move	$4,$2
	lw	$2,%call16(fclose)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,fclose
1:	jalr	$25
	nop

	lw	$28,16($fp)
	move	$3,$2
	li	$2,-1			# 0xffffffffffffffff
	bne	$3,$2,$L14
	nop

	lw	$2,%got($LC6)($28)
	addiu	$4,$2,%lo($LC6)
	lw	$2,%call16(perror)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,perror
1:	jalr	$25
	nop

	lw	$28,16($fp)
	li	$2,1			# 0x1
	sw	$2,36($fp)
$L14:
	lw	$4,36($fp)
	lw	$2,%call16(exit)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,exit
1:	jalr	$25
	nop

	.set	macro
	.set	reorder
	.end	p_exit
	.size	p_exit, .-p_exit
	.rdata
	.align	2
$LC7:
	.ascii	"r\000"
	.align	2
$LC8:
	.ascii	"Error opening input file\000"
	.text
	.align	2
	.globl	set_input_file
	.set	nomips16
	.set	nomicromips
	.ent	set_input_file
	.type	set_input_file, @function
set_input_file:
	.frame	$fp,40,$31		# vars= 8, regs= 2/0, args= 16, gp= 8
	.mask	0xc0000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.cpload	$25
	.set	nomacro
	addiu	$sp,$sp,-40
	sw	$31,36($sp)
	sw	$fp,32($sp)
	move	$fp,$sp
	.cprestore	16
	sw	$4,40($fp)
	lw	$2,%got(optarg)($28)
	lw	$3,0($2)
	lw	$2,%got($LC7)($28)
	addiu	$5,$2,%lo($LC7)
	move	$4,$3
	lw	$2,%call16(fopen)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,fopen
1:	jalr	$25
	nop

	lw	$28,16($fp)
	sw	$2,24($fp)
	lw	$2,24($fp)
	bne	$2,$0,$L16
	nop

	lw	$2,%got($LC8)($28)
	addiu	$4,$2,%lo($LC8)
	lw	$2,%call16(perror)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,perror
1:	jalr	$25
	nop

	lw	$28,16($fp)
	li	$5,1			# 0x1
	lw	$4,40($fp)
	lw	$2,%got(p_exit)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,p_exit
1:	jalr	$25
	nop

	lw	$28,16($fp)
	b	$L18
	nop

$L16:
	lw	$2,40($fp)
	lw	$3,24($fp)
	sw	$3,0($2)
$L18:
	nop
	move	$sp,$fp
	lw	$31,36($sp)
	lw	$fp,32($sp)
	addiu	$sp,$sp,40
	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	set_input_file
	.size	set_input_file, .-set_input_file
	.rdata
	.align	2
$LC9:
	.ascii	"-\000"
	.align	2
$LC10:
	.ascii	"w\000"
	.align	2
$LC11:
	.ascii	"Error opening output file\000"
	.text
	.align	2
	.globl	set_output_file
	.set	nomips16
	.set	nomicromips
	.ent	set_output_file
	.type	set_output_file, @function
set_output_file:
	.frame	$fp,40,$31		# vars= 8, regs= 2/0, args= 16, gp= 8
	.mask	0xc0000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.cpload	$25
	.set	nomacro
	addiu	$sp,$sp,-40
	sw	$31,36($sp)
	sw	$fp,32($sp)
	move	$fp,$sp
	.cprestore	16
	sw	$4,40($fp)
	lw	$2,%got(optarg)($28)
	lw	$3,0($2)
	lw	$2,%got($LC9)($28)
	addiu	$5,$2,%lo($LC9)
	move	$4,$3
	lw	$2,%call16(strcmp)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,strcmp
1:	jalr	$25
	nop

	lw	$28,16($fp)
	beq	$2,$0,$L22
	nop

	lw	$2,%got(optarg)($28)
	lw	$3,0($2)
	lw	$2,%got($LC10)($28)
	addiu	$5,$2,%lo($LC10)
	move	$4,$3
	lw	$2,%call16(fopen)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,fopen
1:	jalr	$25
	nop

	lw	$28,16($fp)
	sw	$2,24($fp)
	lw	$2,24($fp)
	bne	$2,$0,$L21
	nop

	lw	$2,%got($LC11)($28)
	addiu	$4,$2,%lo($LC11)
	lw	$2,%call16(perror)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,perror
1:	jalr	$25
	nop

	lw	$28,16($fp)
	li	$5,1			# 0x1
	lw	$4,40($fp)
	lw	$2,%got(p_exit)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,p_exit
1:	jalr	$25
	nop

	lw	$28,16($fp)
	b	$L22
	nop

$L21:
	lw	$2,40($fp)
	lw	$3,24($fp)
	sw	$3,4($2)
$L22:
	nop
	move	$sp,$fp
	lw	$31,36($sp)
	lw	$fp,32($sp)
	addiu	$sp,$sp,40
	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	set_output_file
	.size	set_output_file, .-set_output_file
	.rdata
	.align	2
$LC12:
	.ascii	"Usage: \012\000"
	.align	2
$LC13:
	.ascii	"Error fprint usage\000"
	.align	2
$LC14:
	.ascii	"    tp1 -h \012\000"
	.align	2
$LC15:
	.ascii	"    tp1 -V \012\000"
	.align	2
$LC16:
	.ascii	"    tp1 -i in_file -o out_file \012\000"
	.align	2
$LC17:
	.ascii	"Options: \012\000"
	.align	2
$LC18:
	.ascii	"Error fprint Options\000"
	.align	2
$LC19:
	.ascii	"    -V, --version   Print version and quit.\012\000"
	.align	2
$LC20:
	.ascii	"Error fprint version\000"
	.align	2
$LC21:
	.ascii	"    -h, --help      Print this information and quit.\012"
	.ascii	"\000"
	.align	2
$LC22:
	.ascii	"Error fprint Print\000"
	.align	2
$LC23:
	.ascii	"    -i, --input     Specify input stream/file, \"-\" for"
	.ascii	" stdin.\012\000"
	.align	2
$LC24:
	.ascii	"Error fprint Location\000"
	.align	2
$LC25:
	.ascii	"    -o, --output    Specify output stream/file, \"-\" fo"
	.ascii	"r stdout.\012\000"
	.align	2
$LC26:
	.ascii	"Error fprint Path\000"
	.align	2
$LC27:
	.ascii	"Examples: \012\000"
	.align	2
$LC28:
	.ascii	"Error fprint Examples\000"
	.align	2
$LC29:
	.ascii	"    tp1 < in.txt > out.txt \012\000"
	.align	2
$LC30:
	.ascii	"Error fprint tp1 i\000"
	.text
	.align	2
	.globl	display_usage
	.set	nomips16
	.set	nomicromips
	.ent	display_usage
	.type	display_usage, @function
display_usage:
	.frame	$fp,32,$31		# vars= 0, regs= 2/0, args= 16, gp= 8
	.mask	0xc0000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.cpload	$25
	.set	nomacro
	addiu	$sp,$sp,-32
	sw	$31,28($sp)
	sw	$fp,24($sp)
	move	$fp,$sp
	.cprestore	16
	sw	$4,32($fp)
	lw	$2,%got($LC12)($28)
	addiu	$5,$2,%lo($LC12)
	lw	$4,32($fp)
	lw	$2,%call16(fprintf)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,fprintf
1:	jalr	$25
	nop

	lw	$28,16($fp)
	bgez	$2,$L24
	nop

	lw	$2,%got($LC13)($28)
	addiu	$4,$2,%lo($LC13)
	lw	$2,%call16(perror)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,perror
1:	jalr	$25
	nop

	lw	$28,16($fp)
	li	$4,1			# 0x1
	lw	$2,%call16(exit)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,exit
1:	jalr	$25
	nop

$L24:
	lw	$2,%got($LC14)($28)
	addiu	$5,$2,%lo($LC14)
	lw	$4,32($fp)
	lw	$2,%call16(fprintf)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,fprintf
1:	jalr	$25
	nop

	lw	$28,16($fp)
	bgez	$2,$L25
	nop

	lw	$2,%got($LC13)($28)
	addiu	$4,$2,%lo($LC13)
	lw	$2,%call16(perror)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,perror
1:	jalr	$25
	nop

	lw	$28,16($fp)
	li	$4,1			# 0x1
	lw	$2,%call16(exit)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,exit
1:	jalr	$25
	nop

$L25:
	lw	$2,%got($LC15)($28)
	addiu	$5,$2,%lo($LC15)
	lw	$4,32($fp)
	lw	$2,%call16(fprintf)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,fprintf
1:	jalr	$25
	nop

	lw	$28,16($fp)
	bgez	$2,$L26
	nop

	lw	$2,%got($LC13)($28)
	addiu	$4,$2,%lo($LC13)
	lw	$2,%call16(perror)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,perror
1:	jalr	$25
	nop

	lw	$28,16($fp)
	li	$4,1			# 0x1
	lw	$2,%call16(exit)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,exit
1:	jalr	$25
	nop

$L26:
	lw	$2,%got($LC16)($28)
	addiu	$5,$2,%lo($LC16)
	lw	$4,32($fp)
	lw	$2,%call16(fprintf)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,fprintf
1:	jalr	$25
	nop

	lw	$28,16($fp)
	bgez	$2,$L27
	nop

	lw	$2,%got($LC13)($28)
	addiu	$4,$2,%lo($LC13)
	lw	$2,%call16(perror)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,perror
1:	jalr	$25
	nop

	lw	$28,16($fp)
	li	$4,1			# 0x1
	lw	$2,%call16(exit)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,exit
1:	jalr	$25
	nop

$L27:
	lw	$2,%got($LC17)($28)
	addiu	$5,$2,%lo($LC17)
	lw	$4,32($fp)
	lw	$2,%call16(fprintf)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,fprintf
1:	jalr	$25
	nop

	lw	$28,16($fp)
	bgez	$2,$L28
	nop

	lw	$2,%got($LC18)($28)
	addiu	$4,$2,%lo($LC18)
	lw	$2,%call16(perror)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,perror
1:	jalr	$25
	nop

	lw	$28,16($fp)
	li	$4,1			# 0x1
	lw	$2,%call16(exit)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,exit
1:	jalr	$25
	nop

$L28:
	lw	$2,%got($LC19)($28)
	addiu	$5,$2,%lo($LC19)
	lw	$4,32($fp)
	lw	$2,%call16(fprintf)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,fprintf
1:	jalr	$25
	nop

	lw	$28,16($fp)
	bgez	$2,$L29
	nop

	lw	$2,%got($LC20)($28)
	addiu	$4,$2,%lo($LC20)
	lw	$2,%call16(perror)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,perror
1:	jalr	$25
	nop

	lw	$28,16($fp)
	li	$4,1			# 0x1
	lw	$2,%call16(exit)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,exit
1:	jalr	$25
	nop

$L29:
	lw	$2,%got($LC21)($28)
	addiu	$5,$2,%lo($LC21)
	lw	$4,32($fp)
	lw	$2,%call16(fprintf)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,fprintf
1:	jalr	$25
	nop

	lw	$28,16($fp)
	bgez	$2,$L30
	nop

	lw	$2,%got($LC22)($28)
	addiu	$4,$2,%lo($LC22)
	lw	$2,%call16(perror)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,perror
1:	jalr	$25
	nop

	lw	$28,16($fp)
	li	$4,1			# 0x1
	lw	$2,%call16(exit)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,exit
1:	jalr	$25
	nop

$L30:
	lw	$2,%got($LC23)($28)
	addiu	$5,$2,%lo($LC23)
	lw	$4,32($fp)
	lw	$2,%call16(fprintf)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,fprintf
1:	jalr	$25
	nop

	lw	$28,16($fp)
	bgez	$2,$L31
	nop

	lw	$2,%got($LC24)($28)
	addiu	$4,$2,%lo($LC24)
	lw	$2,%call16(perror)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,perror
1:	jalr	$25
	nop

	lw	$28,16($fp)
	li	$4,1			# 0x1
	lw	$2,%call16(exit)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,exit
1:	jalr	$25
	nop

$L31:
	lw	$2,%got($LC25)($28)
	addiu	$5,$2,%lo($LC25)
	lw	$4,32($fp)
	lw	$2,%call16(fprintf)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,fprintf
1:	jalr	$25
	nop

	lw	$28,16($fp)
	bgez	$2,$L32
	nop

	lw	$2,%got($LC26)($28)
	addiu	$4,$2,%lo($LC26)
	lw	$2,%call16(perror)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,perror
1:	jalr	$25
	nop

	lw	$28,16($fp)
	li	$4,1			# 0x1
	lw	$2,%call16(exit)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,exit
1:	jalr	$25
	nop

$L32:
	lw	$2,%got($LC27)($28)
	addiu	$5,$2,%lo($LC27)
	lw	$4,32($fp)
	lw	$2,%call16(fprintf)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,fprintf
1:	jalr	$25
	nop

	lw	$28,16($fp)
	bgez	$2,$L33
	nop

	lw	$2,%got($LC28)($28)
	addiu	$4,$2,%lo($LC28)
	lw	$2,%call16(perror)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,perror
1:	jalr	$25
	nop

	lw	$28,16($fp)
	li	$4,1			# 0x1
	lw	$2,%call16(exit)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,exit
1:	jalr	$25
	nop

$L33:
	lw	$2,%got($LC29)($28)
	addiu	$5,$2,%lo($LC29)
	lw	$4,32($fp)
	lw	$2,%call16(fprintf)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,fprintf
1:	jalr	$25
	nop

	lw	$28,16($fp)
	bgez	$2,$L35
	nop

	lw	$2,%got($LC30)($28)
	addiu	$4,$2,%lo($LC30)
	lw	$2,%call16(perror)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,perror
1:	jalr	$25
	nop

	lw	$28,16($fp)
	li	$4,1			# 0x1
	lw	$2,%call16(exit)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,exit
1:	jalr	$25
	nop

$L35:
	nop
	move	$sp,$fp
	lw	$31,28($sp)
	lw	$fp,24($sp)
	addiu	$sp,$sp,32
	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	display_usage
	.size	display_usage, .-display_usage
	.ident	"GCC: (Debian 6.3.0-18+deb9u1) 6.3.0 20170516"
