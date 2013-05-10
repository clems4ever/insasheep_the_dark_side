


module wb_mmu #(
	parameter addr_width = 32
) (
	input              clk,
	input              rst,

	input [addr_width-1:0] addr0_in,
	output [addr_width-1:0] addr0_out,
	input [addr_width-1:0] addr1_in,
	output [addr_width-1:0] addr1_out,

	// Wishbone interface
	input              wb_stb_i,
	input              wb_cyc_i,
	output             wb_ack_o,
	input              wb_we_i,
	input       [31:0] wb_adr_i,
	input        [3:0] wb_sel_i,
	input       [31:0] wb_dat_i,
	output reg  [31:0] wb_dat_o
);

reg [addr_width-1:0] map;
// Control register
// Bit 0 = enable MMU if set
reg [31:0] ctr;

reg [addr_width-1:0] addr_min;
reg [addr_width-1:0] addr_max;

wire enabled = ctr[0];

reg  ack;
assign wb_ack_o = wb_stb_i & wb_cyc_i & ack;

// map the 2 addresses
assign addr0_out = (enabled && addr0_in >= addr_min && addr0_in < addr_max) ?  addr0_in + map : addr0_in;
assign addr1_out = (enabled && addr1_in >= addr_min && addr1_in < addr_max) ?  addr1_in + map : addr1_in;

wire wb_rd = wb_stb_i & wb_cyc_i & ~wb_we_i;
wire wb_wr = wb_stb_i & wb_cyc_i &  wb_we_i;


	always @(posedge clk)
	begin
		if(rst)
		begin
			ack <= 1'b0;
			map <= 32'b0;
			addr_min <= 0;
			addr_max <= 0;
		end
		else
				begin
				// Handle WISHBONE access
				ack    <= 0;

				if (wb_rd & ~ack) begin           // read cycle
					ack <= 1;

					case (wb_adr_i[7:0])
					'h00: wb_dat_o <= ctr;
					'h04: wb_dat_o <= addr_min;
					'h08: wb_dat_o <= addr_width;
					'h0c: wb_dat_o <= map;
					default: wb_dat_o <= 32'b0;
					endcase
				end else if (wb_wr & ~ack ) begin // write cycle
					ack <= 1;

					case (wb_adr_i[7:0])
					8'h00: ctr[0]     <= wb_dat_i[0];
					8'h04: addr_min <= wb_dat_i;
					8'h08: addr_max <= wb_dat_i;
					8'h0c: map <= wb_dat_i;
					endcase
				end
		end
	end
endmodule
