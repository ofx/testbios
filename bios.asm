cpu 	8086
bits 	16

	section .start
start:		xor 	ah, 	ah

	section .resetvector
resetvector:	jmp start
