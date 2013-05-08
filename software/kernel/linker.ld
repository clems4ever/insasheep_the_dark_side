OUTPUT_FORMAT("elf32-lm32")
ENTRY(_start)


MEMORY {
  ram    : ORIGIN = 0x40000000, LENGTH = 0x1000000 
}

SECTIONS
{

 .text : 
  {
	. = ALIGN(4);
    _ftext = .;
    *(.text .stub .text.* .gnu.linkonce.t.*)
	_etext = .;
	
	. = ALIGN(4);
	start_ctors = .;
	*(SORT(.ctor*))
	end_ctors = .;
	start_dtors = .;
	*(SORT(.dtor*))
	end_dtors = .;
  } > ram
  
  .rodata :
  {
	. = ALIGN(4);

	_frodata = .;
	*(.rodata .rodata.* .gnu.linkonce.r.*)
	*(.rodata1)
	_erodata = .;
  } > ram

  .data : 
  {
		  . = ALIGN(4);
		  _fdata = .;
		  *(.data .data.* .gnu.linkonce.d.*)
				  *(.data1)
				  _gp = ALIGN(16);
		  *(.sdata .sdata.* .gnu.linkonce.s.*)
		  _edata = .;
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
}

PROVIDE(_fstack = ORIGIN(ram) + LENGTH(ram) - 4);
