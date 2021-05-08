#include <sys/regdef.h>
#include <sys/syscall.h>

#define frame_size 24
#define fp_offset 20
#define gp_offset 16

# gcd_ab
#define arg_three_offset 32

# num_b
#define arg_two_offset 28

# num_a
#define arg_one_offset 24

.text
.align 2
.globl euclides
.ent euclides

euclides:
    # stack frame creation
    .frame fp, frame_size, ra
    .set noreorder
    .cpload t9
    .set reorder
    subu	sp, sp, frame_size

    .cprestore gp_offset
    sw	gp, gp_offset(sp)
    sw	fp, fp_offset(sp)
    move fp, sp 	# inserto el valor del stack pointer en el frame pointer

    sw a0, arg_one_offset(fp) # guardo a0 en la aba del caller
    sw a1, arg_two_offset(fp) # guardo a1 en la aba del caller
    sw a2, arg_two_offset(fp) # guardo a2 en la aba del caller

check_initial_conditions:
    lw t0, 0(a0) #num_mas_chico
    lw t1, 0(a1) #num_mas_grande

    bge t0, t1, swap
    b euclides_loop

swap:
    add t2, t1, zero
    add t1, t0, zero
    add t0, t2, zero

euclides_loop:
    beqz t0, fin #si el numero mas chico es 0 termino
    rem t2, t1, t0 #calculo del resto
    add t1, t0, zero
    add t0, t2, zero
    b euclides_loop

fin:
    sw t1, 0(a2)

    #delete stack
    lw	gp, gp_offset(sp)
    lw	fp, fp_offset(sp)

	addu sp, sp, frame_size

    jr ra

.end euclides
.size euclides, .-euclides
