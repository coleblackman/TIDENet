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
output[511:0]	blob_dout;
input	blob_din_eop;
input[63:0]	blob_din;


wire[511:0]	op_data_0;
wire[15:0]	op_dout_0_30;
wire[15:0]	op_dout_0_19;
wire[15:0]	op_dout_0_18;
wire[15:0]	op_dout_0_17;
wire[15:0]	op_dout_0_16;
wire[15:0]	op_dout_0_15;
wire[15:0]	op_dout_0_14;
wire[15:0]	op_dout_0_13;
wire[15:0]	op_dout_0_12;
wire[15:0]	op_dout_0_11;
wire[15:0]	op_dout_0_10;
wire	op_din_eop;
wire	rm_wr_en;
wire[9:0]	rm_wr_addr;
wire	op_din_en;
wire[15:0]	op_dout_0_31;
wire[15:0]	op_dout_0_28;
wire[15:0]	op_dout_0_29;
wire[15:0]	op_dout_0_22;
wire[15:0]	op_dout_0_23;
wire[15:0]	op_dout_0_20;
wire[15:0]	op_dout_0_21;
wire[15:0]	op_dout_0_26;
wire[15:0]	op_dout_0_27;
wire[15:0]	op_dout_0_24;
wire[15:0]	op_dout_0_25;
wire[15:0]	op_dout_0_9;
wire[15:0]	op_dout_0_8;
wire[15:0]	op_dout_0_3;
wire[15:0]	op_dout_0_2;
wire[15:0]	op_dout_0_1;
wire[15:0]	op_dout_0_0;
wire[15:0]	op_dout_0_7;
wire[15:0]	op_dout_0_6;
wire[15:0]	op_dout_0_5;
wire[15:0]	op_dout_0_4;
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
.dina(blob_din[63:0]),
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

vector_max #(.RELU(0),
.DIN_W(16),
.Q(13))
u_vector_max_0_1(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_0[31:16]),
.op_dout(op_dout_0_1));

vector_max #(.RELU(0),
.DIN_W(16),
.Q(13))
u_vector_max_0_2(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_0[47:32]),
.op_dout(op_dout_0_2));

vector_max #(.RELU(0),
.DIN_W(16),
.Q(13))
u_vector_max_0_3(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_0[63:48]),
.op_dout(op_dout_0_3));

vector_max #(.RELU(0),
.DIN_W(16),
.Q(13))
u_vector_max_0_4(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_0[79:64]),
.op_dout(op_dout_0_4));

vector_max #(.RELU(0),
.DIN_W(16),
.Q(13))
u_vector_max_0_5(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_0[95:80]),
.op_dout(op_dout_0_5));

vector_max #(.RELU(0),
.DIN_W(16),
.Q(13))
u_vector_max_0_6(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_0[111:96]),
.op_dout(op_dout_0_6));

vector_max #(.RELU(0),
.DIN_W(16),
.Q(13))
u_vector_max_0_7(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_0[127:112]),
.op_dout(op_dout_0_7));

vector_max #(.RELU(0),
.DIN_W(16),
.Q(13))
u_vector_max_0_8(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_0[143:128]),
.op_dout(op_dout_0_8));

vector_max #(.RELU(0),
.DIN_W(16),
.Q(13))
u_vector_max_0_9(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_0[159:144]),
.op_dout(op_dout_0_9));

vector_max #(.RELU(0),
.DIN_W(16),
.Q(13))
u_vector_max_0_10(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_0[175:160]),
.op_dout(op_dout_0_10));

vector_max #(.RELU(0),
.DIN_W(16),
.Q(13))
u_vector_max_0_11(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_0[191:176]),
.op_dout(op_dout_0_11));

vector_max #(.RELU(0),
.DIN_W(16),
.Q(13))
u_vector_max_0_12(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_0[207:192]),
.op_dout(op_dout_0_12));

