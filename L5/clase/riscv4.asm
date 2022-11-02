#-- Programa para leer un nº entero de la consola
#-- (leer del teclado)




	#-- Servicio del stma operativo
	.eqv EXIT 10
	.eqv READ_INT 5 #-- Leer un entero

	.text
	
	#-- Pedir un nº al usuario
	li a7, READ_INT
	ecall
	#-- a0: El nº introducido por el usuario
	mv t0, a0 #t0: el nº del usuario
	
	#-- Escribir el nº en la consola
	li a7, 10
	ecall
	
	
	#-- Llamar a EXIT: Terminar
	li a7, EXIT
	ecall