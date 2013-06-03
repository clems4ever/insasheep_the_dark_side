//---------------------------------------------------------------------------
// LatticeMico32 System On A Chip
//
// Top Level Design for the Digilent Nexys 3
//---------------------------------------------------------------------------

module system
#(
	// ADDED clems_maul
	// Voici notre firmware 
	parameter   bootram_file     = "../../software/firmware/insa_firmware/image.ram",
	// END ADDED
	
	parameter   clk_freq         = 100000000,
	parameter   uart_baud_rate   = 115200 
) (
	input 		  clk,
	// Debug
	output [7:0] 	  led,
	input [3:0] 	  btn,
	input [3:0] 	  sw,
	// Uart
	input 		  uart_rxd,
	output 		  uart_txd,

	// Memory (shared between parallel flash and PSRAM)
	output reg [25:0] mem_adr, //22:0 PSRAM 25:0 PCM
	inout [15:0] 	  mem_d, //15:0 Databits for PSRAM and PCM
										//2:0  DQ[3:1] of SPI Flash
	output reg 	  mem_oe,
	output reg 	  mem_we,
	//output					mem_clk,
	//output					mem_adv,
	//output					mem_wait,


	//RAM-only control signals
	output 		  sram_ce_n,
	output 		  sram_ub,
	output 		  sram_lb,
	//output 					sram_cre,


	// Flash pins
	output 		  flash_ce_n,
	output 		  flash_rst_n,

	output 		  vga_hsync,
	output 		  vga_vsync,
	output 		  vga_red,
	output 		  vga_green,
	output 		  vga_blue,

        // Ethernet
	output 		  eth0_phy_rstn,
        // 1 pin non connecte pour l'instant, je sais pas a quoi il sert -> PhyClk25Mhz (N4 sur la carte)
   
	output [3:0] 	  eth0_mtxd_pad_o,
	output 		  eth0_mtxen_pad_o,
	output 		  eth0_mtxerr_pad_o,
	input 		  eth0_mtx_clk_pad_i,

	input [3:0] 	  eth0_mrxd_pad_i,
	input 		  eth0_mrxdv_pad_i,
	input 		  eth0_mrxerr_pad_i,
	input 		  eth0_mrx_clk_pad_i,
   
	input 		  eth0_mcoll_pad_i,
	input 		  eth0_mcrs_pad_i,
	
	inout 		  eth0_md_pad_d,
	input 		  eth0_mdc_pad_o		  
);

wire         rst;

//------------------------------------------------------------------
// Whishbone Wires
//------------------------------------------------------------------
wire         gnd   =  1'b0;
wire   [3:0] gnd4  =  4'h0;
wire  [31:0] gnd32 = 32'h00000000;

wire [31:0]  lm32i_adr_mmu_i, // From lm32 to mmu
             lm32i_adr_mmu_o, // From mmu to syscon
             lm32d_adr_mmu_i, // From lm32 to mmu
             lm32d_adr_mmu_o, // From mmu to syscon
             uart0_adr,
             timer0_adr,
             gpio0_adr,
             bram0_adr,
             sram0_adr,
	     	 gc_adr,
	     	 gc_s_adr,
	     	 norflash0_adr,
	      	 eth0_adr,
			 mmu0_adr;

wire [31:0]  lm32i_dat_r,
             lm32i_dat_w,
             lm32d_dat_r,
             lm32d_dat_w,
             uart0_dat_r,
             uart0_dat_w,
             timer0_dat_r,
             timer0_dat_w,
             gpio0_dat_r,
             gpio0_dat_w,
             bram0_dat_r,
             bram0_dat_w,
             sram0_dat_r,
             sram0_dat_w,
	    	 gc_dat_r,
	    	 gc_dat_w,
	    	 gc_s_dat_r,
	    	 gc_s_dat_w,
	     	 norflash0_dat_r,
	      	 norflash0_dat_w,
	     	 mmu0_dat_r,
	      	 mmu0_dat_w,
	      	 eth0_dat_r,
	     	 eth0_dat_w;

wire [3:0]   lm32i_sel,
             lm32d_sel,
             uart0_sel,
             timer0_sel,
             gpio0_sel,
             bram0_sel,
             sram0_sel,
		     gc_sel,
		     gc_s_sel,
	    	 norflash0_sel,
	     	 eth0_sel,
			 mmu0_sel;
			 
