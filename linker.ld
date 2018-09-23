OUTPUT_FORMAT(binary)

SECTIONS {
	.start 		0xf0000 : { *(.start) }
	.resetvector 	0xffff0 : { *(.resetvector) }
}
