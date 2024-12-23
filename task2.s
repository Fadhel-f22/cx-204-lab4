


.text
li t0, 100
li t1, 0
li x8, 0x10000000

loop:
beq t1, t0, End
add t2, x8, t1  # to change the base
sb t1 , 0(t2)
addi t1, t1, 1

jal loop

End:

#exit
li a0, 10
ecall