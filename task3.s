.data

vector1: .byte 1,2,3,4,5,6,7,8

vector2: .byte 9,10,11,12,13,14,15,16


.text
la x12, vector2
la x13, vector1
li x20, 0x10000010
li t0, 0
li t1, 8

loop:
beq t0, t1 , End

# to be the base address constant
add s0, x12, t0
add s1, x13, t0
add s2, x20, t0

lb x15,0(s0)
lb x16,0(s1)

add x17, x16, x15

sb x17,0(s2)

# print data as well 
mv a1, x17
li a0, 1
ecall

# next line
li a1, '\n'
li a0, 11
ecall

addi t0, t0, 1

jal loop

End:

#Exit
li a0, 10
ecall