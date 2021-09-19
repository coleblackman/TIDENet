// Copyright 2020 Jean M. Cyr
//
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
//     http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.

// Language: Verilog 2001

`default_nettype none
`timescale 1ns / 1ps

`ifndef MPRJ_IO_PADS
`define MPRJ_IO_PADS 36
`endif

module user_proj_example (
`ifdef USE_POWER_PINS
    inout wire vdda1,        // User area 1 3.3V supply
    inout wire vdda2,        // User area 2 3.3V supply
    inout wire vssa1,        // User area 1 analog ground
    inout wire vssa2,        // User area 2 analog ground
    inout wire vccd1,        // User area 1 1.8V supply
    inout wire vccd2,        // User area 2 1.8v supply
    inout wire vssd1,        // User area 1 digital ground
    inout wire vssd2,        // User area 2 digital ground
`endif

    // Wishbone Slave ports (WB MI A)
    input wire wb_clk_i,
    input wire wb_rst_i,
    input wire wbs_stb_i,
    input wire wbs_cyc_i,
    input wire wbs_we_i,
    input wire [3:0] wbs_sel_i,
    input wire [31:0] wbs_dat_i,
    input wire [31:0] wbs_adr_i,
    output wire wbs_ack_o,
    output wire [31:0] wbs_dat_o,

    // Logic Analyzer Signals
    input wire  [127:0] la_data_in,
    output wire [127:0] la_data_out,
    input wire  [127:0] la_oen,

    // IOs
    input wire  [`MPRJ_IO_PADS-1:0] io_in,
    output wire [`MPRJ_IO_PADS-1:0] io_out,
    output wire [`MPRJ_IO_PADS-1:0] io_oeb,

    // Analog (direct connection to GPIO pad---use with caution)
    // Note that analog I/O is not available on the 7 lowest-numbered
    // GPIO pads, and so the analog_io indexing is offset from the
    // GPIO indexing by 7.
    inout wire [`MPRJ_IO_PADS-8:0] analog_io,

    // Independent clock (on independent integer divider)
    input wire   user_clock2
);

localparam DATA_WIDTH   = 32,
           ADDR_WIDTH   = 32,
           ADDR_BASE    = 'h30000000,
           ADDR_MASK    = 'hffffff80,
           IRQ_IO_PORT  = 12;

assign la_data_out = 0;
assign io_out = 0;
assign io_oeb = ~0;

wire active_cyc = wbs_cyc_i & wbs_stb_i;
wire write_cyc = active_cyc & wbs_we_i;

wire [255:0]   header,
               difficulty;
wire [63:0]    start_nonce,
               solution;
wire [18:0]    control;
wire [2:0]     status;

reg  [63:0]    solution_r[0:1];
reg  [2:0]     status_r[0:1];

// SHA3_REG-256 register file
sha3_256_miner_regs #
(
   .DATA_WIDTH(DATA_WIDTH),
   .ADDR_WIDTH(ADDR_WIDTH)
)
s3r
(
   .clk(wb_clk_i),
   .reset(wb_rst_i),
   .addr(wbs_adr_i),
   .ack(wbs_ack_o),
   .read(active_cyc),
   .write(write_cyc),
   .rdata(wbs_dat_o),
   .wdata(wbs_dat_i),
   .sel(wbs_sel_i),

   .header_o(header),
   .difficulty_o(difficulty),
   .start_nonce_o(start_nonce),
   .control_o(control),
   .solution_i(solution_r[1]),
   .status_i(status_r[1])
);

// SHA3_REG-256 mining core
sha3_256_miner_core_12
s3c (
   .clk(user_clock2),
   .rst(wb_rst_i),
   .header(header),
   .difficulty(difficulty),
   .start_nonce(start_nonce),
   .control(control),
   .solution(solution),
   .status(status),
   .irq()
);

always @(posedge wb_clk_i)
   if (wb_rst_i) begin
      solution_r[0] <= 0;
      solution_r[1] <= 0;
      status_r[0] <= 0;
      status_r[1] <= 0;
   end
   else begin
      solution_r[1] <= solution_r[0];
      solution_r[0] <= solution;
      status_r[1] <= status_r[0];
      status_r[0] <= status;
   end

endmodule


/*
 * Wishbone registers
 */
module sha3_256_miner_regs #
(
   parameter DATA_WIDTH = 32,                // width of data bus in bits (8, 16, 32, or 64)
   parameter ADDR_WIDTH = 7,                  // width of address bus in bits
   parameter ADDR_BASE  = 0
)
(
   input wire                    clk,
   input wire                    reset,
   input wire                    read,
   input wire                    write,
   input wire  [ADDR_WIDTH-1:0]  addr,
   input wire  [DATA_WIDTH-1:0]  wdata,
   input wire  [3:0]             sel,
   output wire                   ack,
   output reg  [DATA_WIDTH-1:0]  rdata,

   // miner core port
   output wire [255:0]            header_o,
   output wire [255:0]            difficulty_o,
   output wire [63:0]             start_nonce_o,
   output wire [18:0]             control_o,
   input wire  [63:0]             solution_i,
   input wire  [2:0]              status_i
);

// Register indices
localparam SOLN_REG  = 0;  // RO
localparam STAT_REG  = 2;  // RO
localparam SHA3_REG  = 3;  // RO
localparam HDR_REG   = 4;  // RW
localparam DIFF_REG  = 12; // RW
localparam START_REG = 20; // RW
localparam CTL_REG   = 22; // RW

reg [31:0] data_r [HDR_REG:CTL_REG];
reg ack_r;
assign ack = ack_r;

// Combine register values into signals      
assign header_o =
  {data_r[HDR_REG + 0], data_r[HDR_REG + 1], data_r[HDR_REG + 2], data_r[HDR_REG + 3],
   data_r[HDR_REG + 4], data_r[HDR_REG + 5], data_r[HDR_REG + 6], data_r[HDR_REG + 7]};
   
assign difficulty_o =
  {data_r[DIFF_REG + 0], data_r[DIFF_REG + 1], data_r[DIFF_REG + 2], data_r[DIFF_REG + 3],
   data_r[DIFF_REG + 4], data_r[DIFF_REG + 5], data_r[DIFF_REG + 6], data_r[DIFF_REG + 7]};
   
assign start_nonce_o = {data_r[START_REG + 0], data_r[START_REG + 1]};

// Pack the control data for the miner core
assign control_o = {data_r[CTL_REG][31:24], data_r[CTL_REG][23:16], data_r[CTL_REG][2:0]};

always @(posedge clk) begin
   if (reset) begin
      ack_r <= 0;
      data_r[CTL_REG] <= 0;
   end
   else begin
      if (ack_r)
         ack_r <= 0;
		if (write && (addr[6:4] != 0)) begin
			if (sel[0]) data_r[addr[6:2]][7:0]   <= wdata[7:0];
			if (sel[1]) data_r[addr[6:2]][15:8]  <= wdata[15:8];
			if (sel[2]) data_r[addr[6:2]][23:16] <= wdata[23:16];
			if (sel[3]) data_r[addr[6:2]][31:24] <= wdata[31:24];
		end
		if (read) begin
			if (addr[6:4] != 0)
				rdata <= data_r[addr[6:2]];
			else
				case (addr[3:2])
					SOLN_REG + 0:  rdata <= solution_i[31:0];
					SOLN_REG + 1:  rdata <= solution_i[63:32];
					STAT_REG:      rdata <= {29'b0, status_i};
					SHA3_REG:      rdata <= "SHA3";
				endcase
		end
		if (~ack_r & (write | read))
			ack_r <= 1;
   end
end

endmodule


// The mining engine.

// Control bits
// 0     - run
// 1     - enable test mode
// 2     - halt
// 23:16 - padding last byte
// 31:24 - padding first byte
//
// Status bits
// 0     - found
// 1     - running
// 2     - testing

`define SPONGE 1600

module sha3_256_miner_core_248 (
   input wire           clk,
   input wire           rst,
   input wire  [255:0]  header,
   input wire  [255:0]  difficulty,
   input wire  [63:0]   start_nonce,
   input wire  [18:0]   control,
   output reg  [63:0]   solution,
   output wire [2:0]    status,
   output reg           irq
);

parameter STAGES = 8; // Stages (1, 2, 4, or 8)

localparam SHA3_STAGES = 24;
localparam S = STAGES;
localparam L2S = $clog2(S);
   
// Synchronize control signals
reg [18:0] ctl_r [1:0];

always @(posedge clk)
begin
   ctl_r[0] = rst ? 0 : control;
   ctl_r[1] = rst ? 0 : ctl_r[0];
end

// Front and back padding values and control signals
wire [7:0] ctl_padf_w = ctl_r[1][18:11];
wire [7:0] ctl_padl_w = ctl_r[1][10:3];
wire       ctl_halt_w = ctl_r[1][2];
wire       ctl_test_w = ctl_r[1][1];
wire        ctl_run_w = ctl_r[1][0];

// Only hashes out of phase 0 are valid except for the
// 1st phase after run is enabled. Skip the 1st 8 cycles
reg [4:0] valid_hash_r;
wire valid_hash_w = valid_hash_r == 0;

// Modulo 24 cycle counter
reg [4:0] cycles_r;

// Current status
assign status = {ctl_test_w, ctl_run_w, irq & ~ctl_halt_w};

// Constant 768 bit pad
wire [767:0] ctl_pad_w = {56'b0, ctl_padf_w, 640'b0, ctl_padl_w, 56'b0};

// big and little endian input
wire [319:0] in_le_w = {header, solution};
wire [319:0] in_be_w;

//assign in_be_w = in_le_w;
`define low_bit(w,b)   ((w)*64 + (b)*8)
`define low_bit2(w,b)  `low_bit(w,7-b)
`define high_bit(w,b)  (`low_bit(w,b) + 7)
`define high_bit2(w,b) (`low_bit2(w,b) + 7)

genvar i, w, b;

// Convert the input data
generate
for(w = 0; w < 5; w = w + 1) begin : L0
   for(b = 0; b < 8; b = b + 1) begin : L1
      assign in_be_w[`high_bit(w,b):`low_bit(w,b)] = in_le_w[`high_bit2(w,b):`low_bit2(w,b)];
   end
end
endgenerate

// Round constantts, bits 63, 31, 15, 7, 3, 1 and 0
wire [6:0] rc_w [0:23];
assign rc_w[0]  = 'h01; assign rc_w[1]  = 'h1a; assign rc_w[2]  = 'h5e; assign rc_w[3]  = 'h70;
assign rc_w[4]  = 'h1f; assign rc_w[5]  = 'h21; assign rc_w[6]  = 'h79; assign rc_w[7]  = 'h55;
assign rc_w[8]  = 'h0e; assign rc_w[9]  = 'h0c; assign rc_w[10] = 'h35; assign rc_w[11] = 'h26;
assign rc_w[12] = 'h3f; assign rc_w[13] = 'h4f; assign rc_w[14] = 'h5d; assign rc_w[15] = 'h53;
assign rc_w[16] = 'h52; assign rc_w[17] = 'h48; assign rc_w[18] = 'h16; assign rc_w[19] = 'h66;
assign rc_w[20] = 'h79; assign rc_w[21] = 'h58; assign rc_w[22] = 'h21; assign rc_w[23] = 'h74;

// State stage interconnections.
wire [1599:0] state_w [0:S - 1];

// Current phase of 24 rounds (0 to L2S-1). Easy divide by S.
wire [4 - L2S:0] pass_w = cycles_r[4:L2S];

wire [L2S - 1:0] r_0_0_w = 0;

// Special case, round 0 which has per pass input and simple rc calculation
sha3_256_miner_round r_0(
   .clk(clk),
   .rc(rc_w[{pass_w, r_0_0_w}]),
   .in((pass_w != 0) ? state_w[S - 1] : {in_be_w, ctl_pad_w, 512'b0}), 
   .out(state_w[0])
);

// Rounds 1-7 differ in that they always take their input from the previous
// round, but use a delayed round calculation of the appropriate round
// constant.   

generate
for(i = 1; i < S; i = i + 1)
begin : L3
   wire [4:0] t0 = cycles_r - i[4:0] + ((cycles_r < i) ? SHA3_STAGES : 5'b0);
   wire [4:0] t1 = {t0[4:L2S], i[L2S - 1:0]}; // Calc RC value offset for this stage
   sha3_256_miner_round r_n(
      .clk(clk),
      .rc(rc_w[t1]),
      .in(state_w[i - 1]),
      .out(state_w[i])
   );
end
endgenerate

// Final hash is the little endian upper 256 bits of sponge.
wire [255:0] out_hash_be_w = state_w[S - 1][`SPONGE-1:`SPONGE-256];
wire [255:0] out_hash_le_w;

generate
for(w = 0; w < 4; w = w + 1) begin : L4
   for(b = 0; b < 8; b = b + 1) begin : L5
      assign out_hash_le_w[`high_bit(w,b):`low_bit(w,b)] = out_hash_be_w[`high_bit2(w,b):`low_bit2(w,b)];
   end
end
endgenerate


// Hash is less than or equal to difficulty
wire match_w = (ctl_test_w ? (out_hash_le_w == difficulty) : (out_hash_le_w <= difficulty))
   && valid_hash_w && (pass_w == 0);
   
always @(posedge clk)
begin
   if (rst | ~ctl_run_w) begin
      irq <= 0;
      valid_hash_r <= SHA3_STAGES;
      cycles_r <= 5'b11111;
      solution <= start_nonce;
   end
   else begin
      if (!irq) begin
         // Count up to 8 (end of 1st phase)
         valid_hash_r <= valid_hash_w ? 5'b0 : valid_hash_r - 1'b1;
         // Modulo 24 cycle count
         cycles_r <= cycles_r == (SHA3_STAGES - 1) ? 5'b0 : cycles_r + 1'b1;
                           
         if ((match_w | ctl_halt_w) & valid_hash_w) begin
            solution <= solution - S; // control[0]Solution is 8 cycles old.
            irq <= 1; // report match with IRQ and halt
         end
         else // Otherwise increment the nonce for the next cycle
            solution <= (pass_w != 0) ? solution : solution + 1;
      end
   end
end

`undef low_bit
`undef low_bit2
`undef high_bit
`undef high_bit2
        
endmodule

module sha3_256_miner_core_12 (
   input wire           clk,
   input wire           rst,
   input wire  [255:0]  header,
   input wire  [255:0]  difficulty,
   input wire  [63:0]   start_nonce,
   input wire  [18:0]   control,
   output reg  [63:0]   solution,
   output wire [2:0]    status,
   output reg           irq
);

localparam STAGES = 12;
localparam SHA3_STAGES = 24;
   
// Synchronize control signals
reg [18:0] ctl_r [1:0];

always @(posedge clk)
begin
   ctl_r[0] = rst ? 0 : control;
   ctl_r[1] = rst ? 0 : ctl_r[0];
end

// Front and back padding values and control signals
wire [7:0] ctl_padf_w = ctl_r[1][18:11];
wire [7:0] ctl_padl_w = ctl_r[1][10:3];
wire       ctl_halt_w = ctl_r[1][2];
wire       ctl_test_w = ctl_r[1][1];
wire        ctl_run_w = ctl_r[1][0];

// Only hashes out of phase 0 are valid except for the
// 1st phase after run is enabled. Skip the 1st 8 cycles
reg [4:0] valid_hash_r;
wire valid_hash_w = valid_hash_r == 0;

// Modulo 24 cycle counter
reg [4:0] cycles_r;

// Current status
assign status = {ctl_test_w, ctl_run_w, irq & ~ctl_halt_w};

// Constant 768 bit pad
wire [767:0] ctl_pad_w = {56'b0, ctl_padf_w, 640'b0, ctl_padl_w, 56'b0};

// big and little endian input
wire [319:0] in_le_w = {header, solution};
wire [319:0] in_be_w;

//assign in_be_w = in_le_w;
`define low_bit(w,b)   ((w)*64 + (b)*8)
`define low_bit2(w,b)  `low_bit(w,7-b)
`define high_bit(w,b)  (`low_bit(w,b) + 7)
`define high_bit2(w,b) (`low_bit2(w,b) + 7)

genvar i, w, b;

// Convert the input data
generate
for(w = 0; w < 5; w = w + 1) begin : L0
   for(b = 0; b < 8; b = b + 1) begin : L1
      assign in_be_w[`high_bit(w,b):`low_bit(w,b)] = in_le_w[`high_bit2(w,b):`low_bit2(w,b)];
   end
end
endgenerate

// Round constantts, bits 63, 31, 15, 7, 3, 1 and 0
wire [6:0] rc_w [0:23];
assign rc_w[0]  = 'h01; assign rc_w[1]  = 'h1a; assign rc_w[2]  = 'h5e; assign rc_w[3]  = 'h70;
assign rc_w[4]  = 'h1f; assign rc_w[5]  = 'h21; assign rc_w[6]  = 'h79; assign rc_w[7]  = 'h55;
assign rc_w[8]  = 'h0e; assign rc_w[9]  = 'h0c; assign rc_w[10] = 'h35; assign rc_w[11] = 'h26;
assign rc_w[12] = 'h3f; assign rc_w[13] = 'h4f; assign rc_w[14] = 'h5d; assign rc_w[15] = 'h53;
assign rc_w[16] = 'h52; assign rc_w[17] = 'h48; assign rc_w[18] = 'h16; assign rc_w[19] = 'h66;
assign rc_w[20] = 'h79; assign rc_w[21] = 'h58; assign rc_w[22] = 'h21; assign rc_w[23] = 'h74;

// State stage interconnections.
wire [1599:0] state_w [0:STAGES - 1];

// Current phase of 24 rounds (0 to L2S-1). Easy divide by STAGES.
wire pass_w = (cycles_r < STAGES) ? 0 : 1;

// Special case, round 0 which has per pass input and simple rc calculation
sha3_256_miner_round r_0(
   .clk(clk),
   .rc(rc_w[pass_w ? 12 : 0]),
   .in((pass_w != 0) ? state_w[STAGES - 1] : {in_be_w, ctl_pad_w, 512'b0}), 
   .out(state_w[0])
);

// Rounds 1-7 differ in that they always take their input from the previous
// round, but use a delayed round calculation of the appropriate round
// constant. 

`define mod12(x) ((x < STAGES) ? x : x - STAGES)
`define d12m12(x) ((x < STAGES) ? 0 : STAGES)  

generate
for(i = 1; i < STAGES; i = i + 1)
begin : L3
   wire [4:0] t0 = cycles_r - i + ((cycles_r < i) ? SHA3_STAGES : 0);
   wire [4:0] t1 = `d12m12(t0) + `mod12(i); // Calc RC value offset for this stage
   sha3_256_miner_round r_n(
      .clk(clk),
      .rc(rc_w[t1]),
      .in(state_w[i - 1]),
      .out(state_w[i])
   );
end
endgenerate

// Final hash is the little endian upper 256 bits of sponge.
wire [255:0] out_hash_be_w = state_w[STAGES - 1][`SPONGE-1:`SPONGE-256];
wire [255:0] out_hash_le_w;

generate
for(w = 0; w < 4; w = w + 1) begin : L4
   for(b = 0; b < 8; b = b + 1) begin : L5
      assign out_hash_le_w[`high_bit(w,b):`low_bit(w,b)] = out_hash_be_w[`high_bit2(w,b):`low_bit2(w,b)];
   end
end
endgenerate


// Hash is less than or equal to difficulty
wire match_w = (ctl_test_w ? (out_hash_le_w == difficulty) : (out_hash_le_w <= difficulty))
   && valid_hash_w && (pass_w == 0);
   
always @(posedge clk)
begin
   if (rst | ~ctl_run_w) begin
      irq <= 0;
      valid_hash_r <= SHA3_STAGES;
      cycles_r <= 5'b11111;
      solution <= start_nonce;
   end
   else begin
      if (!irq) begin
         // Count up to 8 (end of 1st phase)
         valid_hash_r <= valid_hash_w ? 5'b0 : valid_hash_r - 1'b1;
         // Modulo 24 cycle count
         cycles_r <= cycles_r == (SHA3_STAGES - 1) ? 5'b0 : cycles_r + 1'b1;
                           
         if ((match_w | ctl_halt_w) & valid_hash_w) begin
            solution <= solution - STAGES; // control[0]Solution is 8 cycles old.
            irq <= 1; // report match with IRQ and halt
         end
         else // Otherwise increment the nonce for the next cycle
            solution <= (pass_w != 0) ? solution : solution + 1;
      end
   end
end

`undef low_bit
`undef low_bit2
`undef high_bit
`undef high_bit2
        
endmodule


module sha3_256_miner_round (
   input wire                clk,
   input wire  [`SPONGE-1:0] in,
   input wire  [6:0]         rc,
   output reg  [`SPONGE-1:0] out
);

wire [`SPONGE-1:0] round_out;

permutation p(in, rc, round_out);

always @ (posedge clk)
   out <= round_out;
      
endmodule

module permutation (
   input wire        [`SPONGE-1:0]        in,
   input wire  [6:0]    round_const,
   output wire [`SPONGE-1:0] out
);

`define low_bit(x,y)  `high_bit(x,y) - 63
`define high_bit(x,y) `SPONGE-1 - 64*(5*y+x)

`define add_1(x)      (x == 4 ? 0 : x + 1)
`define add_2(x)      (x == 3 ? 0 : x == 4 ? 1 : x + 2)
`define sub_1(x)      (x == 0 ? 4 : x - 1)

`define rot_left(x, n) {x[63-n:0], x[63:63-n+1]}

genvar x, y;

wire [63:0] a[4:0][4:0];

// assign "a[x][y][z] == in[w(5y+x)+z]"
generate
for(y = 0; y < 5; y = y + 1) begin : L0
   for(x = 0; x < 5; x = x + 1) begin : L1
      assign a[x][y] = in[`high_bit(x, y) : `low_bit(x, y)];
   end
end
endgenerate

wire [63:0] b[4:0];

// calc "b[x] == a[x][0] ^ a[x][1] ^ ... ^ a[x][4]"
generate    
for(x = 0; x < 5; x = x + 1) begin : L2
   assign b[x] = a[x][0] ^ a[x][1] ^ a[x][2] ^ a[x][3] ^ a[x][4];
end
endgenerate

wire [63:0] c[4:0][4:0];

// calc "c == theta(a)"
generate    
for(y = 0; y < 5; y = y + 1) begin : L3
   for(x = 0; x < 5; x = x + 1) begin : L4
      assign c[x][y] = a[x][y] ^ b[`sub_1(x)] ^ `rot_left(b[`add_1(x)], 1);
   end
end
endgenerate

wire [63:0] d[4:0][4:0];

// calc "d == rho(c)"
assign d[0][0] = c[0][0];
assign d[1][0] = `rot_left(c[1][0],  1);
assign d[2][0] = `rot_left(c[2][0], 62);
assign d[3][0] = `rot_left(c[3][0], 28);
assign d[4][0] = `rot_left(c[4][0], 27);
assign d[0][1] = `rot_left(c[0][1], 36);
assign d[1][1] = `rot_left(c[1][1], 44);
assign d[2][1] = `rot_left(c[2][1], 6);
assign d[3][1] = `rot_left(c[3][1], 55);
assign d[4][1] = `rot_left(c[4][1], 20);
assign d[0][2] = `rot_left(c[0][2], 3);
assign d[1][2] = `rot_left(c[1][2], 10);
assign d[2][2] = `rot_left(c[2][2], 43);
assign d[3][2] = `rot_left(c[3][2], 25);
assign d[4][2] = `rot_left(c[4][2], 39);
assign d[0][3] = `rot_left(c[0][3], 41);
assign d[1][3] = `rot_left(c[1][3], 45);
assign d[2][3] = `rot_left(c[2][3], 15);
assign d[3][3] = `rot_left(c[3][3], 21);
assign d[4][3] = `rot_left(c[4][3], 8);
assign d[0][4] = `rot_left(c[0][4], 18);
assign d[1][4] = `rot_left(c[1][4], 2);
assign d[2][4] = `rot_left(c[2][4], 61);
assign d[3][4] = `rot_left(c[3][4], 56);
assign d[4][4] = `rot_left(c[4][4], 14);

wire [63:0] e[4:0][4:0];

// calc "e == pi(d)"
assign e[0][0] = d[0][0];
assign e[0][2] = d[1][0];
assign e[0][4] = d[2][0];
assign e[0][1] = d[3][0];
assign e[0][3] = d[4][0];
assign e[1][3] = d[0][1];
assign e[1][0] = d[1][1];
assign e[1][2] = d[2][1];
assign e[1][4] = d[3][1];
assign e[1][1] = d[4][1];
assign e[2][1] = d[0][2];
assign e[2][3] = d[1][2];
assign e[2][0] = d[2][2];
assign e[2][2] = d[3][2];
assign e[2][4] = d[4][2];
assign e[3][4] = d[0][3];
assign e[3][1] = d[1][3];
assign e[3][3] = d[2][3];
assign e[3][0] = d[3][3];
assign e[3][2] = d[4][3];
assign e[4][2] = d[0][4];
assign e[4][4] = d[1][4];
assign e[4][1] = d[2][4];
assign e[4][3] = d[3][4];
assign e[4][0] = d[4][4];

wire [63:0] f[4:0][4:0];

// calc "f = chi(e)"
generate    
for(y = 0; y < 5; y = y + 1) begin : L5
   for(x = 0; x < 5; x = x + 1) begin : L6
      assign f[x][y] = e[x][y] ^ ((~ e[`add_1(x)][y]) & e[`add_2(x)][y]);
   end
end
endgenerate

wire [63:0] g[4:0][4:0];

// calc "g = iota(f)"
assign g[0][0][0]     = f[0][0][0] ^ round_const[0];
assign g[0][0][1]     = f[0][0][1] ^ round_const[1];
assign g[0][0][2]     = f[0][0][2];
assign g[0][0][3]     = f[0][0][3] ^ round_const[2];
assign g[0][0][6:4]   = f[0][0][6:4];
assign g[0][0][7]     = f[0][0][7] ^ round_const[3];
assign g[0][0][14:8]  = f[0][0][14:8];
assign g[0][0][15]    = f[0][0][15] ^ round_const[4];
assign g[0][0][30:16] = f[0][0][30:16];
assign g[0][0][31]    = f[0][0][31] ^ round_const[5];
assign g[0][0][62:32] = f[0][0][62:32];
assign g[0][0][63]    = f[0][0][63] ^ round_const[6];

generate    
for(y = 0; y < 5; y = y + 1) begin : L7
   for(x = 0; x < 5; x = x + 1) begin : L8
      if(x != 0 || y != 0)
         assign g[x][y] = f[x][y];
   end
end
endgenerate 

// assign "out[w(5y+x)+z] == g[x][y][z]"
generate
for(y = 0; y < 5; y = y + 1) begin : L9
   for(x = 0; x < 5; x = x + 1) begin : L10
      assign out[`high_bit(x, y) : `low_bit(x, y)] = g[x][y];
   end
end
endgenerate

`undef low_bit
`undef high_bit
`undef add_1
`undef add_2
`undef sub_1
`undef rot_left

endmodule
`default_nettype wire
