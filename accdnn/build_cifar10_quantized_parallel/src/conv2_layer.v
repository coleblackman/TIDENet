module conv2_layer(
    clk,
    rst,
    dma_engineer_dout_eop,
    blob_din_rdy,
    dma_engineer_dout,
    blob_din_en,
    dma_engineer_req,
    dma_engineer_ack,
    blob_dout_en,
    dma_engineer_dout_en,
    dma_engineer_start_addr,
    dma_engineer_length,
    blob_dout_rdy,
    blob_dout_eop,
    blob_dout,
    blob_din_eop,
    blob_din);

input clk;
input rst;
input	dma_engineer_dout_eop;
output	blob_din_rdy;
input[511:0]	dma_engineer_dout;
input	blob_din_en;
output	dma_engineer_req;
input	dma_engineer_ack;
output	blob_dout_en;
input	dma_engineer_dout_en;
output[26:0]	dma_engineer_start_addr;
output[26:0]	dma_engineer_length;
input	blob_dout_rdy;
output	blob_dout_eop;
output[127:0]	blob_dout;
input	blob_din_eop;
input[127:0]	blob_din;


wire[1:0]	bm_rd_addr;
wire[511:0]	op_weight;
wire[15:0]	op_dout_0_0;
wire[127:0]	op_data_0;
wire[7:0]	double_buf_wr_addr;
wire[63:0]	op_bias;
wire	op_din_en;
wire[15:0]	op_dout_0_6;
wire[8:0]	rm_rd_addr;
wire[15:0]	op_dout_0_3;
wire[7:0]	double_buf_rd_addr;
wire	double_buf_wr_en;
wire[15:0]	op_dout_0_2;
wire	rm_wr_en;
wire[15:0]	op_dout_0_1;
wire[8:0]	rm_wr_addr;
wire[15:0]	op_dout_0_7;
wire	op_din_eop;
wire[15:0]	op_dout_0_5;
wire[15:0]	op_dout_0_4;


controller_v2 #(
.DB_W_IN (16),
.DB_H_IN (16),
.DB_C_IN (32),
.DB_W_OUT (16),
.DB_H_OUT (16),
.DB_C_OUT (32),
.WB_W (5),
.WB_H (5),
.WB_C (32),
.WB_K (32),
.GROUP (1),
.RM_WR_ADDR_WIDTH (9),
.RM_WR_NUM_PER_CHANNEL (4),
.RM_WR_STRIDE (1),
.RM_RING_LENGTH (6),
.RM_RD_PHY_ADDR_JUMP (1),
.RM_RD_ADDR_WIDTH (9),
.DOUBLE_BUF_WR_DEPTH (200),
.DOUBLE_BUF_RD_DEPTH (200),
.DOUBLE_BUF_WR_ADDR_WIDTH (8),
.DOUBLE_BUF_RD_ADDR_WIDTH (8),
.START_ADDR (52),
.LENGTH (100),
.BM_RD_ADDR_WIDTH (2),
.CPF (8),
.KPF (8),
.STRIDE_H (1),
.STRIDE_W (1),
.PAD (2),
.OP_DELAY (6))
u_controller(
.clk(clk),
.rst(rst),
.rm_wr_en(rm_wr_en), 
.rm_wr_addr(rm_wr_addr),
.rm_rd_addr(rm_rd_addr),
.op_din_eop(op_din_eop),
.op_din_en(op_din_en),
.double_buf_wr_en(double_buf_wr_en),
.double_buf_wr_addr(double_buf_wr_addr),
.double_buf_rd_addr(double_buf_rd_addr),
.bm_rd_addr(bm_rd_addr),
.dma_engineer_req(dma_engineer_req),
.dma_engineer_ack(dma_engineer_ack),
.dma_engineer_dout_en(dma_engineer_dout_en),
.dma_engineer_dout_eop(dma_engineer_dout_eop),
.dma_engineer_start_addr(dma_engineer_start_addr),
.dma_engineer_length(dma_engineer_length),
.blob_din_rdy(blob_din_rdy),
.blob_din_en(blob_din_en), 
.blob_din_eop(blob_din_eop),
.blob_dout_rdy(blob_dout_rdy),
.blob_dout_en(blob_dout_en),
.blob_dout_eop(blob_dout_eop));

conv2_rm_ram u_conv2_rm_ram_0(
.clka(clk),
.wea(rm_wr_en),
.addra(rm_wr_addr),
.dina(blob_din[127:0]),
.clkb(clk),
.addrb(rm_rd_addr),
.doutb(op_data_0));

