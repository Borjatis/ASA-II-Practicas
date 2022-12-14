#-- Comparar el valor de dos registros
#-- Si son iguales imprime el mensaje "IGUALES"
#-- Si son diferentes, se imprime "DIFERENTES"

	#'../'Para decirle que esta en la carpeta anterior
	.include "../servicios.asm" 
	
	#-- Valores constantes a comparar
	.eqv VALOR1 10
	.eqv VALOR2 10
	
	.data
	
	#-- Mensajes a imprimir en la consola
msg_iguales:     .string "IGUALES\n"
msg_diferentes:  .string "DIFERENTES\n"

	.text
	
	#-- Inicializar los registro t0 y t1 con dos valores
	li t0, VALOR1
	li t1, VALOR2
	
	#-- Realizar la comparacion de t0 y t1
	beq t0, t1, iguales#Si t0=t1 salta a 'iguales'
	
	#Tambien se puede hacer así
	#bne t0, t1, diferentes #Si t0!=t1
	
	#-- NO son iguales. 
	#-- Imprmir el mensaje "DIFERENTES"
	la a0, msg_diferentes
	li a7, PRINT_STRING
	ecall
	
	#-- Para terminar saltamos al codigo que hemos definido
	#-- para terminar. RECUERDA: es conveniente que SOLO haya un 
	#-- PUNTO DE SALIDA
	b fin
	
	#-- Son iguales. Se imprime el mensaje IGUALES
iguales:

	la a0, msg_iguales
	li a7, PRINT_STRING
	ecall


	#-- PUNTO DE SALIDA
	#-- BUENAS PRÁCTICAS DE PROGRAMACIÓN: que el punto de salida sea UNICO	
fin:	
	#-- Terminar
	li a7, EXIT
	ecall