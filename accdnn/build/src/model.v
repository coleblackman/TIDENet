module model(
    clk,
    rst,
    ddr_read_length_14,
    ddr_dout,
    ddr_read_length_3,
    ddr_read_start_addr_8,
    ddr_read_req_14,
    ddr_read_start_addr_6,
    ddr_read_start_addr_7,
    ddr_read_start_addr_4,
    blob_dout_rdy,
    ddr_read_start_addr_2,
    ddr_read_start_addr_3,
    ddr_read_start_addr_0,
    ddr_read_start_addr_1,
    ddr_read_req_13,
    ddr_read_req_12,
    ddr_read_req_11,
    ddr_read_req_10,
    ddr_dout_eop,
    ddr_read_start_addr_12,
    blob_dout_en,
    ddr_read_start_addr_9,
    ddr_read_start_addr_10,
    ddr_read_start_addr_11,
    ddr_read_start_addr_5,
    ddr_read_start_addr_13,
    ddr_read_start_addr_14,
    ddr_dout_en,
    ddr_read_length_0,
    ddr_read_length_1,
    ddr_read_length_2,
    blob_din_rdy,
    ddr_read_length_4,
    ddr_read_length_5,
    ddr_read_length_6,
    ddr_read_length_7,
    ddr_read_length_8,
    ddr_read_length_9,
    ddr_read_req_7,
    ddr_read_ack_14,
    ddr_read_req_3,
    ddr_read_req_2,
    ddr_read_req_1,
    ddr_read_req_0,
    blob_dout_eop,
    blob_dout,
    ddr_read_req_5,
    ddr_read_req_4,
    ddr_read_ack_12,
    ddr_read_req_9,
    ddr_read_req_8,
    blob_din_eop,
    blob_din,
    ddr_read_ack_13,
    ddr_read_length_12,
    ddr_read_ack_10,
    ddr_read_length_13,
    blob_din_en,
    ddr_read_ack_11,
    ddr_read_length_10,
    ddr_read_req_6,
    ddr_read_length_11,
    ddr_read_ack_8,
    ddr_read_ack_9,
    ddr_read_ack_4,
    ddr_read_ack_5,
    ddr_read_ack_6,
    ddr_read_ack_7,
    ddr_read_ack_0,
    ddr_read_ack_1,
    ddr_read_ack_2,
    ddr_read_ack_3);

input clk;
input rst;
output[26:0]	ddr_read_length_14;
input[511:0]	ddr_dout;
output[26:0]	ddr_read_length_3;
output[26:0]	ddr_read_start_addr_8;
output	ddr_read_req_14;
output[26:0]	ddr_read_start_addr_6;
output[26:0]	ddr_read_start_addr_7;
output[26:0]	ddr_read_start_addr_4;
input	blob_dout_rdy;
output[26:0]	ddr_read_start_addr_2;
output[26:0]	ddr_read_start_addr_3;
output[26:0]	ddr_read_start_addr_0;
output[26:0]	ddr_read_start_addr_1;
output	ddr_read_req_13;
output	ddr_read_req_12;
output	ddr_read_req_11;
output	ddr_read_req_10;
input	ddr_dout_eop;
output[26:0]	ddr_read_start_addr_12;
output	blob_dout_en;
output[26:0]	ddr_read_start_addr_9;
output[26:0]	ddr_read_start_addr_10;
output[26:0]	ddr_read_start_addr_11;
output[26:0]	ddr_read_start_addr_5;
output[26:0]	ddr_read_start_addr_13;
output[26:0]	ddr_read_start_addr_14;
input[15:0]	ddr_dout_en;
output[26:0]	ddr_read_length_0;
output[26:0]	ddr_read_length_1;
output[26:0]	ddr_read_length_2;
output	blob_din_rdy;
output[26:0]	ddr_read_length_4;
output[26:0]	ddr_read_length_5;
output[26:0]	ddr_read_length_6;
output[26:0]	ddr_read_length_7;
output[26:0]	ddr_read_length_8;
output[26:0]	ddr_read_length_9;
output	ddr_read_req_7;
input	ddr_read_ack_14;
output	ddr_read_req_3;
output	ddr_read_req_2;
output	ddr_read_req_1;
output	ddr_read_req_0;
output	blob_dout_eop;
output[511:0]	blob_dout;
output	ddr_read_req_5;
output	ddr_read_req_4;
input	ddr_read_ack_12;
output	ddr_read_req_9;
output	ddr_read_req_8;
input	blob_din_eop;
input[511:0]	blob_din;
input	ddr_read_ack_13;
output[26:0]	ddr_read_length_12;
input	ddr_read_ack_10;
output[26:0]	ddr_read_length_13;
input	blob_din_en;
input	ddr_read_ack_11;
output[26:0]	ddr_read_length_10;
output	ddr_read_req_6;
output[26:0]	ddr_read_length_11;
input	ddr_read_ack_8;
input	ddr_read_ack_9;
input	ddr_read_ack_4;
input	ddr_read_ack_5;
input	ddr_read_ack_6;
input	ddr_read_ack_7;
input	ddr_read_ack_0;
input	ddr_read_ack_1;
input	ddr_read_ack_2;
input	ddr_read_ack_3;


