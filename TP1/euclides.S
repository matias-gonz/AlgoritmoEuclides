#include <sys/regdef.h>
#include <sys/syscall.h>

#define frame_size 40
#define fp_offset 24
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

    sw a0, arg_one_offset(fp) # a0 direccion pointer
    sw a1, arg_two_offset(fp) # 01 lenght



    move t0,zero        #counter t0 inicializo con 0
    lw t1, 0(a1)        #lenght en t1
    lw t2, 0(a0)        #pointer en t2


for:
    addi t3,t0,1            #t3 uso para la comparacion con lenght
    beq t3,t1,done_for      
    lw  t4,0(t2)            #cargo a en registro t4           
    lw  t5,4(t2)            #cargo a en registro t4

    bge t4, t5, swap
    b euclides_loop
swap:
    add t6, t5, zero
    add t5, t4, zero
    add t4, t6, zero

euclides_loop:
    beqz t4, fin_euclides_loop  #si el numero mas chico es 0 termino
    rem t6, t5, t4              #calculo del resto
    add t5, t4, zero
    add t4, t6, zero
    b euclides_loop 

fin_euclides_loop:
    sw t5, 8(t2)
    addi t2,t2,12
    b for
    
done_for:
    #delete stack
    lw	gp, gp_offset(sp)
    lw	fp, fp_offset(sp)

	addu sp, sp, frame_size

    jr ra

.end euclides
.size euclides, .-euclides