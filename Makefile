
SERIAL=/dev/ttyUSB0


firmware:
	make -C firmware/insa_firmware/

tool:
	make -C tools/


bitstream:
	make -C boards/digilent-nexys3/ syn
	
load-bitstream:
	make -C boards/digilent-nexys3/ load 


clean:
	make -C firmware/insa_firmware clean
	make -C tools/srec2vram clean
	
	
connect:
	stty -F $(SERIAL) raw 115200
	while : ; do cat $(SERIAL) ; done & cat > $(SERIAL)
