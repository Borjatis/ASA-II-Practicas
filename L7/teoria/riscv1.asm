#-- Programa para probar los "saltos" hacia adelante

	.eqv EXIT 10
	
	.text
	
	#-- to = valor
	#-- t1= valor
	li t0 0xCAFE
	li t1 0xBACA
	b salto #salto hacia delante
	
	#-- Escribir otros valores en t0 y t1
	li t0 0xFFFF
	li t1 0x0123
	
salto:
	li a7, EXIT
	ecall