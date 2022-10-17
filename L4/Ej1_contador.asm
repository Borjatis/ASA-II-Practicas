#-- Contador con valor inicial definido mediante
#-- un identificador
	
	#-- Definir el valor inicial para el contador
	.eqv INICIO 100
	
	#--Cantidad que se incrementa
	.eqv INC 10
	
	.text
	
	#-- Inicializar contador
	#-- El ensamblador sustituye el identificador INICIAL
	#-- por el numero 20
	li x5, INICIO
	li x6, INC
	
bucle:
	#-- Incrementar contador: x5 = x5 + 1
	add x5, x5, x6
	
	#-- Repetir
	b bucle
	
#ESTA MAL HAY QUE HACERLO POR VARIABLE COMO EN SOLUCIONES