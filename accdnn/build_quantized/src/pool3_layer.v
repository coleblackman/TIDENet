module pool3_layer(
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
output[255:0]	blob_dout;
input	blob_din_eop;
input[31:0]	blob_din;


wire[255:0]	op_data_0;
wire[7:0]	op_dout_0_30;
wire[7:0]	op_dout_0_19;
wire[7:0]	op_dout_0_18;
wire[7:0]	op_dout_0_17;
wire[7:0]	op_dout_0_16;
wire[7:0]	op_dout_0_15;
wire[7:0]	op_dout_0_14;
wire[7:0]	op_dout_0_13;
wire[7:0]	op_dout_0_12;
wire[7:0]	op_dout_0_11;
wire[7:0]	op_dout_0_10;
wire	op_din_eop;
wire	rm_wr_en;
wire[9:0]	rm_wr_addr;
wire	op_din_en;
wire[7:0]	op_dout_0_31;
wire[7:0]	op_dout_0_28;
wire[7:0]	op_dout_0_29;
wire[7:0]	op_dout_0_22;
wire[7:0]	op_dout_0_23;
wire[7:0]	op_dout_0_20;
wire[7:0]	op_dout_0_21;
wire[7:0]	op_dout_0_26;
wire[7:0]	op_dout_0_27;
wire[7:0]	op_dout_0_24;
wire[7:0]	op_dout_0_25;
wire[7:0]	op_dout_0_9;
wire[7:0]	op_dout_0_8;
wire[7:0]	op_dout_0_3;
wire[7:0]	op_dout_0_2;
wire[7:0]	op_dout_0_1;
wire[7:0]	op_dout_0_0;
wire[7:0]	op_dout_0_7;
wire[7:0]	op_dout_0_6;
wire[7:0]	op_dout_0_5;
wire[7:0]	op_dout_0_4;
wire[6:0]	rm_rd_addr;


controller_v2_a #(
.DB_W_IN (8),
.DB_H_IN (8),
.DB_C_IN (64),
.DB_W_OUT (4),
.DB_H_OUT (4),
.DB_C_OUT (64),
.WB_W (3),
.WB_H (3),
.WB_K (64),
.RM_WR_ADDR_WIDTH (10),
.RM_WR_NUM_PER_CHANNEL (16),
.RM_WR_STRIDE (16),
.RM_RING_LENGTH (5),
.RM_RD_PHY_ADDR_JUMP (2),
.RM_RD_ADDR_WIDTH (7),
.KPF (32),
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

pool3_rm_ram u_pool3_rm_ram_0(
.clka(clk),
.wea(rm_wr_en),
.addra(rm_wr_addr),
.dina(blob_din[31:0]),
.clkb(clk),
.addrb(rm_rd_addr),
.doutb(op_data_0));

vector_max #(.RELU(0),
.DIN_W(8),
.Q(13))
u_vector_max_0_0(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_0[7:0]),
.op_dout(op_dout_0_0));

vector_max #(.RELU(0),
.DIN_W(8),
.Q(13))
u_vector_max_0_1(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_0[15:8]),
.op_dout(op_dout_0_1));

vector_max #(.RELU(0),
.DIN_W(8),
.Q(13))
u_vector_max_0_2(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_0[23:16]),
.op_dout(op_dout_0_2));

vector_max #(.RELU(0),
.DIN_W(8),
.Q(13))
u_vector_max_0_3(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_0[31:24]),
.op_dout(op_dout_0_3));

vector_max #(.RELU(0),
.DIN_W(8),
.Q(13))
u_vector_max_0_4(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_0[39:32]),
.op_dout(op_dout_0_4));

vector_max #(.RELU(0),
.DIN_W(8),
.Q(13))
u_vector_max_0_5(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_0[47:40]),
.op_dout(op_dout_0_5));

vector_max #(.RELU(0),
.DIN_W(8),
.Q(13))
u_vector_max_0_6(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_0[55:48]),
.op_dout(op_dout_0_6));

vector_max #(.RELU(0),
.DIN_W(8),
.Q(13))
u_vector_max_0_7(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_0[63:56]),
.op_dout(op_dout_0_7));

vector_max #(.RELU(0),
.DIN_W(8),
.Q(13))
u_vector_max_0_8(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_0[71:64]),
.op_dout(op_dout_0_8));

vector_max #(.RELU(0),
.DIN_W(8),
.Q(13))
u_vector_max_0_9(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_0[79:72]),
.op_dout(op_dout_0_9));