wire         lm32i_we,
             lm32d_we,
             uart0_we,
             timer0_we,
             gpio0_we,
             bram0_we,
             sram0_we,
	     	 gc_we,
	     	 gc_s_we,
	     	 norflash0_we,
	     	 eth0_we,
			 mmu0_we;

wire         lm32i_cyc,
             lm32d_cyc,
             uart0_cyc,
             timer0_cyc,
             gpio0_cyc,
             bram0_cyc,
             sram0_cyc,
	     	 gc_cyc,
	     	 gc_s_cyc,
	     	 norflash0_cyc,
	     	 //lm32i_cyc_o,
	     	 //lm32d_cyc_o,
	     	 //gc_cyc_o,
	     	 eth0_cyc,
			 mmu0_cyc;

wire         lm32i_stb,
             lm32d_stb,
             uart0_stb,
             timer0_stb,
             gpio0_stb,
             bram0_stb,
             sram0_stb,
	     	 gc_stb,
	     	 gc_s_stb,
	     	 norflash0_stb,
	     	 eth0_stb,
			 mmu0_stb;

wire         lm32i_ack,
             lm32d_ack,
             uart0_ack,
             timer0_ack,
             gpio0_ack,
             bram0_ack,
             sram0_ack,
	     	 gc_ack,
	     	 gc_s_ack,
	     	 norflash0_ack,
	     	 eth0_ack,
			 mmu0_ack;

wire         lm32i_rty,
             lm32d_rty;

wire         lm32i_err,
             lm32d_err;

wire         lm32i_lock,
             lm32d_lock;

wire [2:0]   lm32i_cti,
             lm32d_cti;

wire [1:0]   lm32i_bte,
             lm32d_bte;

//---------------------------------------------------------------------------
// Interrupts
//---------------------------------------------------------------------------
wire  [31:0] intr_n;
wire         uart0_intr;
wire         gpio0_intr;
wire   [1:0] timer0_intr;

