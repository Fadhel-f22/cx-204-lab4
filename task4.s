.data
myString: .string "a = "
myString1: .string " \n b = "
myString2: .string " \n Result = "
.text



addi x5,x0,0
addi x6,x0,1
addi x7,x0,0
addi x8,x0,5
addi x9,x0,6
addi x28,x0,0

addi x12, x8, 0
addi x13, x9, 0

loop:
and x7,x9,x6
bne x6,x7,skip
add x28,x28,x8
skip:
slli x8,x8,1
srli x9,x9,1
bge x9,x7,loop


#print

la a1, myString
li a0, 4
ecall
add a1,x0,x12
li a0, 1
ecall

la a1, myString1
li a0, 4
ecall
add a1,x0,x13
li a0, 1
ecall

la a1, myString2
li a0, 4
ecall
add a1,x0,x28
li a0, 1
ecall

#Exit
li a0, 10
ecall