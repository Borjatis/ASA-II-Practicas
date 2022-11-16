#-- Programa para imprimir los numeros de 1 al 10
#-- y terminar

	.include "../servicios.asm"
	
	.text
	
	#-- t0: contador (1-10)
	li t0, 0
	
bucle:	

	#-- Incrementa el contador
	addi t0,t0,1
	
	#-- Imprimir el contador
	mv a0,t0
	li a7,PRINT_INT
	ecall
	
	#-- Imprimir un salto de linea
	li a0, '\n'
	li a7, PRINT_CHAR
	ecall
	
	#-- Si el contador es 10 --> Terminar
	li t1,10
	beq t0,t1,fin
	
	#-- t0 < 10
	#-- Repetir el bucle
	b bucle
	
	
	
	
fin:
	
	#-- Terminar
	li a7, EXIT
	ecall