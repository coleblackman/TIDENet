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
output[2975:0]	blob_dout;
input	blob_din_eop;
input[11903:0]	blob_din;


wire[15:0]	op_dout_80_0;
wire[15:0]	op_dout_13_1;
wire[15:0]	op_dout_72_1;
wire[15:0]	op_dout_37_0;
wire[15:0]	op_dout_78_1;
wire[15:0]	op_dout_92_0;
wire[15:0]	op_dout_55_0;
wire[15:0]	op_dout_55_1;
wire[15:0]	op_dout_22_0;
wire[15:0]	op_dout_22_1;
wire[15:0]	op_dout_70_1;
wire[15:0]	op_dout_70_0;
wire[15:0]	op_dout_0_1;
wire[15:0]	op_dout_72_0;
wire[31:0]	op_data_74;
wire[31:0]	op_data_75;
wire[31:0]	op_data_76;
wire[31:0]	op_data_77;
wire[31:0]	op_data_70;
wire[31:0]	op_data_71;
wire[31:0]	op_data_72;
wire[31:0]	op_data_73;
wire[15:0]	op_dout_42_0;
wire[15:0]	op_dout_42_1;
wire[31:0]	op_data_78;
wire[31:0]	op_data_79;
wire[15:0]	op_dout_59_0;
wire[15:0]	op_dout_59_1;
wire[15:0]	op_dout_84_0;
wire[6:0]	double_buf_rd_addr;
wire[15:0]	op_dout_5_1;
wire[15:0]	op_dout_2_1;
wire[15:0]	op_dout_92_1;
wire[15:0]	op_dout_84_1;
wire[15:0]	op_dout_40_0;
wire[15:0]	op_dout_40_1;
wire[15:0]	op_dout_18_1;
wire[15:0]	op_dout_47_1;
wire[15:0]	op_dout_41_1;
wire[15:0]	op_dout_48_0;
wire[15:0]	op_dout_48_1;
wire[15:0]	op_dout_6_1;
wire[15:0]	op_dout_6_0;
wire[15:0]	op_dout_87_0;
wire[15:0]	op_dout_41_0;
wire[15:0]	op_dout_19_1;
wire[31:0]	op_data_69;
wire[31:0]	op_data_68;
wire[31:0]	op_data_63;
wire[31:0]	op_data_62;
wire[31:0]	op_data_61;
wire[31:0]	op_data_60;
wire[31:0]	op_data_67;
wire[31:0]	op_data_66;
wire[31:0]	op_data_65;
wire[31:0]	op_data_64;
wire[15:0]	op_dout_76_1;
wire[15:0]	op_dout_25_1;
wire[15:0]	op_dout_8_1;
wire[15:0]	op_dout_8_0;
wire[15:0]	op_dout_45_1;
wire[15:0]	op_dout_25_0;
wire[15:0]	op_dout_51_0;
wire[15:0]	op_dout_29_1;
wire[15:0]	op_dout_82_0;
wire[15:0]	op_dout_82_1;
wire[15:0]	op_dout_29_0;
wire[6:0]	rm_rd_addr;
wire[15:0]	op_dout_60_1;
wire[15:0]	op_dout_16_1;
wire[15:0]	op_dout_74_1;
wire[15:0]	op_dout_51_1;
wire[15:0]	op_dout_16_0;
wire[15:0]	op_dout_49_1;
wire[15:0]	op_dout_49_0;
wire[31:0]	op_data_4;
wire[31:0]	op_data_5;
wire[31:0]	op_data_6;
wire[31:0]	op_data_7;
wire[31:0]	op_data_0;
wire[31:0]	op_data_1;
wire[31:0]	op_data_2;
wire[31:0]	op_data_3;
wire[31:0]	op_data_8;
wire[31:0]	op_data_9;
wire[15:0]	op_dout_89_0;
wire[15:0]	op_dout_81_0;
wire[31:0]	op_data_18;
wire[31:0]	op_data_19;
wire[31:0]	op_data_16;
wire[31:0]	op_data_17;
wire[31:0]	op_data_14;
wire[31:0]	op_data_15;
wire[31:0]	op_data_12;
wire[31:0]	op_data_13;
wire[31:0]	op_data_10;
wire[31:0]	op_data_11;
wire[15:0]	op_dout_38_0;
wire[15:0]	op_dout_43_0;
wire[15:0]	op_dout_71_0;
wire[15:0]	op_dout_71_1;
wire[15:0]	op_dout_14_1;
wire[15:0]	op_dout_14_0;
wire[3:0]	double_buf_wr_addr;
wire[15:0]	op_dout_91_0;
wire[15:0]	op_dout_91_1;
wire[15:0]	op_dout_90_1;
wire[31:0]	op_data_92;
wire[15:0]	op_dout_2_0;
wire[31:0]	op_data_90;
wire[31:0]	op_data_91;
wire[15:0]	op_dout_4_1;
wire[15:0]	op_dout_4_0;
wire[2:0]	bm_rd_addr;
wire[15:0]	op_dout_69_1;
wire[15:0]	op_dout_62_0;
wire[63:0]	op_weight;
wire[15:0]	op_dout_60_0;
wire[15:0]	op_dout_74_0;
wire[15:0]	op_dout_57_0;
wire[15:0]	op_dout_57_1;
wire[15:0]	op_dout_64_0;
wire[15:0]	op_dout_64_1;
wire[15:0]	op_dout_85_1;
wire[15:0]	op_dout_85_0;
wire[15:0]	op_dout_33_0;
wire[15:0]	op_dout_33_1;
wire[15:0]	op_dout_9_0;
wire[15:0]	op_dout_9_1;
wire[15:0]	op_dout_90_0;
wire[15:0]	op_dout_83_1;
wire[15:0]	op_dout_83_0;
wire[15:0]	op_dout_76_0;
wire[15:0]	op_dout_61_1;
wire[15:0]	op_dout_61_0;
wire[15:0]	op_dout_66_0;
wire[15:0]	op_dout_66_1;
wire[15:0]	op_dout_1_0;
wire[15:0]	op_dout_31_0;
wire[15:0]	op_dout_31_1;
wire[31:0]	op_data_85;
wire[31:0]	op_data_84;
wire[31:0]	op_data_87;
wire[31:0]	op_data_86;
wire[31:0]	op_data_81;
wire[31:0]	op_data_80;
wire[31:0]	op_data_83;
wire[31:0]	op_data_82;
wire[15:0]	op_dout_81_1;
wire[15:0]	op_dout_53_1;
wire[31:0]	op_data_89;
wire[31:0]	op_data_88;
wire[15:0]	op_dout_63_1;
wire[15:0]	op_dout_63_0;
wire[15:0]	op_dout_62_1;
wire[15:0]	op_dout_88_0;
wire[15:0]	op_dout_88_1;
wire[15:0]	op_dout_10_1;
wire[15:0]	op_dout_10_0;
wire[31:0]	op_data_30;
wire[31:0]	op_data_31;
wire[31:0]	op_data_32;
wire[31:0]	op_data_33;
wire[31:0]	op_data_34;
wire[31:0]	op_data_35;
wire[31:0]	op_data_36;
wire[31:0]	op_data_37;
wire[31:0]	op_data_38;
wire[31:0]	op_data_39;
wire[15:0]	op_dout_18_0;
wire[15:0]	op_dout_19_0;
wire[15:0]	op_dout_69_0;
wire[15:0]	op_dout_12_1;
wire[15:0]	op_dout_12_0;
wire[15:0]	op_dout_27_1;
wire[15:0]	op_dout_27_0;
wire[15:0]	op_dout_79_0;
wire[15:0]	op_dout_79_1;
wire[15:0]	op_dout_3_0;
wire[15:0]	op_dout_3_1;
wire[15:0]	op_dout_15_0;
wire[15:0]	op_dout_15_1;
wire[15:0]	op_dout_21_1;
wire[15:0]	op_dout_21_0;
wire[15:0]	op_dout_50_1;
wire[15:0]	op_dout_23_0;
wire[15:0]	op_dout_5_0;
wire[15:0]	op_dout_50_0;
wire[31:0]	op_bias;
wire[15:0]	op_dout_73_0;
wire[15:0]	op_dout_65_1;
wire[15:0]	op_dout_44_0;
wire[15:0]	op_dout_73_1;
wire[31:0]	op_data_27;
wire[31:0]	op_data_26;
wire[31:0]	op_data_25;
wire[31:0]	op_data_24;
wire[31:0]	op_data_23;
wire[31:0]	op_data_22;
wire[31:0]	op_data_21;
wire[31:0]	op_data_20;
wire[31:0]	op_data_29;
wire[31:0]	op_data_28;
wire[15:0]	op_dout_67_1;
wire[15:0]	op_dout_67_0;
wire[15:0]	op_dout_30_1;
wire[15:0]	op_dout_30_0;
wire[15:0]	op_dout_56_0;
wire[15:0]	op_dout_77_1;
wire[15:0]	op_dout_77_0;
wire[15:0]	op_dout_36_1;
wire[15:0]	op_dout_36_0;
wire[15:0]	op_dout_39_0;
wire[15:0]	op_dout_39_1;
wire[15:0]	op_dout_68_1;
wire[15:0]	op_dout_53_0;
wire[15:0]	op_dout_32_1;
wire[15:0]	op_dout_54_1;
wire[15:0]	op_dout_54_0;
wire[15:0]	op_dout_17_0;
wire[15:0]	op_dout_17_1;
wire[15:0]	op_dout_23_1;
wire	double_buf_wr_en;
wire[15:0]	op_dout_87_1;
wire[15:0]	op_dout_78_0;
wire[15:0]	op_dout_11_0;
wire[15:0]	op_dout_11_1;
wire	op_din_eop;
wire[15:0]	op_dout_24_1;
wire[15:0]	op_dout_24_0;
wire	rm_wr_en;
wire[15:0]	op_dout_56_1;
wire[4:0]	rm_wr_addr;
wire[15:0]	op_dout_32_0;
wire[15:0]	op_dout_47_0;
wire[31:0]	op_data_52;
wire[31:0]	op_data_53;
wire[31:0]	op_data_50;
wire[31:0]	op_data_51;
wire[31:0]	op_data_56;
wire[31:0]	op_data_57;
wire[31:0]	op_data_54;
wire[31:0]	op_data_55;
wire[15:0]	op_dout_58_1;
wire[15:0]	op_dout_58_0;
wire[31:0]	op_data_58;
wire[31:0]	op_data_59;
wire	op_din_en;
wire[15:0]	op_dout_26_0;
wire[15:0]	op_dout_26_1;
wire[15:0]	op_dout_86_0;
wire[15:0]	op_dout_86_1;
wire[15:0]	op_dout_20_0;
wire[15:0]	op_dout_20_1;
wire[15:0]	op_dout_7_0;
wire[15:0]	op_dout_7_1;
wire[15:0]	op_dout_28_0;
wire[15:0]	op_dout_28_1;
wire[15:0]	op_dout_89_1;
wire[15:0]	op_dout_34_1;
wire[15:0]	op_dout_34_0;
wire[15:0]	op_dout_46_0;
wire[15:0]	op_dout_46_1;
wire[15:0]	op_dout_43_1;
wire[15:0]	op_dout_65_0;
wire[15:0]	op_dout_0_0;
wire[15:0]	op_dout_1_1;
wire[15:0]	op_dout_45_0;
wire[31:0]	op_data_41;
wire[31:0]	op_data_40;
wire[31:0]	op_data_43;
wire[31:0]	op_data_42;
wire[31:0]	op_data_45;
wire[31:0]	op_data_44;
wire[31:0]	op_data_47;
wire[31:0]	op_data_46;
wire[31:0]	op_data_49;
wire[31:0]	op_data_48;
wire[15:0]	op_dout_35_0;
wire[15:0]	op_dout_38_1;
wire[15:0]	op_dout_37_1;
wire[15:0]	op_dout_80_1;
wire[15:0]	op_dout_68_0;
wire[15:0]	op_dout_35_1;
wire[15:0]	op_dout_75_0;
wire[15:0]	op_dout_52_1;
wire[15:0]	op_dout_52_0;
wire[15:0]	op_dout_75_1;
wire[15:0]	op_dout_13_0;
wire[15:0]	op_dout_44_1;


