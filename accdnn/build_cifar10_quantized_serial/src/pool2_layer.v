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
wire[11:0]	rm_rd_addr;
wire	op_din_eop;
wire	rm_wr_en;
wire[11:0]	rm_wr_addr;


controller_v2_a #(
.DB_W_IN (16),
.DB_H_IN (16),
.DB_C_IN (32),
.DB_W_OUT (8),
.DB_H_OUT (8),
.DB_C_OUT (32),
.WB_W (3),
.WB_H (3),
.WB_K (32),
.RM_WR_ADDR_WIDTH (12),
.RM_WR_NUM_PER_CHANNEL (32),
.RM_WR_STRIDE (32),
.RM_RING_LENGTH (5),
.RM_RD_PHY_ADDR_JUMP (2),
.RM_RD_ADDR_WIDTH (12),
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
.blob_dout_en(blob_dout_en),
.blob_dout_eop(blob_dout_eop));

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

assign blob_dout = {op_dout_0_0};

endmodule
