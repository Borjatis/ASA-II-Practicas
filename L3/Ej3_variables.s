	.data
	
v1:	.word 0x12345678
v2:	.word 0x11223344
v3:	.word 0xCACABACA
v4:	.word 0x00FABADA


	.text
	
	li a7, 10
	ecall 
	
#-- ¿Qué byte está almacenado en la quinta posición? 0x44
#-- ¿A qué dirección corresponde? 0x10010004
