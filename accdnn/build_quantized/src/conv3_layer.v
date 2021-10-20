module conv3_layer(
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
output[31:0]	blob_dout;
input	blob_din_eop;
input[63:0]	blob_din;


wire[3:0]	bm_rd_addr;
wire[255:0]	op_weight;
wire[15:0]	op_dout_0_0;
wire[63:0]	op_data_0;
wire[6:0]	double_buf_wr_addr;
wire[31:0]	op_bias;
wire	op_din_en;
wire[7:0]	rm_rd_addr;
wire[7:0]	double_buf_rd_addr;
wire	double_buf_wr_en;
wire	rm_wr_en;
wire[15:0]	op_dout_0_1;
wire[7:0]	rm_wr_addr;
wire	op_din_eop;


controller_v2 #(
.DB_W_IN (8),
.DB_H_IN (8),
.DB_C_IN (32),
.DB_W_OUT (8),
.DB_H_OUT (8),
.DB_C_OUT (64),
.WB_W (5),
.WB_H (5),
.WB_C (32),
.WB_K (64),
.GROUP (1),
.RM_WR_ADDR_WIDTH (8),
.RM_WR_NUM_PER_CHANNEL (4),
.RM_WR_STRIDE (1),
.RM_RING_LENGTH (6),
.RM_RD_PHY_ADDR_JUMP (1),
.RM_RD_ADDR_WIDTH (8),
.DOUBLE_BUF_WR_DEPTH (100),
.DOUBLE_BUF_RD_DEPTH (200),
.DOUBLE_BUF_WR_ADDR_WIDTH (7),
.DOUBLE_BUF_RD_ADDR_WIDTH (8),
.START_ADDR (452),
.LENGTH (50),
.BM_RD_ADDR_WIDTH (4),
.CPF (8),
.KPF (4),
.STRIDE_H (1),
.STRIDE_W (1),
.PAD (2),
.OP_DELAY (8))
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

conv3_rm_ram u_conv3_rm_ram_0(
.clka(clk),
.wea(rm_wr_en),
.addra(rm_wr_addr),
.dina(blob_din[63:0]),
.clkb(clk),
.addrb(rm_rd_addr),
.doutb(op_data_0));

conv3_wm_ram u_conv3_wm_ram(
.clka(clk),
.wea(double_buf_wr_en),
.addra(double_buf_wr_addr),
.dina(dma_engineer_dout),
.clkb(clk),
.addrb(double_buf_rd_addr),
.doutb(op_weight));

conv3_bm_ram u_conv3_bm_ram(
.clka(clk),
.addra(bm_rd_addr),
.douta(op_bias));

vector_muladd #(.CPF(8),
.RELU(1),
.BN(0),
.DIN_Q(0),
.DOUT_Q(2),
.BN_SCALE_Q(6),
.BN_BIAS_Q(6),
.MID_Q(6),
.BIAS_DW(8),
.Q(10),
.DIN_DW(8), 
.DOUT_DW(8), 
.DATA_CHANNEL(2), 
.ACC_WIDTH(24), 
.WW(8))
u_vector_muladd_0_0(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_0), 
.op_weight({op_weight[127:120],op_weight[63:56],op_weight[119:112],op_weight[55:48],op_weight[111:104],op_weight[47:40],op_weight[103:96],op_weight[39:32],op_weight[95:88],op_weight[31:24],op_weight[87:80],op_weight[23:16],op_weight[79:72],op_weight[15:8],op_weight[71:64],op_weight[7:0]}),
.op_bias(op_bias[15:0]),
.op_dout(op_dout_0_0));

vector_muladd #(.CPF(8),
.RELU(1),
.BN(0),
.DIN_Q(0),
.DOUT_Q(2),
.BN_SCALE_Q(6),
.BN_BIAS_Q(6),
.MID_Q(6),
.BIAS_DW(8),
.Q(10),
.DIN_DW(8), 
.DOUT_DW(8), 
.DATA_CHANNEL(2), 
.ACC_WIDTH(24), 
.WW(8))
u_vector_muladd_0_1(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_0), 
.op_weight({op_weight[255:248],op_weight[191:184],op_weight[247:240],op_weight[183:176],op_weight[239:232],op_weight[175:168],op_weight[231:224],op_weight[167:160],op_weight[223:216],op_weight[159:152],op_weight[215:208],op_weight[151:144],op_weight[207:200],op_weight[143:136],op_weight[199:192],op_weight[135:128]}),
.op_bias(op_bias[31:16]),
.op_dout(op_dout_0_1));

assign blob_dout = {op_dout_0_1,op_dout_0_0};

endmodule