conv2_wm_ram u_conv2_wm_ram(
.clka(clk),
.wea(double_buf_wr_en),
.addra(double_buf_wr_addr),
.dina(dma_engineer_dout),
.clkb(clk),
.addrb(double_buf_rd_addr),
.doutb(op_weight));

conv2_bm_ram u_conv2_bm_ram(
.clka(clk),
.addra(bm_rd_addr),
.douta(op_bias));

vector_muladd #(.CPF(8),
.RELU(1),
.BN(0),
.DIN_Q(7),
.DOUT_Q(8),
.BN_SCALE_Q(6),
.BN_BIAS_Q(6),
.MID_Q(6),
.BIAS_DW(8),
.Q(10),
.DIN_DW(16), 
.DOUT_DW(16), 
.DATA_CHANNEL(1), 
.ACC_WIDTH(40), 
.WW(16))
u_vector_muladd_0_0(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_0), 
.op_weight({{{8{op_weight[63]}},op_weight[63:56]},{{8{op_weight[55]}},op_weight[55:48]},{{8{op_weight[47]}},op_weight[47:40]},{{8{op_weight[39]}},op_weight[39:32]},{{8{op_weight[31]}},op_weight[31:24]},{{8{op_weight[23]}},op_weight[23:16]},{{8{op_weight[15]}},op_weight[15:8]},{{8{op_weight[7]}},op_weight[7:0]}}),
.op_bias({{8{op_bias[7]}},op_bias[7:0]}),
.op_dout(op_dout_0_0));

vector_muladd #(.CPF(8),
.RELU(1),
.BN(0),
.DIN_Q(7),
.DOUT_Q(8),
.BN_SCALE_Q(6),
.BN_BIAS_Q(6),
.MID_Q(6),
.BIAS_DW(8),
.Q(10),
.DIN_DW(16), 
.DOUT_DW(16), 
.DATA_CHANNEL(1), 
.ACC_WIDTH(40), 
.WW(16))
u_vector_muladd_0_1(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_0), 
.op_weight({{{8{op_weight[127]}},op_weight[127:120]},{{8{op_weight[119]}},op_weight[119:112]},{{8{op_weight[111]}},op_weight[111:104]},{{8{op_weight[103]}},op_weight[103:96]},{{8{op_weight[95]}},op_weight[95:88]},{{8{op_weight[87]}},op_weight[87:80]},{{8{op_weight[79]}},op_weight[79:72]},{{8{op_weight[71]}},op_weight[71:64]}}),
.op_bias({{8{op_bias[15]}},op_bias[15:8]}),
.op_dout(op_dout_0_1));

vector_muladd #(.CPF(8),
.RELU(1),
.BN(0),
.DIN_Q(7),
.DOUT_Q(8),
.BN_SCALE_Q(6),
.BN_BIAS_Q(6),
.MID_Q(6),
.BIAS_DW(8),
.Q(10),
.DIN_DW(16), 
.DOUT_DW(16), 
.DATA_CHANNEL(1), 
.ACC_WIDTH(40), 
.WW(16))
u_vector_muladd_0_2(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_0), 
.op_weight({{{8{op_weight[191]}},op_weight[191:184]},{{8{op_weight[183]}},op_weight[183:176]},{{8{op_weight[175]}},op_weight[175:168]},{{8{op_weight[167]}},op_weight[167:160]},{{8{op_weight[159]}},op_weight[159:152]},{{8{op_weight[151]}},op_weight[151:144]},{{8{op_weight[143]}},op_weight[143:136]},{{8{op_weight[135]}},op_weight[135:128]}}),
.op_bias({{8{op_bias[23]}},op_bias[23:16]}),
.op_dout(op_dout_0_2));

vector_muladd #(.CPF(8),
.RELU(1),
.BN(0),
.DIN_Q(7),
.DOUT_Q(8),
.BN_SCALE_Q(6),
.BN_BIAS_Q(6),
.MID_Q(6),
.BIAS_DW(8),
.Q(10),
.DIN_DW(16), 
.DOUT_DW(16), 
.DATA_CHANNEL(1), 
.ACC_WIDTH(40), 
.WW(16))
u_vector_muladd_0_3(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_0), 
.op_weight({{{8{op_weight[255]}},op_weight[255:248]},{{8{op_weight[247]}},op_weight[247:240]},{{8{op_weight[239]}},op_weight[239:232]},{{8{op_weight[231]}},op_weight[231:224]},{{8{op_weight[223]}},op_weight[223:216]},{{8{op_weight[215]}},op_weight[215:208]},{{8{op_weight[207]}},op_weight[207:200]},{{8{op_weight[199]}},op_weight[199:192]}}),
.op_bias({{8{op_bias[31]}},op_bias[31:24]}),
.op_dout(op_dout_0_3));