vector_max #(.RELU(0),
.DIN_W(8),
.Q(13))
u_vector_max_0_10(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_0[87:80]),
.op_dout(op_dout_0_10));

vector_max #(.RELU(0),
.DIN_W(8),
.Q(13))
u_vector_max_0_11(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_0[95:88]),
.op_dout(op_dout_0_11));

vector_max #(.RELU(0),
.DIN_W(8),
.Q(13))
u_vector_max_0_12(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_0[103:96]),
.op_dout(op_dout_0_12));

vector_max #(.RELU(0),
.DIN_W(8),
.Q(13))
u_vector_max_0_13(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_0[111:104]),
.op_dout(op_dout_0_13));

vector_max #(.RELU(0),
.DIN_W(8),
.Q(13))
u_vector_max_0_14(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_0[119:112]),
.op_dout(op_dout_0_14));

vector_max #(.RELU(0),
.DIN_W(8),
.Q(13))
u_vector_max_0_15(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_0[127:120]),
.op_dout(op_dout_0_15));

vector_max #(.RELU(0),
.DIN_W(8),
.Q(13))
u_vector_max_0_16(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_0[135:128]),
.op_dout(op_dout_0_16));

vector_max #(.RELU(0),
.DIN_W(8),
.Q(13))
u_vector_max_0_17(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_0[143:136]),
.op_dout(op_dout_0_17));

vector_max #(.RELU(0),
.DIN_W(8),
.Q(13))
u_vector_max_0_18(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_0[151:144]),
.op_dout(op_dout_0_18));

vector_max #(.RELU(0),
.DIN_W(8),
.Q(13))
u_vector_max_0_19(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_0[159:152]),
.op_dout(op_dout_0_19));

vector_max #(.RELU(0),
.DIN_W(8),
.Q(13))
u_vector_max_0_20(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_0[167:160]),
.op_dout(op_dout_0_20));

vector_max #(.RELU(0),
.DIN_W(8),
.Q(13))
u_vector_max_0_21(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_0[175:168]),
.op_dout(op_dout_0_21));

vector_max #(.RELU(0),
.DIN_W(8),
.Q(13))
u_vector_max_0_22(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_0[183:176]),
.op_dout(op_dout_0_22));

vector_max #(.RELU(0),
.DIN_W(8),
.Q(13))
u_vector_max_0_23(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_0[191:184]),
.op_dout(op_dout_0_23));

vector_max #(.RELU(0),
.DIN_W(8),
.Q(13))
u_vector_max_0_24(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_0[199:192]),
.op_dout(op_dout_0_24));

vector_max #(.RELU(0),
.DIN_W(8),
.Q(13))
u_vector_max_0_25(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_0[207:200]),
.op_dout(op_dout_0_25));

vector_max #(.RELU(0),
.DIN_W(8),
.Q(13))
u_vector_max_0_26(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_0[215:208]),
.op_dout(op_dout_0_26));

vector_max #(.RELU(0),
.DIN_W(8),
.Q(13))
u_vector_max_0_27(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_0[223:216]),
.op_dout(op_dout_0_27));

vector_max #(.RELU(0),
.DIN_W(8),
.Q(13))
u_vector_max_0_28(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_0[231:224]),
.op_dout(op_dout_0_28));

vector_max #(.RELU(0),
.DIN_W(8),
.Q(13))
u_vector_max_0_29(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_0[239:232]),
.op_dout(op_dout_0_29));

vector_max #(.RELU(0),
.DIN_W(8),
.Q(13))
u_vector_max_0_30(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_0[247:240]),
.op_dout(op_dout_0_30));

vector_max #(.RELU(0),
.DIN_W(8),
.Q(13))
u_vector_max_0_31(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_0[255:248]),
.op_dout(op_dout_0_31));

assign blob_dout = {op_dout_0_31,op_dout_0_30,op_dout_0_29,op_dout_0_28,op_dout_0_27,op_dout_0_26,op_dout_0_25,op_dout_0_24,op_dout_0_23,op_dout_0_22,op_dout_0_21,op_dout_0_20,op_dout_0_19,op_dout_0_18,op_dout_0_17,op_dout_0_16,op_dout_0_15,op_dout_0_14,op_dout_0_13,op_dout_0_12,op_dout_0_11,op_dout_0_10,op_dout_0_9,op_dout_0_8,op_dout_0_7,op_dout_0_6,op_dout_0_5,op_dout_0_4,op_dout_0_3,op_dout_0_2,op_dout_0_1,op_dout_0_0};

endmodule
