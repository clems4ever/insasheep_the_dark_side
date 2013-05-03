`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    07:04:33 04/29/2013 
// Design Name: 
// Module Name:    display_monitor 
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
module display_monitor(
	input rst,
	input clk,
	input vga_clk,

	output [31:0] gc_dat_o,
	output [31:0] gc_adr_o,
	output reg gc_cyc_o,
	output [3:0] gc_sel_o,
	output reg gc_stb_o,
	output gc_we_o,
	input [31:0] gc_dat_i,
	input gc_ack_i,
	
	input [31:0] monitor_base_address,
	
	output [2:0] color,
	input visible,
	input line,
	input frame,
	input [19:0] pixel
    );

	function integer log2;
	  input integer value;
	  begin
		 value = value-1;
		 for (log2=0; value>0; log2=log2+1)
			value = value>>1;
	  end
	endfunction


	parameter buffer_size = 256;
 
	reg [log2(buffer_size):0] buffer_write_ptr;
	reg [log2(buffer_size):0] buffer_mem_ptr;
	reg [log2(buffer_size):0] buffer_read_ptr;
	reg [2:0] buffer[0:buffer_size-1];
	wire bufferize;
	wire bufferize_authorized; // 1 line out of 4 is displayed the others can be used to bufferize
	wire display; // 1 means line to display, 0 means line we can use to bufferize
	
	reg [1:0] first_display_offset; // Determines the first to display
	reg [20:0] next_display_pixel;
	reg [9:0] lines;
	reg [1:0] frames;

	reg data_ready;
	reg displaying;
	reg data_refresh_asked;
	
	reg ack;
	
	always @(posedge rst or posedge line)
	begin
		if(rst)
			lines <= 0;
		else begin
			lines <= lines + 1;
			if(lines == 665)
				lines <= 0;
		end
	end
	
	always @(posedge rst or posedge frame)
	begin
		if(rst) begin
			frames <= 0;
			first_display_offset <= 0;
		end else begin
			frames <= frames + 1;
			// Each frame we shift the first pixel to be displayed
			first_display_offset <= first_display_offset + 1;
		end
	end
	
	// All vga clocks
	always @(posedge rst or posedge vga_clk)
	begin
		if(rst) begin // RESET ALL
			buffer_read_ptr <= 0;
			next_display_pixel <= 0;
			displaying <= 1'b0;
		end else begin
			if(data_ready) begin
				if(display) begin // IF displayable area, then display
					displaying <= 1;
					buffer_read_ptr <= buffer_read_ptr + 1;
					if(buffer_read_ptr == buffer_size-1) begin
						buffer_read_ptr <= 0;
						displaying <= 0;
						next_display_pixel <= next_display_pixel + (buffer_size << 1) ;
					end
				end
			end
			if(next_display_pixel >= 480000 - 1)
				next_display_pixel <= first_display_offset * buffer_size;
		end
	end


	always @(posedge rst or posedge clk)
	begin
		if(rst) begin
			buffer_write_ptr <= 0;
			buffer_mem_ptr <= 0;
			
			gc_cyc_o <= 1'b0;
			gc_stb_o <= 1'b0;
			data_ready <= 1'b0;
			data_refresh_asked <= 1'b0;
			
			ack <= 1'b0;
		end else begin
			if(displaying)
				data_refresh_asked <= 1'b1;
			
			if(data_refresh_asked && ~displaying || frame) begin
				data_refresh_asked <= 1'b0;
				data_ready <= 1'b0;
			end	
		
			if(ack) begin
				gc_stb_o <= 1'b0;
				gc_cyc_o <= 1'b0;
				ack <= 1'b0;
				// Increments write pointer
				buffer_mem_ptr <= buffer_mem_ptr + 4;	
				buffer_write_ptr <= buffer_write_ptr + 8;
				if(buffer_write_ptr >= buffer_size-8) begin
					buffer_write_ptr <= 0;
					buffer_mem_ptr <= 0;
					data_ready <= 1'b1;
				end 
			end	
		
			if(bufferize && ~data_ready) begin // bufferize when not visible or visible but bufferize_authorized					
				if(gc_cyc_o == 1'b0) begin
					gc_cyc_o <= 1'b1;
					gc_stb_o <= 1'b1;
				end else begin
					if(gc_ack_i == 1'b1) 
					begin
							// Latches the data
						buffer[buffer_write_ptr] <= gc_dat_i[2:0];
						buffer[buffer_write_ptr+1] <= gc_dat_i[6:4];
						buffer[buffer_write_ptr+2] <= gc_dat_i[10:8];
						buffer[buffer_write_ptr+3] <= gc_dat_i[14:12];
						buffer[buffer_write_ptr+4] <= gc_dat_i[18:16];
						buffer[buffer_write_ptr+5] <= gc_dat_i[22:20];
						buffer[buffer_write_ptr+6] <= gc_dat_i[26:24];
						buffer[buffer_write_ptr+7] <= gc_dat_i[30:28];

						ack <= 1'b1;
					end else
						if(gc_stb_o == 0)
							gc_stb_o <= 1'b1;
				end				
			end
		end
	end

	// Bufferize asked
	assign bufferize = ((~visible | bufferize_authorized) &  ~data_ready);
	// Authorized bufferize if the line is not gonna be displayed
	assign bufferize_authorized = ~display;
	assign display = pixel >= next_display_pixel && pixel < next_display_pixel+buffer_size && visible;

	// Wishbone part that does not change
	assign gc_adr_o = monitor_base_address + next_display_pixel + buffer_write_ptr;
	assign gc_sel_o = 4'b1111; // 32 bits transfer
	assign gc_we_o = 1'b0; // READ memory
	
	// Display the pixel color
	assign color = (data_ready & display) ? buffer[buffer_read_ptr] : 3'b000;

endmodule