wire	layer_ddr_dout_eop_14;
wire	layer_ddr_dout_eop_13;
wire	layer_ddr_dout_eop_12;
wire	layer_ddr_dout_eop_11;
wire	layer_ddr_dout_eop_10;
wire	layer_ddr_dout_en_14;
wire	layer_ddr_dout_en_11;
wire	layer_ddr_dout_en_10;
wire	layer_ddr_dout_en_13;
wire	layer_ddr_dout_en_12;
wire[511:0]	layer_ddr_dout_8;
wire[511:0]	layer_ddr_dout_9;
wire[511:0]	layer_ddr_dout_2;
wire[511:0]	layer_ddr_dout_3;
wire[511:0]	layer_ddr_dout_0;
wire[511:0]	layer_ddr_dout_1;
wire[511:0]	layer_ddr_dout_6;
wire[511:0]	layer_ddr_dout_7;
wire[511:0]	layer_ddr_dout_4;
wire[511:0]	layer_ddr_dout_5;
wire[511:0]	layer_ddr_dout_10;
wire[511:0]	layer_ddr_dout_11;
wire[511:0]	layer_ddr_dout_12;
wire[511:0]	layer_ddr_dout_13;
wire[511:0]	layer_ddr_dout_14;
wire[26:0]	layer_ddr_read_addr_7;
wire[26:0]	layer_ddr_read_addr_6;
wire[26:0]	layer_ddr_read_addr_5;
wire[26:0]	layer_ddr_read_addr_4;
wire[26:0]	layer_ddr_read_addr_3;
wire[26:0]	layer_ddr_read_addr_2;
wire[26:0]	layer_ddr_read_addr_1;
wire[26:0]	layer_ddr_read_addr_0;
wire[26:0]	layer_ddr_read_addr_9;
wire[26:0]	layer_ddr_read_addr_8;
wire	layer_ddr_read_ack_14;
wire	layer_ddr_read_ack_12;
wire	layer_ddr_read_ack_13;
wire	layer_ddr_read_ack_10;
wire	layer_ddr_read_ack_11;
wire	layer_ddr_read_ack_8;
wire	layer_ddr_read_ack_9;
wire	layer_ddr_read_ack_4;
wire	layer_ddr_read_ack_5;
wire	layer_ddr_read_ack_6;
wire	layer_ddr_read_ack_7;
wire[26:0]	layer_ddr_read_length_12;
wire	layer_ddr_read_ack_1;
wire[26:0]	layer_ddr_read_length_10;
wire[26:0]	layer_ddr_read_length_11;
wire[26:0]	layer_ddr_read_addr_14;
wire[26:0]	layer_ddr_read_addr_13;
wire[26:0]	layer_ddr_read_addr_12;
wire[26:0]	layer_ddr_read_addr_11;
wire[26:0]	layer_ddr_read_addr_10;
wire	layer_ddr_dout_en_1;
wire	layer_ddr_dout_en_0;
wire	layer_ddr_dout_en_3;
wire	layer_ddr_dout_en_2;
wire	layer_ddr_dout_en_5;
wire	layer_ddr_dout_en_4;
wire	layer_ddr_dout_en_7;
wire	layer_ddr_dout_en_6;
wire	layer_ddr_dout_en_9;
wire	layer_ddr_dout_en_8;
wire	layer_ddr_read_req_14;
wire	layer_ddr_read_req_13;
wire	layer_ddr_read_req_12;
wire	layer_ddr_read_req_11;
wire	layer_ddr_read_req_10;
wire[26:0]	layer_ddr_read_length_4;
wire[26:0]	layer_ddr_read_length_5;
wire[26:0]	layer_ddr_read_length_6;
wire[26:0]	layer_ddr_read_length_7;
wire[26:0]	layer_ddr_read_length_0;
wire[26:0]	layer_ddr_read_length_1;
wire[26:0]	layer_ddr_read_length_2;
wire[26:0]	layer_ddr_read_length_3;
wire[26:0]	layer_ddr_read_length_8;
wire[26:0]	layer_ddr_read_length_9;
wire	layer_ddr_dout_eop_3;
wire	layer_ddr_dout_eop_2;
wire	layer_ddr_dout_eop_1;
wire	layer_ddr_dout_eop_0;
wire	layer_ddr_dout_eop_7;
wire	layer_ddr_dout_eop_6;
wire	layer_ddr_dout_eop_5;
wire	layer_ddr_dout_eop_4;
wire	layer_ddr_dout_eop_9;
wire	layer_ddr_dout_eop_8;
wire[26:0]	layer_ddr_read_length_14;
wire	layer_ddr_read_req_3;
wire	layer_ddr_read_req_2;
wire	layer_ddr_read_req_1;
wire	layer_ddr_read_req_0;
wire	layer_ddr_read_req_7;
wire	layer_ddr_read_req_6;
wire	layer_ddr_read_req_5;
wire	layer_ddr_read_req_4;
wire	layer_ddr_read_ack_0;
wire	layer_ddr_read_req_9;
wire	layer_ddr_read_req_8;
wire[26:0]	layer_ddr_read_length_13;
wire	layer_ddr_read_ack_2;
wire	layer_ddr_read_ack_3;