controller_v2 #(
.DB_W_IN (1),
.DB_H_IN (1),
.DB_C_IN (128),
.DB_W_OUT (1),
.DB_H_OUT (1),
.DB_C_OUT (10),
.WB_W (1),
.WB_H (1),
.WB_C (128),
.WB_K (10),
.GROUP (1),
.RM_WR_ADDR_WIDTH (5),
.RM_WR_NUM_PER_CHANNEL (16),
.RM_WR_STRIDE (1),
.RM_RING_LENGTH (2),
.RM_RD_PHY_ADDR_JUMP (1),
.RM_RD_ADDR_WIDTH (7),
.DOUBLE_BUF_WR_DEPTH (16),
.DOUBLE_BUF_RD_DEPTH (128),
.DOUBLE_BUF_WR_ADDR_WIDTH (4),
.DOUBLE_BUF_RD_ADDR_WIDTH (7),
.START_ADDR (32),
.LENGTH (8),
.BM_RD_ADDR_WIDTH (3),
.CPF (2),
.KPF (2),
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
.dina(blob_din[127:0]),
.clkb(clk),
.addrb(rm_rd_addr),
.doutb(op_data_0));

ip1_rm_ram u_ip1_rm_ram_1(
.clka(clk),
.wea(rm_wr_en),
.addra(rm_wr_addr),
.dina(blob_din[255:128]),
.clkb(clk),
.addrb(rm_rd_addr),
.doutb(op_data_1));

ip1_rm_ram u_ip1_rm_ram_2(
.clka(clk),
.wea(rm_wr_en),
.addra(rm_wr_addr),
.dina(blob_din[383:256]),
.clkb(clk),
.addrb(rm_rd_addr),
.doutb(op_data_2));

ip1_rm_ram u_ip1_rm_ram_3(
.clka(clk),
.wea(rm_wr_en),
.addra(rm_wr_addr),
.dina(blob_din[511:384]),
.clkb(clk),
.addrb(rm_rd_addr),
.doutb(op_data_3));

ip1_rm_ram u_ip1_rm_ram_4(
.clka(clk),
.wea(rm_wr_en),
.addra(rm_wr_addr),
.dina(blob_din[639:512]),
.clkb(clk),
.addrb(rm_rd_addr),
.doutb(op_data_4));

ip1_rm_ram u_ip1_rm_ram_5(
.clka(clk),
.wea(rm_wr_en),
.addra(rm_wr_addr),
.dina(blob_din[767:640]),
.clkb(clk),
.addrb(rm_rd_addr),
.doutb(op_data_5));

ip1_rm_ram u_ip1_rm_ram_6(
.clka(clk),
.wea(rm_wr_en),
.addra(rm_wr_addr),
.dina(blob_din[895:768]),
.clkb(clk),
.addrb(rm_rd_addr),
.doutb(op_data_6));

ip1_rm_ram u_ip1_rm_ram_7(
.clka(clk),
.wea(rm_wr_en),
.addra(rm_wr_addr),
.dina(blob_din[1023:896]),
.clkb(clk),
.addrb(rm_rd_addr),
.doutb(op_data_7));

ip1_rm_ram u_ip1_rm_ram_8(
.clka(clk),
.wea(rm_wr_en),
.addra(rm_wr_addr),
.dina(blob_din[1151:1024]),
.clkb(clk),
.addrb(rm_rd_addr),
.doutb(op_data_8));

ip1_rm_ram u_ip1_rm_ram_9(
.clka(clk),
.wea(rm_wr_en),
.addra(rm_wr_addr),
.dina(blob_din[1279:1152]),
.clkb(clk),
.addrb(rm_rd_addr),
.doutb(op_data_9));

ip1_rm_ram u_ip1_rm_ram_10(
.clka(clk),
.wea(rm_wr_en),
.addra(rm_wr_addr),
.dina(blob_din[1407:1280]),
.clkb(clk),
.addrb(rm_rd_addr),
.doutb(op_data_10));

ip1_rm_ram u_ip1_rm_ram_11(
.clka(clk),
.wea(rm_wr_en),
.addra(rm_wr_addr),
.dina(blob_din[1535:1408]),
.clkb(clk),
.addrb(rm_rd_addr),
.doutb(op_data_11));

ip1_rm_ram u_ip1_rm_ram_12(
.clka(clk),
.wea(rm_wr_en),
.addra(rm_wr_addr),
.dina(blob_din[1663:1536]),
.clkb(clk),
.addrb(rm_rd_addr),
.doutb(op_data_12));

ip1_rm_ram u_ip1_rm_ram_13(
.clka(clk),
.wea(rm_wr_en),
.addra(rm_wr_addr),
.dina(blob_din[1791:1664]),
.clkb(clk),
.addrb(rm_rd_addr),
.doutb(op_data_13));

ip1_rm_ram u_ip1_rm_ram_14(
.clka(clk),
.wea(rm_wr_en),
.addra(rm_wr_addr),
.dina(blob_din[1919:1792]),
.clkb(clk),
.addrb(rm_rd_addr),
.doutb(op_data_14));

ip1_rm_ram u_ip1_rm_ram_15(
.clka(clk),
.wea(rm_wr_en),
.addra(rm_wr_addr),
.dina(blob_din[2047:1920]),
.clkb(clk),
.addrb(rm_rd_addr),
.doutb(op_data_15));

ip1_rm_ram u_ip1_rm_ram_16(
.clka(clk),
.wea(rm_wr_en),
.addra(rm_wr_addr),
.dina(blob_din[2175:2048]),
.clkb(clk),
.addrb(rm_rd_addr),
.doutb(op_data_16));

ip1_rm_ram u_ip1_rm_ram_17(
.clka(clk),
.wea(rm_wr_en),
.addra(rm_wr_addr),
.dina(blob_din[2303:2176]),
.clkb(clk),
.addrb(rm_rd_addr),
.doutb(op_data_17));

ip1_rm_ram u_ip1_rm_ram_18(
.clka(clk),
.wea(rm_wr_en),
.addra(rm_wr_addr),
.dina(blob_din[2431:2304]),
.clkb(clk),
.addrb(rm_rd_addr),
.doutb(op_data_18));

ip1_rm_ram u_ip1_rm_ram_19(
.clka(clk),
.wea(rm_wr_en),
.addra(rm_wr_addr),
.dina(blob_din[2559:2432]),
.clkb(clk),
.addrb(rm_rd_addr),
.doutb(op_data_19));

ip1_rm_ram u_ip1_rm_ram_20(
.clka(clk),
.wea(rm_wr_en),
.addra(rm_wr_addr),
.dina(blob_din[2687:2560]),
.clkb(clk),
.addrb(rm_rd_addr),
.doutb(op_data_20));

ip1_rm_ram u_ip1_rm_ram_21(
.clka(clk),
.wea(rm_wr_en),
.addra(rm_wr_addr),
.dina(blob_din[2815:2688]),
.clkb(clk),
.addrb(rm_rd_addr),
.doutb(op_data_21));

ip1_rm_ram u_ip1_rm_ram_22(
.clka(clk),
.wea(rm_wr_en),
.addra(rm_wr_addr),
.dina(blob_din[2943:2816]),
.clkb(clk),
.addrb(rm_rd_addr),
.doutb(op_data_22));

ip1_rm_ram u_ip1_rm_ram_23(
.clka(clk),
.wea(rm_wr_en),
.addra(rm_wr_addr),
.dina(blob_din[3071:2944]),
.clkb(clk),
.addrb(rm_rd_addr),
.doutb(op_data_23));

ip1_rm_ram u_ip1_rm_ram_24(
.clka(clk),
.wea(rm_wr_en),
.addra(rm_wr_addr),
.dina(blob_din[3199:3072]),
.clkb(clk),
.addrb(rm_rd_addr),
.doutb(op_data_24));

ip1_rm_ram u_ip1_rm_ram_25(
.clka(clk),
.wea(rm_wr_en),
.addra(rm_wr_addr),
.dina(blob_din[3327:3200]),
.clkb(clk),
.addrb(rm_rd_addr),
.doutb(op_data_25));

ip1_rm_ram u_ip1_rm_ram_26(
.clka(clk),
.wea(rm_wr_en),
.addra(rm_wr_addr),
.dina(blob_din[3455:3328]),
.clkb(clk),
.addrb(rm_rd_addr),
.doutb(op_data_26));

