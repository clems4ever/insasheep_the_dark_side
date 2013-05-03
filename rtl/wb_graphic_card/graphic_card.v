`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    06:50:50 04/29/2013 
// Design Name: 
// Module Name:    graphic_card 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module graphic_card(
	input rst,
	input clk_100MHz,
	
	// Wishbone master to monitor memory
	output [31:0] gc_dat_o,
	output  [31:0] gc_adr_o,
	output gc_cyc_o,
	output [3:0] gc_sel_o,
	output gc_stb_o,
	output gc_we_o,
	input [31:0] gc_dat_i,
	input gc_ack_i,
	
	// Wishbone slave
	output reg [31:0] gc_s_dat_o,
	input  [31:0] gc_s_adr_i,
	input gc_s_cyc_i,
	input [3:0] gc_s_sel_i,
	input gc_s_stb_i,
	input gc_s_we_i,
	input [31:0] gc_s_dat_i,
	output reg gc_s_ack_o,
	
	// VGA
	output vga_hsync,
	output vga_vsync,
	output vga_red,
	output vga_green,
	output vga_blue
    );
	 
	 
	 // Registers of the graphic card
	 reg [31:0] status_register; // stores status bits 
	 reg [31:0] map_address; // Stores the address where vram is mapped
	 
	 //reg [6:0] reset_counter;
	 
	 reg clk_50MHz = 0;
	 
	 wire [3:0] color;
	 wire visible;
	 wire line;
	 wire frame;
	 wire [19:0] pixel;
	 
	 wire gc_rst; // Reset of the graphic card
	 
	 wire wb_s_rd =  gc_s_cyc_i & gc_s_stb_i & ~gc_s_we_i;
	 wire wb_s_wr =  gc_s_cyc_i & gc_s_stb_i & gc_s_we_i;
	 
	 
	 // Generate the CLOCK for the vga controller
	 always @(posedge clk_100MHz)
	 begin
		clk_50MHz <= ~clk_50MHz;
	 end
	 
	 display_monitor monitor0(
		.rst(gc_rst),
		.clk(clk_100MHz),
		.vga_clk(clk_50MHz),
		
		.gc_dat_o(gc_dat_o),
		.gc_adr_o(gc_adr_o),
		.gc_cyc_o(gc_cyc_o),
		.gc_sel_o(gc_sel_o),
		.gc_stb_o(gc_stb_o),
		.gc_we_o(gc_we_o),
		.gc_dat_i(gc_dat_i),
		.gc_ack_i(gc_ack_i),
		
		.monitor_base_address(map_address),
		
		.color(color),
		.visible(visible),
		.line(line),
		.frame(frame),
		.pixel(pixel)
	);
	
	
	
	
	vga_controller vga_ctl0(
		.rst(gc_rst),
		.clk(clk_50MHz),
	
		//VGA
		.vga_vsync(vga_vsync),
		.vga_hsync(vga_hsync),
		.vga_red(vga_red),
		.vga_green(vga_green),
		.vga_blue(vga_blue),
	
		// GPU
		.color(color),
		.visible(visible),
		.line(line),
		.frame(frame),
		.pixel(pixel)
	);
	
	
	always @(posedge rst or posedge clk_100MHz)
	begin	
		if(rst) begin
			status_register <= 0;
			map_address <= 32'h40800000;
		end else begin
			if(wb_s_rd) begin // If read
				case(gc_s_adr_i[15:0])
					16'h0000: gc_s_dat_o <= status_register;	
					16'h0004: gc_s_dat_o <= map_address;
				endcase
				gc_s_ack_o <= 1'b1;
			end else if(wb_s_wr) begin
				case(gc_s_adr_i[15:0])
					16'h0000: status_register <= gc_s_dat_i;	
					16'h0004: map_address <= gc_s_dat_i;
				endcase
				gc_s_ack_o <= 1'b1;
			end else begin
				gc_s_ack_o <= 1'b0;
			end
		end	
	end
	 
	// rest card if system reset or vga disabled
	assign gc_rst = rst | ~status_register[0];

endmodule