assign intr_n = { 28'hFFFFFFF, ~timer0_intr[1], ~gpio0_intr, ~timer0_intr[0], ~uart0_intr };

//---------------------------------------------------------------------------
// Wishbone Interconnect
//---------------------------------------------------------------------------
wb_conbus_top #(
	.s0_addr_w ( 3 ),
	.s0_addr   ( 3'h4 ),        // ddr0
	.s1_addr_w ( 3 ),
	.s1_addr   ( 3'h5 ),        // flash0
	.s27_addr_w( 15 ),
	.s2_addr   ( 15'h0000 ),    // bram0
	.s3_addr   ( 15'h7000 ),    // uart0
	.s4_addr   ( 15'h7001 ),    // timer0
	.s5_addr   ( 15'h7002 ),    // gpio0
	.s6_addr   ( 15'h7003 ),    // Graphic card slave
	.s7_addr   ( 15'h7004 ),     // Ethernet slave
	.s8_addr   ( 15'h7005 )     // MMU slave
) conmax0 (
	.clk_i( clk ),
	.rst_i( rst ),
	// Master0
	.m0_dat_i(  lm32i_dat_w  ),
	.m0_dat_o(  lm32i_dat_r  ),
	.m0_adr_i(  lm32i_adr_mmu_i    ),
	.m0_we_i (  lm32i_we     ),
	.m0_sel_i(  lm32i_sel    ),
	.m0_cyc_i(  lm32i_cyc    ),
	.m0_stb_i(  lm32i_stb    ),
	.m0_ack_o(  lm32i_ack    ),
	.m0_rty_o(  lm32i_rty    ),
	.m0_err_o(  lm32i_err    ),
	// Master1
	.m1_dat_i(  lm32d_dat_w  ),
	.m1_dat_o(  lm32d_dat_r  ),
	.m1_adr_i(  lm32d_adr_mmu_i    ),
	.m1_we_i (  lm32d_we     ),
	.m1_sel_i(  lm32d_sel    ),
	.m1_cyc_i(  lm32d_cyc    ),
	.m1_stb_i(  lm32d_stb    ),
	.m1_ack_o(  lm32d_ack    ),
	.m1_rty_o(  lm32d_rty    ),
	.m1_err_o(  lm32d_err    ),
	// Master2
	.m2_dat_i(  gc_dat_w  ),
	.m2_dat_o(  gc_dat_r  ),
	.m2_adr_i(  gc_adr    ),
	.m2_we_i (  gc_we     ),
	.m2_sel_i(  gc_sel    ),
	.m2_cyc_i(  gc_cyc    ),
	.m2_stb_i(  gc_stb    ),
	.m2_ack_o(  gc_ack    ),
	// Master3
	.m3_dat_i(  gnd32  ),
	.m3_adr_i(  gnd32  ),
	.m3_sel_i(  gnd4   ),
	.m3_cyc_i(  gnd    ),
	.m3_stb_i(  gnd    ),
	// Master4
	.m4_dat_i(  gnd32  ),
	.m4_adr_i(  gnd32  ),
	.m4_sel_i(  gnd4   ),
	.m4_cyc_i(  gnd    ),
	.m4_stb_i(  gnd    ),
	// Master5
	.m5_dat_i(  gnd32  ),
	.m5_adr_i(  gnd32  ),
	.m5_sel_i(  gnd4   ),
	.m5_cyc_i(  gnd    ),
	.m5_stb_i(  gnd    ),
	// Master6
	.m6_dat_i(  gnd32  ),
	.m6_adr_i(  gnd32  ),
	.m6_sel_i(  gnd4   ),
	.m6_cyc_i(  gnd    ),
	.m6_stb_i(  gnd    ),
	// Master7
	.m7_dat_i(  gnd32  ),
	.m7_adr_i(  gnd32  ),
	.m7_sel_i(  gnd4   ),
	.m7_cyc_i(  gnd    ),
	.m7_stb_i(  gnd    ),

	// Slave0
	.s0_dat_i(  sram0_dat_r   ),
	.s0_dat_o(  sram0_dat_w   ),
	.s0_adr_o(  sram0_adr     ),
	.s0_sel_o(  sram0_sel     ),
	.s0_we_o (  sram0_we      ),
	.s0_cyc_o(  sram0_cyc     ),
	.s0_stb_o(  sram0_stb     ),
	.s0_ack_i(  sram0_ack     ),
	.s0_err_i(  gnd    ),
	.s0_rty_i(  gnd    ),
	// Slave1
	.s1_dat_i(  norflash0_dat_r  ),
	.s1_dat_o(  norflash0_dat_w  ),
	.s1_adr_o(  norflash0_adr    ),
	.s1_sel_o(  norflash0_sel    ),
	.s1_we_o (  norflash0_we     ),
	.s1_cyc_o(  norflash0_cyc    ),
	.s1_stb_o(  norflash0_stb    ),
	.s1_ack_i(  norflash0_ack    ),
	.s1_err_i(  gnd             ),
	.s1_rty_i(  gnd             ),
	// Slave2
	.s2_dat_i(  bram0_dat_r ),
	.s2_dat_o(  bram0_dat_w ),
	.s2_adr_o(  bram0_adr   ),
	.s2_sel_o(  bram0_sel   ),
	.s2_we_o(   bram0_we    ),
	.s2_cyc_o(  bram0_cyc   ),
	.s2_stb_o(  bram0_stb   ),
	.s2_ack_i(  bram0_ack   ),
	.s2_err_i(  gnd         ),
	.s2_rty_i(  gnd         ),
	// Slave3
	.s3_dat_i(  uart0_dat_r ),
	.s3_dat_o(  uart0_dat_w ),
	.s3_adr_o(  uart0_adr   ),
	.s3_sel_o(  uart0_sel   ),
	.s3_we_o(   uart0_we    ),
	.s3_cyc_o(  uart0_cyc   ),
	.s3_stb_o(  uart0_stb   ),
	.s3_ack_i(  uart0_ack   ),
	.s3_err_i(  gnd         ),
	.s3_rty_i(  gnd         ),
	// Slave4
	.s4_dat_i(  timer0_dat_r ),
	.s4_dat_o(  timer0_dat_w ),
	.s4_adr_o(  timer0_adr   ),
	.s4_sel_o(  timer0_sel   ),
	.s4_we_o(   timer0_we    ),
	.s4_cyc_o(  timer0_cyc   ),
	.s4_stb_o(  timer0_stb   ),
	.s4_ack_i(  timer0_ack   ),
	.s4_err_i(  gnd          ),
	.s4_rty_i(  gnd          ),
	// Slave5
	.s5_dat_i(  gpio0_dat_r  ),
	.s5_dat_o(  gpio0_dat_w  ),
	.s5_adr_o(  gpio0_adr    ),
	.s5_sel_o(  gpio0_sel    ),
	.s5_we_o(   gpio0_we     ),
	.s5_cyc_o(  gpio0_cyc    ),
	.s5_stb_o(  gpio0_stb    ),
	.s5_ack_i(  gpio0_ack    ),
	.s5_err_i(  gnd          ),
	.s5_rty_i(  gnd          ),
	// Slave6
	.s6_dat_i(  gc_s_dat_r  ),
	.s6_dat_o(  gc_s_dat_w  ),
	.s6_adr_o(  gc_s_adr    ),
	.s6_sel_o(  gc_s_sel    ),
	.s6_we_o(   gc_s_we     ),
	.s6_cyc_o(  gc_s_cyc    ),
	.s6_stb_o(  gc_s_stb    ),
	.s6_ack_i(  gc_s_ack    ),
	.s6_err_i(  gnd    ),
	.s6_rty_i(  gnd    ),
	// Slave7
	.s7_dat_i(  eth0_dat_r  ),
	.s7_dat_o(  eth0_dat_w  ),
	.s7_adr_o(  eth0_adr    ),
	.s7_sel_o(  eth0_sel    ),
	.s7_we_o(   eth0_we     ),
	.s7_cyc_o(  eth0_cyc    ),
	.s7_stb_o(  eth0_stb    ),
	.s7_ack_i(  eth0_ack    ),
	.s7_err_i(  gnd    ),
	.s7_rty_i(  gnd    ),
	// Slave8
	.s8_dat_i(  mmu0_dat_r  ),
	.s8_dat_o(  mmu0_dat_w  ),
	.s8_adr_o(  mmu0_adr    ),
	.s8_sel_o(  mmu0_sel    ),
	.s8_we_o(   mmu0_we     ),
	.s8_cyc_o(  mmu0_cyc    ),
	.s8_stb_o(  mmu0_stb    ),
	.s8_ack_i(  mmu0_ack    ),
	.s8_err_i(  gnd    ),
	.s8_rty_i(  gnd    )
);

//---------------------------------------------------------------------------
// LM32 CPU
//---------------------------------------------------------------------------
lm32_cpu lm0 (
	.clk_i(  clk  ),
	.rst_i(  rst  ),
	.interrupt_n(  intr_n  ),
	//
	.I_ADR_O(  lm32i_adr_mmu_i    ),
	.I_DAT_I(  lm32i_dat_r  ),
	.I_DAT_O(  lm32i_dat_w  ),
	.I_SEL_O(  lm32i_sel    ),
	.I_CYC_O(  lm32i_cyc    ),
	.I_STB_O(  lm32i_stb    ),
	.I_ACK_I(  lm32i_ack    ),
	.I_WE_O (  lm32i_we     ),
	.I_CTI_O(  lm32i_cti    ),
	.I_LOCK_O( lm32i_lock   ),
	.I_BTE_O(  lm32i_bte    ),
	.I_ERR_I(  lm32i_err    ),
	.I_RTY_I(  lm32i_rty    ),
	//
	.D_ADR_O(  lm32d_adr_mmu_i    ),
	.D_DAT_I(  lm32d_dat_r  ),
	.D_DAT_O(  lm32d_dat_w  ),
	.D_SEL_O(  lm32d_sel    ),
	.D_CYC_O(  lm32d_cyc    ),
	.D_STB_O(  lm32d_stb    ),
	.D_ACK_I(  lm32d_ack    ),
	.D_WE_O (  lm32d_we     ),
	.D_CTI_O(  lm32d_cti    ),
	.D_LOCK_O( lm32d_lock   ),
	.D_BTE_O(  lm32d_bte    ),
	.D_ERR_I(  lm32d_err    ),
	.D_RTY_I(  lm32d_rty    )
);


//---------------------------------------------------------------------------
//	MMU 
//---------------------------------------------------------------------------


wb_mmu #(
	.addr_width(32)
) mmu0 (
	.clk(clk),
	.rst(rst),
	.addr0_in(lm32i_addr_mmu_i),
	.addr0_out(lm32i_addr_mmu_o),
	.addr1_in(lm32d_addr_mmu_i),
	.addr1_out(lm32d_addr_mmu_o),

	// Wishbone interface
	.wb_stb_i(mmu0_stb),
	.wb_cyc_i(mmu0_cyc),
	.wb_ack_o(mmu0_ack),
	.wb_we_i(mmu0_we),
	.wb_adr_i(mmu0_adr),
	.wb_sel_i(mmu0_sel),
	.wb_dat_i(mmu0_dat_w),
	.wb_dat_o(mmu0_dat_r)
);

//---------------------------------------------------------------------------
// Block RAM
//---------------------------------------------------------------------------
wb_bram #(
	.adr_width( 12 ),
	.mem_file_name( bootram_file )
) bram0 (
	.clk_i(  clk  ),
	.rst_i(  rst  ),
	//
	.wb_adr_i(  bram0_adr    ),
	.wb_dat_o(  bram0_dat_r  ),
	.wb_dat_i(  bram0_dat_w  ),
	.wb_sel_i(  bram0_sel    ),
	.wb_stb_i(  bram0_stb    ),
	.wb_cyc_i(  bram0_cyc    ),
	.wb_ack_o(  bram0_ack    ),
	.wb_we_i(   bram0_we     )
);

//---------------------------------------------------------------------------
// sram0
//---------------------------------------------------------------------------
wire [1:0] sram_be_n;
wire [25:0] sram_adr;
wire [15:0] sram_d;
wire sram_we_n;
wire sram_oe_n;

wb_sram16 #(
	.adr_width(  24  ),
	.latency(   5   )				//7 may be better - 10ns clock cycle, RAM has 70ns access time
) sram0 (
	.clk(         clk           ),
	.reset(       rst           ),
	// Wishbone
	.wb_cyc_i(    sram0_cyc     ),
	.wb_stb_i(    sram0_stb     ),
	.wb_we_i(     sram0_we      ),
	.wb_adr_i(    sram0_adr     ),
	.wb_dat_o(    sram0_dat_r   ),
	.wb_dat_i(    sram0_dat_w   ),
	.wb_sel_i(    sram0_sel     ),
	.wb_ack_o(    sram0_ack     ),
	// SRAM
	.sram_adr(    sram_adr[23:0]       ),
	.sram_dat(    sram_d               ),
	.sram_be_n(   sram_be_n            ),
	.sram_ce_n(   sram_ce_n         ),
	.sram_oe_n(   sram_oe_n         ),
	.sram_we_n(   sram_we_n         )
);

assign sram_adr[25:24] = 2'b00;
assign sram_lb = sram_be_n[0];
assign sram_ub = sram_be_n[1];

//---------------------------------------------------------------------------
// Flash
//---------------------------------------------------------------------------
wire [25:0] flash_adr;
wire [15:0] flash_d;
wire flash_oe_n;
wire flash_we_n;


norflash16 #(
    .adr_width(24)
) norflash0 (
    .sys_clk(   clk              ),
    .sys_rst(   rst              ),
	// Wishbone
	.wb_adr_i(  norflash0_adr    ),
	.wb_dat_o(  norflash0_dat_r  ),
	.wb_dat_i(  norflash0_dat_w  ),
	.wb_sel_i(  norflash0_sel    ),
	.wb_stb_i(  norflash0_stb    ),
	.wb_cyc_i(  norflash0_cyc    ),
	.wb_ack_o(  norflash0_ack    ),
	.wb_we_i(   norflash0_we     ),
	// Flash
	.flash_adr(     flash_adr[23:0]  ),
	.flash_d(       flash_d          ),
	.flash_oe_n(    flash_oe_n       ),
	.flash_we_n(    flash_we_n       )
);

assign flash_rst_n = 1'b1;
assign flash_ce_n = ~(norflash0_cyc);


/*
wb_flash #(
	.adr_width( 24 )
)  norflash0 (
	.clk( clk ),
	.rst( rst ),
	// Wishbone
	.wb_adr_i(  norflash0_adr    ),
	.wb_dat_o(  norflash0_dat_r  ),
	.wb_dat_i(  norflash0_dat_w  ),
	.wb_sel_i(  norflash0_sel    ),
	.wb_stb_i(  norflash0_stb    ),
	.wb_cyc_i(  norflash0_cyc    ),
	.wb_ack_o(  norflash0_ack    ),
	.wb_we_i(   norflash0_we     ),
	// Flash
	.flash_address(     flash_adr[23:0]  ),
	.flash_data(       flash_d        ),
	.flash_oe_n(    flash_oe_n       ),
	.flash_we_n(    flash_we_n       ),
	.flash_ce_n(    flash_ce_n       ),
	.flash_rst_n(    flash_rst_n      )
);	
*/

assign flash_adr[25:24] = 2'b00;



//----------------------------------------------------------------------------
// Memory selector
//---------------------------------------------------------------------------

reg [15:0] mem_d_t;
reg [15:0] sram_d_t;
reg [15:0] flash_d_t;

always @(sram_ce_n or flash_ce_n or sram0_we or norflash0_we) 
begin
	// SRAM selected
	if(~sram_ce_n) begin
		mem_adr <= sram_adr;
		mem_oe <= sram_oe_n;
		mem_we <= sram_we_n;
		flash_d_t <= 16'bZ;
		if(sram0_we) begin
			sram_d_t <= 16'bZ;
			mem_d_t <= sram_d;
		end else begin
			mem_d_t <= 16'bZ;
			sram_d_t <= mem_d;
		end
	end
	// Flash selected
	else if(~flash_ce_n) begin
		mem_adr <= flash_adr;
		mem_oe <= flash_oe_n;
		mem_we <= flash_we_n;
		sram_d_t <= 16'bZ;
		if(norflash0_we) begin
			flash_d_t <= 16'bZ;
			mem_d_t <= flash_d;
		end else begin
			mem_d_t <= 16'bZ;
			flash_d_t <= mem_d;
		end
	end
	// No memory selected
	else begin
		mem_oe <= 1'b1;
		mem_we <= 1'b1;

		flash_d_t <= 16'bZ;
		sram_d_t <= 16'bZ;
		mem_d_t <= 16'bZ;
	end
end

															      
assign mem_d   = mem_d_t;
assign sram_d  = sram_d_t;
assign flash_d  = flash_d_t;


//---------------------------------------------------------------------------
// Graphic card (VGA)
//---------------------------------------------------------------------------
/*
wb_master_arbitrer arbitrer0 (
	.clk(clk),
	.rst(rst),

	.m0_cyc_i(lm32i_cyc),
	.m1_cyc_i(lm32d_cyc),
	.m2_cyc_i(gc_cyc),
	//.m2_cyc_i(gnd),
	.m3_cyc_i(gnd),

	.m0_cyc_o(lm32i_cyc_o),
	.m1_cyc_o(lm32d_cyc_o),
	.m2_cyc_o(gc_cyc_o)
);
*/

graphic_card gc0(
	.clk_100MHz(clk),
	.rst(rst),

	.gc_dat_o(gc_dat_w),
	.gc_adr_o(gc_adr),
	.gc_cyc_o(gc_cyc),
	.gc_sel_o(gc_sel),
	.gc_stb_o(gc_stb),
	.gc_we_o(gc_we),
	.gc_dat_i(gc_dat_r),
	.gc_ack_i(gc_ack),

	.gc_s_dat_i(gc_s_dat_w),
	.gc_s_adr_i(gc_s_adr),
	.gc_s_cyc_i(gc_s_cyc),
	.gc_s_sel_i(gc_s_sel),
	.gc_s_stb_i(gc_s_stb),
	.gc_s_we_i(gc_s_we),
	.gc_s_dat_o(gc_s_dat_r),
	.gc_s_ack_o(gc_s_ack),

	.vga_hsync(vga_hsync),
	.vga_vsync(vga_vsync),
	.vga_red(vga_red),
	.vga_green(vga_green),
	.vga_blue(vga_blue)
);

//---------------------------------------------------------------------------
// Ethernet
//---------------------------------------------------------------------------

   wire eth0_md_padoe_o;
   assign eth0_phy_rstn = ~rst;
   assign eth0_md_pad_d = (eth0_md_padoe_o) ? eth0_md_pad_o : eth0_md_pad_i;

ethmac eth0(
  // WISHBONE common
  .wb_clk_i( clk ),
  .wb_rst_i( rst ),
  .wb_dat_i( eth0_dat_w),
  .wb_dat_o( eth0_dat_r), 
    
  // WISHBONE slave
  .wb_adr_i( eth0_adr ),
  .wb_sel_i( eth0_sel ),
  .wb_we_i( eth0_we ),
  .wb_cyc_i( eth0_cyc ),
  .wb_stb_i( eth0_stb ),
  .wb_ack_o( eth0_ack ),
  
  .wb_err_o(),

  // WISHBONE master
  .m_wb_adr_o(),
  .m_wb_sel_o(),
  .m_wb_we_o(), 
  .m_wb_dat_o(),
  .m_wb_dat_i(),
  .m_wb_cyc_o(), 
  .m_wb_stb_o(),
  .m_wb_ack_i(),
  .m_wb_err_i(), 

  .m_wb_cti_o(),
  .m_wb_bte_o(), 

  //TX
  .mtx_clk_pad_i(eth0_mtx_clk_pad_i), // Transmit clock (from PHY)
  .mtxd_pad_o(eth0_mtxd_pad_o), // [3:0] Transmit nibble (to PHY)
  .mtxen_pad_o(eth0_mtxen_pad_o), // Transmit enable (to PHY)
  .mtxerr_pad_o(eth0_mtxerr_pad_o), // Transmit error (to PHY)

  //RX
  .mrx_clk_pad_i(eth0_mrx_clk_pad_i), // Receive clock (from PHY)
  .mrxd_pad_i(eth0_mrxd_pad_i), // [3:0] Receive nibble (from PHY)
  .mrxdv_pad_i(eth0_mrxdv_pad_i), // Receive data valid (from PHY)
  .mrxerr_pad_i(eth0_mrxerr_pad_i), // Receive data error (from PHY)

  // Common Tx and Rx
  .mcoll_pad_i(eth0_mcoll_pad_i), // Collision (from PHY)
  .mcrs_pad_i(eth0_mcrs_pad_i), // Carrier sense (from PHY)
 
  // MII Management interface
  .mdc_pad_o(eth0_mdc_pad_o), // MII Management data clock (to PHY)
  .md_pad_i(eth0_md_pad_i), // MII data input (from I/O cell)
  .md_pad_o(eth0_md_pad_o), // MII data output (to I/O cell)
  .md_padoe_o(eth0_md_padoe_o), // MII data output enable (to I/O cell)

  .int_o() // Interrupt output -> pas besoin ici
);

//---------------------------------------------------------------------------
// uart0
//---------------------------------------------------------------------------
wire uart0_rxd;
wire uart0_txd;

wb_uart #(
	.clk_freq(    clk_freq      ),
	.baud(        uart_baud_rate)
) uart0 (
	.clk(         clk           ),
	.reset(       rst           ),
	//
	.wb_adr_i(    uart0_adr     ),
	.wb_dat_i(    uart0_dat_w   ),
	.wb_dat_o(    uart0_dat_r   ),
	.wb_stb_i(    uart0_stb     ),
	.wb_cyc_i(    uart0_cyc     ),
	.wb_we_i(     uart0_we      ),
	.wb_sel_i(    uart0_sel     ),
	.wb_ack_o(    uart0_ack     ),
	.intr(       uart0_intr     ),
	.uart_rxd(    uart0_rxd     ),
	.uart_txd(    uart0_txd     )
);

//---------------------------------------------------------------------------
// timer0
//---------------------------------------------------------------------------
wb_timer #(
	.clk_freq(   clk_freq  )
) timer0 (
	.clk(      clk          ),
	.reset(    rst          ),
	//
	.wb_adr_i( timer0_adr   ),
	.wb_dat_i( timer0_dat_w ),
	.wb_dat_o( timer0_dat_r ),
	.wb_stb_i( timer0_stb   ),
	.wb_cyc_i( timer0_cyc   ),
	.wb_we_i(  timer0_we    ),
	.wb_sel_i( timer0_sel   ),
	.wb_ack_o( timer0_ack   ),
	.intr(     timer0_intr  )
);

//---------------------------------------------------------------------------
// General Purpose IO
//---------------------------------------------------------------------------
wire [31:0] gpio0_in;
wire [31:0] gpio0_out;
wire [31:0] gpio0_oe;

wb_gpio gpio0 (
	.clk(      clk          ),
	.reset(    rst          ),
	//
	.wb_adr_i( gpio0_adr    ),
	.wb_dat_i( gpio0_dat_w  ),
	.wb_dat_o( gpio0_dat_r  ),
	.wb_stb_i( gpio0_stb    ),
	.wb_cyc_i( gpio0_cyc    ),
	.wb_we_i(  gpio0_we     ),
	.wb_sel_i( gpio0_sel    ),
	.wb_ack_o( gpio0_ack    ),
	.intr(     gpio0_intr   ),
	// GPIO
	.gpio_in(  gpio0_in     ),
	.gpio_out( gpio0_out    ),
	.gpio_oe(  gpio0_oe     )
);

//------------------------------------------------------------------
// LogicAnalyzerComponent
//------------------------------------------------------------------
wire        lac_rxd;
wire        lac_txd;
wire        lac_cts;
wire        lac_rts;
assign      lac_rts = 1;
wire [7:0]  select;
reg  [7:0]  probe;

/* Diabled LAC

lac #(
	.uart_freq_hz(     clk_freq ),
	.uart_baud(  uart_baud_rate ),
	.adr_width(              11 ),
	.width(                   8 )
) lac0 (
	.reset(        btn[0]  ),
	.uart_clk(        clk  ),
	.uart_rxd(    lac_rxd  ),
	.uart_cts(    lac_cts  ),
	.uart_txd(    lac_txd  ),
	.uart_rts(    lac_rts  ),
	//
	.probe_clk(  clk       ),
	.probe(      probe     ),
	.select(     select    )
);

assign probe = (select[3:0] == 'h0) ? { rst, lm32i_stb, lm32i_cyc, lm32i_ack, lm32d_stb, lm32d_cyc, lm32d_we, lm32d_ack } :
               (select[3:0] == 'h1) ? lm32i_adr[31:24] :
               (select[3:0] == 'h2) ? lm32i_adr[23:16] :
               (select[3:0] == 'h3) ? lm32i_adr[15: 8] :
               (select[3:0] == 'h4) ? lm32i_adr[ 7: 0] :
               (select[3:0] == 'h5) ? lm32i_dat_r[31:24] :
               (select[3:0] == 'h6) ? lm32i_dat_r[23:16] :
               (select[3:0] == 'h7) ? lm32i_dat_r[15: 8] :
               (select[3:0] == 'h8) ? lm32i_dat_r[ 7: 0] :
               (select[3:0] == 'h9) ? lm32d_adr[31:24] :
               (select[3:0] == 'ha) ? lm32d_adr[23:16] :
               (select[3:0] == 'hb) ? lm32d_adr[15: 8] :
                                      lm32d_adr[ 7: 0] ;
*/


//----------------------------------------------------------------------------
// Mux UART wires according to sw[0]
//----------------------------------------------------------------------------
assign uart_txd  = (sw[0]) ? uart0_txd : lac_txd;
assign lac_rxd   = (sw[0]) ?         1 : uart_rxd;
assign uart0_rxd = (sw[0]) ? uart_rxd  : 1;

//----------------------------------------------------------------------------
// Mux LEDs and Push Buttons according to sw[1]
//----------------------------------------------------------------------------
wire [7:0] debug_leds = { timer0_intr, rst, gc_stb, gc_ack, lm32i_stb, lm32i_ack, lm32d_stb, lm32d_ack };
//wire [7:0] debug_leds = { 4'b0000, norflash0_sel};
//{ clk, rst, sram0_cyc, ~uart_txd, lm32i_stb, lm32i_ack, lm32d_stb, lm32d_ack };
wire [7:0] gpio_leds  = gpio0_out[7:0];

assign led             = (sw[1]) ? gpio_leds : debug_leds;
assign rst             = (sw[1]) ?      1'b0 : btn[0];

assign gpio0_in[15: 8] = (sw[1]) ? {4'b0, btn} : 8'b0;
assign gpio0_in[31:17] = 15'b0;
assign gpio0_in[ 7: 0] =  8'b0;

endmodule
