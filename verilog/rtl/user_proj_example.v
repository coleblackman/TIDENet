// SPDX-FileCopyrightText: 2020 Efabless Corporation
//
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
//      http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.
// SPDX-License-Identifier: Apache-2.0

`default_nettype none
/*
 *-------------------------------------------------------------
 *
 * user_proj_example
 *
 * This is an example of a (trivially simple) user project,
 * showing how the user project can connect to the logic
 * analyzer, the wishbone bus, and the I/O pads.
 *
 * This project generates an integer count, which is output
 * on the user area GPIO pads (digital output only).  The
 * wishbone connection allows the project to be controlled
 * (start and stop) from the management SoC program.
 *
 * See the testbenches in directory "mprj_counter" for the
 * example programs that drive this user project.  The three
 * testbenches are "io_ports", "la_test1", and "la_test2".
 *
 *-------------------------------------------------------------
 */

module user_proj_example #(
    parameter BITS = 32
)(
`ifdef USE_POWER_PINS
    inout vccd1,	// User area 1 1.8V supply
    inout vssd1,	// User area 1 digital ground
`endif

    // Wishbone Slave ports (WB MI A)
    input wb_clk_i,
    input wb_rst_i,
    input wbs_stb_i,
    input wbs_cyc_i,
    input wbs_we_i,
    input [3:0] wbs_sel_i,
    input [31:0] wbs_dat_i,
    input [31:0] wbs_adr_i,
    output wbs_ack_o,
    output [31:0] wbs_dat_o,

    // Logic Analyzer Signals
    input  [127:0] la_data_in,
    output [127:0] la_data_out,
    input  [127:0] la_oenb,

    // IOs
    input  [`MPRJ_IO_PADS-1:0] io_in,
    output [`MPRJ_IO_PADS-1:0] io_out,
    output [`MPRJ_IO_PADS-1:0] io_oeb,

    // IRQ
    output [2:0] irq
);
    wire clk;
    wire rst;

    wire [`MPRJ_IO_PADS-1:0] io_in;
    wire [`MPRJ_IO_PADS-1:0] io_out;
    wire [`MPRJ_IO_PADS-1:0] io_oeb;

    wire [31:0] rdata; 
    wire [31:0] wdata;
    wire [BITS-1:0] count;

    wire valid;
    wire [3:0] wstrb;
    wire [31:0] la_write;

    // WB MI A
    assign valid = wbs_cyc_i && wbs_stb_i; 
    assign wstrb = wbs_sel_i & {4{wbs_we_i}};
    assign wbs_dat_o = rdata;
    assign wdata = wbs_dat_i;

    // IO
    assign io_out = count;
    assign io_oeb = {(`MPRJ_IO_PADS-1){rst}};

    // IRQ
    assign irq = 3'b000;	// Unused

    // LA
    assign la_data_out = {{(127-BITS){1'b0}}, count};
    // Assuming LA probes [63:32] are for controlling the count register  
    assign la_write = ~la_oenb[63:32] & ~{BITS{valid}};
    // Assuming LA probes [65:64] are for controlling the count clk & reset  
    assign clk = (~la_oenb[64]) ? la_data_in[64]: wb_clk_i;
    assign rst = (~la_oenb[65]) ? la_data_in[65]: wb_rst_i;

   wire[15:0]	input_blob_din;
wire	input_blob_din_en;
wire	input_blob_din_rdy;
wire	input_blob_din_eop;

busm2n #( 
.IN_WIDTH(16),
.OUT_WIDTH(16),
.COM_MUL(16),
.N(1568))
u0_busm2n(
.clk(clk),
.rst(rst),
.blob_din(wbs_dat_i[15:0]),
.blob_din_en(wbs_dat_i[16]),
.blob_din_rdy(wbs_dat_i[17]),
.blob_din_eop(wbs_dat_i[18]),
.blob_dout(input_blob_din),
.blob_dout_en(input_blob_din_en),
.blob_dout_rdy(input_blob_din_rdy),
.blob_dout_eop(input_blob_din_eop));

wire	conv1_blob_dout_eop;
wire[15:0]	conv1_blob_dout;
wire	conv1_blob_dout_en;
wire	conv1_blob_dout_rdy;

conv1_layer u0_conv1_layer(
.clk(clk),
.rst(rst),
.blob_din(input_blob_din),
.blob_din_en(input_blob_din_en),
.blob_din_rdy(input_blob_din_rdy),
.blob_din_eop(input_blob_din_eop),
.blob_dout(conv1_blob_dout),
.blob_dout_en(conv1_blob_dout_en),
.blob_dout_rdy(conv1_blob_dout_rdy),
.blob_dout_eop(conv1_blob_dout_eop),
.dma_engineer_req(layer_ddr_read_req_0),
.dma_engineer_ack(la_data_in[17]),
.dma_engineer_start_addr(layer_ddr_read_addr_0),
.dma_engineer_length(layer_ddr_read_length_0),
.dma_engineer_dout(la_data_in[15:0]),
.dma_engineer_dout_en(la_data_in[16]),
.dma_engineer_dout_eop(la_data_in[18]));

wire	pool1_blob_dout_eop;
wire[15:0]	pool1_blob_dout;
wire	pool1_blob_dout_en;
wire	pool1_blob_dout_rdy;

pool1_layer u0_pool1_layer(
.clk(clk),
.rst(rst),
.blob_din(conv1_blob_dout),
.blob_din_en(conv1_blob_dout_en),
.blob_din_rdy(conv1_blob_dout_rdy),
.blob_din_eop(conv1_blob_dout_eop),
.blob_dout(pool1_blob_dout),
.blob_dout_en(pool1_blob_dout_en),
.blob_dout_rdy(pool1_blob_dout_rdy),
.blob_dout_eop(pool1_blob_dout_eop));

wire[15:0]	conv2_blob_dout;
wire	conv2_blob_dout_en;
wire	conv2_blob_dout_rdy;
wire	conv2_blob_dout_eop;

conv2_layer u0_conv2_layer(
.clk(clk),
.rst(rst),
.blob_din(pool1_blob_dout),
.blob_din_en(pool1_blob_dout_en),
.blob_din_rdy(pool1_blob_dout_rdy),
.blob_din_eop(pool1_blob_dout_eop),
.blob_dout(conv2_blob_dout),
.blob_dout_en(conv2_blob_dout_en),
.blob_dout_rdy(conv2_blob_dout_rdy),
.blob_dout_eop(conv2_blob_dout_eop),
.dma_engineer_req(layer_ddr_read_req_1),
.dma_engineer_ack(la_data_in[36]),
.dma_engineer_start_addr(layer_ddr_read_addr_1),
.dma_engineer_length(layer_ddr_read_length_1),
.dma_engineer_dout(la_data_in[34:19]),
.dma_engineer_dout_en(la_data_in[35]),
.dma_engineer_dout_eop(la_data_in[37]));

wire[15:0]	pool2_blob_dout;
wire	pool2_blob_dout_en;
wire	pool2_blob_dout_rdy;
wire	pool2_blob_dout_eop;

pool2_layer u0_pool2_layer(
.clk(clk),
.rst(rst),
.blob_din(conv2_blob_dout),
.blob_din_en(conv2_blob_dout_en),
.blob_din_rdy(conv2_blob_dout_rdy),
.blob_din_eop(conv2_blob_dout_eop),
.blob_dout(pool2_blob_dout),
.blob_dout_en(pool2_blob_dout_en),
.blob_dout_rdy(pool2_blob_dout_rdy),
.blob_dout_eop(pool2_blob_dout_eop));

wire	ip1_blob_dout_rdy;
wire[15:0]	ip1_blob_dout;
wire	ip1_blob_dout_en;
wire	ip1_blob_dout_eop;

ip1_layer u0_ip1_layer(
.clk(clk),
.rst(rst),
.blob_din(pool2_blob_dout),
.blob_din_en(pool2_blob_dout_en),
.blob_din_rdy(pool2_blob_dout_rdy),
.blob_din_eop(pool2_blob_dout_eop),
.blob_dout(ip1_blob_dout),
.blob_dout_en(ip1_blob_dout_en),
.blob_dout_rdy(ip1_blob_dout_rdy),
.blob_dout_eop(ip1_blob_dout_eop),
.dma_engineer_req(layer_ddr_read_req_2),
.dma_engineer_ack(la_data_in[55]),
.dma_engineer_start_addr(layer_ddr_read_addr_2),
.dma_engineer_length(layer_ddr_read_length_2),
.dma_engineer_dout(la_data_in[53:38]),
.dma_engineer_dout_en(la_data_in[54]),
.dma_engineer_dout_eop(la_data_in[56]));

busm2n #( 
.IN_WIDTH(16),
.OUT_WIDTH(16),
.COM_MUL(16),
.N(10))
u1_busm2n(
.clk(clk),
.rst(rst),
.blob_din(ip1_blob_dout),
.blob_din_en(ip1_blob_dout_en),
.blob_din_rdy(ip1_blob_dout_rdy),
.blob_din_eop(ip1_blob_dout_eop),
.blob_dout(wbs_dat_o[15:0]),
.blob_dout_en(wbs_dat_o[16]),
.blob_dout_rdy(wbs_dat_o[17]),
.blob_dout_eop(wbs_dat_o[18]));

endmodule