ip1_rm_ram u_ip1_rm_ram_27(
.clka(clk),
.wea(rm_wr_en),
.addra(rm_wr_addr),
.dina(blob_din[3583:3456]),
.clkb(clk),
.addrb(rm_rd_addr),
.doutb(op_data_27));

ip1_rm_ram u_ip1_rm_ram_28(
.clka(clk),
.wea(rm_wr_en),
.addra(rm_wr_addr),
.dina(blob_din[3711:3584]),
.clkb(clk),
.addrb(rm_rd_addr),
.doutb(op_data_28));

ip1_rm_ram u_ip1_rm_ram_29(
.clka(clk),
.wea(rm_wr_en),
.addra(rm_wr_addr),
.dina(blob_din[3839:3712]),
.clkb(clk),
.addrb(rm_rd_addr),
.doutb(op_data_29));

ip1_rm_ram u_ip1_rm_ram_30(
.clka(clk),
.wea(rm_wr_en),
.addra(rm_wr_addr),
.dina(blob_din[3967:3840]),
.clkb(clk),
.addrb(rm_rd_addr),
.doutb(op_data_30));

ip1_rm_ram u_ip1_rm_ram_31(
.clka(clk),
.wea(rm_wr_en),
.addra(rm_wr_addr),
.dina(blob_din[4095:3968]),
.clkb(clk),
.addrb(rm_rd_addr),
.doutb(op_data_31));

ip1_rm_ram u_ip1_rm_ram_32(
.clka(clk),
.wea(rm_wr_en),
.addra(rm_wr_addr),
.dina(blob_din[4223:4096]),
.clkb(clk),
.addrb(rm_rd_addr),
.doutb(op_data_32));

ip1_rm_ram u_ip1_rm_ram_33(
.clka(clk),
.wea(rm_wr_en),
.addra(rm_wr_addr),
.dina(blob_din[4351:4224]),
.clkb(clk),
.addrb(rm_rd_addr),
.doutb(op_data_33));

ip1_rm_ram u_ip1_rm_ram_34(
.clka(clk),
.wea(rm_wr_en),
.addra(rm_wr_addr),
.dina(blob_din[4479:4352]),
.clkb(clk),
.addrb(rm_rd_addr),
.doutb(op_data_34));

ip1_rm_ram u_ip1_rm_ram_35(
.clka(clk),
.wea(rm_wr_en),
.addra(rm_wr_addr),
.dina(blob_din[4607:4480]),
.clkb(clk),
.addrb(rm_rd_addr),
.doutb(op_data_35));

ip1_rm_ram u_ip1_rm_ram_36(
.clka(clk),
.wea(rm_wr_en),
.addra(rm_wr_addr),
.dina(blob_din[4735:4608]),
.clkb(clk),
.addrb(rm_rd_addr),
.doutb(op_data_36));

ip1_rm_ram u_ip1_rm_ram_37(
.clka(clk),
.wea(rm_wr_en),
.addra(rm_wr_addr),
.dina(blob_din[4863:4736]),
.clkb(clk),
.addrb(rm_rd_addr),
.doutb(op_data_37));

ip1_rm_ram u_ip1_rm_ram_38(
.clka(clk),
.wea(rm_wr_en),
.addra(rm_wr_addr),
.dina(blob_din[4991:4864]),
.clkb(clk),
.addrb(rm_rd_addr),
.doutb(op_data_38));

ip1_rm_ram u_ip1_rm_ram_39(
.clka(clk),
.wea(rm_wr_en),
.addra(rm_wr_addr),
.dina(blob_din[5119:4992]),
.clkb(clk),
.addrb(rm_rd_addr),
.doutb(op_data_39));

ip1_rm_ram u_ip1_rm_ram_40(
.clka(clk),
.wea(rm_wr_en),
.addra(rm_wr_addr),
.dina(blob_din[5247:5120]),
.clkb(clk),
.addrb(rm_rd_addr),
.doutb(op_data_40));

ip1_rm_ram u_ip1_rm_ram_41(
.clka(clk),
.wea(rm_wr_en),
.addra(rm_wr_addr),
.dina(blob_din[5375:5248]),
.clkb(clk),
.addrb(rm_rd_addr),
.doutb(op_data_41));

ip1_rm_ram u_ip1_rm_ram_42(
.clka(clk),
.wea(rm_wr_en),
.addra(rm_wr_addr),
.dina(blob_din[5503:5376]),
.clkb(clk),
.addrb(rm_rd_addr),
.doutb(op_data_42));

ip1_rm_ram u_ip1_rm_ram_43(
.clka(clk),
.wea(rm_wr_en),
.addra(rm_wr_addr),
.dina(blob_din[5631:5504]),
.clkb(clk),
.addrb(rm_rd_addr),
.doutb(op_data_43));

ip1_rm_ram u_ip1_rm_ram_44(
.clka(clk),
.wea(rm_wr_en),
.addra(rm_wr_addr),
.dina(blob_din[5759:5632]),
.clkb(clk),
.addrb(rm_rd_addr),
.doutb(op_data_44));

ip1_rm_ram u_ip1_rm_ram_45(
.clka(clk),
.wea(rm_wr_en),
.addra(rm_wr_addr),
.dina(blob_din[5887:5760]),
.clkb(clk),
.addrb(rm_rd_addr),
.doutb(op_data_45));

ip1_rm_ram u_ip1_rm_ram_46(
.clka(clk),
.wea(rm_wr_en),
.addra(rm_wr_addr),
.dina(blob_din[6015:5888]),
.clkb(clk),
.addrb(rm_rd_addr),
.doutb(op_data_46));

ip1_rm_ram u_ip1_rm_ram_47(
.clka(clk),
.wea(rm_wr_en),
.addra(rm_wr_addr),
.dina(blob_din[6143:6016]),
.clkb(clk),
.addrb(rm_rd_addr),
.doutb(op_data_47));

ip1_rm_ram u_ip1_rm_ram_48(
.clka(clk),
.wea(rm_wr_en),
.addra(rm_wr_addr),
.dina(blob_din[6271:6144]),
.clkb(clk),
.addrb(rm_rd_addr),
.doutb(op_data_48));

ip1_rm_ram u_ip1_rm_ram_49(
.clka(clk),
.wea(rm_wr_en),
.addra(rm_wr_addr),
.dina(blob_din[6399:6272]),
.clkb(clk),
.addrb(rm_rd_addr),
.doutb(op_data_49));

ip1_rm_ram u_ip1_rm_ram_50(
.clka(clk),
.wea(rm_wr_en),
.addra(rm_wr_addr),
.dina(blob_din[6527:6400]),
.clkb(clk),
.addrb(rm_rd_addr),
.doutb(op_data_50));

ip1_rm_ram u_ip1_rm_ram_51(
.clka(clk),
.wea(rm_wr_en),
.addra(rm_wr_addr),
.dina(blob_din[6655:6528]),
.clkb(clk),
.addrb(rm_rd_addr),
.doutb(op_data_51));

ip1_rm_ram u_ip1_rm_ram_52(
.clka(clk),
.wea(rm_wr_en),
.addra(rm_wr_addr),
.dina(blob_din[6783:6656]),
.clkb(clk),
.addrb(rm_rd_addr),
.doutb(op_data_52));

ip1_rm_ram u_ip1_rm_ram_53(
.clka(clk),
.wea(rm_wr_en),
.addra(rm_wr_addr),
.dina(blob_din[6911:6784]),
.clkb(clk),
.addrb(rm_rd_addr),
.doutb(op_data_53));

ip1_rm_ram u_ip1_rm_ram_54(
.clka(clk),
.wea(rm_wr_en),
.addra(rm_wr_addr),
.dina(blob_din[7039:6912]),
.clkb(clk),
.addrb(rm_rd_addr),
.doutb(op_data_54));

ip1_rm_ram u_ip1_rm_ram_55(
.clka(clk),
.wea(rm_wr_en),
.addra(rm_wr_addr),
.dina(blob_din[7167:7040]),
.clkb(clk),
.addrb(rm_rd_addr),
.doutb(op_data_55));

ip1_rm_ram u_ip1_rm_ram_56(
.clka(clk),
.wea(rm_wr_en),
.addra(rm_wr_addr),
.dina(blob_din[7295:7168]),
.clkb(clk),
.addrb(rm_rd_addr),
.doutb(op_data_56));

ip1_rm_ram u_ip1_rm_ram_57(
.clka(clk),
.wea(rm_wr_en),
.addra(rm_wr_addr),
.dina(blob_din[7423:7296]),
.clkb(clk),
.addrb(rm_rd_addr),
.doutb(op_data_57));

ip1_rm_ram u_ip1_rm_ram_58(
.clka(clk),
.wea(rm_wr_en),
.addra(rm_wr_addr),
.dina(blob_din[7551:7424]),
.clkb(clk),
.addrb(rm_rd_addr),
.doutb(op_data_58));

ip1_rm_ram u_ip1_rm_ram_59(
.clka(clk),
.wea(rm_wr_en),
.addra(rm_wr_addr),
.dina(blob_din[7679:7552]),
.clkb(clk),
.addrb(rm_rd_addr),
.doutb(op_data_59));

ip1_rm_ram u_ip1_rm_ram_60(
.clka(clk),
.wea(rm_wr_en),
.addra(rm_wr_addr),
.dina(blob_din[7807:7680]),
.clkb(clk),
.addrb(rm_rd_addr),
.doutb(op_data_60));

ip1_rm_ram u_ip1_rm_ram_61(
.clka(clk),
.wea(rm_wr_en),
.addra(rm_wr_addr),
.dina(blob_din[7935:7808]),
.clkb(clk),
.addrb(rm_rd_addr),
.doutb(op_data_61));

ip1_rm_ram u_ip1_rm_ram_62(
.clka(clk),
.wea(rm_wr_en),
.addra(rm_wr_addr),
.dina(blob_din[8063:7936]),
.clkb(clk),
.addrb(rm_rd_addr),
.doutb(op_data_62));

ip1_rm_ram u_ip1_rm_ram_63(
.clka(clk),
.wea(rm_wr_en),
.addra(rm_wr_addr),
.dina(blob_din[8191:8064]),
.clkb(clk),
.addrb(rm_rd_addr),
.doutb(op_data_63));

ip1_rm_ram u_ip1_rm_ram_64(
.clka(clk),
.wea(rm_wr_en),
.addra(rm_wr_addr),
.dina(blob_din[8319:8192]),
.clkb(clk),
.addrb(rm_rd_addr),
.doutb(op_data_64));

