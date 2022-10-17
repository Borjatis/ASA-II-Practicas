#-- Programa para almacenar un valor en
#-- el segmento de datos (a.k.a definir una variable)

	#-- Indicar al ensamblador que lo que viene a 
	#-- continuacion esta en el segmento de datos
	.data
	
	#-- Dato a colocar en el segmento de datos
	#-- (en la primera posicion)
	#.word 0xBEBECAFE, 0xCAFEBACA, 0XCAFECACA
	#.word 1,2,3,4,5,6
	
a:	.word 0xBEBECAFE
b:	.word 0xCAFEBACA
hola:	.word 0XCAFECACA
	.word 1,2,3,4,5,6
	
	
	