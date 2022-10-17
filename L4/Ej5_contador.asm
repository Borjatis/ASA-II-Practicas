##-- Contador que se envía por los LEDs

	#-- DEFINICION de constantes
	.eqv INICIO 0       #-- Valor de inicio del contador
	.eqv INC 1           #-- Incremento del contador
	.eqv LEDS 0xFFFF0010  #-- Direccion del puerto de salida
	
	#------------------------ Código
	.text
	
	#-- X5: contador. Inicializar a INICIO
	li x5, INICIO
	
	#-- x6: Puntero para acceso al puerto de salida
	li x6, LEDS
	
bucle:

	#-- Sacar el contador actual por los LEDs
	SW x5, 0(x6)
	
	#-- Incrementar contador
	addi x5, x5, INC
	
	#-- Repetir bucle
	b bucle

#Los diferentes valores que aumentan en x5