ddr_read_delay #(
.DDR_DATA_WIDTH(512),
.delay_req_port0(-1),
.delay_req_port1(-1),
.delay_req_port2(-1),
.delay_req_port3(-1),
.delay_req_port4(-1),
.delay_req_port5(-1),
.delay_req_port6(-1),
.delay_req_port7(-1),
.delay_req_port8(-1),
.delay_req_port9(-1),
.delay_req_port10(-1),
.delay_req_port11(-1),
.delay_req_port12(-1),
.delay_req_port13(-1),
.delay_req_port14(-1))
u0_ddr_read_delay(
.clk(clk),
.rst(rst),
.engine_ddr_read_req_0_o(ddr_read_req_0),
.engine_ddr_read_length_0_o(ddr_read_length_0),
.engine_ddr_read_addr_0_o(ddr_read_start_addr_0),
.engine_ddr_read_ack_0_i(ddr_read_ack_0),
.engine_ddr_read_req_1_o(ddr_read_req_1),
.engine_ddr_read_length_1_o(ddr_read_length_1),
.engine_ddr_read_addr_1_o(ddr_read_start_addr_1),
.engine_ddr_read_ack_1_i(ddr_read_ack_1),
.engine_ddr_read_req_2_o(ddr_read_req_2),
.engine_ddr_read_length_2_o(ddr_read_length_2),
.engine_ddr_read_addr_2_o(ddr_read_start_addr_2),
.engine_ddr_read_ack_2_i(ddr_read_ack_2),
.engine_ddr_read_req_3_o(ddr_read_req_3),
.engine_ddr_read_length_3_o(ddr_read_length_3),
.engine_ddr_read_addr_3_o(ddr_read_start_addr_3),
.engine_ddr_read_ack_3_i(ddr_read_ack_3),
.engine_ddr_read_req_4_o(ddr_read_req_4),
.engine_ddr_read_length_4_o(ddr_read_length_4),
.engine_ddr_read_addr_4_o(ddr_read_start_addr_4),
.engine_ddr_read_ack_4_i(ddr_read_ack_4),
.engine_ddr_read_req_5_o(ddr_read_req_5),
.engine_ddr_read_length_5_o(ddr_read_length_5),
.engine_ddr_read_addr_5_o(ddr_read_start_addr_5),
.engine_ddr_read_ack_5_i(ddr_read_ack_5),
.engine_ddr_read_req_6_o(ddr_read_req_6),
.engine_ddr_read_length_6_o(ddr_read_length_6),
.engine_ddr_read_addr_6_o(ddr_read_start_addr_6),
.engine_ddr_read_ack_6_i(ddr_read_ack_6),
.engine_ddr_read_req_7_o(ddr_read_req_7),
.engine_ddr_read_length_7_o(ddr_read_length_7),
.engine_ddr_read_addr_7_o(ddr_read_start_addr_7),
.engine_ddr_read_ack_7_i(ddr_read_ack_7),
.engine_ddr_read_req_8_o(ddr_read_req_8),
.engine_ddr_read_length_8_o(ddr_read_length_8),
.engine_ddr_read_addr_8_o(ddr_read_start_addr_8),
.engine_ddr_read_ack_8_i(ddr_read_ack_8),
.engine_ddr_read_req_9_o(ddr_read_req_9),
.engine_ddr_read_length_9_o(ddr_read_length_9),
.engine_ddr_read_addr_9_o(ddr_read_start_addr_9),
.engine_ddr_read_ack_9_i(ddr_read_ack_9),
.engine_ddr_read_req_10_o(ddr_read_req_10),
.engine_ddr_read_length_10_o(ddr_read_length_10),
.engine_ddr_read_addr_10_o(ddr_read_start_addr_10),
.engine_ddr_read_ack_10_i(ddr_read_ack_10),
.engine_ddr_read_req_11_o(ddr_read_req_11),
.engine_ddr_read_length_11_o(ddr_read_length_11),
.engine_ddr_read_addr_11_o(ddr_read_start_addr_11),
.engine_ddr_read_ack_11_i(ddr_read_ack_11),
.engine_ddr_read_req_12_o(ddr_read_req_12),
.engine_ddr_read_length_12_o(ddr_read_length_12),
.engine_ddr_read_addr_12_o(ddr_read_start_addr_12),
.engine_ddr_read_ack_12_i(ddr_read_ack_12),
.engine_ddr_read_req_13_o(ddr_read_req_13),
.engine_ddr_read_length_13_o(ddr_read_length_13),
.engine_ddr_read_addr_13_o(ddr_read_start_addr_13),
.engine_ddr_read_ack_13_i(ddr_read_ack_13),
.engine_ddr_read_req_14_o(ddr_read_req_14),
.engine_ddr_read_length_14_o(ddr_read_length_14),
.engine_ddr_read_addr_14_o(ddr_read_start_addr_14),
.engine_ddr_read_ack_14_i(ddr_read_ack_14),
.engine_ddr_dout_i(ddr_dout),
.engine_ddr_dout_en_i(ddr_dout_en),
.engine_ddr_dout_eop_i(ddr_dout_eop),
.layer_ddr_read_req_0_i(layer_ddr_read_req_0),
.layer_ddr_read_length_0_i(layer_ddr_read_length_0),
.layer_ddr_read_addr_0_i(layer_ddr_read_addr_0),
.layer_ddr_read_ack_0_o(layer_ddr_read_ack_0),
.layer_ddr_dout_0_o(layer_ddr_dout_0),
.layer_ddr_dout_en_0_o(layer_ddr_dout_en_0),
.layer_ddr_dout_eop_0_o(layer_ddr_dout_eop_0),
.layer_ddr_read_req_1_i(layer_ddr_read_req_1),
.layer_ddr_read_length_1_i(layer_ddr_read_length_1),
.layer_ddr_read_addr_1_i(layer_ddr_read_addr_1),
.layer_ddr_read_ack_1_o(layer_ddr_read_ack_1),
.layer_ddr_dout_1_o(layer_ddr_dout_1),
.layer_ddr_dout_en_1_o(layer_ddr_dout_en_1),
.layer_ddr_dout_eop_1_o(layer_ddr_dout_eop_1),
.layer_ddr_read_req_2_i(layer_ddr_read_req_2),
.layer_ddr_read_length_2_i(layer_ddr_read_length_2),
.layer_ddr_read_addr_2_i(layer_ddr_read_addr_2),
.layer_ddr_read_ack_2_o(layer_ddr_read_ack_2),
.layer_ddr_dout_2_o(layer_ddr_dout_2),
.layer_ddr_dout_en_2_o(layer_ddr_dout_en_2),
.layer_ddr_dout_eop_2_o(layer_ddr_dout_eop_2),
.layer_ddr_read_req_3_i(layer_ddr_read_req_3),
.layer_ddr_read_length_3_i(layer_ddr_read_length_3),
.layer_ddr_read_addr_3_i(layer_ddr_read_addr_3),
.layer_ddr_read_ack_3_o(layer_ddr_read_ack_3),
.layer_ddr_dout_3_o(layer_ddr_dout_3),
.layer_ddr_dout_en_3_o(layer_ddr_dout_en_3),
.layer_ddr_dout_eop_3_o(layer_ddr_dout_eop_3),
.layer_ddr_read_req_4_i(layer_ddr_read_req_4),
.layer_ddr_read_length_4_i(layer_ddr_read_length_4),
.layer_ddr_read_addr_4_i(layer_ddr_read_addr_4),
.layer_ddr_read_ack_4_o(layer_ddr_read_ack_4),
.layer_ddr_dout_4_o(layer_ddr_dout_4),
.layer_ddr_dout_en_4_o(layer_ddr_dout_en_4),
.layer_ddr_dout_eop_4_o(layer_ddr_dout_eop_4),
.layer_ddr_read_req_5_i(layer_ddr_read_req_5),
.layer_ddr_read_length_5_i(layer_ddr_read_length_5),
.layer_ddr_read_addr_5_i(layer_ddr_read_addr_5),
.layer_ddr_read_ack_5_o(layer_ddr_read_ack_5),
.layer_ddr_dout_5_o(layer_ddr_dout_5),
.layer_ddr_dout_en_5_o(layer_ddr_dout_en_5),
.layer_ddr_dout_eop_5_o(layer_ddr_dout_eop_5),
.layer_ddr_read_req_6_i(layer_ddr_read_req_6),
.layer_ddr_read_length_6_i(layer_ddr_read_length_6),
.layer_ddr_read_addr_6_i(layer_ddr_read_addr_6),
.layer_ddr_read_ack_6_o(layer_ddr_read_ack_6),
.layer_ddr_dout_6_o(layer_ddr_dout_6),
.layer_ddr_dout_en_6_o(layer_ddr_dout_en_6),
.layer_ddr_dout_eop_6_o(layer_ddr_dout_eop_6),
.layer_ddr_read_req_7_i(layer_ddr_read_req_7),
.layer_ddr_read_length_7_i(layer_ddr_read_length_7),
.layer_ddr_read_addr_7_i(layer_ddr_read_addr_7),
.layer_ddr_read_ack_7_o(layer_ddr_read_ack_7),
.layer_ddr_dout_7_o(layer_ddr_dout_7),
.layer_ddr_dout_en_7_o(layer_ddr_dout_en_7),
.layer_ddr_dout_eop_7_o(layer_ddr_dout_eop_7),
.layer_ddr_read_req_8_i(layer_ddr_read_req_8),
.layer_ddr_read_length_8_i(layer_ddr_read_length_8),
.layer_ddr_read_addr_8_i(layer_ddr_read_addr_8),
.layer_ddr_read_ack_8_o(layer_ddr_read_ack_8),
.layer_ddr_dout_8_o(layer_ddr_dout_8),
.layer_ddr_dout_en_8_o(layer_ddr_dout_en_8),
.layer_ddr_dout_eop_8_o(layer_ddr_dout_eop_8),
.layer_ddr_read_req_9_i(layer_ddr_read_req_9),
.layer_ddr_read_length_9_i(layer_ddr_read_length_9),
.layer_ddr_read_addr_9_i(layer_ddr_read_addr_9),
.layer_ddr_read_ack_9_o(layer_ddr_read_ack_9),
.layer_ddr_dout_9_o(layer_ddr_dout_9),
.layer_ddr_dout_en_9_o(layer_ddr_dout_en_9),
.layer_ddr_dout_eop_9_o(layer_ddr_dout_eop_9),
.layer_ddr_read_req_10_i(layer_ddr_read_req_10),
.layer_ddr_read_length_10_i(layer_ddr_read_length_10),
.layer_ddr_read_addr_10_i(layer_ddr_read_addr_10),
.layer_ddr_read_ack_10_o(layer_ddr_read_ack_10),
.layer_ddr_dout_10_o(layer_ddr_dout_10),
.layer_ddr_dout_en_10_o(layer_ddr_dout_en_10),
.layer_ddr_dout_eop_10_o(layer_ddr_dout_eop_10),
.layer_ddr_read_req_11_i(layer_ddr_read_req_11),
.layer_ddr_read_length_11_i(layer_ddr_read_length_11),
.layer_ddr_read_addr_11_i(layer_ddr_read_addr_11),
.layer_ddr_read_ack_11_o(layer_ddr_read_ack_11),
.layer_ddr_dout_11_o(layer_ddr_dout_11),
.layer_ddr_dout_en_11_o(layer_ddr_dout_en_11),
.layer_ddr_dout_eop_11_o(layer_ddr_dout_eop_11),
.layer_ddr_read_req_12_i(layer_ddr_read_req_12),
.layer_ddr_read_length_12_i(layer_ddr_read_length_12),
.layer_ddr_read_addr_12_i(layer_ddr_read_addr_12),
.layer_ddr_read_ack_12_o(layer_ddr_read_ack_12),
.layer_ddr_dout_12_o(layer_ddr_dout_12),
.layer_ddr_dout_en_12_o(layer_ddr_dout_en_12),
.layer_ddr_dout_eop_12_o(layer_ddr_dout_eop_12),
.layer_ddr_read_req_13_i(layer_ddr_read_req_13),
.layer_ddr_read_length_13_i(layer_ddr_read_length_13),
.layer_ddr_read_addr_13_i(layer_ddr_read_addr_13),
.layer_ddr_read_ack_13_o(layer_ddr_read_ack_13),
.layer_ddr_dout_13_o(layer_ddr_dout_13),
.layer_ddr_dout_en_13_o(layer_ddr_dout_en_13),
.layer_ddr_dout_eop_13_o(layer_ddr_dout_eop_13),
.layer_ddr_read_req_14_i(layer_ddr_read_req_14),
.layer_ddr_read_length_14_i(layer_ddr_read_length_14),
.layer_ddr_read_addr_14_i(layer_ddr_read_addr_14),
.layer_ddr_read_ack_14_o(layer_ddr_read_ack_14),
.layer_ddr_dout_14_o(layer_ddr_dout_14),
.layer_ddr_dout_en_14_o(layer_ddr_dout_en_14),
.layer_ddr_dout_eop_14_o(layer_ddr_dout_eop_14));

