	.data
	
a:	.word 0
b:	.word 0
c:	.word 0
d:	.word 0

	.text
	
	la x5,a
	la x6,b
	la x7,c
	la x8,d
	
	li a7, 10
	ecall 

#-- Hay 10 instrucciones en código máquina
