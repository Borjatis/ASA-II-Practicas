	.text
	
	addi x5, x0, 3  
	addi x6, x0, 5  
	addi x7, x0, 7  
	addi x8, x0, 9  
	
	
	sub x9, x7, x8   
	add x6, x6, x6  
	add x6, x6, x6   
	sub x9, x6, x9   
	add x5, x5, x5   
	add x5, x5, x9   
	addi x10, x5, 15 
	
	#-- Terminar
	li a7, 10
	ecall 
	
#1- x5=a=3, x6=b=5, x7=c=7, x8=d=9
# (a+a)+[(b+b+b+b)-(c-d)]+15

#3- 43
#4- El valor del byte de la posición 
# de memoria 0x00400015 es 03 (en execute con valor minimo)
#5- 13x4= 52 bytes de memoria