wire[15:0]	input_blob_din;
wire	input_blob_din_en;
wire	input_blob_din_rdy;
wire	input_blob_din_eop;

busm2n #( 
.IN_WIDTH(512),
.OUT_WIDTH(16),
.COM_MUL(512),
.N(4096))
u0_busm2n(
.clk(clk),
.rst(rst),
.blob_din(blob_din),
.blob_din_en(blob_din_en),
.blob_din_rdy(blob_din_rdy),
.blob_din_eop(blob_din_eop),
.blob_dout(input_blob_din),
.blob_dout_en(input_blob_din_en),
.blob_dout_rdy(input_blob_din_rdy),
.blob_dout_eop(input_blob_din_eop));

wire	conv1_blob_dout_eop;
wire[127:0]	conv1_blob_dout;
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
.blob_dout_eop(conv1_blob_dout_eop));

wire	pool1_blob_dout_eop;
wire[127:0]	pool1_blob_dout;
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

wire[127:0]	conv2_blob_dout;
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
.blob_dout_eop(conv2_blob_dout_eop));

wire[127:0]	pool2_blob_dout;
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

wire	conv3_blob_dout_en;
wire	conv3_blob_dout_eop;
wire[63:0]	conv3_blob_dout;
wire	conv3_blob_dout_rdy;