vector_max #(.RELU(0),
.DIN_W(16),
.Q(13))
u_vector_max_0_13(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_0[223:208]),
.op_dout(op_dout_0_13));

vector_max #(.RELU(0),
.DIN_W(16),
.Q(13))
u_vector_max_0_14(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_0[239:224]),
.op_dout(op_dout_0_14));

vector_max #(.RELU(0),
.DIN_W(16),
.Q(13))
u_vector_max_0_15(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_0[255:240]),
.op_dout(op_dout_0_15));

vector_max #(.RELU(0),
.DIN_W(16),
.Q(13))
u_vector_max_0_16(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_0[271:256]),
.op_dout(op_dout_0_16));

vector_max #(.RELU(0),
.DIN_W(16),
.Q(13))
u_vector_max_0_17(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_0[287:272]),
.op_dout(op_dout_0_17));

vector_max #(.RELU(0),
.DIN_W(16),
.Q(13))
u_vector_max_0_18(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_0[303:288]),
.op_dout(op_dout_0_18));

vector_max #(.RELU(0),
.DIN_W(16),
.Q(13))
u_vector_max_0_19(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_0[319:304]),
.op_dout(op_dout_0_19));

vector_max #(.RELU(0),
.DIN_W(16),
.Q(13))
u_vector_max_0_20(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_0[335:320]),
.op_dout(op_dout_0_20));

vector_max #(.RELU(0),
.DIN_W(16),
.Q(13))
u_vector_max_0_21(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_0[351:336]),
.op_dout(op_dout_0_21));

vector_max #(.RELU(0),
.DIN_W(16),
.Q(13))
u_vector_max_0_22(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_0[367:352]),
.op_dout(op_dout_0_22));

vector_max #(.RELU(0),
.DIN_W(16),
.Q(13))
u_vector_max_0_23(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_0[383:368]),
.op_dout(op_dout_0_23));

vector_max #(.RELU(0),
.DIN_W(16),
.Q(13))
u_vector_max_0_24(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_0[399:384]),
.op_dout(op_dout_0_24));

vector_max #(.RELU(0),
.DIN_W(16),
.Q(13))
u_vector_max_0_25(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_0[415:400]),
.op_dout(op_dout_0_25));

vector_max #(.RELU(0),
.DIN_W(16),
.Q(13))
u_vector_max_0_26(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_0[431:416]),
.op_dout(op_dout_0_26));

vector_max #(.RELU(0),
.DIN_W(16),
.Q(13))
u_vector_max_0_27(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_0[447:432]),
.op_dout(op_dout_0_27));

vector_max #(.RELU(0),
.DIN_W(16),
.Q(13))
u_vector_max_0_28(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_0[463:448]),
.op_dout(op_dout_0_28));

vector_max #(.RELU(0),
.DIN_W(16),
.Q(13))
u_vector_max_0_29(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_0[479:464]),
.op_dout(op_dout_0_29));

vector_max #(.RELU(0),
.DIN_W(16),
.Q(13))
u_vector_max_0_30(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_0[495:480]),
.op_dout(op_dout_0_30));

vector_max #(.RELU(0),
.DIN_W(16),
.Q(13))
u_vector_max_0_31(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_0[511:496]),
.op_dout(op_dout_0_31));

assign blob_dout = {op_dout_0_31,op_dout_0_30,op_dout_0_29,op_dout_0_28,op_dout_0_27,op_dout_0_26,op_dout_0_25,op_dout_0_24,op_dout_0_23,op_dout_0_22,op_dout_0_21,op_dout_0_20,op_dout_0_19,op_dout_0_18,op_dout_0_17,op_dout_0_16,op_dout_0_15,op_dout_0_14,op_dout_0_13,op_dout_0_12,op_dout_0_11,op_dout_0_10,op_dout_0_9,op_dout_0_8,op_dout_0_7,op_dout_0_6,op_dout_0_5,op_dout_0_4,op_dout_0_3,op_dout_0_2,op_dout_0_1,op_dout_0_0};

endmodule
