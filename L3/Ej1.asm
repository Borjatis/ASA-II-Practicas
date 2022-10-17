#-- Inicializar los registros x5, x6, x7 y x8 con los valores 5, 6, 7 y 8

	.text
	
	li x5, 5
	li x6, 6
	li x7, 7
	li x8, 8


#-- Transferir a los registros x15, x16, x17 y x18 respectivamente: x15 = x5, x16 = x6, x17 = x7 y x18 = x8

	mv x15,x5
	mv x16,x6
	mv x17,x7
	mv x18,x8
	
	#-- Terminar
	li a7, 10
	ecall

#-- Programa tiene 10 instrucciones
#-- Ocupa 10x4 = 40 bytes