ip1_rm_ram u_ip1_rm_ram_65(
.clka(clk),
.wea(rm_wr_en),
.addra(rm_wr_addr),
.dina(blob_din[8447:8320]),
.clkb(clk),
.addrb(rm_rd_addr),
.doutb(op_data_65));

ip1_rm_ram u_ip1_rm_ram_66(
.clka(clk),
.wea(rm_wr_en),
.addra(rm_wr_addr),
.dina(blob_din[8575:8448]),
.clkb(clk),
.addrb(rm_rd_addr),
.doutb(op_data_66));

ip1_rm_ram u_ip1_rm_ram_67(
.clka(clk),
.wea(rm_wr_en),
.addra(rm_wr_addr),
.dina(blob_din[8703:8576]),
.clkb(clk),
.addrb(rm_rd_addr),
.doutb(op_data_67));

ip1_rm_ram u_ip1_rm_ram_68(
.clka(clk),
.wea(rm_wr_en),
.addra(rm_wr_addr),
.dina(blob_din[8831:8704]),
.clkb(clk),
.addrb(rm_rd_addr),
.doutb(op_data_68));

ip1_rm_ram u_ip1_rm_ram_69(
.clka(clk),
.wea(rm_wr_en),
.addra(rm_wr_addr),
.dina(blob_din[8959:8832]),
.clkb(clk),
.addrb(rm_rd_addr),
.doutb(op_data_69));

ip1_rm_ram u_ip1_rm_ram_70(
.clka(clk),
.wea(rm_wr_en),
.addra(rm_wr_addr),
.dina(blob_din[9087:8960]),
.clkb(clk),
.addrb(rm_rd_addr),
.doutb(op_data_70));

ip1_rm_ram u_ip1_rm_ram_71(
.clka(clk),
.wea(rm_wr_en),
.addra(rm_wr_addr),
.dina(blob_din[9215:9088]),
.clkb(clk),
.addrb(rm_rd_addr),
.doutb(op_data_71));

ip1_rm_ram u_ip1_rm_ram_72(
.clka(clk),
.wea(rm_wr_en),
.addra(rm_wr_addr),
.dina(blob_din[9343:9216]),
.clkb(clk),
.addrb(rm_rd_addr),
.doutb(op_data_72));

ip1_rm_ram u_ip1_rm_ram_73(
.clka(clk),
.wea(rm_wr_en),
.addra(rm_wr_addr),
.dina(blob_din[9471:9344]),
.clkb(clk),
.addrb(rm_rd_addr),
.doutb(op_data_73));

ip1_rm_ram u_ip1_rm_ram_74(
.clka(clk),
.wea(rm_wr_en),
.addra(rm_wr_addr),
.dina(blob_din[9599:9472]),
.clkb(clk),
.addrb(rm_rd_addr),
.doutb(op_data_74));

ip1_rm_ram u_ip1_rm_ram_75(
.clka(clk),
.wea(rm_wr_en),
.addra(rm_wr_addr),
.dina(blob_din[9727:9600]),
.clkb(clk),
.addrb(rm_rd_addr),
.doutb(op_data_75));

ip1_rm_ram u_ip1_rm_ram_76(
.clka(clk),
.wea(rm_wr_en),
.addra(rm_wr_addr),
.dina(blob_din[9855:9728]),
.clkb(clk),
.addrb(rm_rd_addr),
.doutb(op_data_76));

ip1_rm_ram u_ip1_rm_ram_77(
.clka(clk),
.wea(rm_wr_en),
.addra(rm_wr_addr),
.dina(blob_din[9983:9856]),
.clkb(clk),
.addrb(rm_rd_addr),
.doutb(op_data_77));

ip1_rm_ram u_ip1_rm_ram_78(
.clka(clk),
.wea(rm_wr_en),
.addra(rm_wr_addr),
.dina(blob_din[10111:9984]),
.clkb(clk),
.addrb(rm_rd_addr),
.doutb(op_data_78));

ip1_rm_ram u_ip1_rm_ram_79(
.clka(clk),
.wea(rm_wr_en),
.addra(rm_wr_addr),
.dina(blob_din[10239:10112]),
.clkb(clk),
.addrb(rm_rd_addr),
.doutb(op_data_79));

ip1_rm_ram u_ip1_rm_ram_80(
.clka(clk),
.wea(rm_wr_en),
.addra(rm_wr_addr),
.dina(blob_din[10367:10240]),
.clkb(clk),
.addrb(rm_rd_addr),
.doutb(op_data_80));

ip1_rm_ram u_ip1_rm_ram_81(
.clka(clk),
.wea(rm_wr_en),
.addra(rm_wr_addr),
.dina(blob_din[10495:10368]),
.clkb(clk),
.addrb(rm_rd_addr),
.doutb(op_data_81));

ip1_rm_ram u_ip1_rm_ram_82(
.clka(clk),
.wea(rm_wr_en),
.addra(rm_wr_addr),
.dina(blob_din[10623:10496]),
.clkb(clk),
.addrb(rm_rd_addr),
.doutb(op_data_82));

ip1_rm_ram u_ip1_rm_ram_83(
.clka(clk),
.wea(rm_wr_en),
.addra(rm_wr_addr),
.dina(blob_din[10751:10624]),
.clkb(clk),
.addrb(rm_rd_addr),
.doutb(op_data_83));

ip1_rm_ram u_ip1_rm_ram_84(
.clka(clk),
.wea(rm_wr_en),
.addra(rm_wr_addr),
.dina(blob_din[10879:10752]),
.clkb(clk),
.addrb(rm_rd_addr),
.doutb(op_data_84));

ip1_rm_ram u_ip1_rm_ram_85(
.clka(clk),
.wea(rm_wr_en),
.addra(rm_wr_addr),
.dina(blob_din[11007:10880]),
.clkb(clk),
.addrb(rm_rd_addr),
.doutb(op_data_85));

ip1_rm_ram u_ip1_rm_ram_86(
.clka(clk),
.wea(rm_wr_en),
.addra(rm_wr_addr),
.dina(blob_din[11135:11008]),
.clkb(clk),
.addrb(rm_rd_addr),
.doutb(op_data_86));

ip1_rm_ram u_ip1_rm_ram_87(
.clka(clk),
.wea(rm_wr_en),
.addra(rm_wr_addr),
.dina(blob_din[11263:11136]),
.clkb(clk),
.addrb(rm_rd_addr),
.doutb(op_data_87));

ip1_rm_ram u_ip1_rm_ram_88(
.clka(clk),
.wea(rm_wr_en),
.addra(rm_wr_addr),
.dina(blob_din[11391:11264]),
.clkb(clk),
.addrb(rm_rd_addr),
.doutb(op_data_88));

ip1_rm_ram u_ip1_rm_ram_89(
.clka(clk),
.wea(rm_wr_en),
.addra(rm_wr_addr),
.dina(blob_din[11519:11392]),
.clkb(clk),
.addrb(rm_rd_addr),
.doutb(op_data_89));

ip1_rm_ram u_ip1_rm_ram_90(
.clka(clk),
.wea(rm_wr_en),
.addra(rm_wr_addr),
.dina(blob_din[11647:11520]),
.clkb(clk),
.addrb(rm_rd_addr),
.doutb(op_data_90));

ip1_rm_ram u_ip1_rm_ram_91(
.clka(clk),
.wea(rm_wr_en),
.addra(rm_wr_addr),
.dina(blob_din[11775:11648]),
.clkb(clk),
.addrb(rm_rd_addr),
.doutb(op_data_91));

ip1_rm_ram u_ip1_rm_ram_92(
.clka(clk),
.wea(rm_wr_en),
.addra(rm_wr_addr),
.dina(blob_din[11903:11776]),
.clkb(clk),
.addrb(rm_rd_addr),
.doutb(op_data_92));

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

vector_muladd #(.CPF(2),
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
.op_weight(op_weight[31:0]),
.op_bias(op_bias[15:0]),
.op_dout(op_dout_0_0));

vector_muladd #(.CPF(2),
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
.op_weight(op_weight[63:32]),
.op_bias(op_bias[31:16]),
.op_dout(op_dout_0_1));

vector_muladd #(.CPF(2),
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
u_vector_muladd_1_0(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_1), 
.op_weight(op_weight[31:0]),
.op_bias(op_bias[15:0]),
.op_dout(op_dout_1_0));

vector_muladd #(.CPF(2),
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
u_vector_muladd_1_1(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_1), 
.op_weight(op_weight[63:32]),
.op_bias(op_bias[31:16]),
.op_dout(op_dout_1_1));

vector_muladd #(.CPF(2),
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
u_vector_muladd_2_0(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_2), 
.op_weight(op_weight[31:0]),
.op_bias(op_bias[15:0]),
.op_dout(op_dout_2_0));

vector_muladd #(.CPF(2),
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
u_vector_muladd_2_1(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_2), 
.op_weight(op_weight[63:32]),
.op_bias(op_bias[31:16]),
.op_dout(op_dout_2_1));

vector_muladd #(.CPF(2),
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
u_vector_muladd_3_0(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_3), 
.op_weight(op_weight[31:0]),
.op_bias(op_bias[15:0]),
.op_dout(op_dout_3_0));

vector_muladd #(.CPF(2),
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
u_vector_muladd_3_1(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_3), 
.op_weight(op_weight[63:32]),
.op_bias(op_bias[31:16]),
.op_dout(op_dout_3_1));

vector_muladd #(.CPF(2),
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
u_vector_muladd_4_0(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_4), 
.op_weight(op_weight[31:0]),
.op_bias(op_bias[15:0]),
.op_dout(op_dout_4_0));

vector_muladd #(.CPF(2),
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
u_vector_muladd_4_1(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_4), 
.op_weight(op_weight[63:32]),
.op_bias(op_bias[31:16]),
.op_dout(op_dout_4_1));

vector_muladd #(.CPF(2),
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
u_vector_muladd_5_0(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_5), 
.op_weight(op_weight[31:0]),
.op_bias(op_bias[15:0]),
.op_dout(op_dout_5_0));

vector_muladd #(.CPF(2),
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
u_vector_muladd_5_1(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_5), 
.op_weight(op_weight[63:32]),
.op_bias(op_bias[31:16]),
.op_dout(op_dout_5_1));

vector_muladd #(.CPF(2),
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
u_vector_muladd_6_0(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_6), 
.op_weight(op_weight[31:0]),
.op_bias(op_bias[15:0]),
.op_dout(op_dout_6_0));

