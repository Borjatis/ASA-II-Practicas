#-- Servicios del stma operativo 
	.eqv EXIT 10
	.eqv READ_INT 5 #-- Leer un entero
	.eqv PRINT_CHAR 11 #-- Imprimir un caracter
	#.eqv CAR 65 #---'A'
	.text
	
	#-- Imprimir un caracter
	#li a0, 65 #---'A' 
	#li a0, CAR # ó
	li a0, 'A'
	li a7, 11
	ecall
	
	#--Terminar
	#-- Llamar a EXIT: Terminar
	li a7, EXIT
	ecall