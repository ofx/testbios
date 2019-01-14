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

	; 3F - AAS
	AAS

	; 40 - INC AX
	INC		AX

	; 41 - INC CX
	INC		CX

	; 42 - INC DX
	INC		DX

	; 43 - INC BX
	INC		BX

	; 44 - INC SP
	INC		SP

	; 45 - INC BP
	INC		BP

	; 46 - INC SI
	INC		SI

	; 47 - INC DI
	INC		DI

	; 48 - DEC AX
	DEC		AX

	; 49 - DEC CX
	DEC		CX

	; 4A - DEC DX
	DEC		DX

	; 4B - DEC BX
	DEC		BX

	; 4C - DEC SP
	DEC		SP

	; 4D - DEC BP
	DEC		BP

	; 4E - DEC SI
	DEC		SI

	; 4F - DEC DI
	DEC		DI

	; 50 - PUSH AX
	PUSH	AX

	; 51 - PUSH CX
	PUSH	CX

	; 52 - PUSH DX
	PUSH	DX

	; 53 - PUSH BX
	PUSH	BX

	; 54 - PUSH SP
	PUSH	SP

	; 55 - PUSH BP
	PUSH	BP

	; 56 - PUSH SI
	PUSH	SI

	; 57 - PUSH DI
	PUSH	DI

	; 58 - POP AX
	POP		AX

	; 59 - POP CX
	POP		CX

	; 5A - POP DX
	POP		DX

	; 5B - POP BX
	POP		BX

	; 5C - POP SP
	POP		SP

	; 5D - POP BP
	POP		BP

	; 5E - POP SI
	POP		SI

	; 5F - POP DI
	POP		DI

	; 70 - JO
	JO		10

	; 71 - JNO
	JNO		10

	; 73 - JB
	JB		10

	; 74 - JZ
	JZ		10

	; 75 - JNZ
	JNZ		10

	; 76 - JBE
	JBE		10

	; 77 - JNBE
	JNBE	10

	; 78 - JS
	JS		10

	; 79 - JNS
	JNS		10

	; 7A - JP
	JP		10

	; 7B - JNP
	JNP		10

	; 7C - JL
	JL		10

	; 7D - JNL
	JNL		10

	; 7E - JLE
	JLE		10

	; 7F - JNLE
	JNLE	10

	section .reset
reset:
	jmp		0xf000:0