vector_muladd #(.CPF(2),
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
u_vector_muladd_6_1(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_6), 
.op_weight(op_weight[63:32]),
.op_bias(op_bias[31:16]),
.op_dout(op_dout_6_1));

vector_muladd #(.CPF(2),
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
u_vector_muladd_7_0(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_7), 
.op_weight(op_weight[31:0]),
.op_bias(op_bias[15:0]),
.op_dout(op_dout_7_0));

vector_muladd #(.CPF(2),
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
u_vector_muladd_7_1(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_7), 
.op_weight(op_weight[63:32]),
.op_bias(op_bias[31:16]),
.op_dout(op_dout_7_1));

vector_muladd #(.CPF(2),
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
u_vector_muladd_8_0(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_8), 
.op_weight(op_weight[31:0]),
.op_bias(op_bias[15:0]),
.op_dout(op_dout_8_0));

vector_muladd #(.CPF(2),
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
u_vector_muladd_8_1(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_8), 
.op_weight(op_weight[63:32]),
.op_bias(op_bias[31:16]),
.op_dout(op_dout_8_1));

vector_muladd #(.CPF(2),
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
u_vector_muladd_9_0(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_9), 
.op_weight(op_weight[31:0]),
.op_bias(op_bias[15:0]),
.op_dout(op_dout_9_0));

vector_muladd #(.CPF(2),
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
u_vector_muladd_9_1(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_9), 
.op_weight(op_weight[63:32]),
.op_bias(op_bias[31:16]),
.op_dout(op_dout_9_1));

vector_muladd #(.CPF(2),
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
u_vector_muladd_10_0(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_10), 
.op_weight(op_weight[31:0]),
.op_bias(op_bias[15:0]),
.op_dout(op_dout_10_0));

vector_muladd #(.CPF(2),
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
u_vector_muladd_10_1(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_10), 
.op_weight(op_weight[63:32]),
.op_bias(op_bias[31:16]),
.op_dout(op_dout_10_1));

vector_muladd #(.CPF(2),
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
u_vector_muladd_11_0(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_11), 
.op_weight(op_weight[31:0]),
.op_bias(op_bias[15:0]),
.op_dout(op_dout_11_0));

vector_muladd #(.CPF(2),
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
u_vector_muladd_11_1(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_11), 
.op_weight(op_weight[63:32]),
.op_bias(op_bias[31:16]),
.op_dout(op_dout_11_1));

vector_muladd #(.CPF(2),
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
u_vector_muladd_12_0(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_12), 
.op_weight(op_weight[31:0]),
.op_bias(op_bias[15:0]),
.op_dout(op_dout_12_0));

vector_muladd #(.CPF(2),
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
u_vector_muladd_12_1(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_12), 
.op_weight(op_weight[63:32]),
.op_bias(op_bias[31:16]),
.op_dout(op_dout_12_1));

vector_muladd #(.CPF(2),
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
u_vector_muladd_13_0(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_13), 
.op_weight(op_weight[31:0]),
.op_bias(op_bias[15:0]),
.op_dout(op_dout_13_0));

vector_muladd #(.CPF(2),
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
u_vector_muladd_13_1(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_13), 
.op_weight(op_weight[63:32]),
.op_bias(op_bias[31:16]),
.op_dout(op_dout_13_1));

vector_muladd #(.CPF(2),
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
u_vector_muladd_14_0(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_14), 
.op_weight(op_weight[31:0]),
.op_bias(op_bias[15:0]),
.op_dout(op_dout_14_0));

vector_muladd #(.CPF(2),
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
u_vector_muladd_14_1(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_14), 
.op_weight(op_weight[63:32]),
.op_bias(op_bias[31:16]),
.op_dout(op_dout_14_1));

vector_muladd #(.CPF(2),
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
u_vector_muladd_15_0(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_15), 
.op_weight(op_weight[31:0]),
.op_bias(op_bias[15:0]),
.op_dout(op_dout_15_0));

vector_muladd #(.CPF(2),
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
u_vector_muladd_15_1(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_15), 
.op_weight(op_weight[63:32]),
.op_bias(op_bias[31:16]),
.op_dout(op_dout_15_1));

vector_muladd #(.CPF(2),
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
u_vector_muladd_16_0(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_16), 
.op_weight(op_weight[31:0]),
.op_bias(op_bias[15:0]),
.op_dout(op_dout_16_0));

vector_muladd #(.CPF(2),
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
u_vector_muladd_16_1(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_16), 
.op_weight(op_weight[63:32]),
.op_bias(op_bias[31:16]),
.op_dout(op_dout_16_1));

vector_muladd #(.CPF(2),
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
u_vector_muladd_17_0(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_17), 
.op_weight(op_weight[31:0]),
.op_bias(op_bias[15:0]),
.op_dout(op_dout_17_0));

vector_muladd #(.CPF(2),
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
u_vector_muladd_17_1(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_17), 
.op_weight(op_weight[63:32]),
.op_bias(op_bias[31:16]),
.op_dout(op_dout_17_1));

vector_muladd #(.CPF(2),
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
u_vector_muladd_18_0(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_18), 
.op_weight(op_weight[31:0]),
.op_bias(op_bias[15:0]),
.op_dout(op_dout_18_0));

vector_muladd #(.CPF(2),
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
u_vector_muladd_18_1(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_18), 
.op_weight(op_weight[63:32]),
.op_bias(op_bias[31:16]),
.op_dout(op_dout_18_1));

vector_muladd #(.CPF(2),
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
u_vector_muladd_19_0(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_19), 
.op_weight(op_weight[31:0]),
.op_bias(op_bias[15:0]),
.op_dout(op_dout_19_0));

vector_muladd #(.CPF(2),
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
u_vector_muladd_19_1(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_19), 
.op_weight(op_weight[63:32]),
.op_bias(op_bias[31:16]),
.op_dout(op_dout_19_1));

vector_muladd #(.CPF(2),
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
u_vector_muladd_20_0(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_20), 
.op_weight(op_weight[31:0]),
.op_bias(op_bias[15:0]),
.op_dout(op_dout_20_0));

vector_muladd #(.CPF(2),
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
u_vector_muladd_20_1(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_20), 
.op_weight(op_weight[63:32]),
.op_bias(op_bias[31:16]),
.op_dout(op_dout_20_1));

vector_muladd #(.CPF(2),
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
u_vector_muladd_21_0(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_21), 
.op_weight(op_weight[31:0]),
.op_bias(op_bias[15:0]),
.op_dout(op_dout_21_0));

vector_muladd #(.CPF(2),
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
u_vector_muladd_21_1(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_21), 
.op_weight(op_weight[63:32]),
.op_bias(op_bias[31:16]),
.op_dout(op_dout_21_1));

vector_muladd #(.CPF(2),
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
u_vector_muladd_22_0(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_22), 
.op_weight(op_weight[31:0]),
.op_bias(op_bias[15:0]),
.op_dout(op_dout_22_0));

vector_muladd #(.CPF(2),
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
u_vector_muladd_22_1(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_22), 
.op_weight(op_weight[63:32]),
.op_bias(op_bias[31:16]),
.op_dout(op_dout_22_1));

vector_muladd #(.CPF(2),
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
u_vector_muladd_23_0(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_23), 
.op_weight(op_weight[31:0]),
.op_bias(op_bias[15:0]),
.op_dout(op_dout_23_0));

vector_muladd #(.CPF(2),
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
u_vector_muladd_23_1(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_23), 
.op_weight(op_weight[63:32]),
.op_bias(op_bias[31:16]),
.op_dout(op_dout_23_1));

vector_muladd #(.CPF(2),
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
u_vector_muladd_24_0(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_24), 
.op_weight(op_weight[31:0]),
.op_bias(op_bias[15:0]),
.op_dout(op_dout_24_0));

vector_muladd #(.CPF(2),
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
u_vector_muladd_24_1(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_24), 
.op_weight(op_weight[63:32]),
.op_bias(op_bias[31:16]),
.op_dout(op_dout_24_1));

vector_muladd #(.CPF(2),
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
u_vector_muladd_25_0(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_25), 
.op_weight(op_weight[31:0]),
.op_bias(op_bias[15:0]),
.op_dout(op_dout_25_0));

vector_muladd #(.CPF(2),
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
u_vector_muladd_25_1(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_25), 
.op_weight(op_weight[63:32]),
.op_bias(op_bias[31:16]),
.op_dout(op_dout_25_1));

vector_muladd #(.CPF(2),
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
u_vector_muladd_26_0(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_26), 
.op_weight(op_weight[31:0]),
.op_bias(op_bias[15:0]),
.op_dout(op_dout_26_0));

vector_muladd #(.CPF(2),
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
u_vector_muladd_26_1(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_26), 
.op_weight(op_weight[63:32]),
.op_bias(op_bias[31:16]),
.op_dout(op_dout_26_1));

vector_muladd #(.CPF(2),
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
u_vector_muladd_27_0(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_27), 
.op_weight(op_weight[31:0]),
.op_bias(op_bias[15:0]),
.op_dout(op_dout_27_0));

vector_muladd #(.CPF(2),
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
u_vector_muladd_27_1(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_27), 
.op_weight(op_weight[63:32]),
.op_bias(op_bias[31:16]),
.op_dout(op_dout_27_1));

vector_muladd #(.CPF(2),
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
u_vector_muladd_28_0(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_28), 
.op_weight(op_weight[31:0]),
.op_bias(op_bias[15:0]),
.op_dout(op_dout_28_0));

vector_muladd #(.CPF(2),
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
u_vector_muladd_28_1(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_28), 
.op_weight(op_weight[63:32]),
.op_bias(op_bias[31:16]),
.op_dout(op_dout_28_1));

vector_muladd #(.CPF(2),
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
u_vector_muladd_29_0(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_29), 
.op_weight(op_weight[31:0]),
.op_bias(op_bias[15:0]),
.op_dout(op_dout_29_0));

vector_muladd #(.CPF(2),
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
u_vector_muladd_29_1(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_29), 
.op_weight(op_weight[63:32]),
.op_bias(op_bias[31:16]),
.op_dout(op_dout_29_1));

vector_muladd #(.CPF(2),
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
u_vector_muladd_30_0(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_30), 
.op_weight(op_weight[31:0]),
.op_bias(op_bias[15:0]),
.op_dout(op_dout_30_0));

