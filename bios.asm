cpu 	8086
bits 	16

	section .boot
boot:
	; 8086 instructions 00 - FF
	; Used to test 8086 emulator

	; 00 - ADD Eb Gb
	ADD		AH,		BH

	; 01 - ADD Ev Gv
	ADD		AX,		BX

	; 02 - ADD Gb Eb
	ADD		BH, 	[0xffff]

	; 03 - ADD Gv Ev
	ADD		BX, 	[0xffff]

	; 04 - ADD AL Ib
	ADD		AL,		3

	; 05 - ADD AL Iv
	ADD		AX,		256

	; 06 - PUSH ES
	PUSH 	ES

	; 07 - POP ES
	POP		ES

	; 08 - OR Eb Gb
	OR		AH,		BH

	; 09 - OR Ev Gv
	OR		AX,		BX

	; 0A - OR Gb Eb
	OR		BH, 	[0xffff]

	; 0B - OR Gv Ev
	OR		BX, 	[0xffff]

	; 0C - OR AL Ib
	OR		AL,		3

	; 0D - OR AL Iv
	OR		AX,		256

	; 0E - PUSH CS
	PUSH 	CS

	; 0F - POP CS
	POP		CS

	; 10 - ADC Eb Gb
	ADC		AH,		BH

	; 11 - ADC Ev Gv
	ADC		AX,		BX

	; 12 - ADC Gb Eb
	ADC		BH, 	[0xffff]

	; 13 - ADC Gv Ev
	ADC		BX, 	[0xffff]

	; 14 - ADC AL Ib
	ADC		AL,		3

	; 15 - ADC AL Iv
	ADC		AX,		256

	; 16 - PUSH SS
	PUSH 	SS

	; 17 - POP SS
	POP		SS

	; 18 - SBB Eb Gb
	SBB		AH,		BH

	; 19 - SBB Ev Gv
	SBB		AX,		BX

	; 1A - SBB Gb Eb
	SBB		BH, 	[0xffff]

	; 1B - SBB Gv Ev
	SBB		BX, 	[0xffff]

	; 1C - SBB AL Ib
	SBB		AL,		3

	; 1D - SBB AL Iv
	SBB		AX,		256

	; 1E - PUSH DS
	PUSH 	DS

	; 1F - POP DS
	POP		DS

	; 20 - AND Eb Gb
	AND		AH,		BH

	; 21 - AND Ev Gv
	AND		AX,		BX

	; 22 - AND Gb Eb
	AND		BH, 	[0xffff]

	; 23 - AND Gv Ev
	AND		BX, 	[0xffff]

	; 24 - AND AL Ib
	AND		AL,		3

	; 25 - AND AL Iv
	AND		AX,		256

	; 27 - DAA
	DAA

	; 28 - SUB Eb Gb
	SUB		AH,		BH

	; 29 - SUB Ev Gv
	SUB		AX,		BX

	; 2A - SUB Gb Eb
	SUB		BH, 	[0xffff]

	; 2B - SUB Gv Ev
	SUB		BX, 	[0xffff]

	; 2C - SUB AL Ib
	SUB		AL,		3

	; 2D - SUB AL Iv
	SUB		AX,		256

	; 2F - DAS
	DAS

	; 30 - XOR Eb Gb
	XOR		AH,		BH

	; 31 - XOR Ev Gv
	XOR		AX,		BX

	; 32 - XOR Gb Eb
	XOR		BH, 	[0xffff]

	; 33 - XOR Gv Ev
	XOR		BX, 	[0xffff]

	; 34 - XOR AL Ib
	XOR		AL,		3

	; 35 - XOR AL Iv
	XOR		AX,		256

	; 37 - AAA
	AAA

	; 38 - CMP Eb Gb
	CMP		AH,		BH

	; 39 - CMP Ev Gv
	CMP		AX,		BX

	; 3A - CMP Gb Eb
	CMP		BH, 	[0xffff]

	; 3B - CMP Gv Ev
	CMP		BX, 	[0xffff]

	; 3C - CMP AL Ib
	CMP		AL,		3

	; 3D - CMP AL Iv
	CMP		AX,		256

	section .reset
reset:
	jmp		0xf000:0