conv3_layer u0_conv3_layer(
.clk(clk),
.rst(rst),
.blob_din(pool2_blob_dout),
.blob_din_en(pool2_blob_dout_en),
.blob_din_rdy(pool2_blob_dout_rdy),
.blob_din_eop(pool2_blob_dout_eop),
.blob_dout(conv3_blob_dout),
.blob_dout_en(conv3_blob_dout_en),
.blob_dout_rdy(conv3_blob_dout_rdy),
.blob_dout_eop(conv3_blob_dout_eop));

wire	pool3_blob_dout_en;
wire	pool3_blob_dout_eop;
wire[511:0]	pool3_blob_dout;
wire	pool3_blob_dout_rdy;

pool3_layer u0_pool3_layer(
.clk(clk),
.rst(rst),
.blob_din(conv3_blob_dout),
.blob_din_en(conv3_blob_dout_en),
.blob_din_rdy(conv3_blob_dout_rdy),
.blob_din_eop(conv3_blob_dout_eop),
.blob_dout(pool3_blob_dout),
.blob_dout_en(pool3_blob_dout_en),
.blob_dout_rdy(pool3_blob_dout_rdy),
.blob_dout_eop(pool3_blob_dout_eop));

wire	ip1_blob_dout_rdy;
wire[63:0]	ip1_blob_dout;
wire	ip1_blob_dout_en;
wire	ip1_blob_dout_eop;

