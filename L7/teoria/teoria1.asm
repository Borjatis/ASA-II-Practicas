
#-- Implementar y calcular esta expresión
#-- a= A[2] + 200
#-- (No me dicen nada) SUpongo que son PALABRAS
#-- a es una variable
#-- A es una lista que (POR SUPUESTO) está en memoria

	.include "../../servicios.asm"

	.data
A:	.word 1,2,3,4,5 #-- Lista de numeros
	#-- i:0, 1, 2, 3, 4..
	#---       A[2]
a:	.word 0

	.text
	
	#--- a = A[2] + 200
	#--- t0 --> Puntero a A
	#--- (La direccion del primero numero A[0])
	la t0, A
	
	#-- t1 = A[2] = 4*[2]=8
	lw t1, 8(t0)
	
	#-- t2 --> a = A[2] + 200
	addi t2, t1, 200 #-- t2 = t1 + 200
	
	#--- Guardar la variable a
	la t3,a
	sw t2, 0(t3)
	
			
	#-- Terminar
	li a7, EXIT
	ecall
	




