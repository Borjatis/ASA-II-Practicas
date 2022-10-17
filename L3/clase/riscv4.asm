#-- Programa para sumar las variables a y b y dejar el
#-- resultado en otra variable f = a +b
#-- OPTIMIZADO EJER ANTERIOR DE 12 INSTRUCCIONES A..8
	.data
a:	.word 2	#-- a=2
b:	.word 3 #-- b=3
f:	.word 0 #-- f=0 (da igua)

	.text

	#-- f= a + b (Variables)
	
	#-- Meter las variables a y b en registros
	
	#-- Variable a (meterla en un registro)
	#-- 1- Meter en un registro la direccion de la variable
	#--	-x5 la direccion de a (x5 = a)
	la x5,a #loadadress, pseudoinstruc
	
	#-- Leer la variable a
	#-- x6 = la variable a(2)
	lw x6, 0(x5) # variable x5 en memoria + cte"0"
	#-- x6 = mem[x5 + off]
	
	lw x8, 4(x5) #-- Leer variable b
	
	#-- Suma de los registros
	#-- a --> x6
	#-- b --> x8
	#-- x9 --> x6 + x8
	add x9, x6, x8
	
	sw x9,8(x5) #-- Guardar variable f
	
	#-- Terminar
	li a7,10
	ecall