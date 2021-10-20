module conv1_layer(
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
output[63:0]	blob_dout;
input	blob_din_eop;
input[15:0]	blob_din;


wire[1:0]	bm_rd_addr;
wire[255:0]	op_weight;
wire[7:0]	op_dout_0_0;
wire[63:0]	op_data_0;
wire[4:0]	double_buf_wr_addr;
wire[63:0]	op_bias;
wire	op_din_en;
wire[7:0]	op_dout_0_6;
wire[7:0]	rm_rd_addr;
wire[7:0]	op_dout_0_3;
wire[5:0]	double_buf_rd_addr;
wire	double_buf_wr_en;
wire[7:0]	op_dout_0_2;
wire	rm_wr_en;
wire[7:0]	op_dout_0_1;
wire[9:0]	rm_wr_addr;
wire[7:0]	op_dout_0_7;
wire	op_din_eop;
wire[7:0]	op_dout_0_5;
wire[7:0]	op_dout_0_4;


controller_v2 #(
.DB_W_IN (32),
.DB_H_IN (32),
.DB_C_IN (4),
.DB_W_OUT (32),
.DB_H_OUT (32),
.DB_C_OUT (32),
.WB_W (5),
.WB_H (5),
.WB_C (4),
.WB_K (32),
.GROUP (1),
.RM_WR_ADDR_WIDTH (10),
.RM_WR_NUM_PER_CHANNEL (4),
.RM_WR_STRIDE (1),
.RM_RING_LENGTH (6),
.RM_RD_PHY_ADDR_JUMP (1),
.RM_RD_ADDR_WIDTH (8),
.DOUBLE_BUF_WR_DEPTH (26),
.DOUBLE_BUF_RD_DEPTH (52),
.DOUBLE_BUF_WR_ADDR_WIDTH (5),
.DOUBLE_BUF_RD_ADDR_WIDTH (6),
.START_ADDR (0),
.LENGTH (13),
.BM_RD_ADDR_WIDTH (2),
.CPF (4),
.KPF (8),
.STRIDE_H (1),
.STRIDE_W (1),
.PAD (2),
.OP_DELAY (5))
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

conv1_rm_ram u_conv1_rm_ram_0(
.clka(clk),
.wea(rm_wr_en),
.addra(rm_wr_addr),
.dina(blob_din[15:0]),
.clkb(clk),
.addrb(rm_rd_addr),
.doutb(op_data_0));

conv1_wm_ram u_conv1_wm_ram(
.clka(clk),
.wea(double_buf_wr_en),
.addra(double_buf_wr_addr),
.dina(dma_engineer_dout),
.clkb(clk),
.addrb(double_buf_rd_addr),
.doutb(op_weight));

conv1_bm_ram u_conv1_bm_ram(
.clka(clk),
.addra(bm_rd_addr),
.douta(op_bias));

vector_muladd #(.CPF(4),
.RELU(0),
.BN(0),
.DIN_Q(8),
.DOUT_Q(-1),
.BN_SCALE_Q(6),
.BN_BIAS_Q(6),
.MID_Q(6),
.BIAS_DW(8),
.Q(9),
.DIN_DW(16), 
.DOUT_DW(8), 
.DATA_CHANNEL(1), 
.ACC_WIDTH(40), 
.WW(16))
u_vector_muladd_0_0(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_0), 
.op_weight({{{8{op_weight[31]}},op_weight[31:24]},{{8{op_weight[23]}},op_weight[23:16]},{{8{op_weight[15]}},op_weight[15:8]},{{8{op_weight[7]}},op_weight[7:0]}}),
.op_bias({{8{op_bias[7]}},op_bias[7:0]}),
.op_dout(op_dout_0_0));

vector_muladd #(.CPF(4),
.RELU(0),
.BN(0),
.DIN_Q(8),
.DOUT_Q(-1),
.BN_SCALE_Q(6),
.BN_BIAS_Q(6),
.MID_Q(6),
.BIAS_DW(8),
.Q(9),
.DIN_DW(16), 
.DOUT_DW(8), 
.DATA_CHANNEL(1), 
.ACC_WIDTH(40), 
.WW(16))
u_vector_muladd_0_1(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_0), 
.op_weight({{{8{op_weight[63]}},op_weight[63:56]},{{8{op_weight[55]}},op_weight[55:48]},{{8{op_weight[47]}},op_weight[47:40]},{{8{op_weight[39]}},op_weight[39:32]}}),
.op_bias({{8{op_bias[15]}},op_bias[15:8]}),
.op_dout(op_dout_0_1));

