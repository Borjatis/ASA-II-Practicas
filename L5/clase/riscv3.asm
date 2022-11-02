#-- Imprimir el nº 30 en la consola
#-- (Imprimir un nº entero)

	#-- Servicios del stma operativo
	.eqv EXIT 10
	.eqv PRINT_INT
	
	.text
	
	#-- Imprimir el nº 30
	li a0, 30
	li a7, PRINT_INT #PrintInt
	ecall
	
	
	#-- Llamar a EXIT: Terminar
	li a7, EXIT
	ecall
	