vector_muladd #(.CPF(8),
.RELU(1),
.BN(0),
.DIN_Q(7),
.DOUT_Q(8),
.BN_SCALE_Q(6),
.BN_BIAS_Q(6),
.MID_Q(6),
.BIAS_DW(8),
.Q(10),
.DIN_DW(16), 
.DOUT_DW(16), 
.DATA_CHANNEL(1), 
.ACC_WIDTH(40), 
.WW(16))
u_vector_muladd_0_4(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_0), 
.op_weight({{{8{op_weight[319]}},op_weight[319:312]},{{8{op_weight[311]}},op_weight[311:304]},{{8{op_weight[303]}},op_weight[303:296]},{{8{op_weight[295]}},op_weight[295:288]},{{8{op_weight[287]}},op_weight[287:280]},{{8{op_weight[279]}},op_weight[279:272]},{{8{op_weight[271]}},op_weight[271:264]},{{8{op_weight[263]}},op_weight[263:256]}}),
.op_bias({{8{op_bias[39]}},op_bias[39:32]}),
.op_dout(op_dout_0_4));

vector_muladd #(.CPF(8),
.RELU(1),
.BN(0),
.DIN_Q(7),
.DOUT_Q(8),
.BN_SCALE_Q(6),
.BN_BIAS_Q(6),
.MID_Q(6),
.BIAS_DW(8),
.Q(10),
.DIN_DW(16), 
.DOUT_DW(16), 
.DATA_CHANNEL(1), 
.ACC_WIDTH(40), 
.WW(16))
u_vector_muladd_0_5(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_0), 
.op_weight({{{8{op_weight[383]}},op_weight[383:376]},{{8{op_weight[375]}},op_weight[375:368]},{{8{op_weight[367]}},op_weight[367:360]},{{8{op_weight[359]}},op_weight[359:352]},{{8{op_weight[351]}},op_weight[351:344]},{{8{op_weight[343]}},op_weight[343:336]},{{8{op_weight[335]}},op_weight[335:328]},{{8{op_weight[327]}},op_weight[327:320]}}),
.op_bias({{8{op_bias[47]}},op_bias[47:40]}),
.op_dout(op_dout_0_5));

vector_muladd #(.CPF(8),
.RELU(1),
.BN(0),
.DIN_Q(7),
.DOUT_Q(8),
.BN_SCALE_Q(6),
.BN_BIAS_Q(6),
.MID_Q(6),
.BIAS_DW(8),
.Q(10),
.DIN_DW(16), 
.DOUT_DW(16), 
.DATA_CHANNEL(1), 
.ACC_WIDTH(40), 
.WW(16))
u_vector_muladd_0_6(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_0), 
.op_weight({{{8{op_weight[447]}},op_weight[447:440]},{{8{op_weight[439]}},op_weight[439:432]},{{8{op_weight[431]}},op_weight[431:424]},{{8{op_weight[423]}},op_weight[423:416]},{{8{op_weight[415]}},op_weight[415:408]},{{8{op_weight[407]}},op_weight[407:400]},{{8{op_weight[399]}},op_weight[399:392]},{{8{op_weight[391]}},op_weight[391:384]}}),
.op_bias({{8{op_bias[55]}},op_bias[55:48]}),
.op_dout(op_dout_0_6));

vector_muladd #(.CPF(8),
.RELU(1),
.BN(0),
.DIN_Q(7),
.DOUT_Q(8),
.BN_SCALE_Q(6),
.BN_BIAS_Q(6),
.MID_Q(6),
.BIAS_DW(8),
.Q(10),
.DIN_DW(16), 
.DOUT_DW(16), 
.DATA_CHANNEL(1), 
.ACC_WIDTH(40), 
.WW(16))
u_vector_muladd_0_7(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_0), 
.op_weight({{{8{op_weight[511]}},op_weight[511:504]},{{8{op_weight[503]}},op_weight[503:496]},{{8{op_weight[495]}},op_weight[495:488]},{{8{op_weight[487]}},op_weight[487:480]},{{8{op_weight[479]}},op_weight[479:472]},{{8{op_weight[471]}},op_weight[471:464]},{{8{op_weight[463]}},op_weight[463:456]},{{8{op_weight[455]}},op_weight[455:448]}}),
.op_bias({{8{op_bias[63]}},op_bias[63:56]}),
.op_dout(op_dout_0_7));

assign blob_dout = {op_dout_0_7,op_dout_0_6,op_dout_0_5,op_dout_0_4,op_dout_0_3,op_dout_0_2,op_dout_0_1,op_dout_0_0};

endmodule
