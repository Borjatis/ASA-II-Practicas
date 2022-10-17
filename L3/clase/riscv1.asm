# --Programa para asignar el valor 20 al registro x5
# -- x5=20

	.text
	
	#-- x5=20
	li x5,20 #-- "instruccion" x5=20 //NO EXISTE, 
	# lo asignas directament y te ahorras memoria
	#addi x5, x0, 20 (Igual que esto)
	
	#-- x6 = x5
	mv x6,x5 #-- x6 = x5 //mv-->asignar, procesa + rapido
	#add x6,x0,x5 #-- x6 = 0 + x5 --> x6 = x5 (Igual que esto)
	
	#-- Terminar
	li a7, 10
	ecall
	
	# li y mv pseudoinstruccion
	# addi, add instruccion
	#  