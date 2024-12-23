.data

True: .string"Equal"

False: .string"Not Equal"


.text

li t0, 5
li t1, 10


beq t1, t0, true
# printing a string
la a1,False  # address should be in a1 (base address)
li a0, 4
ecall
jal End

true:
# printing a string
la a1,True  # address should be in a1 (base address)
li a0, 4
ecall

End:
#exit
li a0, 10
ecall