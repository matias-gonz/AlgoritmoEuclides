#include <sys/regdef.h>

#define frame_size 24
#define fp_offset 20
#define gp_offset 16

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

    sw a0, arg_one_offset(fp) # a0 direccion pointer
    sw a1, arg_two_offset(fp) # a1 length

    add t2, a1, zero     # cargo length en t2

for:
    beqz t2, done_for  # si length = 0, termine

    lw t0, 0(a0)  #cargo num_a en registro t0           
    lw t1, 4(a0)  #cargo num_b en registro t1

    abs t0, t0 # ABS(num_a)
    abs t1, t1 # ABS(num_b)

    bgt t0, t1, swap # si uno mas grande que el otro los cambio de lugar
    b euclides_loop # si no salto directamente al loop

swap:
    add t3, t1, zero # guardo temporalmente el valor de t1
    add t1, t0, zero # swapeo valor de t0 en t1
    add t0, t3, zero # swapeo valor temporal de t1 en t0

euclides_loop:
    beqz t0, fin_euclides_loop  #si el numero mas chico es 0 termino
    rem t3, t1, t0  # calculo del resto
    add t1, t0, zero  # guardo en t1 el valor previo
    add t0, t3, zero  # guardo en t0 el resto
    b euclides_loop

fin_euclides_loop:
    sw t1, 8(a0) # guardo el gdb
    addi t2, t2, -1  # resto el length
    addi a0, a0, 12  # avanzo el array en 12 para el proximo caso
    b for
    
done_for:
    #delete stack
    lw	gp, gp_offset(sp)
    lw	fp, fp_offset(sp)

	addu sp, sp, frame_size

    jr ra

.end euclides
.size euclides, .-euclides