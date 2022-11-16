
	#-- Servicios del stma operativo
	.eqv EXIT 10
	.eqv PRINT_STRING 4
	
	.data
	.string "HOLAA"
msg1:	.string "HOLI0fin"
	.asciz "HOLA2"
	
	.text
	
	#--
	la a0, msg1
	li a7, PRINT_STRING
	ecall
	
	
	#-- Terminar
	li a7, EXIT
	ecall
	
#El programa imprimira por pantalla la etiqueta hasta
#el /0, aunque metas un 0 ese cero es en ASCII,no repercute

#En python para mirar el que sea ord('A') ó chr('65')
	