module pool2_layer(
    clk,
    rst,
    blob_din_rdy,
    blob_din_en,
    blob_dout_en,
    blob_dout_rdy,
    blob_dout_eop,
    blob_dout,
    blob_din_eop,
    blob_din);

input clk;
input rst;
output	blob_din_rdy;
input	blob_din_en;
output	blob_dout_en;
input	blob_dout_rdy;
output	blob_dout_eop;
output[15:0]	blob_dout;
input	blob_din_eop;
input[15:0]	blob_din;


wire[15:0]	op_dout_0_0;
wire[15:0]	op_data_0;
wire	op_din_en;
wire	blob_dout_eop_fifo;
wire[7:0]	rm_rd_addr;
wire	op_din_eop;
wire[15:0]	blob_dout_fifo;
wire	rm_wr_en;
wire	blob_dout_en_fifo;
wire[7:0]	rm_wr_addr;


controller_v2_a #(
.DB_W_IN (8),
.DB_H_IN (8),
.DB_C_IN (8),
.DB_W_OUT (4),
.DB_H_OUT (4),
.DB_C_OUT (8),
.WB_W (2),
.WB_H (2),
.WB_K (8),
.RM_WR_ADDR_WIDTH (8),
.RM_WR_NUM_PER_CHANNEL (8),
.RM_WR_STRIDE (8),
.RM_RING_LENGTH (4),
.RM_RD_PHY_ADDR_JUMP (2),
.RM_RD_ADDR_WIDTH (8),
.KPF (1),
.STRIDE_H (2),
.STRIDE_W (2),
.PAD (0),
.DATA_ACCESS_DELAY (5),
.OP_DELAY (1))
u_controller(
.clk(clk),
.rst(rst),
.rm_wr_en(rm_wr_en), 
.rm_wr_addr(rm_wr_addr),
.rm_rd_addr(rm_rd_addr),
.op_din_eop(op_din_eop),
.op_din_en(op_din_en),
.blob_din_rdy(blob_din_rdy),
.blob_din_en(blob_din_en), 
.blob_din_eop(blob_din_eop),
.blob_dout_rdy(blob_dout_rdy),
.blob_dout_en(blob_dout_en_fifo),
.blob_dout_eop(blob_dout_eop_fifo));

pool2_rm_ram u_pool2_rm_ram_0(
.clka(clk),
.wea(rm_wr_en),
.addra(rm_wr_addr),
.dina(blob_din[15:0]),
.clkb(clk),
.addrb(rm_rd_addr),
.doutb(op_data_0));

vector_max #(.RELU(0),
.DIN_W(16),
.Q(13))
u_vector_max_0_0(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_0[15:0]),
.op_dout(op_dout_0_0));

assign blob_dout_fifo = {op_dout_0_0};

wire empty_fifo;
wire blob_dout_eop_tmp;
assign blob_dout_en = blob_dout_rdy & (~empty_fifo);
assign blob_dout_eop = blob_dout_en & blob_dout_eop_tmp;
interlayer_sync_fifo #(
.aw(1),
.dw(17),
.afull_t(2))
u_interlayer_sync_fifo (
.clk_i(clk),
.reset_i(rst),
.w_en_i(blob_dout_en_fifo), 
.w_din_i({blob_dout_eop_fifo, blob_dout_fifo}),
.r_en_i(blob_dout_en),
.r_dout_o({blob_dout_eop_tmp, blob_dout}),
.empty_o(empty_fifo),
.w_num_used_o(),
.r_num_val_o(),
.afull_o(),
.full_o());
endmodule
