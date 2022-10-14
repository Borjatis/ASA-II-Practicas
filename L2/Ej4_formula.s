#-- Programa para calcular la expresión: f = (a + b + c) - [(d - a) + (e + 3) - 30]

	.text

	#-- Inicializamos los registros 
	addi x5, x0, 2 # a=2
	addi x6, x0, 4 # b=4
	addi x7, x0, 6 # c=6
	addi x8, x0, 8 # d=8
	addi x9, x0, 10 # e=10
	
	#- x3= a+b+c
	add x3, x5, x6	#-- f = a + b
	
	add x3, x3, x7 #-- f = (a+b)+c
	
	#- x4= [(d - a) + (e + 3) - 30]
	sub x8, x8, x5 #-- f = d-a
	
	addi x9, x9, 3 #-- f = e+3
	
	add x4, x8, x9 #-- f = (d-a)+(e+3)
	
	addi x4, x4, -30 #-- f = (d-a)+(e+3)-30
	
	#- f=(a+b+c)-[(d-a)+(e+3)-30]
	sub x3, x3, x4 #-- f= (a+b+c)-[(d-a)+(e+3)-30]
	
	#-- Terminar
	li a7, 10
	ecall
	
# f = x3 = 23
	
	