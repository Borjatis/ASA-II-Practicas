	.data
	
a:
b:
	.word 1,2,3,4
c:
	.word 10
	.word 20
d:	.word 30
e:

	.text
	
	li a7, 10
	ecall 
	
#-- Hay almacenadas en el segmento de datos 7 
#-- El segmento de datos ocupa 7x4= 28 bytes
#-- El programa ocupa 2x4= 8 bytes
#-- En la direccion 0x10010014 la palabra es 20

#-- Lo vuelco en la flecha arriba 0101 y luego hex
#-- en este caso al ser de segmento de datos es de data a hex