vector_muladd #(.CPF(2),
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
u_vector_muladd_30_1(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_30), 
.op_weight(op_weight[63:32]),
.op_bias(op_bias[31:16]),
.op_dout(op_dout_30_1));

vector_muladd #(.CPF(2),
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
u_vector_muladd_31_0(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_31), 
.op_weight(op_weight[31:0]),
.op_bias(op_bias[15:0]),
.op_dout(op_dout_31_0));

vector_muladd #(.CPF(2),
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
u_vector_muladd_31_1(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_31), 
.op_weight(op_weight[63:32]),
.op_bias(op_bias[31:16]),
.op_dout(op_dout_31_1));

vector_muladd #(.CPF(2),
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
u_vector_muladd_32_0(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_32), 
.op_weight(op_weight[31:0]),
.op_bias(op_bias[15:0]),
.op_dout(op_dout_32_0));

vector_muladd #(.CPF(2),
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
u_vector_muladd_32_1(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_32), 
.op_weight(op_weight[63:32]),
.op_bias(op_bias[31:16]),
.op_dout(op_dout_32_1));

vector_muladd #(.CPF(2),
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
u_vector_muladd_33_0(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_33), 
.op_weight(op_weight[31:0]),
.op_bias(op_bias[15:0]),
.op_dout(op_dout_33_0));

vector_muladd #(.CPF(2),
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
u_vector_muladd_33_1(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_33), 
.op_weight(op_weight[63:32]),
.op_bias(op_bias[31:16]),
.op_dout(op_dout_33_1));

vector_muladd #(.CPF(2),
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
u_vector_muladd_34_0(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_34), 
.op_weight(op_weight[31:0]),
.op_bias(op_bias[15:0]),
.op_dout(op_dout_34_0));

vector_muladd #(.CPF(2),
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
u_vector_muladd_34_1(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_34), 
.op_weight(op_weight[63:32]),
.op_bias(op_bias[31:16]),
.op_dout(op_dout_34_1));

vector_muladd #(.CPF(2),
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
u_vector_muladd_35_0(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_35), 
.op_weight(op_weight[31:0]),
.op_bias(op_bias[15:0]),
.op_dout(op_dout_35_0));

vector_muladd #(.CPF(2),
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
u_vector_muladd_35_1(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_35), 
.op_weight(op_weight[63:32]),
.op_bias(op_bias[31:16]),
.op_dout(op_dout_35_1));

vector_muladd #(.CPF(2),
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
u_vector_muladd_36_0(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_36), 
.op_weight(op_weight[31:0]),
.op_bias(op_bias[15:0]),
.op_dout(op_dout_36_0));

vector_muladd #(.CPF(2),
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
u_vector_muladd_36_1(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_36), 
.op_weight(op_weight[63:32]),
.op_bias(op_bias[31:16]),
.op_dout(op_dout_36_1));

vector_muladd #(.CPF(2),
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
u_vector_muladd_37_0(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_37), 
.op_weight(op_weight[31:0]),
.op_bias(op_bias[15:0]),
.op_dout(op_dout_37_0));

vector_muladd #(.CPF(2),
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
u_vector_muladd_37_1(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_37), 
.op_weight(op_weight[63:32]),
.op_bias(op_bias[31:16]),
.op_dout(op_dout_37_1));

vector_muladd #(.CPF(2),
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
u_vector_muladd_38_0(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_38), 
.op_weight(op_weight[31:0]),
.op_bias(op_bias[15:0]),
.op_dout(op_dout_38_0));

vector_muladd #(.CPF(2),
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
u_vector_muladd_38_1(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_38), 
.op_weight(op_weight[63:32]),
.op_bias(op_bias[31:16]),
.op_dout(op_dout_38_1));

vector_muladd #(.CPF(2),
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
u_vector_muladd_39_0(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_39), 
.op_weight(op_weight[31:0]),
.op_bias(op_bias[15:0]),
.op_dout(op_dout_39_0));

vector_muladd #(.CPF(2),
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
u_vector_muladd_39_1(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_39), 
.op_weight(op_weight[63:32]),
.op_bias(op_bias[31:16]),
.op_dout(op_dout_39_1));

vector_muladd #(.CPF(2),
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
u_vector_muladd_40_0(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_40), 
.op_weight(op_weight[31:0]),
.op_bias(op_bias[15:0]),
.op_dout(op_dout_40_0));

vector_muladd #(.CPF(2),
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
u_vector_muladd_40_1(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_40), 
.op_weight(op_weight[63:32]),
.op_bias(op_bias[31:16]),
.op_dout(op_dout_40_1));

vector_muladd #(.CPF(2),
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
u_vector_muladd_41_0(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_41), 
.op_weight(op_weight[31:0]),
.op_bias(op_bias[15:0]),
.op_dout(op_dout_41_0));

vector_muladd #(.CPF(2),
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
u_vector_muladd_41_1(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_41), 
.op_weight(op_weight[63:32]),
.op_bias(op_bias[31:16]),
.op_dout(op_dout_41_1));

vector_muladd #(.CPF(2),
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
u_vector_muladd_42_0(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_42), 
.op_weight(op_weight[31:0]),
.op_bias(op_bias[15:0]),
.op_dout(op_dout_42_0));

vector_muladd #(.CPF(2),
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
u_vector_muladd_42_1(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_42), 
.op_weight(op_weight[63:32]),
.op_bias(op_bias[31:16]),
.op_dout(op_dout_42_1));

vector_muladd #(.CPF(2),
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
u_vector_muladd_43_0(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_43), 
.op_weight(op_weight[31:0]),
.op_bias(op_bias[15:0]),
.op_dout(op_dout_43_0));

vector_muladd #(.CPF(2),
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
u_vector_muladd_43_1(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_43), 
.op_weight(op_weight[63:32]),
.op_bias(op_bias[31:16]),
.op_dout(op_dout_43_1));

vector_muladd #(.CPF(2),
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
u_vector_muladd_44_0(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_44), 
.op_weight(op_weight[31:0]),
.op_bias(op_bias[15:0]),
.op_dout(op_dout_44_0));

vector_muladd #(.CPF(2),
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
u_vector_muladd_44_1(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_44), 
.op_weight(op_weight[63:32]),
.op_bias(op_bias[31:16]),
.op_dout(op_dout_44_1));

vector_muladd #(.CPF(2),
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
u_vector_muladd_45_0(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_45), 
.op_weight(op_weight[31:0]),
.op_bias(op_bias[15:0]),
.op_dout(op_dout_45_0));

vector_muladd #(.CPF(2),
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
u_vector_muladd_45_1(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_45), 
.op_weight(op_weight[63:32]),
.op_bias(op_bias[31:16]),
.op_dout(op_dout_45_1));

vector_muladd #(.CPF(2),
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
u_vector_muladd_46_0(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_46), 
.op_weight(op_weight[31:0]),
.op_bias(op_bias[15:0]),
.op_dout(op_dout_46_0));

vector_muladd #(.CPF(2),
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
u_vector_muladd_46_1(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_46), 
.op_weight(op_weight[63:32]),
.op_bias(op_bias[31:16]),
.op_dout(op_dout_46_1));

vector_muladd #(.CPF(2),
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
u_vector_muladd_47_0(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_47), 
.op_weight(op_weight[31:0]),
.op_bias(op_bias[15:0]),
.op_dout(op_dout_47_0));

vector_muladd #(.CPF(2),
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
u_vector_muladd_47_1(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_47), 
.op_weight(op_weight[63:32]),
.op_bias(op_bias[31:16]),
.op_dout(op_dout_47_1));

vector_muladd #(.CPF(2),
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
u_vector_muladd_48_0(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_48), 
.op_weight(op_weight[31:0]),
.op_bias(op_bias[15:0]),
.op_dout(op_dout_48_0));

vector_muladd #(.CPF(2),
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
u_vector_muladd_48_1(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_48), 
.op_weight(op_weight[63:32]),
.op_bias(op_bias[31:16]),
.op_dout(op_dout_48_1));

vector_muladd #(.CPF(2),
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
u_vector_muladd_49_0(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_49), 
.op_weight(op_weight[31:0]),
.op_bias(op_bias[15:0]),
.op_dout(op_dout_49_0));

vector_muladd #(.CPF(2),
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
u_vector_muladd_49_1(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_49), 
.op_weight(op_weight[63:32]),
.op_bias(op_bias[31:16]),
.op_dout(op_dout_49_1));

vector_muladd #(.CPF(2),
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
u_vector_muladd_50_0(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_50), 
.op_weight(op_weight[31:0]),
.op_bias(op_bias[15:0]),
.op_dout(op_dout_50_0));

vector_muladd #(.CPF(2),
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
u_vector_muladd_50_1(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_50), 
.op_weight(op_weight[63:32]),
.op_bias(op_bias[31:16]),
.op_dout(op_dout_50_1));

vector_muladd #(.CPF(2),
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
u_vector_muladd_51_0(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_51), 
.op_weight(op_weight[31:0]),
.op_bias(op_bias[15:0]),
.op_dout(op_dout_51_0));

vector_muladd #(.CPF(2),
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
u_vector_muladd_51_1(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_51), 
.op_weight(op_weight[63:32]),
.op_bias(op_bias[31:16]),
.op_dout(op_dout_51_1));

vector_muladd #(.CPF(2),
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
u_vector_muladd_52_0(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_52), 
.op_weight(op_weight[31:0]),
.op_bias(op_bias[15:0]),
.op_dout(op_dout_52_0));

vector_muladd #(.CPF(2),
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
u_vector_muladd_52_1(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_52), 
.op_weight(op_weight[63:32]),
.op_bias(op_bias[31:16]),
.op_dout(op_dout_52_1));

vector_muladd #(.CPF(2),
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
u_vector_muladd_53_0(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_53), 
.op_weight(op_weight[31:0]),
.op_bias(op_bias[15:0]),
.op_dout(op_dout_53_0));

vector_muladd #(.CPF(2),
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
u_vector_muladd_53_1(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_53), 
.op_weight(op_weight[63:32]),
.op_bias(op_bias[31:16]),
.op_dout(op_dout_53_1));

vector_muladd #(.CPF(2),
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
u_vector_muladd_54_0(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_54), 
.op_weight(op_weight[31:0]),
.op_bias(op_bias[15:0]),
.op_dout(op_dout_54_0));

