	.data
	
	.string "1234"
v1:	.byte 0xAA
	.byte 0xBB
	.byte 0xCC
	.byte 0xDD
	
	.text
	
	la t0, v1
	lw t1, 0(t0)
	
	li a7,10
	ecall

#1- Mira Data segment-> 9 bytes
#2- Cada 4bytes=1palabra-> 3 palabras
#3- '1','2','3','4','\0',0xAA,0xBB,0xCC, 0xDD
#4- Error de alineamiento (align)