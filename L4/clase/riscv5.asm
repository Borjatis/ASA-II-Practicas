#-- Programa de ejemplo para encener los LEDs
#-- (puerto de salida) que están mapeados en memoria

	#(.iomm)

#	.data
	
#hola:	.word 3
	
	#-- Me he leido el manual y esto es
	#-- Direccion del puerto de salida de los LEDs
	.eqv SEG_R 0xFFFF0010
	.eqv VALOR 0x06 #(0000 0110)
	
	#en data segment en el valor, puedes hacer pruebas
	#para probar que segmentos se encienden con diferente numeros
	
	.text
	
	#--- Direccion de los LEDs = x5
	li x5, SEG_R 
	#variables suelen ir en minuscula
	#CTES EN MAYUS
	
	#--Valor a escribir en los leds
	li x6, VALOR #para lucir uno si otro no

	#-- Escribee !! (Enciende los leds!)
	sw x6, 0(x5)
	
	#-- Para la cpu (en estos programas se debe hacer)
#stop:	b stop    #para ello debes quitar el terminar (debajo)
	
	#-- Terminar
	li a7, 10
	ecall
	
	#En data segment MMIO es mapa de memoria de entrada y salida