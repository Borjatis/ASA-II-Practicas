#-- Programa para calcular la suma de los números enteros: 2+4+6+8+10+....
#-- El resultado se deja en el registros 6
#-- Usamos el registro x5 como contador: 2,4,6,8,10...
#-- En cada vuelta sumamos el valor de x5 a la cuenta acumulada en x6

	.text

	#-- Inicializamos los registros x5,x6 a 0
	addi x5, x0, 0
	addi x6, x0, 2 # Cambio
	
	#-- Bucle principal
bucle:
	#-- Incrementar contador principal
	addi x5, x5, 2   #-- x5 = x5 + 2, Cambio
	
	#-- Obtener termino i-simo
	add x6, x6, x5  #-- x6 = x6 + x5
	
	#-- Repetir el bucle
	b bucle

#2-5
#3-5x4bits=20 bits
#4-Lee execute
#5-Byte de menor peso 93 02 00...
#6-Suma primeros 25 nºs = x5, por tanto x6=650