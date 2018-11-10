cpu 	8086
bits 	16

	section .boot
boot:		
	add ah, 1
	sub ah, 1
	cmp ah, 0

	section .reset
reset:
	jmp		0xf000:0