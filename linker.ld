OUTPUT_FORMAT(binary)

SECTIONS {
	.boot 	0x0000 : 
	{ 
		. = 0x0000;
		*(.boot) 
	}

	.reset 	0xfff0 : 
	{ 
		. = 0xfff0;
		*(.reset) 
	}
}
