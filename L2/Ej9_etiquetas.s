
#----- Fragmento de codigo (No es el principio)
b:
	addi x8, x8, 9  
		
	sub x9, x7, x8   
	add x6, x6, x6  
	add x6, x6, x6
c:   
	sub x9, x6, x9  
	add x5, x5, x5  
	add x5, x5, x9
d:   
	addi x10, x5, 15 
	
	li a7, 10
fin:	ecall

#- label b tiene el valor 0x00502020, cuales siguientes
#- Miramos diferenciasentre ellas y añadimos
#- 0x00502030(+10), 0x0050203C(+1C), 0x00502044(+24)