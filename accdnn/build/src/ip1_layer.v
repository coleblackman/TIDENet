module ip1_layer(
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
input[511:0]	blob_din;


wire[3:0]	bm_rd_addr;
wire[255:0]	op_weight;
wire[15:0]	op_dout_0_0;
wire[63:0]	op_data_0;
wire[7:0]	double_buf_wr_addr;
wire[63:0]	op_bias;
wire	op_din_en;
wire[8:0]	rm_rd_addr;
wire[15:0]	op_dout_0_3;
wire[8:0]	double_buf_rd_addr;
wire	double_buf_wr_en;
wire[15:0]	op_dout_0_2;
wire	rm_wr_en;
wire[15:0]	op_dout_0_1;
wire[5:0]	rm_wr_addr;
wire	op_din_eop;


controller_v2 #(
.DB_W_IN (1),
.DB_H_IN (1),
.DB_C_IN (1024),
.DB_W_OUT (1),
.DB_H_OUT (1),
.DB_C_OUT (64),
.WB_W (1),
.WB_H (1),
.WB_C (1024),
.WB_K (64),
.GROUP (1),
.RM_WR_ADDR_WIDTH (6),
.RM_WR_NUM_PER_CHANNEL (32),
.RM_WR_STRIDE (1),
.RM_RING_LENGTH (2),
.RM_RD_PHY_ADDR_JUMP (1),
.RM_RD_ADDR_WIDTH (9),
.DOUBLE_BUF_WR_DEPTH (256),
.DOUBLE_BUF_RD_DEPTH (512),
.DOUBLE_BUF_WR_ADDR_WIDTH (8),
.DOUBLE_BUF_RD_ADDR_WIDTH (9),
.START_ADDR (0),
.LENGTH (128),
.BM_RD_ADDR_WIDTH (4),
.CPF (4),
.KPF (4),
.STRIDE_H (0),
.STRIDE_W (0),
.PAD (0),
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

ip1_rm_ram u_ip1_rm_ram_0(
.clka(clk),
.wea(rm_wr_en),
.addra(rm_wr_addr),
.dina(blob_din[511:0]),
.clkb(clk),
.addrb(rm_rd_addr),
.doutb(op_data_0));

ip1_wm_ram u_ip1_wm_ram(
.clka(clk),
.wea(double_buf_wr_en),
.addra(double_buf_wr_addr),
.dina(dma_engineer_dout),
.clkb(clk),
.addrb(double_buf_rd_addr),
.doutb(op_weight));

ip1_bm_ram u_ip1_bm_ram(
.clka(clk),
.addra(bm_rd_addr),
.douta(op_bias));

vector_muladd #(.CPF(4),
.RELU(0),
.BN(0),
.DIN_Q(6),
.DOUT_Q(6),
.BN_SCALE_Q(6),
.BN_BIAS_Q(6),
.MID_Q(6),
.BIAS_DW(16),
.Q(13),
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
.op_weight(op_weight[63:0]),
.op_bias(op_bias[15:0]),
.op_dout(op_dout_0_0));

vector_muladd #(.CPF(4),
.RELU(0),
.BN(0),
.DIN_Q(6),
.DOUT_Q(6),
.BN_SCALE_Q(6),
.BN_BIAS_Q(6),
.MID_Q(6),
.BIAS_DW(16),
.Q(13),
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
.op_weight(op_weight[127:64]),
.op_bias(op_bias[31:16]),
.op_dout(op_dout_0_1));

vector_muladd #(.CPF(4),
.RELU(0),
.BN(0),
.DIN_Q(6),
.DOUT_Q(6),
.BN_SCALE_Q(6),
.BN_BIAS_Q(6),
.MID_Q(6),
.BIAS_DW(16),
.Q(13),
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
.op_weight(op_weight[191:128]),
.op_bias(op_bias[47:32]),
.op_dout(op_dout_0_2));

vector_muladd #(.CPF(4),
.RELU(0),
.BN(0),
.DIN_Q(6),
.DOUT_Q(6),
.BN_SCALE_Q(6),
.BN_BIAS_Q(6),
.MID_Q(6),
.BIAS_DW(16),
.Q(13),
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
.op_weight(op_weight[255:192]),
.op_bias(op_bias[63:48]),
.op_dout(op_dout_0_3));

assign blob_dout = {op_dout_0_3,op_dout_0_2,op_dout_0_1,op_dout_0_0};

endmodule
