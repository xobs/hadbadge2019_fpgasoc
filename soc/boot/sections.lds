/*
This is free and unencumbered software released into the public domain.

Anyone is free to copy, modify, publish, use, compile, sell, or
distribute this software, either in source code form or as a compiled
binary, for any purpose, commercial or non-commercial, and by any
means.
*/

MEMORY {
	ram : ORIGIN = 0x40000000, LENGTH = 0x2000
}

SECTIONS {
	.ram : {
/*		. = 0; */
		start*(.text);
		*(.text);
		*(.rodata);
		end = .;
		*(.data);
		*(.bss);
	} > ram
}

PROVIDE ( UART = 0x10000000 );
PROVIDE ( LED  = 0x20000000 );
PROVIDE ( LCD =  0x30000000 );