ip1_layer u0_ip1_layer(
.clk(clk),
.rst(rst),
.blob_din(pool3_blob_dout),
.blob_din_en(pool3_blob_dout_en),
.blob_din_rdy(pool3_blob_dout_rdy),
.blob_din_eop(pool3_blob_dout_eop),
.blob_dout(ip1_blob_dout),
.blob_dout_en(ip1_blob_dout_en),
.blob_dout_rdy(ip1_blob_dout_rdy),
.blob_dout_eop(ip1_blob_dout_eop));

wire	ip2_blob_dout_en;
wire	ip2_blob_dout_rdy;
wire	ip2_blob_dout_eop;
wire[31:0]	ip2_blob_dout;

ip2_layer u0_ip2_layer(
.clk(clk),
.rst(rst),
.blob_din(ip1_blob_dout),
.blob_din_en(ip1_blob_dout_en),
.blob_din_rdy(ip1_blob_dout_rdy),
.blob_din_eop(ip1_blob_dout_eop),
.blob_dout(ip2_blob_dout),
.blob_dout_en(ip2_blob_dout_en),
.blob_dout_rdy(ip2_blob_dout_rdy),
.blob_dout_eop(ip2_blob_dout_eop));

busm2n #( 
.IN_WIDTH(32),
.OUT_WIDTH(512),
.COM_MUL(512),
.N(1))
u1_busm2n(
.clk(clk),
.rst(rst),
.blob_din(ip2_blob_dout),
.blob_din_en(ip2_blob_dout_en),
.blob_din_rdy(ip2_blob_dout_rdy),
.blob_din_eop(ip2_blob_dout_eop),
.blob_dout(blob_dout),
.blob_dout_en(blob_dout_en),
.blob_dout_rdy(blob_dout_rdy),
.blob_dout_eop(blob_dout_eop));

