`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    07:00:31 04/30/2013 
// Design Name: 
// Module Name:    wb_master_arb 
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
module wb_master_arbitrer(
	input clk,
	input rst,

	input m0_cyc_i,
	input m1_cyc_i,
	input m2_cyc_i,
	input m3_cyc_i,


	// Master 0 to syscon
	output m0_cyc_o,
	output m1_cyc_o,
	output m2_cyc_o,
	output m3_cyc_o
    );

	reg [1:0] selector = 0;
	wire bus_granted;
	reg wait_state;
	
	always @(posedge clk)
	begin
		if(rst) begin
			selector <= 1'b0;
			wait_state <= 1'b0;
		end else begin
		if(~bus_granted & ~wait_state) begin
			selector <= selector + 1;
		end else
		if(~bus_granted & wait_state)
			wait_state <= 1'b0;
		end


		if(bus_granted)
			wait_state <= 1'b1;

	end
	
	assign bus_granted = (selector == 0 && m0_cyc_i == 1)
		   || (selector == 1 && m1_cyc_i == 1)
			|| (selector == 2 && m2_cyc_i == 1)
			|| (selector == 3 && m3_cyc_i == 1);
	
	assign m0_cyc_o = (selector == 0 & wait_state) ? m0_cyc_i : 1'b0;
	assign m1_cyc_o = (selector == 1 & wait_state) ? m1_cyc_i : 1'b0;
	assign m2_cyc_o = (selector == 2 & wait_state) ? m2_cyc_i : 1'b0;
	assign m3_cyc_o = (selector == 3 & wait_state) ? m3_cyc_i : 1'b0;
	

endmodule