vector_muladd #(.CPF(4),
.RELU(0),
.BN(0),
.DIN_Q(8),
.DOUT_Q(-1),
.BN_SCALE_Q(6),
.BN_BIAS_Q(6),
.MID_Q(6),
.BIAS_DW(8),
.Q(9),
.DIN_DW(16), 
.DOUT_DW(8), 
.DATA_CHANNEL(1), 
.ACC_WIDTH(40), 
.WW(16))
u_vector_muladd_0_2(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_0), 
.op_weight({{{8{op_weight[95]}},op_weight[95:88]},{{8{op_weight[87]}},op_weight[87:80]},{{8{op_weight[79]}},op_weight[79:72]},{{8{op_weight[71]}},op_weight[71:64]}}),
.op_bias({{8{op_bias[23]}},op_bias[23:16]}),
.op_dout(op_dout_0_2));

vector_muladd #(.CPF(4),
.RELU(0),
.BN(0),
.DIN_Q(8),
.DOUT_Q(-1),
.BN_SCALE_Q(6),
.BN_BIAS_Q(6),
.MID_Q(6),
.BIAS_DW(8),
.Q(9),
.DIN_DW(16), 
.DOUT_DW(8), 
.DATA_CHANNEL(1), 
.ACC_WIDTH(40), 
.WW(16))
u_vector_muladd_0_3(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_0), 
.op_weight({{{8{op_weight[127]}},op_weight[127:120]},{{8{op_weight[119]}},op_weight[119:112]},{{8{op_weight[111]}},op_weight[111:104]},{{8{op_weight[103]}},op_weight[103:96]}}),
.op_bias({{8{op_bias[31]}},op_bias[31:24]}),
.op_dout(op_dout_0_3));

vector_muladd #(.CPF(4),
.RELU(0),
.BN(0),
.DIN_Q(8),
.DOUT_Q(-1),
.BN_SCALE_Q(6),
.BN_BIAS_Q(6),
.MID_Q(6),
.BIAS_DW(8),
.Q(9),
.DIN_DW(16), 
.DOUT_DW(8), 
.DATA_CHANNEL(1), 
.ACC_WIDTH(40), 
.WW(16))
u_vector_muladd_0_4(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_0), 
.op_weight({{{8{op_weight[159]}},op_weight[159:152]},{{8{op_weight[151]}},op_weight[151:144]},{{8{op_weight[143]}},op_weight[143:136]},{{8{op_weight[135]}},op_weight[135:128]}}),
.op_bias({{8{op_bias[39]}},op_bias[39:32]}),
.op_dout(op_dout_0_4));

vector_muladd #(.CPF(4),
.RELU(0),
.BN(0),
.DIN_Q(8),
.DOUT_Q(-1),
.BN_SCALE_Q(6),
.BN_BIAS_Q(6),
.MID_Q(6),
.BIAS_DW(8),
.Q(9),
.DIN_DW(16), 
.DOUT_DW(8), 
.DATA_CHANNEL(1), 
.ACC_WIDTH(40), 
.WW(16))
u_vector_muladd_0_5(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_0), 
.op_weight({{{8{op_weight[191]}},op_weight[191:184]},{{8{op_weight[183]}},op_weight[183:176]},{{8{op_weight[175]}},op_weight[175:168]},{{8{op_weight[167]}},op_weight[167:160]}}),
.op_bias({{8{op_bias[47]}},op_bias[47:40]}),
.op_dout(op_dout_0_5));

vector_muladd #(.CPF(4),
.RELU(0),
.BN(0),
.DIN_Q(8),
.DOUT_Q(-1),
.BN_SCALE_Q(6),
.BN_BIAS_Q(6),
.MID_Q(6),
.BIAS_DW(8),
.Q(9),
.DIN_DW(16), 
.DOUT_DW(8), 
.DATA_CHANNEL(1), 
.ACC_WIDTH(40), 
.WW(16))
u_vector_muladd_0_6(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_0), 
.op_weight({{{8{op_weight[223]}},op_weight[223:216]},{{8{op_weight[215]}},op_weight[215:208]},{{8{op_weight[207]}},op_weight[207:200]},{{8{op_weight[199]}},op_weight[199:192]}}),
.op_bias({{8{op_bias[55]}},op_bias[55:48]}),
.op_dout(op_dout_0_6));

vector_muladd #(.CPF(4),
.RELU(0),
.BN(0),
.DIN_Q(8),
.DOUT_Q(-1),
.BN_SCALE_Q(6),
.BN_BIAS_Q(6),
.MID_Q(6),
.BIAS_DW(8),
.Q(9),
.DIN_DW(16), 
.DOUT_DW(8), 
.DATA_CHANNEL(1), 
.ACC_WIDTH(40), 
.WW(16))
u_vector_muladd_0_7(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_0), 
.op_weight({{{8{op_weight[255]}},op_weight[255:248]},{{8{op_weight[247]}},op_weight[247:240]},{{8{op_weight[239]}},op_weight[239:232]},{{8{op_weight[231]}},op_weight[231:224]}}),
.op_bias({{8{op_bias[63]}},op_bias[63:56]}),
.op_dout(op_dout_0_7));

assign blob_dout = {op_dout_0_7,op_dout_0_6,op_dout_0_5,op_dout_0_4,op_dout_0_3,op_dout_0_2,op_dout_0_1,op_dout_0_0};

endmodule
