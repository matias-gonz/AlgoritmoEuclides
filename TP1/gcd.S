#include <sys/regdef.h>
#include <sys/syscall.h>

#define frame_size 32
#define fp_offset 28
#define gp_offset 24

# num_b
#define arg_two_offset 36

# num_a
#define arg_one_offset 32

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
    sw a1, arg_two_offset(fp) # 01 length

    add t2, a1, zero     # cargo length en t2 (72 el de la regression)
    la t1, 0(a0) # cargo la direccion base del array en t1

for:
    #addi t3, t0, 1            # t3 uso para la comparacion con length
    #beqz t2, done_for      # si esta es mi longitud termino de loopear
    lw  t0, 0(t1)             #cargo a en registro t0           
    lw  t3, 4(t1)             #cargo b en registro t1

    bgt t0, t3, swap
    b euclides_loop

swap:
    add t4, t3, zero
    add t3, t0, zero
    add t0, t4, zero

euclides_loop:
    beqz t0, fin_euclides_loop  #si el numero mas chico es 0 termino
    rem t4, t3, t0             #calculo del resto
    add t3, t0, zero
    add t0, t4, zero
    b euclides_loop

fin_euclides_loop:
    sw t3, 8(t1) # guardo el gdb
    addi t1, t1, 96 # muevo la direccion ACA ESTA EL PROBLEMA NO SE CUANTO BIEN HAY QUE MOVERLO, PROBE CON 12, 48 y 96
    addi t2, t2, -12 # resto el tamanio de lo que tengo que hacer
    bnez t2, for
    
done_for:
    #delete stack
    lw	gp, gp_offset(sp)
    lw	fp, fp_offset(sp)

	addu sp, sp, frame_size

    jr ra

.end euclides
.size euclides, .-euclides