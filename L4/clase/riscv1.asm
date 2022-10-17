#-- Programa para asignar un valor al registro x5
#-- (por ejemplo el numero 20)

	#-- Constante (mejora la legibilidad del programador)
	.eqv VALOR 20
	
	.text
	
	#--- x5 = 20
	li x5,VALOR # = que "li x5, 20"
	
	#-- Terminar
	li a7, 10
	ecall