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
output[15:0]	blob_dout;
input	blob_din_eop;
input[15:0]	blob_din;


wire[4:0]	bm_rd_addr;
wire[7:0]	op_weight;
wire[15:0]	op_dout_0_0;
wire[15:0]	op_data_0;
wire[4:0]	double_buf_wr_addr;
wire[7:0]	op_bias;
wire	op_din_en;
wire[11:0]	rm_rd_addr;
wire[10:0]	double_buf_rd_addr;
wire	double_buf_wr_en;
wire	rm_wr_en;
wire[11:0]	rm_wr_addr;
wire	op_din_eop;


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
.RM_WR_ADDR_WIDTH (12),
.RM_WR_NUM_PER_CHANNEL (32),
.RM_WR_STRIDE (1),
.RM_RING_LENGTH (6),
.RM_RD_PHY_ADDR_JUMP (1),
.RM_RD_ADDR_WIDTH (12),
.DOUBLE_BUF_WR_DEPTH (26),
.DOUBLE_BUF_RD_DEPTH (1664),
.DOUBLE_BUF_WR_ADDR_WIDTH (5),
.DOUBLE_BUF_RD_ADDR_WIDTH (11),
.START_ADDR (64),
.LENGTH (13),
.BM_RD_ADDR_WIDTH (5),
.CPF (1),
.KPF (1),
.STRIDE_H (1),
.STRIDE_W (1),
.PAD (2),
.OP_DELAY (4))
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
.dina(blob_din[15:0]),
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

vector_muladd #(.CPF(1),
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
.op_weight({{{8{op_weight[7]}},op_weight[7:0]}}),
.op_bias({{8{op_bias[7]}},op_bias[7:0]}),
.op_dout(op_dout_0_0));

assign blob_dout = {op_dout_0_0};

endmodule