vector_muladd #(.CPF(2),
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
u_vector_muladd_54_1(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_54), 
.op_weight(op_weight[63:32]),
.op_bias(op_bias[31:16]),
.op_dout(op_dout_54_1));

vector_muladd #(.CPF(2),
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
u_vector_muladd_55_0(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_55), 
.op_weight(op_weight[31:0]),
.op_bias(op_bias[15:0]),
.op_dout(op_dout_55_0));

vector_muladd #(.CPF(2),
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
u_vector_muladd_55_1(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_55), 
.op_weight(op_weight[63:32]),
.op_bias(op_bias[31:16]),
.op_dout(op_dout_55_1));

vector_muladd #(.CPF(2),
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
u_vector_muladd_56_0(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_56), 
.op_weight(op_weight[31:0]),
.op_bias(op_bias[15:0]),
.op_dout(op_dout_56_0));

vector_muladd #(.CPF(2),
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
u_vector_muladd_56_1(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_56), 
.op_weight(op_weight[63:32]),
.op_bias(op_bias[31:16]),
.op_dout(op_dout_56_1));

vector_muladd #(.CPF(2),
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
u_vector_muladd_57_0(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_57), 
.op_weight(op_weight[31:0]),
.op_bias(op_bias[15:0]),
.op_dout(op_dout_57_0));

vector_muladd #(.CPF(2),
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
u_vector_muladd_57_1(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_57), 
.op_weight(op_weight[63:32]),
.op_bias(op_bias[31:16]),
.op_dout(op_dout_57_1));

vector_muladd #(.CPF(2),
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
u_vector_muladd_58_0(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_58), 
.op_weight(op_weight[31:0]),
.op_bias(op_bias[15:0]),
.op_dout(op_dout_58_0));

vector_muladd #(.CPF(2),
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
u_vector_muladd_58_1(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_58), 
.op_weight(op_weight[63:32]),
.op_bias(op_bias[31:16]),
.op_dout(op_dout_58_1));

vector_muladd #(.CPF(2),
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
u_vector_muladd_59_0(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_59), 
.op_weight(op_weight[31:0]),
.op_bias(op_bias[15:0]),
.op_dout(op_dout_59_0));

vector_muladd #(.CPF(2),
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
u_vector_muladd_59_1(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_59), 
.op_weight(op_weight[63:32]),
.op_bias(op_bias[31:16]),
.op_dout(op_dout_59_1));

vector_muladd #(.CPF(2),
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
u_vector_muladd_60_0(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_60), 
.op_weight(op_weight[31:0]),
.op_bias(op_bias[15:0]),
.op_dout(op_dout_60_0));

vector_muladd #(.CPF(2),
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
u_vector_muladd_60_1(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_60), 
.op_weight(op_weight[63:32]),
.op_bias(op_bias[31:16]),
.op_dout(op_dout_60_1));

vector_muladd #(.CPF(2),
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
u_vector_muladd_61_0(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_61), 
.op_weight(op_weight[31:0]),
.op_bias(op_bias[15:0]),
.op_dout(op_dout_61_0));

vector_muladd #(.CPF(2),
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
u_vector_muladd_61_1(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_61), 
.op_weight(op_weight[63:32]),
.op_bias(op_bias[31:16]),
.op_dout(op_dout_61_1));

vector_muladd #(.CPF(2),
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
u_vector_muladd_62_0(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_62), 
.op_weight(op_weight[31:0]),
.op_bias(op_bias[15:0]),
.op_dout(op_dout_62_0));

vector_muladd #(.CPF(2),
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
u_vector_muladd_62_1(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_62), 
.op_weight(op_weight[63:32]),
.op_bias(op_bias[31:16]),
.op_dout(op_dout_62_1));

vector_muladd #(.CPF(2),
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
u_vector_muladd_63_0(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_63), 
.op_weight(op_weight[31:0]),
.op_bias(op_bias[15:0]),
.op_dout(op_dout_63_0));

vector_muladd #(.CPF(2),
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
u_vector_muladd_63_1(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_63), 
.op_weight(op_weight[63:32]),
.op_bias(op_bias[31:16]),
.op_dout(op_dout_63_1));

vector_muladd #(.CPF(2),
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
u_vector_muladd_64_0(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_64), 
.op_weight(op_weight[31:0]),
.op_bias(op_bias[15:0]),
.op_dout(op_dout_64_0));

vector_muladd #(.CPF(2),
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
u_vector_muladd_64_1(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_64), 
.op_weight(op_weight[63:32]),
.op_bias(op_bias[31:16]),
.op_dout(op_dout_64_1));

vector_muladd #(.CPF(2),
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
u_vector_muladd_65_0(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_65), 
.op_weight(op_weight[31:0]),
.op_bias(op_bias[15:0]),
.op_dout(op_dout_65_0));

vector_muladd #(.CPF(2),
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
u_vector_muladd_65_1(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_65), 
.op_weight(op_weight[63:32]),
.op_bias(op_bias[31:16]),
.op_dout(op_dout_65_1));

vector_muladd #(.CPF(2),
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
u_vector_muladd_66_0(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_66), 
.op_weight(op_weight[31:0]),
.op_bias(op_bias[15:0]),
.op_dout(op_dout_66_0));

vector_muladd #(.CPF(2),
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
u_vector_muladd_66_1(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_66), 
.op_weight(op_weight[63:32]),
.op_bias(op_bias[31:16]),
.op_dout(op_dout_66_1));

vector_muladd #(.CPF(2),
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
u_vector_muladd_67_0(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_67), 
.op_weight(op_weight[31:0]),
.op_bias(op_bias[15:0]),
.op_dout(op_dout_67_0));

vector_muladd #(.CPF(2),
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
u_vector_muladd_67_1(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_67), 
.op_weight(op_weight[63:32]),
.op_bias(op_bias[31:16]),
.op_dout(op_dout_67_1));

vector_muladd #(.CPF(2),
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
u_vector_muladd_68_0(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_68), 
.op_weight(op_weight[31:0]),
.op_bias(op_bias[15:0]),
.op_dout(op_dout_68_0));

vector_muladd #(.CPF(2),
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
u_vector_muladd_68_1(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_68), 
.op_weight(op_weight[63:32]),
.op_bias(op_bias[31:16]),
.op_dout(op_dout_68_1));

vector_muladd #(.CPF(2),
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
u_vector_muladd_69_0(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_69), 
.op_weight(op_weight[31:0]),
.op_bias(op_bias[15:0]),
.op_dout(op_dout_69_0));

vector_muladd #(.CPF(2),
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
u_vector_muladd_69_1(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_69), 
.op_weight(op_weight[63:32]),
.op_bias(op_bias[31:16]),
.op_dout(op_dout_69_1));

vector_muladd #(.CPF(2),
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
u_vector_muladd_70_0(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_70), 
.op_weight(op_weight[31:0]),
.op_bias(op_bias[15:0]),
.op_dout(op_dout_70_0));

vector_muladd #(.CPF(2),
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
u_vector_muladd_70_1(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_70), 
.op_weight(op_weight[63:32]),
.op_bias(op_bias[31:16]),
.op_dout(op_dout_70_1));

vector_muladd #(.CPF(2),
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
u_vector_muladd_71_0(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_71), 
.op_weight(op_weight[31:0]),
.op_bias(op_bias[15:0]),
.op_dout(op_dout_71_0));

vector_muladd #(.CPF(2),
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
u_vector_muladd_71_1(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_71), 
.op_weight(op_weight[63:32]),
.op_bias(op_bias[31:16]),
.op_dout(op_dout_71_1));

vector_muladd #(.CPF(2),
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
u_vector_muladd_72_0(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_72), 
.op_weight(op_weight[31:0]),
.op_bias(op_bias[15:0]),
.op_dout(op_dout_72_0));

vector_muladd #(.CPF(2),
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
u_vector_muladd_72_1(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_72), 
.op_weight(op_weight[63:32]),
.op_bias(op_bias[31:16]),
.op_dout(op_dout_72_1));

vector_muladd #(.CPF(2),
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
u_vector_muladd_73_0(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_73), 
.op_weight(op_weight[31:0]),
.op_bias(op_bias[15:0]),
.op_dout(op_dout_73_0));

vector_muladd #(.CPF(2),
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
u_vector_muladd_73_1(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_73), 
.op_weight(op_weight[63:32]),
.op_bias(op_bias[31:16]),
.op_dout(op_dout_73_1));

vector_muladd #(.CPF(2),
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
u_vector_muladd_74_0(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_74), 
.op_weight(op_weight[31:0]),
.op_bias(op_bias[15:0]),
.op_dout(op_dout_74_0));

vector_muladd #(.CPF(2),
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
u_vector_muladd_74_1(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_74), 
.op_weight(op_weight[63:32]),
.op_bias(op_bias[31:16]),
.op_dout(op_dout_74_1));

vector_muladd #(.CPF(2),
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
u_vector_muladd_75_0(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_75), 
.op_weight(op_weight[31:0]),
.op_bias(op_bias[15:0]),
.op_dout(op_dout_75_0));

vector_muladd #(.CPF(2),
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
u_vector_muladd_75_1(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_75), 
.op_weight(op_weight[63:32]),
.op_bias(op_bias[31:16]),
.op_dout(op_dout_75_1));

vector_muladd #(.CPF(2),
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
u_vector_muladd_76_0(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_76), 
.op_weight(op_weight[31:0]),
.op_bias(op_bias[15:0]),
.op_dout(op_dout_76_0));

vector_muladd #(.CPF(2),
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
u_vector_muladd_76_1(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_76), 
.op_weight(op_weight[63:32]),
.op_bias(op_bias[31:16]),
.op_dout(op_dout_76_1));

vector_muladd #(.CPF(2),
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
u_vector_muladd_77_0(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_77), 
.op_weight(op_weight[31:0]),
.op_bias(op_bias[15:0]),
.op_dout(op_dout_77_0));

vector_muladd #(.CPF(2),
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
u_vector_muladd_77_1(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_77), 
.op_weight(op_weight[63:32]),
.op_bias(op_bias[31:16]),
.op_dout(op_dout_77_1));

vector_muladd #(.CPF(2),
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
u_vector_muladd_78_0(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_78), 
.op_weight(op_weight[31:0]),
.op_bias(op_bias[15:0]),
.op_dout(op_dout_78_0));

