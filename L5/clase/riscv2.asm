#-- Programa para ejecutar el servicio EXIT
#-- del stma operativo

	#-- Servicios del stma operativo
	.eqv EXIT 10

	.text
	
	#-- Manual: código 10 (EXIT)
	#-- Manual: a7 = 10
	
	#-- Llamar a EXIT: Terminar
	li a7, EXIT
	ecall
	
	