.data
	
a:	.word -5
b:	.word 2
c:	.word 30
d:	.word 5
f:	.word 0

	.text
	
	la x5,a
	
	lw x10, 0(x5)
	lw x11, 4(x5)
	lw x12, 8(x5)
	lw x13, 12(x5)
	
#--Sumando f = (a + b + c) - (d - 3)
	add x14, x10, x11 #--f = a+b
	add x14, x14, x12 #--f = (a+b)+c
	
	addi x15, x13, -3 #--j = d-3
	sub x14,x14,x15 #--f= f-j
	
	sw x14, 16(x5) #-- Guardar f en memoria
	
	li a7, 10
	ecall 
	
#-- 13x4=52
#-- ¿En qué dirección de memoria está almacenada la variable f?
#-- 0x10010010