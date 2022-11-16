#-- Programa para leer una cadena de la consola

	#-- Servicios del stma operativo
	.eqv EXIT 10
	.eqv PRINT_STRING 4
	.eqv READ_STRING 8
	
	#--- Tamaño max de la cadena introducida
	#--- por el usuario
	.eqv MAX 3
	
	.data
	#--- Cadena definida en TIEMPO DE EJECUCION
cadena:	.space MAX
#cadena:	.space 3 #ensambaldor te guarda 3 bits o caracteres
msg1:	.string "HI" #--Cadena definida en tiempo de COMPILACION


	.text
	
	#-- Pedir la cadena al usuario
	#--- a0: Direccion de "espacio" de memoria 
	#-- donde se debe guardar la memoria
	la a0, cadena
	#--- a1: EL nº max de caracteres permitido
	li a1, MAX
	li a7, READ_STRING
	ecall
	
	#--- La cadena estará metida en memoria
	
	
	#-- Terminar
	li a7, EXIT
	ecall

