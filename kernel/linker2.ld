OUTPUT_FORMAT("elf32-lm32")
ENTRY(_start)


		MEMORY {
ram    : ORIGIN = 0x40000000, LENGTH = 0x1000000 
		}

SECTIONS
{
		.text :
		{
				*(.text)
						*(.gnu.linkonce.t*)
		} > ram

		.rodata :
		{
				start_ctors = .;
				*(SORT(.ctors*))  /* Note the "SORT" */
						end_ctors = .;

				start_dtors = .;
				*(SORT(.dtors*))
						end_dtors = .;

				*(.rodata*)
						*(.gnu.linkonce.r*)
		} > ram

		.data :
		{
				*(.data)
						*(.gnu.linkonce.d*)
				  _gp = ALIGN(16);
		} > ram

		.bss :
		{
		  . = ALIGN(4);
		  _fbss = .;
		  *(.dynsbss)
				  *(.sbss .sbss.* .gnu.linkonce.sb.*)
				  *(.scommon)
				  *(.dynbss)
				  *(.bss .bss.* .gnu.linkonce.b.*)
				  *(COMMON)
				  _ebss = .;
			_end = .;
		} > ram

		/DISCARD/ :
		{
				*(.comment)
						*(.eh_frame) /* discard this, unless you are implementing runtime support for C++ exceptions. */
		} > ram

}


PROVIDE(_fstack = ORIGIN(ram) + LENGTH(ram) - 4);
