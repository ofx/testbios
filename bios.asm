cpu 	8086
bits 	16

	section .boot
boot:			
	xor 	ah, 	ah

	section .reset
reset:
	jmp		0xffff:0