vector_muladd #(.CPF(2),
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
u_vector_muladd_78_1(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_78), 
.op_weight(op_weight[63:32]),
.op_bias(op_bias[31:16]),
.op_dout(op_dout_78_1));

vector_muladd #(.CPF(2),
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
u_vector_muladd_79_0(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_79), 
.op_weight(op_weight[31:0]),
.op_bias(op_bias[15:0]),
.op_dout(op_dout_79_0));

vector_muladd #(.CPF(2),
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
u_vector_muladd_79_1(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_79), 
.op_weight(op_weight[63:32]),
.op_bias(op_bias[31:16]),
.op_dout(op_dout_79_1));

vector_muladd #(.CPF(2),
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
u_vector_muladd_80_0(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_80), 
.op_weight(op_weight[31:0]),
.op_bias(op_bias[15:0]),
.op_dout(op_dout_80_0));

vector_muladd #(.CPF(2),
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
u_vector_muladd_80_1(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_80), 
.op_weight(op_weight[63:32]),
.op_bias(op_bias[31:16]),
.op_dout(op_dout_80_1));

vector_muladd #(.CPF(2),
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
u_vector_muladd_81_0(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_81), 
.op_weight(op_weight[31:0]),
.op_bias(op_bias[15:0]),
.op_dout(op_dout_81_0));

vector_muladd #(.CPF(2),
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
u_vector_muladd_81_1(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_81), 
.op_weight(op_weight[63:32]),
.op_bias(op_bias[31:16]),
.op_dout(op_dout_81_1));

vector_muladd #(.CPF(2),
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
u_vector_muladd_82_0(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_82), 
.op_weight(op_weight[31:0]),
.op_bias(op_bias[15:0]),
.op_dout(op_dout_82_0));

vector_muladd #(.CPF(2),
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
u_vector_muladd_82_1(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_82), 
.op_weight(op_weight[63:32]),
.op_bias(op_bias[31:16]),
.op_dout(op_dout_82_1));

vector_muladd #(.CPF(2),
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
u_vector_muladd_83_0(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_83), 
.op_weight(op_weight[31:0]),
.op_bias(op_bias[15:0]),
.op_dout(op_dout_83_0));

vector_muladd #(.CPF(2),
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
u_vector_muladd_83_1(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_83), 
.op_weight(op_weight[63:32]),
.op_bias(op_bias[31:16]),
.op_dout(op_dout_83_1));

vector_muladd #(.CPF(2),
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
u_vector_muladd_84_0(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_84), 
.op_weight(op_weight[31:0]),
.op_bias(op_bias[15:0]),
.op_dout(op_dout_84_0));

vector_muladd #(.CPF(2),
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
u_vector_muladd_84_1(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_84), 
.op_weight(op_weight[63:32]),
.op_bias(op_bias[31:16]),
.op_dout(op_dout_84_1));

vector_muladd #(.CPF(2),
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
u_vector_muladd_85_0(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_85), 
.op_weight(op_weight[31:0]),
.op_bias(op_bias[15:0]),
.op_dout(op_dout_85_0));

vector_muladd #(.CPF(2),
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
u_vector_muladd_85_1(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_85), 
.op_weight(op_weight[63:32]),
.op_bias(op_bias[31:16]),
.op_dout(op_dout_85_1));

vector_muladd #(.CPF(2),
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
u_vector_muladd_86_0(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_86), 
.op_weight(op_weight[31:0]),
.op_bias(op_bias[15:0]),
.op_dout(op_dout_86_0));

vector_muladd #(.CPF(2),
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
u_vector_muladd_86_1(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_86), 
.op_weight(op_weight[63:32]),
.op_bias(op_bias[31:16]),
.op_dout(op_dout_86_1));

vector_muladd #(.CPF(2),
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
u_vector_muladd_87_0(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_87), 
.op_weight(op_weight[31:0]),
.op_bias(op_bias[15:0]),
.op_dout(op_dout_87_0));

vector_muladd #(.CPF(2),
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
u_vector_muladd_87_1(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_87), 
.op_weight(op_weight[63:32]),
.op_bias(op_bias[31:16]),
.op_dout(op_dout_87_1));

vector_muladd #(.CPF(2),
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
u_vector_muladd_88_0(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_88), 
.op_weight(op_weight[31:0]),
.op_bias(op_bias[15:0]),
.op_dout(op_dout_88_0));

vector_muladd #(.CPF(2),
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
u_vector_muladd_88_1(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_88), 
.op_weight(op_weight[63:32]),
.op_bias(op_bias[31:16]),
.op_dout(op_dout_88_1));

vector_muladd #(.CPF(2),
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
u_vector_muladd_89_0(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_89), 
.op_weight(op_weight[31:0]),
.op_bias(op_bias[15:0]),
.op_dout(op_dout_89_0));

vector_muladd #(.CPF(2),
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
u_vector_muladd_89_1(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_89), 
.op_weight(op_weight[63:32]),
.op_bias(op_bias[31:16]),
.op_dout(op_dout_89_1));

vector_muladd #(.CPF(2),
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
u_vector_muladd_90_0(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_90), 
.op_weight(op_weight[31:0]),
.op_bias(op_bias[15:0]),
.op_dout(op_dout_90_0));

vector_muladd #(.CPF(2),
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
u_vector_muladd_90_1(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_90), 
.op_weight(op_weight[63:32]),
.op_bias(op_bias[31:16]),
.op_dout(op_dout_90_1));

vector_muladd #(.CPF(2),
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
u_vector_muladd_91_0(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_91), 
.op_weight(op_weight[31:0]),
.op_bias(op_bias[15:0]),
.op_dout(op_dout_91_0));

vector_muladd #(.CPF(2),
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
u_vector_muladd_91_1(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_91), 
.op_weight(op_weight[63:32]),
.op_bias(op_bias[31:16]),
.op_dout(op_dout_91_1));

vector_muladd #(.CPF(2),
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
u_vector_muladd_92_0(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_92), 
.op_weight(op_weight[31:0]),
.op_bias(op_bias[15:0]),
.op_dout(op_dout_92_0));

vector_muladd #(.CPF(2),
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
u_vector_muladd_92_1(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_92), 
.op_weight(op_weight[63:32]),
.op_bias(op_bias[31:16]),
.op_dout(op_dout_92_1));

assign blob_dout = {op_dout_92_1,op_dout_92_0,op_dout_91_1,op_dout_91_0,op_dout_90_1,op_dout_90_0,op_dout_89_1,op_dout_89_0,op_dout_88_1,op_dout_88_0,op_dout_87_1,op_dout_87_0,op_dout_86_1,op_dout_86_0,op_dout_85_1,op_dout_85_0,op_dout_84_1,op_dout_84_0,op_dout_83_1,op_dout_83_0,op_dout_82_1,op_dout_82_0,op_dout_81_1,op_dout_81_0,op_dout_80_1,op_dout_80_0,op_dout_79_1,op_dout_79_0,op_dout_78_1,op_dout_78_0,op_dout_77_1,op_dout_77_0,op_dout_76_1,op_dout_76_0,op_dout_75_1,op_dout_75_0,op_dout_74_1,op_dout_74_0,op_dout_73_1,op_dout_73_0,op_dout_72_1,op_dout_72_0,op_dout_71_1,op_dout_71_0,op_dout_70_1,op_dout_70_0,op_dout_69_1,op_dout_69_0,op_dout_68_1,op_dout_68_0,op_dout_67_1,op_dout_67_0,op_dout_66_1,op_dout_66_0,op_dout_65_1,op_dout_65_0,op_dout_64_1,op_dout_64_0,op_dout_63_1,op_dout_63_0,op_dout_62_1,op_dout_62_0,op_dout_61_1,op_dout_61_0,op_dout_60_1,op_dout_60_0,op_dout_59_1,op_dout_59_0,op_dout_58_1,op_dout_58_0,op_dout_57_1,op_dout_57_0,op_dout_56_1,op_dout_56_0,op_dout_55_1,op_dout_55_0,op_dout_54_1,op_dout_54_0,op_dout_53_1,op_dout_53_0,op_dout_52_1,op_dout_52_0,op_dout_51_1,op_dout_51_0,op_dout_50_1,op_dout_50_0,op_dout_49_1,op_dout_49_0,op_dout_48_1,op_dout_48_0,op_dout_47_1,op_dout_47_0,op_dout_46_1,op_dout_46_0,op_dout_45_1,op_dout_45_0,op_dout_44_1,op_dout_44_0,op_dout_43_1,op_dout_43_0,op_dout_42_1,op_dout_42_0,op_dout_41_1,op_dout_41_0,op_dout_40_1,op_dout_40_0,op_dout_39_1,op_dout_39_0,op_dout_38_1,op_dout_38_0,op_dout_37_1,op_dout_37_0,op_dout_36_1,op_dout_36_0,op_dout_35_1,op_dout_35_0,op_dout_34_1,op_dout_34_0,op_dout_33_1,op_dout_33_0,op_dout_32_1,op_dout_32_0,op_dout_31_1,op_dout_31_0,op_dout_30_1,op_dout_30_0,op_dout_29_1,op_dout_29_0,op_dout_28_1,op_dout_28_0,op_dout_27_1,op_dout_27_0,op_dout_26_1,op_dout_26_0,op_dout_25_1,op_dout_25_0,op_dout_24_1,op_dout_24_0,op_dout_23_1,op_dout_23_0,op_dout_22_1,op_dout_22_0,op_dout_21_1,op_dout_21_0,op_dout_20_1,op_dout_20_0,op_dout_19_1,op_dout_19_0,op_dout_18_1,op_dout_18_0,op_dout_17_1,op_dout_17_0,op_dout_16_1,op_dout_16_0,op_dout_15_1,op_dout_15_0,op_dout_14_1,op_dout_14_0,op_dout_13_1,op_dout_13_0,op_dout_12_1,op_dout_12_0,op_dout_11_1,op_dout_11_0,op_dout_10_1,op_dout_10_0,op_dout_9_1,op_dout_9_0,op_dout_8_1,op_dout_8_0,op_dout_7_1,op_dout_7_0,op_dout_6_1,op_dout_6_0,op_dout_5_1,op_dout_5_0,op_dout_4_1,op_dout_4_0,op_dout_3_1,op_dout_3_0,op_dout_2_1,op_dout_2_0,op_dout_1_1,op_dout_1_0,op_dout_0_1,op_dout_0_0};

endmodule
