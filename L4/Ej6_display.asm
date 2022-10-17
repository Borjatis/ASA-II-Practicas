#-- Programa de ejemplo para encener los LEDs
#-- (puerto de salida) que están mapeados en memoria
	
	#-- Me he leido el manual y esto es
	#-- Direccion del puerto de salida de los LEDs
	.eqv SEG_R 0xFFFF0010
	#.eqv VALOR 0x4F #(PARA UN 3)
	.eqv VALOR 0x06 #(PARA UN 1)
	#.eqv VALOR 0x5B #(PARA UN 2)
	#.eqv VALOR 0x66 #(PARA UN 4)
	
	#en data segment en el valor, puedes hacer pruebas
	#para probar que segmentos se encienden con diferente numeros
	
	.text
	
	#--- Direccion de los LEDs = x5
	li x5, SEG_R 
	
	#--Valor a escribir en los leds
	li x6, VALOR #para lucir uno si otro no

	#-- Escribee !! (Enciende los leds!)
	sw x6, 0(x5)
	
	
	#-- Terminar
	li a7, 10
	ecall