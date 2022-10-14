#-- Programa para calcular la sucesión de fibonacci: 0,1,1,2,3,5,8,13,21,34,55... 
#-- El resultado se deja en el registro 7
#-- Usamos el registro x5 como contador: 0,1,1,2,3,5,8...
#-- En cada vuelta sumamos el valor de x5 a la cuenta acumulada en x7

	.text

	#-- Inicializamos los registros x5,x6 a 0
	addi x5, x0, 0
	addi x6, x0, 1
	addi x7, x0, 0
	
	
	#-- Bucle principal
bucle:
	
	#-- Obtener termino i-simo
	add x7, x6, x5	#-- x7 = x6 + x5
	
	#-- Obtener termino i-simo
	addi x5, x6, 0  #-- x5 = x6 + x0
	
	#-- Obtener termino i-simo
	addi x6, x7, 0  #-- x6 = x7 + x0
	
	#-- Repetir el bucle
	b bucle

#2-55
#3-7 instr. pero el init x7 se podria obviar-->6 instr.
#4-Lee execute, 7x4bits=28 bits
#5-Lee execute
#6-Byte de menor peso 93 02 00...

