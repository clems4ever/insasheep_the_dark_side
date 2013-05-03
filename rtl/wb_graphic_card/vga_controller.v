`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    07:24:49 04/29/2013 
// Design Name: 
// Module Name:    vga_contoller 
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
module vga_controller (
	input rst,
	input clk,
	
	//VGA
	output reg vga_vsync,
	output reg vga_hsync,
	output vga_red,
	output vga_green,
	output vga_blue,
	
	// GPU
	input [2:0] color, // Must contain the pixel color for each clk posedge
	output visible, 
	output reg line,
	output reg frame,
	output reg [19:0] pixel
    );
	parameter h_visible_time = 800-1;
	parameter h_fporch_time = 56-1;
	parameter h_sync_time = 120-1;
	parameter h_bporch_time = 64-1;

	parameter v_visible_time = 600-1;
	parameter v_fporch_time = 37-1;
	parameter v_sync_time = 6-1;
	parameter v_bporch_time = 23-1;

	wire pixel_clk = clk;
	reg vertical;

	reg [12:0] h_counter;
	reg [12:0] v_counter;
	reg [4:0] h_state;
	reg [4:0] v_state;


	always @(posedge rst or posedge pixel_clk)
	begin
		if(rst) begin
			h_counter <= h_fporch_time+1;
			v_counter <= v_fporch_time+1;
		
			vga_hsync <= 1'b1;
			vga_vsync <= 1'b1;
			vertical <= 1'b1;
			h_state <= 0;
			v_state <= 0;
			line <= 1'b0;
			frame <= 1'b0;
			pixel <= 0;
		end else begin
			line <= 1'b0;
			frame <= 1'b0;
			// horizontal
			if(h_counter != 0) begin
				h_counter <= h_counter - 1;
			end else begin
				case(h_state)
				0: begin
						h_counter <= h_visible_time;
						h_state <= 1;
				end
				1: begin
						h_counter <= h_bporch_time;
						h_state <= 2;
				end
				2: begin
						h_counter <= h_sync_time;
						h_state <= 3;
						vga_hsync <= 1'b0;
				end
				3: begin
						h_counter <= h_fporch_time;
						h_state <= 0;
						vga_hsync <= 1'b1;
						vertical <= 1'b1;
						line <= 1'b1;
				end
				endcase
			end
			
			if(vertical) begin	
				// vertical
				if(v_counter != 0) begin
					v_counter <= v_counter - 1;
				end else begin
					case(v_state)
					0: begin
							v_counter <= v_visible_time;
							v_state <= 1;
					end
					1: begin
							v_counter <= v_bporch_time;
							v_state <= 2;
					end
					2: begin
							v_counter <= v_sync_time;
							v_state <= 3;
							vga_vsync <= 1'b0;
					end
					3: begin
							v_counter <= v_fporch_time;
							v_state <= 0;
							vga_vsync <= 1'b1;
							frame <= 1'b1;
							pixel <= 0;
					end
					endcase
				end
				vertical <= 1'b0;
			end
			
			if(visible) 
				pixel <= pixel + 1;
		end // RESET
	end
	
	assign visible = (h_state == 1 && v_state == 1);
	
	assign {vga_red, vga_green, vga_blue} = (visible) ? color : 3'b000;

endmodule
