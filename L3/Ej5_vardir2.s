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
	
	lw x10, 0(x5)
	lw x11, 0(x6)
	lw x12, 0(x7)
	lw x13, 0(x8)
	

	li a7, 10
	ecall 
	
#--14x4= 56
