#--Manera mas pro
.data
	
a:	.word 0
b:	.word 0
c:	.word 0
d:	.word 0

	.text
	
	la x5,a
	
	lw x10, 0(x5)
	lw x11, 4(x5)
	lw x12, 8(x5)
	lw x13, 12(x5)
	
	li a7, 10
	ecall 
	
#-- 8x4 = 32
#--Este seria mejor metodo para que el programa ocupe el menor espacio posible en la memoria