assign layer_ddr_read_req_5 = 1'b0;
assign layer_ddr_read_length_5 = 27'b0;
assign layer_ddr_read_addr_5 = 27'b0;
assign layer_ddr_read_req_6 = 1'b0;
assign layer_ddr_read_length_6 = 27'b0;
assign layer_ddr_read_addr_6 = 27'b0;
assign layer_ddr_read_req_7 = 1'b0;
assign layer_ddr_read_length_7 = 27'b0;
assign layer_ddr_read_addr_7 = 27'b0;
assign layer_ddr_read_req_8 = 1'b0;
assign layer_ddr_read_length_8 = 27'b0;
assign layer_ddr_read_addr_8 = 27'b0;
assign layer_ddr_read_req_9 = 1'b0;
assign layer_ddr_read_length_9 = 27'b0;
assign layer_ddr_read_addr_9 = 27'b0;
assign layer_ddr_read_req_10 = 1'b0;
assign layer_ddr_read_length_10 = 27'b0;
assign layer_ddr_read_addr_10 = 27'b0;
assign layer_ddr_read_req_11 = 1'b0;
assign layer_ddr_read_length_11 = 27'b0;
assign layer_ddr_read_addr_11 = 27'b0;
assign layer_ddr_read_req_12 = 1'b0;
assign layer_ddr_read_length_12 = 27'b0;
assign layer_ddr_read_addr_12 = 27'b0;
assign layer_ddr_read_req_13 = 1'b0;
assign layer_ddr_read_length_13 = 27'b0;
assign layer_ddr_read_addr_13 = 27'b0;
assign layer_ddr_read_req_14 = 1'b0;
assign layer_ddr_read_length_14 = 27'b0;
assign layer_ddr_read_addr_14 = 27'b0;
endmodule
