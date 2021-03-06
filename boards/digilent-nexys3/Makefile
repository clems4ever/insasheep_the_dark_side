
VINCDIR=                                  \
	-I../../rtl/wb_conbus                 \
	-I../../rtl/lm32

SYN_SRC=

SIM_SRC=                                  \
	system_tb.v                           \
	../../sim/unisims/BUFG.v              \
	../../sim/unisims/DCM.v               \
	../../sim/unisims/FDDRRSE.v

SRC=                                      \
	system.v                              \
	../../rtl/lac/lac.v                   \
	../../rtl/lac/uart.v                  \
	../../rtl/lac/dp_ram.v                \
	../../rtl/lm32/lm32_cpu.v             \
	../../rtl/lm32/lm32_instruction_unit.v	\
	../../rtl/lm32/lm32_decoder.v         \
	../../rtl/lm32/lm32_simtrace.v        \
	../../rtl/lm32/lm32_load_store_unit.v \
	../../rtl/lm32/lm32_adder.v           \
	../../rtl/lm32/lm32_addsub.v          \
	../../rtl/lm32/lm32_logic_op.v        \
	../../rtl/lm32/lm32_shifter.v         \
	../../rtl/lm32/lm32_multiplier.v      \
	../../rtl/lm32/lm32_mc_arithmetic.v   \
	../../rtl/lm32/lm32_interrupt.v       \
	../../rtl/lm32/lm32_icache.v          \
	../../rtl/lm32/lm32_dcache.v          \
	../../rtl/lm32/lm32_ram.v             \
	../../rtl/wb_bram/wb_bram.v           \
	../../rtl/wb_sram/wb_sram16.v         \
	../../rtl/wb_uart/wb_uart.v           \
	../../rtl/wb_timer/wb_timer.v         \
	../../rtl/wb_gpio/wb_gpio.v           \
	../../rtl/wb_conbus/wb_conbus_top.v   \
	../../rtl/wb_conbus/wb_conbus_arb.v   \
	../../rtl/wb_norflash/norflash16.v   \
	../../rtl/wb_master_arbitrer/wb_master_arbitrer.v \
	../../rtl/mac/eth_clockgen.v \
	../../rtl/mac/eth_cop.v \
	../../rtl/mac/eth_crc.v \
	../../rtl/mac/eth_fifo.v \
	../../rtl/mac/eth_maccontrol.v \
	../../rtl/mac/ethmac_defines.v \
	../../rtl/mac/eth_macstatus.v \
	../../rtl/mac/ethmac.v \
	../../rtl/mac/eth_miim.v \
	../../rtl/mac/eth_outputcontrol.v \
	../../rtl/mac/eth_random.v \
	../../rtl/mac/eth_receivecontrol.v \
	../../rtl/mac/eth_registers.v \
	../../rtl/mac/eth_register.v \
	../../rtl/mac/eth_rxaddrcheck.v \
	../../rtl/mac/eth_rxcounters.v \
	../../rtl/mac/eth_rxethmac.v \
	../../rtl/mac/eth_rxstatem.v \
	../../rtl/mac/eth_shiftreg.v \
	../../rtl/mac/eth_spram_256x32.v \
	../../rtl/mac/eth_top.v \
	../../rtl/mac/eth_transmitcontrol.v \
	../../rtl/mac/eth_txcounters.v \
	../../rtl/mac/eth_txethmac.v \
	../../rtl/mac/eth_txstatem.v \
	../../rtl/mac/eth_wishbone.v \
	../../rtl/mac/timescale.v \
	../../rtl/mac/xilinx_dist_ram_16x32.v \
	../../rtl/wb_graphic_card/graphic_card.v \
	../../rtl/wb_graphic_card/display_monitor.v \
	../../rtl/wb_graphic_card/vga_controller.v  \
	../../rtl/wb_mmu/wb_mmu.v


#	../../rtl/wb_uart/uart.v              \
#############################################################################
# Syntheis constants
SYNCLEAN=system.bgn system.drc system.mrp system.ngd system.pcf 
SYNCLEAN+=system.bld system.lso system.ncd system.ngm system.srp
SYNCLEAN+=system.bit system_signalbrowser.* system-routed_pad.tx
SYNCLEAN+=system.map system_summary.xml timing.twr
SYNCLEAN+=system-routed* system_usage* system.ngc param.opt netlist.lst
SYNCLEAN+=*.xrpt *.html *.xwbt *.save *.log
SYNCLEAN+=_xmsgs xlnx_auto_0_xdb
SYNCLEAN+=xst system.prj

USAGE_DEPTH=0
SMARTGUIDE= 

#############################################################################
# Simulation constants
SIMCLEAN=system_tb.vvp system_tb.vcd verilog.log system_tb.vvp.list

CVER=cver
GTKWAVE=gtkwave
IVERILOG=iverilog
VVP=vvp

#############################################################################
# 
sim: system_tb.vcd
syn: system.bit
view: system_tb.view

#############################################################################
# Ikarus verilog simulation

system_tb.vvp: $(SRC) $(SIM_SRC)
	rm -f $@.list
	@for i in `echo $^`; do \
	    echo $$i >> $@.list; \
	done
	$(IVERILOG) -o $@ $(VINCDIR) -c $@.list -s $(@:.vvp=)

%.vcd: %.vvp
	$(VVP) $<

#############################################################################
# ISE Synthesis

system.prj: $(SRC) $(SYN_SRC)
	rm -f system.prj
	@for i in `echo $^`; do \
	    echo "verilog work $$i" >> $@; \
	done

system.ngc: system.prj
	xst -ifn system.xst

system.ngd: system.ngc system.ucf
	ngdbuild -uc system.ucf system.ngc

system.ncd: system.ngd
	map $(SMARTGUIDE) -w system.ngd

system-routed.ncd: system.ncd
	par $(SMARTGUIDE) -ol high -w system.ncd system-routed.ncd

system.bit: system-routed.ncd
	bitgen -w system-routed.ncd system.bit

system.mcs: system.bit
	promgen -u 0 system

system-routed.xdl: system-routed.ncd
	xdl -ncd2xdl system-routed.ncd system-routed.xdl

system-routed.twr: system-routed.ncd
	trce -v 10 system-routed.ncd system.pcf

timing: system-routed.twr

usage: system-routed.xdl
	xdlanalyze.pl system-routed.xdl $(USAGE_DEPTH)

jtag: system.bit
	djtgcfg prog -f $< -d Nexys3 -i 0

##################################################################
# Download

load:
	impact -batch impact_script
####################################################################
# final targets

%.view: %.vcd
	$(GTKWAVE) $< $<.save

clean:
	rm -Rf $(SYNCLEAN) $(SIMCLEAN)

.PHONY: clean view jtag
