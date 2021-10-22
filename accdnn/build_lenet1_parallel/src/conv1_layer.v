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
output[5951:0]	blob_dout;
input	blob_din_eop;
input[1487:0]	blob_din;


wire[15:0]	op_dout_72_1;
wire[15:0]	op_dout_72_0;
wire[15:0]	op_dout_72_3;
wire[15:0]	op_dout_72_2;
wire[15:0]	op_dout_22_2;
wire[15:0]	op_dout_22_3;
wire[15:0]	op_dout_22_0;
wire[15:0]	op_dout_22_1;
wire[15:0]	op_dout_70_3;
wire[15:0]	op_dout_70_2;
wire[15:0]	op_dout_70_1;
wire[15:0]	op_dout_70_0;
wire[31:0]	op_data_74;
wire[31:0]	op_data_75;
wire[31:0]	op_data_76;
wire[31:0]	op_data_77;
wire[31:0]	op_data_70;
wire[31:0]	op_data_71;
wire[31:0]	op_data_72;
wire[31:0]	op_data_73;
wire[31:0]	op_data_78;
wire[31:0]	op_data_79;
wire[15:0]	op_dout_41_3;
wire[31:0]	op_data_90;
wire[15:0]	op_dout_41_0;
wire[15:0]	op_dout_76_1;
wire[15:0]	op_dout_76_0;
wire[15:0]	op_dout_76_3;
wire[15:0]	op_dout_76_2;
wire[15:0]	op_dout_74_3;
wire[15:0]	op_dout_74_2;
wire[15:0]	op_dout_74_1;
wire[15:0]	op_dout_74_0;
wire[31:0]	op_data_4;
wire[31:0]	op_data_5;
wire[31:0]	op_data_6;
wire[31:0]	op_data_7;
wire[15:0]	op_dout_18_1;
wire[31:0]	op_data_1;
wire[31:0]	op_data_2;
wire[31:0]	op_data_3;
wire[31:0]	op_data_8;
wire[31:0]	op_data_9;
wire[15:0]	op_dout_78_3;
wire[15:0]	op_dout_78_2;
wire[15:0]	op_dout_78_1;
wire[15:0]	op_dout_78_0;
wire[15:0]	op_dout_14_1;
wire[15:0]	op_dout_14_0;
wire[15:0]	op_dout_14_3;
wire[15:0]	op_dout_14_2;
wire[15:0]	op_dout_16_3;
wire[15:0]	op_dout_16_2;
wire[15:0]	op_dout_16_1;
wire[15:0]	op_dout_16_0;
wire[15:0]	op_dout_87_1;
wire[15:0]	op_dout_87_0;
wire[15:0]	op_dout_87_3;
wire[15:0]	op_dout_87_2;
wire[15:0]	op_dout_85_3;
wire[15:0]	op_dout_85_2;
wire[15:0]	op_dout_85_1;
wire[15:0]	op_dout_85_0;
wire[15:0]	op_dout_83_1;
wire[15:0]	op_dout_83_0;
wire[15:0]	op_dout_83_3;
wire[15:0]	op_dout_83_2;
wire[15:0]	op_dout_81_3;
wire[15:0]	op_dout_81_2;
wire[15:0]	op_dout_81_1;
wire[15:0]	op_dout_81_0;
wire[15:0]	op_dout_88_2;
wire[15:0]	op_dout_88_3;
wire[15:0]	op_dout_88_0;
wire[15:0]	op_dout_88_1;
wire[15:0]	op_dout_10_1;
wire[15:0]	op_dout_10_0;
wire[15:0]	op_dout_10_3;
wire[15:0]	op_dout_10_2;
wire[15:0]	op_dout_25_1;
wire[15:0]	op_dout_25_0;
wire[15:0]	op_dout_25_3;
wire[15:0]	op_dout_25_2;
wire[31:0]	op_data_34;
wire[31:0]	op_data_35;
wire[31:0]	op_data_36;
wire[31:0]	op_data_37;
wire[31:0]	op_data_38;
wire[31:0]	op_data_39;
wire[15:0]	op_dout_12_3;
wire[15:0]	op_dout_12_2;
wire[15:0]	op_dout_12_1;
wire[15:0]	op_dout_12_0;
wire[15:0]	op_dout_27_3;
wire[15:0]	op_dout_27_2;
wire[15:0]	op_dout_27_1;
wire[15:0]	op_dout_27_0;
wire[15:0]	op_dout_21_1;
wire[15:0]	op_dout_21_0;
wire[15:0]	op_dout_21_3;
wire[15:0]	op_dout_21_2;
wire[15:0]	op_dout_23_3;
wire[15:0]	op_dout_23_2;
wire[15:0]	op_dout_23_1;
wire[15:0]	op_dout_23_0;
wire	rm_wr_en;
wire[15:0]	op_dout_29_1;
wire[15:0]	op_dout_29_0;
wire[15:0]	op_dout_29_3;
wire[15:0]	op_dout_29_2;
wire[3:0]	double_buf_wr_addr;
wire[15:0]	op_dout_89_1;
wire[15:0]	op_dout_80_2;
wire[15:0]	op_dout_80_3;
wire[15:0]	op_dout_80_0;
wire[15:0]	op_dout_80_1;
wire[15:0]	op_dout_47_1;
wire[15:0]	op_dout_47_0;
wire[15:0]	op_dout_47_3;
wire[15:0]	op_dout_47_2;
wire[15:0]	op_dout_86_0;
wire[15:0]	op_dout_86_1;
wire[15:0]	op_dout_86_2;
wire[15:0]	op_dout_86_3;
wire[31:0]	op_data_69;
wire[31:0]	op_data_68;
wire[31:0]	op_data_63;
wire[15:0]	op_dout_45_2;
wire[31:0]	op_data_61;
wire[31:0]	op_data_60;
wire[31:0]	op_data_67;
wire[31:0]	op_data_66;
wire[31:0]	op_data_65;
wire[31:0]	op_data_64;
wire[15:0]	op_dout_82_0;
wire[15:0]	op_dout_82_1;
wire[15:0]	op_dout_82_2;
wire[15:0]	op_dout_82_3;
wire[7:0]	rm_rd_addr;
wire[15:0]	op_dout_49_3;
wire[15:0]	op_dout_49_2;
wire[15:0]	op_dout_49_1;
wire[15:0]	op_dout_49_0;
wire[15:0]	op_dout_89_3;
wire[15:0]	op_dout_89_2;
wire[15:0]	op_dout_45_0;
wire[15:0]	op_dout_89_0;
wire[15:0]	op_dout_43_1;
wire[15:0]	op_dout_43_0;
wire[15:0]	op_dout_43_3;
wire[15:0]	op_dout_43_2;
wire[31:0]	op_data_92;
wire[15:0]	op_dout_41_2;
wire[15:0]	op_dout_41_1;
wire[31:0]	op_data_91;
wire[15:0]	op_dout_61_1;
wire[15:0]	op_dout_61_0;
wire[15:0]	op_dout_61_3;
wire[15:0]	op_dout_61_2;
wire[15:0]	op_dout_63_3;
wire[15:0]	op_dout_63_2;
wire[15:0]	op_dout_63_1;
wire[15:0]	op_dout_63_0;
wire[31:0]	op_data_0;
wire[15:0]	op_dout_18_0;
wire[15:0]	op_dout_69_1;
wire[15:0]	op_dout_69_0;
wire[15:0]	op_dout_69_3;
wire[15:0]	op_dout_69_2;
wire[15:0]	op_dout_18_3;
wire[15:0]	op_dout_18_2;
wire[15:0]	op_dout_65_1;
wire[15:0]	op_dout_65_0;
wire[15:0]	op_dout_65_3;
wire[15:0]	op_dout_65_2;
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
wire[15:0]	op_dout_67_3;
wire[15:0]	op_dout_67_2;
wire[15:0]	op_dout_67_1;
wire[15:0]	op_dout_67_0;
wire[15:0]	op_dout_30_3;
wire[15:0]	op_dout_30_2;
wire[15:0]	op_dout_30_1;
wire[15:0]	op_dout_30_0;
wire[15:0]	op_dout_36_1;
wire[15:0]	op_dout_36_0;
wire[15:0]	op_dout_36_3;
wire[15:0]	op_dout_36_2;
wire	op_din_eop;
wire[8:0]	rm_wr_addr;
wire[31:0]	op_data_52;
wire[31:0]	op_data_53;
wire[31:0]	op_data_50;
wire[31:0]	op_data_51;
wire[31:0]	op_data_56;
wire[31:0]	op_data_57;
wire[31:0]	op_data_54;
wire[31:0]	op_data_55;
wire[31:0]	op_data_58;
wire[31:0]	op_data_59;
wire	op_din_en;
wire[15:0]	op_dout_34_3;
wire[15:0]	op_dout_34_2;
wire[15:0]	op_dout_34_1;
wire[15:0]	op_dout_34_0;
wire[15:0]	op_dout_46_0;
wire[15:0]	op_dout_46_1;
wire[15:0]	op_dout_46_2;
wire[15:0]	op_dout_46_3;
wire[15:0]	op_dout_44_2;
wire[15:0]	op_dout_44_3;
wire[15:0]	op_dout_44_0;
wire[15:0]	op_dout_44_1;
wire[15:0]	op_dout_32_0;
wire[15:0]	op_dout_38_3;
wire[15:0]	op_dout_38_2;
wire[15:0]	op_dout_38_1;
wire[15:0]	op_dout_38_0;
wire[15:0]	op_dout_32_2;
wire[15:0]	op_dout_68_3;
wire[15:0]	op_dout_42_0;
wire[15:0]	op_dout_42_1;
wire[15:0]	op_dout_42_2;
wire[15:0]	op_dout_42_3;
wire[5:0]	double_buf_rd_addr;
wire[15:0]	op_dout_40_2;
wire[15:0]	op_dout_40_3;
wire[15:0]	op_dout_40_0;
wire[15:0]	op_dout_40_1;
wire[15:0]	op_dout_48_2;
wire[15:0]	op_dout_48_3;
wire[15:0]	op_dout_48_0;
wire[15:0]	op_dout_48_1;
wire[15:0]	op_dout_6_1;
wire[15:0]	op_dout_6_0;
wire[15:0]	op_dout_6_3;
wire[15:0]	op_dout_6_2;
wire[15:0]	op_dout_0_3;
wire[15:0]	op_dout_0_2;
wire[15:0]	op_dout_0_1;
wire[15:0]	op_dout_0_0;
wire[15:0]	op_dout_60_0;
wire[15:0]	op_dout_60_1;
wire[15:0]	op_dout_60_2;
wire[15:0]	op_dout_60_3;
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
wire[15:0]	op_dout_68_0;
wire[15:0]	op_dout_68_1;
wire[15:0]	op_dout_68_2;
wire[15:0]	op_dout_62_1;
wire[15:0]	op_dout_91_0;
wire[15:0]	op_dout_91_1;
wire[15:0]	op_dout_91_2;
wire[15:0]	op_dout_91_3;
wire[15:0]	op_dout_4_3;
wire[15:0]	op_dout_4_2;
wire[15:0]	op_dout_4_1;
wire[15:0]	op_dout_4_0;
wire[15:0]	op_dout_62_2;
wire[15:0]	op_dout_62_3;
wire[15:0]	op_dout_62_0;
wire[127:0]	op_weight;
wire[15:0]	op_dout_64_0;
wire[15:0]	op_dout_64_1;
wire[15:0]	op_dout_64_2;
wire[15:0]	op_dout_64_3;
wire[15:0]	op_dout_33_0;
wire[15:0]	op_dout_9_3;
wire[15:0]	op_dout_9_0;
wire[15:0]	op_dout_9_1;
wire[15:0]	op_dout_66_2;
wire[15:0]	op_dout_66_3;
wire[15:0]	op_dout_66_0;
wire[15:0]	op_dout_66_1;
wire[15:0]	op_dout_31_2;
wire[15:0]	op_dout_31_3;
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
wire[15:0]	op_dout_37_0;
wire[31:0]	op_data_88;
wire[15:0]	op_dout_37_2;
wire[15:0]	op_dout_37_3;
wire[15:0]	op_dout_9_2;
wire[15:0]	op_dout_33_1;
wire[15:0]	op_dout_54_1;
wire[15:0]	op_dout_33_2;
wire[15:0]	op_dout_54_0;
wire[15:0]	op_dout_33_3;
wire[15:0]	op_dout_17_0;
wire[15:0]	op_dout_17_1;
wire[15:0]	op_dout_3_0;
wire[15:0]	op_dout_3_1;
wire[15:0]	op_dout_3_2;
wire[15:0]	op_dout_3_3;
wire[63:0]	op_bias;
wire[15:0]	op_dout_35_2;
wire[15:0]	op_dout_35_3;
wire[15:0]	op_dout_35_0;
wire[15:0]	op_dout_35_1;
wire[15:0]	op_dout_92_0;
wire[15:0]	op_dout_39_2;
wire[15:0]	op_dout_39_3;
wire[15:0]	op_dout_39_0;
wire[15:0]	op_dout_39_1;
wire[15:0]	op_dout_32_1;
wire[15:0]	op_dout_24_0;
wire[15:0]	op_dout_56_2;
wire[15:0]	op_dout_56_1;
wire[15:0]	op_dout_56_0;
wire[15:0]	op_dout_32_3;
wire[15:0]	op_dout_7_0;
wire[15:0]	op_dout_7_1;
wire[15:0]	op_dout_7_2;
wire[15:0]	op_dout_7_3;
wire[15:0]	op_dout_1_2;
wire[15:0]	op_dout_1_3;
wire[15:0]	op_dout_1_0;
wire[15:0]	op_dout_1_1;
wire[31:0]	op_data_41;
wire[31:0]	op_data_40;
wire[31:0]	op_data_43;
wire[31:0]	op_data_42;
wire[31:0]	op_data_45;
wire[31:0]	op_data_44;
wire[31:0]	op_data_47;
wire[31:0]	op_data_46;
wire[31:0]	op_data_49;
wire[31:0]	op_data_89;
wire[15:0]	op_dout_37_1;
wire[15:0]	op_dout_58_1;
wire[15:0]	op_dout_13_3;
wire[15:0]	op_dout_13_0;
wire[15:0]	op_dout_58_2;
wire[15:0]	op_dout_55_0;
wire[15:0]	op_dout_55_1;
wire[15:0]	op_dout_55_2;
wire[15:0]	op_dout_55_3;
wire[15:0]	op_dout_45_3;
wire[15:0]	op_dout_26_0;
wire[31:0]	op_data_62;
wire[15:0]	op_dout_45_1;
wire[15:0]	op_dout_57_2;
wire[15:0]	op_dout_57_3;
wire[15:0]	op_dout_57_0;
wire[15:0]	op_dout_57_1;
wire[15:0]	op_dout_90_1;
wire[15:0]	op_dout_90_0;
wire[15:0]	op_dout_90_3;
wire[15:0]	op_dout_90_2;
wire[15:0]	op_dout_84_2;
wire[15:0]	op_dout_84_3;
wire[15:0]	op_dout_59_0;
wire[15:0]	op_dout_59_1;
wire[15:0]	op_dout_59_2;
wire[15:0]	op_dout_59_3;
wire[15:0]	op_dout_5_2;
wire[15:0]	op_dout_5_3;
wire[15:0]	op_dout_5_0;
wire[15:0]	op_dout_5_1;
wire[15:0]	op_dout_92_3;
wire[15:0]	op_dout_92_2;
wire[15:0]	op_dout_92_1;
wire[15:0]	op_dout_84_1;
wire[15:0]	op_dout_8_3;
wire[15:0]	op_dout_8_2;
wire[15:0]	op_dout_8_1;
wire[15:0]	op_dout_8_0;
wire[31:0]	op_data_31;
wire[15:0]	op_dout_51_0;
wire[15:0]	op_dout_51_1;
wire[15:0]	op_dout_51_2;
wire[15:0]	op_dout_51_3;
wire[31:0]	op_data_32;
wire[31:0]	op_data_33;
wire[15:0]	op_dout_53_2;
wire[15:0]	op_dout_53_3;
wire[15:0]	op_dout_53_0;
wire[15:0]	op_dout_53_1;
wire[15:0]	op_dout_73_0;
wire[15:0]	op_dout_73_1;
wire[15:0]	op_dout_73_2;
wire[15:0]	op_dout_73_3;
wire	double_buf_wr_en;
wire[15:0]	op_dout_84_0;
wire[15:0]	op_dout_71_2;
wire[15:0]	op_dout_71_3;
wire[15:0]	op_dout_71_0;
wire[15:0]	op_dout_71_1;
wire[15:0]	op_dout_2_1;
wire[15:0]	op_dout_2_0;
wire[15:0]	op_dout_2_3;
wire[15:0]	op_dout_2_2;
wire	bm_rd_addr;
wire[31:0]	op_data_48;
wire[15:0]	op_dout_77_0;
wire[15:0]	op_dout_77_1;
wire[15:0]	op_dout_77_2;
wire[15:0]	op_dout_77_3;
wire[15:0]	op_dout_75_2;
wire[15:0]	op_dout_75_3;
wire[15:0]	op_dout_75_0;
wire[15:0]	op_dout_75_1;
wire[15:0]	op_dout_19_0;
wire[15:0]	op_dout_19_1;
wire[15:0]	op_dout_19_2;
wire[15:0]	op_dout_19_3;
wire[15:0]	op_dout_79_2;
wire[15:0]	op_dout_79_3;
wire[15:0]	op_dout_79_0;
wire[15:0]	op_dout_79_1;
wire[15:0]	op_dout_15_0;
wire[15:0]	op_dout_15_1;
wire[15:0]	op_dout_15_2;
wire[15:0]	op_dout_15_3;
wire[15:0]	op_dout_17_2;
wire[15:0]	op_dout_17_3;
wire[15:0]	op_dout_54_3;
wire[15:0]	op_dout_54_2;
wire[15:0]	op_dout_11_0;
wire[15:0]	op_dout_11_1;
wire[15:0]	op_dout_11_2;
wire[15:0]	op_dout_11_3;
wire[15:0]	op_dout_56_3;
wire[15:0]	op_dout_24_1;
wire[15:0]	op_dout_24_2;
wire[15:0]	op_dout_24_3;
wire[15:0]	op_dout_13_2;
wire[15:0]	op_dout_58_0;
wire[15:0]	op_dout_58_3;
wire[15:0]	op_dout_13_1;
wire[15:0]	op_dout_26_2;
wire[15:0]	op_dout_26_3;
wire[31:0]	op_data_30;
wire[15:0]	op_dout_26_1;
wire[15:0]	op_dout_20_0;
wire[15:0]	op_dout_20_1;
wire[15:0]	op_dout_20_2;
wire[15:0]	op_dout_20_3;
wire[15:0]	op_dout_28_0;
wire[15:0]	op_dout_28_1;
wire[15:0]	op_dout_28_2;
wire[15:0]	op_dout_28_3;
wire[15:0]	op_dout_50_1;
wire[15:0]	op_dout_50_0;
wire[15:0]	op_dout_50_3;
wire[15:0]	op_dout_50_2;
wire[15:0]	op_dout_52_3;
wire[15:0]	op_dout_52_2;
wire[15:0]	op_dout_52_1;
wire[15:0]	op_dout_52_0;


controller_v2 #(
.DB_W_IN (28),
.DB_H_IN (28),
.DB_C_IN (2),
.DB_W_OUT (24),
.DB_H_OUT (24),
.DB_C_OUT (4),
.WB_W (5),
.WB_H (5),
.WB_C (2),
.WB_K (4),
.GROUP (1),
.RM_WR_ADDR_WIDTH (9),
.RM_WR_NUM_PER_CHANNEL (2),
.RM_WR_STRIDE (1),
.RM_RING_LENGTH (6),
.RM_RD_PHY_ADDR_JUMP (5),
.RM_RD_ADDR_WIDTH (8),
.DOUBLE_BUF_WR_DEPTH (14),
.DOUBLE_BUF_RD_DEPTH (56),
.DOUBLE_BUF_WR_ADDR_WIDTH (4),
.DOUBLE_BUF_RD_ADDR_WIDTH (6),
.START_ADDR (0),
.LENGTH (7),
.BM_RD_ADDR_WIDTH (1),
.CPF (2),
.KPF (4),
.STRIDE_H (1),
.STRIDE_W (1),
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

conv1_rm_ram u_conv1_rm_ram_0(
.clka(clk),
.wea(rm_wr_en),
.addra(rm_wr_addr),
.dina(blob_din[15:0]),
.clkb(clk),
.addrb(rm_rd_addr),
.doutb(op_data_0));

conv1_rm_ram u_conv1_rm_ram_1(
.clka(clk),
.wea(rm_wr_en),
.addra(rm_wr_addr),
.dina(blob_din[31:16]),
.clkb(clk),
.addrb(rm_rd_addr),
.doutb(op_data_1));

conv1_rm_ram u_conv1_rm_ram_2(
.clka(clk),
.wea(rm_wr_en),
.addra(rm_wr_addr),
.dina(blob_din[47:32]),
.clkb(clk),
.addrb(rm_rd_addr),
.doutb(op_data_2));

conv1_rm_ram u_conv1_rm_ram_3(
.clka(clk),
.wea(rm_wr_en),
.addra(rm_wr_addr),
.dina(blob_din[63:48]),
.clkb(clk),
.addrb(rm_rd_addr),
.doutb(op_data_3));

conv1_rm_ram u_conv1_rm_ram_4(
.clka(clk),
.wea(rm_wr_en),
.addra(rm_wr_addr),
.dina(blob_din[79:64]),
.clkb(clk),
.addrb(rm_rd_addr),
.doutb(op_data_4));

conv1_rm_ram u_conv1_rm_ram_5(
.clka(clk),
.wea(rm_wr_en),
.addra(rm_wr_addr),
.dina(blob_din[95:80]),
.clkb(clk),
.addrb(rm_rd_addr),
.doutb(op_data_5));

conv1_rm_ram u_conv1_rm_ram_6(
.clka(clk),
.wea(rm_wr_en),
.addra(rm_wr_addr),
.dina(blob_din[111:96]),
.clkb(clk),
.addrb(rm_rd_addr),
.doutb(op_data_6));

conv1_rm_ram u_conv1_rm_ram_7(
.clka(clk),
.wea(rm_wr_en),
.addra(rm_wr_addr),
.dina(blob_din[127:112]),
.clkb(clk),
.addrb(rm_rd_addr),
.doutb(op_data_7));

conv1_rm_ram u_conv1_rm_ram_8(
.clka(clk),
.wea(rm_wr_en),
.addra(rm_wr_addr),
.dina(blob_din[143:128]),
.clkb(clk),
.addrb(rm_rd_addr),
.doutb(op_data_8));

conv1_rm_ram u_conv1_rm_ram_9(
.clka(clk),
.wea(rm_wr_en),
.addra(rm_wr_addr),
.dina(blob_din[159:144]),
.clkb(clk),
.addrb(rm_rd_addr),
.doutb(op_data_9));

conv1_rm_ram u_conv1_rm_ram_10(
.clka(clk),
.wea(rm_wr_en),
.addra(rm_wr_addr),
.dina(blob_din[175:160]),
.clkb(clk),
.addrb(rm_rd_addr),
.doutb(op_data_10));

conv1_rm_ram u_conv1_rm_ram_11(
.clka(clk),
.wea(rm_wr_en),
.addra(rm_wr_addr),
.dina(blob_din[191:176]),
.clkb(clk),
.addrb(rm_rd_addr),
.doutb(op_data_11));

conv1_rm_ram u_conv1_rm_ram_12(
.clka(clk),
.wea(rm_wr_en),
.addra(rm_wr_addr),
.dina(blob_din[207:192]),
.clkb(clk),
.addrb(rm_rd_addr),
.doutb(op_data_12));

conv1_rm_ram u_conv1_rm_ram_13(
.clka(clk),
.wea(rm_wr_en),
.addra(rm_wr_addr),
.dina(blob_din[223:208]),
.clkb(clk),
.addrb(rm_rd_addr),
.doutb(op_data_13));

conv1_rm_ram u_conv1_rm_ram_14(
.clka(clk),
.wea(rm_wr_en),
.addra(rm_wr_addr),
.dina(blob_din[239:224]),
.clkb(clk),
.addrb(rm_rd_addr),
.doutb(op_data_14));

conv1_rm_ram u_conv1_rm_ram_15(
.clka(clk),
.wea(rm_wr_en),
.addra(rm_wr_addr),
.dina(blob_din[255:240]),
.clkb(clk),
.addrb(rm_rd_addr),
.doutb(op_data_15));

conv1_rm_ram u_conv1_rm_ram_16(
.clka(clk),
.wea(rm_wr_en),
.addra(rm_wr_addr),
.dina(blob_din[271:256]),
.clkb(clk),
.addrb(rm_rd_addr),
.doutb(op_data_16));

conv1_rm_ram u_conv1_rm_ram_17(
.clka(clk),
.wea(rm_wr_en),
.addra(rm_wr_addr),
.dina(blob_din[287:272]),
.clkb(clk),
.addrb(rm_rd_addr),
.doutb(op_data_17));

conv1_rm_ram u_conv1_rm_ram_18(
.clka(clk),
.wea(rm_wr_en),
.addra(rm_wr_addr),
.dina(blob_din[303:288]),
.clkb(clk),
.addrb(rm_rd_addr),
.doutb(op_data_18));

conv1_rm_ram u_conv1_rm_ram_19(
.clka(clk),
.wea(rm_wr_en),
.addra(rm_wr_addr),
.dina(blob_din[319:304]),
.clkb(clk),
.addrb(rm_rd_addr),
.doutb(op_data_19));

conv1_rm_ram u_conv1_rm_ram_20(
.clka(clk),
.wea(rm_wr_en),
.addra(rm_wr_addr),
.dina(blob_din[335:320]),
.clkb(clk),
.addrb(rm_rd_addr),
.doutb(op_data_20));

conv1_rm_ram u_conv1_rm_ram_21(
.clka(clk),
.wea(rm_wr_en),
.addra(rm_wr_addr),
.dina(blob_din[351:336]),
.clkb(clk),
.addrb(rm_rd_addr),
.doutb(op_data_21));

conv1_rm_ram u_conv1_rm_ram_22(
.clka(clk),
.wea(rm_wr_en),
.addra(rm_wr_addr),
.dina(blob_din[367:352]),
.clkb(clk),
.addrb(rm_rd_addr),
.doutb(op_data_22));

conv1_rm_ram u_conv1_rm_ram_23(
.clka(clk),
.wea(rm_wr_en),
.addra(rm_wr_addr),
.dina(blob_din[383:368]),
.clkb(clk),
.addrb(rm_rd_addr),
.doutb(op_data_23));

conv1_rm_ram u_conv1_rm_ram_24(
.clka(clk),
.wea(rm_wr_en),
.addra(rm_wr_addr),
.dina(blob_din[399:384]),
.clkb(clk),
.addrb(rm_rd_addr),
.doutb(op_data_24));

conv1_rm_ram u_conv1_rm_ram_25(
.clka(clk),
.wea(rm_wr_en),
.addra(rm_wr_addr),
.dina(blob_din[415:400]),
.clkb(clk),
.addrb(rm_rd_addr),
.doutb(op_data_25));

conv1_rm_ram u_conv1_rm_ram_26(
.clka(clk),
.wea(rm_wr_en),
.addra(rm_wr_addr),
.dina(blob_din[431:416]),
.clkb(clk),
.addrb(rm_rd_addr),
.doutb(op_data_26));

conv1_rm_ram u_conv1_rm_ram_27(
.clka(clk),
.wea(rm_wr_en),
.addra(rm_wr_addr),
.dina(blob_din[447:432]),
.clkb(clk),
.addrb(rm_rd_addr),
.doutb(op_data_27));

conv1_rm_ram u_conv1_rm_ram_28(
.clka(clk),
.wea(rm_wr_en),
.addra(rm_wr_addr),
.dina(blob_din[463:448]),
.clkb(clk),
.addrb(rm_rd_addr),
.doutb(op_data_28));

conv1_rm_ram u_conv1_rm_ram_29(
.clka(clk),
.wea(rm_wr_en),
.addra(rm_wr_addr),
.dina(blob_din[479:464]),
.clkb(clk),
.addrb(rm_rd_addr),
.doutb(op_data_29));

conv1_rm_ram u_conv1_rm_ram_30(
.clka(clk),
.wea(rm_wr_en),
.addra(rm_wr_addr),
.dina(blob_din[495:480]),
.clkb(clk),
.addrb(rm_rd_addr),
.doutb(op_data_30));

conv1_rm_ram u_conv1_rm_ram_31(
.clka(clk),
.wea(rm_wr_en),
.addra(rm_wr_addr),
.dina(blob_din[511:496]),
.clkb(clk),
.addrb(rm_rd_addr),
.doutb(op_data_31));

conv1_rm_ram u_conv1_rm_ram_32(
.clka(clk),
.wea(rm_wr_en),
.addra(rm_wr_addr),
.dina(blob_din[527:512]),
.clkb(clk),
.addrb(rm_rd_addr),
.doutb(op_data_32));

conv1_rm_ram u_conv1_rm_ram_33(
.clka(clk),
.wea(rm_wr_en),
.addra(rm_wr_addr),
.dina(blob_din[543:528]),
.clkb(clk),
.addrb(rm_rd_addr),
.doutb(op_data_33));

conv1_rm_ram u_conv1_rm_ram_34(
.clka(clk),
.wea(rm_wr_en),
.addra(rm_wr_addr),
.dina(blob_din[559:544]),
.clkb(clk),
.addrb(rm_rd_addr),
.doutb(op_data_34));

conv1_rm_ram u_conv1_rm_ram_35(
.clka(clk),
.wea(rm_wr_en),
.addra(rm_wr_addr),
.dina(blob_din[575:560]),
.clkb(clk),
.addrb(rm_rd_addr),
.doutb(op_data_35));

conv1_rm_ram u_conv1_rm_ram_36(
.clka(clk),
.wea(rm_wr_en),
.addra(rm_wr_addr),
.dina(blob_din[591:576]),
.clkb(clk),
.addrb(rm_rd_addr),
.doutb(op_data_36));

conv1_rm_ram u_conv1_rm_ram_37(
.clka(clk),
.wea(rm_wr_en),
.addra(rm_wr_addr),
.dina(blob_din[607:592]),
.clkb(clk),
.addrb(rm_rd_addr),
.doutb(op_data_37));

conv1_rm_ram u_conv1_rm_ram_38(
.clka(clk),
.wea(rm_wr_en),
.addra(rm_wr_addr),
.dina(blob_din[623:608]),
.clkb(clk),
.addrb(rm_rd_addr),
.doutb(op_data_38));

conv1_rm_ram u_conv1_rm_ram_39(
.clka(clk),
.wea(rm_wr_en),
.addra(rm_wr_addr),
.dina(blob_din[639:624]),
.clkb(clk),
.addrb(rm_rd_addr),
.doutb(op_data_39));

conv1_rm_ram u_conv1_rm_ram_40(
.clka(clk),
.wea(rm_wr_en),
.addra(rm_wr_addr),
.dina(blob_din[655:640]),
.clkb(clk),
.addrb(rm_rd_addr),
.doutb(op_data_40));

conv1_rm_ram u_conv1_rm_ram_41(
.clka(clk),
.wea(rm_wr_en),
.addra(rm_wr_addr),
.dina(blob_din[671:656]),
.clkb(clk),
.addrb(rm_rd_addr),
.doutb(op_data_41));

conv1_rm_ram u_conv1_rm_ram_42(
.clka(clk),
.wea(rm_wr_en),
.addra(rm_wr_addr),
.dina(blob_din[687:672]),
.clkb(clk),
.addrb(rm_rd_addr),
.doutb(op_data_42));

conv1_rm_ram u_conv1_rm_ram_43(
.clka(clk),
.wea(rm_wr_en),
.addra(rm_wr_addr),
.dina(blob_din[703:688]),
.clkb(clk),
.addrb(rm_rd_addr),
.doutb(op_data_43));

conv1_rm_ram u_conv1_rm_ram_44(
.clka(clk),
.wea(rm_wr_en),
.addra(rm_wr_addr),
.dina(blob_din[719:704]),
.clkb(clk),
.addrb(rm_rd_addr),
.doutb(op_data_44));

conv1_rm_ram u_conv1_rm_ram_45(
.clka(clk),
.wea(rm_wr_en),
.addra(rm_wr_addr),
.dina(blob_din[735:720]),
.clkb(clk),
.addrb(rm_rd_addr),
.doutb(op_data_45));

conv1_rm_ram u_conv1_rm_ram_46(
.clka(clk),
.wea(rm_wr_en),
.addra(rm_wr_addr),
.dina(blob_din[751:736]),
.clkb(clk),
.addrb(rm_rd_addr),
.doutb(op_data_46));

conv1_rm_ram u_conv1_rm_ram_47(
.clka(clk),
.wea(rm_wr_en),
.addra(rm_wr_addr),
.dina(blob_din[767:752]),
.clkb(clk),
.addrb(rm_rd_addr),
.doutb(op_data_47));

conv1_rm_ram u_conv1_rm_ram_48(
.clka(clk),
.wea(rm_wr_en),
.addra(rm_wr_addr),
.dina(blob_din[783:768]),
.clkb(clk),
.addrb(rm_rd_addr),
.doutb(op_data_48));

conv1_rm_ram u_conv1_rm_ram_49(
.clka(clk),
.wea(rm_wr_en),
.addra(rm_wr_addr),
.dina(blob_din[799:784]),
.clkb(clk),
.addrb(rm_rd_addr),
.doutb(op_data_49));

conv1_rm_ram u_conv1_rm_ram_50(
.clka(clk),
.wea(rm_wr_en),
.addra(rm_wr_addr),
.dina(blob_din[815:800]),
.clkb(clk),
.addrb(rm_rd_addr),
.doutb(op_data_50));

conv1_rm_ram u_conv1_rm_ram_51(
.clka(clk),
.wea(rm_wr_en),
.addra(rm_wr_addr),
.dina(blob_din[831:816]),
.clkb(clk),
.addrb(rm_rd_addr),
.doutb(op_data_51));

conv1_rm_ram u_conv1_rm_ram_52(
.clka(clk),
.wea(rm_wr_en),
.addra(rm_wr_addr),
.dina(blob_din[847:832]),
.clkb(clk),
.addrb(rm_rd_addr),
.doutb(op_data_52));

conv1_rm_ram u_conv1_rm_ram_53(
.clka(clk),
.wea(rm_wr_en),
.addra(rm_wr_addr),
.dina(blob_din[863:848]),
.clkb(clk),
.addrb(rm_rd_addr),
.doutb(op_data_53));

conv1_rm_ram u_conv1_rm_ram_54(
.clka(clk),
.wea(rm_wr_en),
.addra(rm_wr_addr),
.dina(blob_din[879:864]),
.clkb(clk),
.addrb(rm_rd_addr),
.doutb(op_data_54));

conv1_rm_ram u_conv1_rm_ram_55(
.clka(clk),
.wea(rm_wr_en),
.addra(rm_wr_addr),
.dina(blob_din[895:880]),
.clkb(clk),
.addrb(rm_rd_addr),
.doutb(op_data_55));

conv1_rm_ram u_conv1_rm_ram_56(
.clka(clk),
.wea(rm_wr_en),
.addra(rm_wr_addr),
.dina(blob_din[911:896]),
.clkb(clk),
.addrb(rm_rd_addr),
.doutb(op_data_56));

conv1_rm_ram u_conv1_rm_ram_57(
.clka(clk),
.wea(rm_wr_en),
.addra(rm_wr_addr),
.dina(blob_din[927:912]),
.clkb(clk),
.addrb(rm_rd_addr),
.doutb(op_data_57));

conv1_rm_ram u_conv1_rm_ram_58(
.clka(clk),
.wea(rm_wr_en),
.addra(rm_wr_addr),
.dina(blob_din[943:928]),
.clkb(clk),
.addrb(rm_rd_addr),
.doutb(op_data_58));

conv1_rm_ram u_conv1_rm_ram_59(
.clka(clk),
.wea(rm_wr_en),
.addra(rm_wr_addr),
.dina(blob_din[959:944]),
.clkb(clk),
.addrb(rm_rd_addr),
.doutb(op_data_59));

conv1_rm_ram u_conv1_rm_ram_60(
.clka(clk),
.wea(rm_wr_en),
.addra(rm_wr_addr),
.dina(blob_din[975:960]),
.clkb(clk),
.addrb(rm_rd_addr),
.doutb(op_data_60));

conv1_rm_ram u_conv1_rm_ram_61(
.clka(clk),
.wea(rm_wr_en),
.addra(rm_wr_addr),
.dina(blob_din[991:976]),
.clkb(clk),
.addrb(rm_rd_addr),
.doutb(op_data_61));

conv1_rm_ram u_conv1_rm_ram_62(
.clka(clk),
.wea(rm_wr_en),
.addra(rm_wr_addr),
.dina(blob_din[1007:992]),
.clkb(clk),
.addrb(rm_rd_addr),
.doutb(op_data_62));

conv1_rm_ram u_conv1_rm_ram_63(
.clka(clk),
.wea(rm_wr_en),
.addra(rm_wr_addr),
.dina(blob_din[1023:1008]),
.clkb(clk),
.addrb(rm_rd_addr),
.doutb(op_data_63));

conv1_rm_ram u_conv1_rm_ram_64(
.clka(clk),
.wea(rm_wr_en),
.addra(rm_wr_addr),
.dina(blob_din[1039:1024]),
.clkb(clk),
.addrb(rm_rd_addr),
.doutb(op_data_64));

conv1_rm_ram u_conv1_rm_ram_65(
.clka(clk),
.wea(rm_wr_en),
.addra(rm_wr_addr),
.dina(blob_din[1055:1040]),
.clkb(clk),
.addrb(rm_rd_addr),
.doutb(op_data_65));

conv1_rm_ram u_conv1_rm_ram_66(
.clka(clk),
.wea(rm_wr_en),
.addra(rm_wr_addr),
.dina(blob_din[1071:1056]),
.clkb(clk),
.addrb(rm_rd_addr),
.doutb(op_data_66));

conv1_rm_ram u_conv1_rm_ram_67(
.clka(clk),
.wea(rm_wr_en),
.addra(rm_wr_addr),
.dina(blob_din[1087:1072]),
.clkb(clk),
.addrb(rm_rd_addr),
.doutb(op_data_67));

conv1_rm_ram u_conv1_rm_ram_68(
.clka(clk),
.wea(rm_wr_en),
.addra(rm_wr_addr),
.dina(blob_din[1103:1088]),
.clkb(clk),
.addrb(rm_rd_addr),
.doutb(op_data_68));

conv1_rm_ram u_conv1_rm_ram_69(
.clka(clk),
.wea(rm_wr_en),
.addra(rm_wr_addr),
.dina(blob_din[1119:1104]),
.clkb(clk),
.addrb(rm_rd_addr),
.doutb(op_data_69));

conv1_rm_ram u_conv1_rm_ram_70(
.clka(clk),
.wea(rm_wr_en),
.addra(rm_wr_addr),
.dina(blob_din[1135:1120]),
.clkb(clk),
.addrb(rm_rd_addr),
.doutb(op_data_70));

conv1_rm_ram u_conv1_rm_ram_71(
.clka(clk),
.wea(rm_wr_en),
.addra(rm_wr_addr),
.dina(blob_din[1151:1136]),
.clkb(clk),
.addrb(rm_rd_addr),
.doutb(op_data_71));

conv1_rm_ram u_conv1_rm_ram_72(
.clka(clk),
.wea(rm_wr_en),
.addra(rm_wr_addr),
.dina(blob_din[1167:1152]),
.clkb(clk),
.addrb(rm_rd_addr),
.doutb(op_data_72));

conv1_rm_ram u_conv1_rm_ram_73(
.clka(clk),
.wea(rm_wr_en),
.addra(rm_wr_addr),
.dina(blob_din[1183:1168]),
.clkb(clk),
.addrb(rm_rd_addr),
.doutb(op_data_73));

conv1_rm_ram u_conv1_rm_ram_74(
.clka(clk),
.wea(rm_wr_en),
.addra(rm_wr_addr),
.dina(blob_din[1199:1184]),
.clkb(clk),
.addrb(rm_rd_addr),
.doutb(op_data_74));

conv1_rm_ram u_conv1_rm_ram_75(
.clka(clk),
.wea(rm_wr_en),
.addra(rm_wr_addr),
.dina(blob_din[1215:1200]),
.clkb(clk),
.addrb(rm_rd_addr),
.doutb(op_data_75));

conv1_rm_ram u_conv1_rm_ram_76(
.clka(clk),
.wea(rm_wr_en),
.addra(rm_wr_addr),
.dina(blob_din[1231:1216]),
.clkb(clk),
.addrb(rm_rd_addr),
.doutb(op_data_76));

conv1_rm_ram u_conv1_rm_ram_77(
.clka(clk),
.wea(rm_wr_en),
.addra(rm_wr_addr),
.dina(blob_din[1247:1232]),
.clkb(clk),
.addrb(rm_rd_addr),
.doutb(op_data_77));

conv1_rm_ram u_conv1_rm_ram_78(
.clka(clk),
.wea(rm_wr_en),
.addra(rm_wr_addr),
.dina(blob_din[1263:1248]),
.clkb(clk),
.addrb(rm_rd_addr),
.doutb(op_data_78));

conv1_rm_ram u_conv1_rm_ram_79(
.clka(clk),
.wea(rm_wr_en),
.addra(rm_wr_addr),
.dina(blob_din[1279:1264]),
.clkb(clk),
.addrb(rm_rd_addr),
.doutb(op_data_79));

conv1_rm_ram u_conv1_rm_ram_80(
.clka(clk),
.wea(rm_wr_en),
.addra(rm_wr_addr),
.dina(blob_din[1295:1280]),
.clkb(clk),
.addrb(rm_rd_addr),
.doutb(op_data_80));

conv1_rm_ram u_conv1_rm_ram_81(
.clka(clk),
.wea(rm_wr_en),
.addra(rm_wr_addr),
.dina(blob_din[1311:1296]),
.clkb(clk),
.addrb(rm_rd_addr),
.doutb(op_data_81));

conv1_rm_ram u_conv1_rm_ram_82(
.clka(clk),
.wea(rm_wr_en),
.addra(rm_wr_addr),
.dina(blob_din[1327:1312]),
.clkb(clk),
.addrb(rm_rd_addr),
.doutb(op_data_82));

conv1_rm_ram u_conv1_rm_ram_83(
.clka(clk),
.wea(rm_wr_en),
.addra(rm_wr_addr),
.dina(blob_din[1343:1328]),
.clkb(clk),
.addrb(rm_rd_addr),
.doutb(op_data_83));

conv1_rm_ram u_conv1_rm_ram_84(
.clka(clk),
.wea(rm_wr_en),
.addra(rm_wr_addr),
.dina(blob_din[1359:1344]),
.clkb(clk),
.addrb(rm_rd_addr),
.doutb(op_data_84));

conv1_rm_ram u_conv1_rm_ram_85(
.clka(clk),
.wea(rm_wr_en),
.addra(rm_wr_addr),
.dina(blob_din[1375:1360]),
.clkb(clk),
.addrb(rm_rd_addr),
.doutb(op_data_85));

conv1_rm_ram u_conv1_rm_ram_86(
.clka(clk),
.wea(rm_wr_en),
.addra(rm_wr_addr),
.dina(blob_din[1391:1376]),
.clkb(clk),
.addrb(rm_rd_addr),
.doutb(op_data_86));

conv1_rm_ram u_conv1_rm_ram_87(
.clka(clk),
.wea(rm_wr_en),
.addra(rm_wr_addr),
.dina(blob_din[1407:1392]),
.clkb(clk),
.addrb(rm_rd_addr),
.doutb(op_data_87));

conv1_rm_ram u_conv1_rm_ram_88(
.clka(clk),
.wea(rm_wr_en),
.addra(rm_wr_addr),
.dina(blob_din[1423:1408]),
.clkb(clk),
.addrb(rm_rd_addr),
.doutb(op_data_88));

conv1_rm_ram u_conv1_rm_ram_89(
.clka(clk),
.wea(rm_wr_en),
.addra(rm_wr_addr),
.dina(blob_din[1439:1424]),
.clkb(clk),
.addrb(rm_rd_addr),
.doutb(op_data_89));

conv1_rm_ram u_conv1_rm_ram_90(
.clka(clk),
.wea(rm_wr_en),
.addra(rm_wr_addr),
.dina(blob_din[1455:1440]),
.clkb(clk),
.addrb(rm_rd_addr),
.doutb(op_data_90));

conv1_rm_ram u_conv1_rm_ram_91(
.clka(clk),
.wea(rm_wr_en),
.addra(rm_wr_addr),
.dina(blob_din[1471:1456]),
.clkb(clk),
.addrb(rm_rd_addr),
.doutb(op_data_91));

conv1_rm_ram u_conv1_rm_ram_92(
.clka(clk),
.wea(rm_wr_en),
.addra(rm_wr_addr),
.dina(blob_din[1487:1472]),
.clkb(clk),
.addrb(rm_rd_addr),
.doutb(op_data_92));

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

vector_muladd #(.CPF(2),
.RELU(1),
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
.RELU(1),
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
.RELU(1),
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
.op_weight(op_weight[95:64]),
.op_bias(op_bias[47:32]),
.op_dout(op_dout_0_2));

vector_muladd #(.CPF(2),
.RELU(1),
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
.op_weight(op_weight[127:96]),
.op_bias(op_bias[63:48]),
.op_dout(op_dout_0_3));

vector_muladd #(.CPF(2),
.RELU(1),
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
.RELU(1),
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
.RELU(1),
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
u_vector_muladd_1_2(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_1), 
.op_weight(op_weight[95:64]),
.op_bias(op_bias[47:32]),
.op_dout(op_dout_1_2));

vector_muladd #(.CPF(2),
.RELU(1),
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
u_vector_muladd_1_3(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_1), 
.op_weight(op_weight[127:96]),
.op_bias(op_bias[63:48]),
.op_dout(op_dout_1_3));

vector_muladd #(.CPF(2),
.RELU(1),
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
.RELU(1),
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
.RELU(1),
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
u_vector_muladd_2_2(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_2), 
.op_weight(op_weight[95:64]),
.op_bias(op_bias[47:32]),
.op_dout(op_dout_2_2));

vector_muladd #(.CPF(2),
.RELU(1),
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
u_vector_muladd_2_3(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_2), 
.op_weight(op_weight[127:96]),
.op_bias(op_bias[63:48]),
.op_dout(op_dout_2_3));

vector_muladd #(.CPF(2),
.RELU(1),
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
.RELU(1),
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
.RELU(1),
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
u_vector_muladd_3_2(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_3), 
.op_weight(op_weight[95:64]),
.op_bias(op_bias[47:32]),
.op_dout(op_dout_3_2));

vector_muladd #(.CPF(2),
.RELU(1),
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
u_vector_muladd_3_3(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_3), 
.op_weight(op_weight[127:96]),
.op_bias(op_bias[63:48]),
.op_dout(op_dout_3_3));

vector_muladd #(.CPF(2),
.RELU(1),
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
.RELU(1),
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
.RELU(1),
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
u_vector_muladd_4_2(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_4), 
.op_weight(op_weight[95:64]),
.op_bias(op_bias[47:32]),
.op_dout(op_dout_4_2));

vector_muladd #(.CPF(2),
.RELU(1),
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
u_vector_muladd_4_3(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_4), 
.op_weight(op_weight[127:96]),
.op_bias(op_bias[63:48]),
.op_dout(op_dout_4_3));

vector_muladd #(.CPF(2),
.RELU(1),
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
.RELU(1),
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
.RELU(1),
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
u_vector_muladd_5_2(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_5), 
.op_weight(op_weight[95:64]),
.op_bias(op_bias[47:32]),
.op_dout(op_dout_5_2));

vector_muladd #(.CPF(2),
.RELU(1),
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
u_vector_muladd_5_3(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_5), 
.op_weight(op_weight[127:96]),
.op_bias(op_bias[63:48]),
.op_dout(op_dout_5_3));

vector_muladd #(.CPF(2),
.RELU(1),
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
.RELU(1),
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
.RELU(1),
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
u_vector_muladd_6_2(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_6), 
.op_weight(op_weight[95:64]),
.op_bias(op_bias[47:32]),
.op_dout(op_dout_6_2));

vector_muladd #(.CPF(2),
.RELU(1),
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
u_vector_muladd_6_3(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_6), 
.op_weight(op_weight[127:96]),
.op_bias(op_bias[63:48]),
.op_dout(op_dout_6_3));

vector_muladd #(.CPF(2),
.RELU(1),
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
.RELU(1),
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
.RELU(1),
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
u_vector_muladd_7_2(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_7), 
.op_weight(op_weight[95:64]),
.op_bias(op_bias[47:32]),
.op_dout(op_dout_7_2));

vector_muladd #(.CPF(2),
.RELU(1),
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
u_vector_muladd_7_3(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_7), 
.op_weight(op_weight[127:96]),
.op_bias(op_bias[63:48]),
.op_dout(op_dout_7_3));

vector_muladd #(.CPF(2),
.RELU(1),
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
.RELU(1),
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
.RELU(1),
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
u_vector_muladd_8_2(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_8), 
.op_weight(op_weight[95:64]),
.op_bias(op_bias[47:32]),
.op_dout(op_dout_8_2));

vector_muladd #(.CPF(2),
.RELU(1),
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
u_vector_muladd_8_3(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_8), 
.op_weight(op_weight[127:96]),
.op_bias(op_bias[63:48]),
.op_dout(op_dout_8_3));

vector_muladd #(.CPF(2),
.RELU(1),
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
.RELU(1),
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
.RELU(1),
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
u_vector_muladd_9_2(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_9), 
.op_weight(op_weight[95:64]),
.op_bias(op_bias[47:32]),
.op_dout(op_dout_9_2));

vector_muladd #(.CPF(2),
.RELU(1),
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
u_vector_muladd_9_3(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_9), 
.op_weight(op_weight[127:96]),
.op_bias(op_bias[63:48]),
.op_dout(op_dout_9_3));

vector_muladd #(.CPF(2),
.RELU(1),
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
.RELU(1),
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
.RELU(1),
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
u_vector_muladd_10_2(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_10), 
.op_weight(op_weight[95:64]),
.op_bias(op_bias[47:32]),
.op_dout(op_dout_10_2));

vector_muladd #(.CPF(2),
.RELU(1),
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
u_vector_muladd_10_3(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_10), 
.op_weight(op_weight[127:96]),
.op_bias(op_bias[63:48]),
.op_dout(op_dout_10_3));

vector_muladd #(.CPF(2),
.RELU(1),
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
.RELU(1),
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
.RELU(1),
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
u_vector_muladd_11_2(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_11), 
.op_weight(op_weight[95:64]),
.op_bias(op_bias[47:32]),
.op_dout(op_dout_11_2));

vector_muladd #(.CPF(2),
.RELU(1),
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
u_vector_muladd_11_3(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_11), 
.op_weight(op_weight[127:96]),
.op_bias(op_bias[63:48]),
.op_dout(op_dout_11_3));

vector_muladd #(.CPF(2),
.RELU(1),
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
.RELU(1),
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
.RELU(1),
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
u_vector_muladd_12_2(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_12), 
.op_weight(op_weight[95:64]),
.op_bias(op_bias[47:32]),
.op_dout(op_dout_12_2));

vector_muladd #(.CPF(2),
.RELU(1),
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
u_vector_muladd_12_3(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_12), 
.op_weight(op_weight[127:96]),
.op_bias(op_bias[63:48]),
.op_dout(op_dout_12_3));

vector_muladd #(.CPF(2),
.RELU(1),
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
.RELU(1),
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
.RELU(1),
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
u_vector_muladd_13_2(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_13), 
.op_weight(op_weight[95:64]),
.op_bias(op_bias[47:32]),
.op_dout(op_dout_13_2));

vector_muladd #(.CPF(2),
.RELU(1),
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
u_vector_muladd_13_3(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_13), 
.op_weight(op_weight[127:96]),
.op_bias(op_bias[63:48]),
.op_dout(op_dout_13_3));

vector_muladd #(.CPF(2),
.RELU(1),
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
.RELU(1),
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
.RELU(1),
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
u_vector_muladd_14_2(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_14), 
.op_weight(op_weight[95:64]),
.op_bias(op_bias[47:32]),
.op_dout(op_dout_14_2));

vector_muladd #(.CPF(2),
.RELU(1),
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
u_vector_muladd_14_3(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_14), 
.op_weight(op_weight[127:96]),
.op_bias(op_bias[63:48]),
.op_dout(op_dout_14_3));

vector_muladd #(.CPF(2),
.RELU(1),
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
.RELU(1),
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
.RELU(1),
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
u_vector_muladd_15_2(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_15), 
.op_weight(op_weight[95:64]),
.op_bias(op_bias[47:32]),
.op_dout(op_dout_15_2));

vector_muladd #(.CPF(2),
.RELU(1),
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
u_vector_muladd_15_3(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_15), 
.op_weight(op_weight[127:96]),
.op_bias(op_bias[63:48]),
.op_dout(op_dout_15_3));

vector_muladd #(.CPF(2),
.RELU(1),
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
.RELU(1),
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
.RELU(1),
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
u_vector_muladd_16_2(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_16), 
.op_weight(op_weight[95:64]),
.op_bias(op_bias[47:32]),
.op_dout(op_dout_16_2));

vector_muladd #(.CPF(2),
.RELU(1),
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
u_vector_muladd_16_3(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_16), 
.op_weight(op_weight[127:96]),
.op_bias(op_bias[63:48]),
.op_dout(op_dout_16_3));

vector_muladd #(.CPF(2),
.RELU(1),
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
.RELU(1),
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
.RELU(1),
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
u_vector_muladd_17_2(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_17), 
.op_weight(op_weight[95:64]),
.op_bias(op_bias[47:32]),
.op_dout(op_dout_17_2));

vector_muladd #(.CPF(2),
.RELU(1),
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
u_vector_muladd_17_3(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_17), 
.op_weight(op_weight[127:96]),
.op_bias(op_bias[63:48]),
.op_dout(op_dout_17_3));

vector_muladd #(.CPF(2),
.RELU(1),
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
.RELU(1),
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
.RELU(1),
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
u_vector_muladd_18_2(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_18), 
.op_weight(op_weight[95:64]),
.op_bias(op_bias[47:32]),
.op_dout(op_dout_18_2));

vector_muladd #(.CPF(2),
.RELU(1),
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
u_vector_muladd_18_3(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_18), 
.op_weight(op_weight[127:96]),
.op_bias(op_bias[63:48]),
.op_dout(op_dout_18_3));

vector_muladd #(.CPF(2),
.RELU(1),
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
.RELU(1),
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
.RELU(1),
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
u_vector_muladd_19_2(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_19), 
.op_weight(op_weight[95:64]),
.op_bias(op_bias[47:32]),
.op_dout(op_dout_19_2));

vector_muladd #(.CPF(2),
.RELU(1),
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
u_vector_muladd_19_3(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_19), 
.op_weight(op_weight[127:96]),
.op_bias(op_bias[63:48]),
.op_dout(op_dout_19_3));

vector_muladd #(.CPF(2),
.RELU(1),
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
.RELU(1),
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
.RELU(1),
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
u_vector_muladd_20_2(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_20), 
.op_weight(op_weight[95:64]),
.op_bias(op_bias[47:32]),
.op_dout(op_dout_20_2));

vector_muladd #(.CPF(2),
.RELU(1),
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
u_vector_muladd_20_3(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_20), 
.op_weight(op_weight[127:96]),
.op_bias(op_bias[63:48]),
.op_dout(op_dout_20_3));

vector_muladd #(.CPF(2),
.RELU(1),
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
.RELU(1),
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
.RELU(1),
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
u_vector_muladd_21_2(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_21), 
.op_weight(op_weight[95:64]),
.op_bias(op_bias[47:32]),
.op_dout(op_dout_21_2));

vector_muladd #(.CPF(2),
.RELU(1),
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
u_vector_muladd_21_3(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_21), 
.op_weight(op_weight[127:96]),
.op_bias(op_bias[63:48]),
.op_dout(op_dout_21_3));

vector_muladd #(.CPF(2),
.RELU(1),
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
.RELU(1),
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
.RELU(1),
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
u_vector_muladd_22_2(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_22), 
.op_weight(op_weight[95:64]),
.op_bias(op_bias[47:32]),
.op_dout(op_dout_22_2));

vector_muladd #(.CPF(2),
.RELU(1),
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
u_vector_muladd_22_3(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_22), 
.op_weight(op_weight[127:96]),
.op_bias(op_bias[63:48]),
.op_dout(op_dout_22_3));

vector_muladd #(.CPF(2),
.RELU(1),
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
.RELU(1),
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
.RELU(1),
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
u_vector_muladd_23_2(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_23), 
.op_weight(op_weight[95:64]),
.op_bias(op_bias[47:32]),
.op_dout(op_dout_23_2));

vector_muladd #(.CPF(2),
.RELU(1),
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
u_vector_muladd_23_3(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_23), 
.op_weight(op_weight[127:96]),
.op_bias(op_bias[63:48]),
.op_dout(op_dout_23_3));

vector_muladd #(.CPF(2),
.RELU(1),
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
.RELU(1),
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
.RELU(1),
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
u_vector_muladd_24_2(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_24), 
.op_weight(op_weight[95:64]),
.op_bias(op_bias[47:32]),
.op_dout(op_dout_24_2));

vector_muladd #(.CPF(2),
.RELU(1),
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
u_vector_muladd_24_3(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_24), 
.op_weight(op_weight[127:96]),
.op_bias(op_bias[63:48]),
.op_dout(op_dout_24_3));

vector_muladd #(.CPF(2),
.RELU(1),
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
.RELU(1),
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
.RELU(1),
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
u_vector_muladd_25_2(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_25), 
.op_weight(op_weight[95:64]),
.op_bias(op_bias[47:32]),
.op_dout(op_dout_25_2));

vector_muladd #(.CPF(2),
.RELU(1),
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
u_vector_muladd_25_3(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_25), 
.op_weight(op_weight[127:96]),
.op_bias(op_bias[63:48]),
.op_dout(op_dout_25_3));

vector_muladd #(.CPF(2),
.RELU(1),
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
.RELU(1),
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
.RELU(1),
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
u_vector_muladd_26_2(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_26), 
.op_weight(op_weight[95:64]),
.op_bias(op_bias[47:32]),
.op_dout(op_dout_26_2));

vector_muladd #(.CPF(2),
.RELU(1),
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
u_vector_muladd_26_3(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_26), 
.op_weight(op_weight[127:96]),
.op_bias(op_bias[63:48]),
.op_dout(op_dout_26_3));

vector_muladd #(.CPF(2),
.RELU(1),
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
.RELU(1),
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
.RELU(1),
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
u_vector_muladd_27_2(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_27), 
.op_weight(op_weight[95:64]),
.op_bias(op_bias[47:32]),
.op_dout(op_dout_27_2));

vector_muladd #(.CPF(2),
.RELU(1),
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
u_vector_muladd_27_3(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_27), 
.op_weight(op_weight[127:96]),
.op_bias(op_bias[63:48]),
.op_dout(op_dout_27_3));

vector_muladd #(.CPF(2),
.RELU(1),
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
.RELU(1),
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
.RELU(1),
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
u_vector_muladd_28_2(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_28), 
.op_weight(op_weight[95:64]),
.op_bias(op_bias[47:32]),
.op_dout(op_dout_28_2));

vector_muladd #(.CPF(2),
.RELU(1),
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
u_vector_muladd_28_3(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_28), 
.op_weight(op_weight[127:96]),
.op_bias(op_bias[63:48]),
.op_dout(op_dout_28_3));

vector_muladd #(.CPF(2),
.RELU(1),
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
.RELU(1),
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
.RELU(1),
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
u_vector_muladd_29_2(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_29), 
.op_weight(op_weight[95:64]),
.op_bias(op_bias[47:32]),
.op_dout(op_dout_29_2));

vector_muladd #(.CPF(2),
.RELU(1),
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
u_vector_muladd_29_3(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_29), 
.op_weight(op_weight[127:96]),
.op_bias(op_bias[63:48]),
.op_dout(op_dout_29_3));

vector_muladd #(.CPF(2),
.RELU(1),
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
.RELU(1),
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
.RELU(1),
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
u_vector_muladd_30_2(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_30), 
.op_weight(op_weight[95:64]),
.op_bias(op_bias[47:32]),
.op_dout(op_dout_30_2));

vector_muladd #(.CPF(2),
.RELU(1),
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
u_vector_muladd_30_3(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_30), 
.op_weight(op_weight[127:96]),
.op_bias(op_bias[63:48]),
.op_dout(op_dout_30_3));

vector_muladd #(.CPF(2),
.RELU(1),
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
.RELU(1),
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
.RELU(1),
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
u_vector_muladd_31_2(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_31), 
.op_weight(op_weight[95:64]),
.op_bias(op_bias[47:32]),
.op_dout(op_dout_31_2));

vector_muladd #(.CPF(2),
.RELU(1),
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
u_vector_muladd_31_3(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_31), 
.op_weight(op_weight[127:96]),
.op_bias(op_bias[63:48]),
.op_dout(op_dout_31_3));

vector_muladd #(.CPF(2),
.RELU(1),
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
.RELU(1),
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
.RELU(1),
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
u_vector_muladd_32_2(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_32), 
.op_weight(op_weight[95:64]),
.op_bias(op_bias[47:32]),
.op_dout(op_dout_32_2));

vector_muladd #(.CPF(2),
.RELU(1),
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
u_vector_muladd_32_3(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_32), 
.op_weight(op_weight[127:96]),
.op_bias(op_bias[63:48]),
.op_dout(op_dout_32_3));

vector_muladd #(.CPF(2),
.RELU(1),
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
.RELU(1),
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
.RELU(1),
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
u_vector_muladd_33_2(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_33), 
.op_weight(op_weight[95:64]),
.op_bias(op_bias[47:32]),
.op_dout(op_dout_33_2));

vector_muladd #(.CPF(2),
.RELU(1),
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
u_vector_muladd_33_3(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_33), 
.op_weight(op_weight[127:96]),
.op_bias(op_bias[63:48]),
.op_dout(op_dout_33_3));

vector_muladd #(.CPF(2),
.RELU(1),
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
.RELU(1),
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
.RELU(1),
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
u_vector_muladd_34_2(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_34), 
.op_weight(op_weight[95:64]),
.op_bias(op_bias[47:32]),
.op_dout(op_dout_34_2));

vector_muladd #(.CPF(2),
.RELU(1),
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
u_vector_muladd_34_3(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_34), 
.op_weight(op_weight[127:96]),
.op_bias(op_bias[63:48]),
.op_dout(op_dout_34_3));

vector_muladd #(.CPF(2),
.RELU(1),
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
.RELU(1),
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
.RELU(1),
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
u_vector_muladd_35_2(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_35), 
.op_weight(op_weight[95:64]),
.op_bias(op_bias[47:32]),
.op_dout(op_dout_35_2));

vector_muladd #(.CPF(2),
.RELU(1),
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
u_vector_muladd_35_3(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_35), 
.op_weight(op_weight[127:96]),
.op_bias(op_bias[63:48]),
.op_dout(op_dout_35_3));

vector_muladd #(.CPF(2),
.RELU(1),
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
.RELU(1),
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
.RELU(1),
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
u_vector_muladd_36_2(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_36), 
.op_weight(op_weight[95:64]),
.op_bias(op_bias[47:32]),
.op_dout(op_dout_36_2));

vector_muladd #(.CPF(2),
.RELU(1),
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
u_vector_muladd_36_3(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_36), 
.op_weight(op_weight[127:96]),
.op_bias(op_bias[63:48]),
.op_dout(op_dout_36_3));

vector_muladd #(.CPF(2),
.RELU(1),
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
.RELU(1),
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
.RELU(1),
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
u_vector_muladd_37_2(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_37), 
.op_weight(op_weight[95:64]),
.op_bias(op_bias[47:32]),
.op_dout(op_dout_37_2));

vector_muladd #(.CPF(2),
.RELU(1),
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
u_vector_muladd_37_3(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_37), 
.op_weight(op_weight[127:96]),
.op_bias(op_bias[63:48]),
.op_dout(op_dout_37_3));

vector_muladd #(.CPF(2),
.RELU(1),
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
.RELU(1),
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
.RELU(1),
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
u_vector_muladd_38_2(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_38), 
.op_weight(op_weight[95:64]),
.op_bias(op_bias[47:32]),
.op_dout(op_dout_38_2));

vector_muladd #(.CPF(2),
.RELU(1),
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
u_vector_muladd_38_3(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_38), 
.op_weight(op_weight[127:96]),
.op_bias(op_bias[63:48]),
.op_dout(op_dout_38_3));

vector_muladd #(.CPF(2),
.RELU(1),
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
.RELU(1),
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
.RELU(1),
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
u_vector_muladd_39_2(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_39), 
.op_weight(op_weight[95:64]),
.op_bias(op_bias[47:32]),
.op_dout(op_dout_39_2));

vector_muladd #(.CPF(2),
.RELU(1),
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
u_vector_muladd_39_3(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_39), 
.op_weight(op_weight[127:96]),
.op_bias(op_bias[63:48]),
.op_dout(op_dout_39_3));

vector_muladd #(.CPF(2),
.RELU(1),
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
.RELU(1),
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
.RELU(1),
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
u_vector_muladd_40_2(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_40), 
.op_weight(op_weight[95:64]),
.op_bias(op_bias[47:32]),
.op_dout(op_dout_40_2));

vector_muladd #(.CPF(2),
.RELU(1),
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
u_vector_muladd_40_3(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_40), 
.op_weight(op_weight[127:96]),
.op_bias(op_bias[63:48]),
.op_dout(op_dout_40_3));

vector_muladd #(.CPF(2),
.RELU(1),
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
.RELU(1),
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
.RELU(1),
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
u_vector_muladd_41_2(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_41), 
.op_weight(op_weight[95:64]),
.op_bias(op_bias[47:32]),
.op_dout(op_dout_41_2));

vector_muladd #(.CPF(2),
.RELU(1),
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
u_vector_muladd_41_3(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_41), 
.op_weight(op_weight[127:96]),
.op_bias(op_bias[63:48]),
.op_dout(op_dout_41_3));

vector_muladd #(.CPF(2),
.RELU(1),
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
.RELU(1),
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
.RELU(1),
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
u_vector_muladd_42_2(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_42), 
.op_weight(op_weight[95:64]),
.op_bias(op_bias[47:32]),
.op_dout(op_dout_42_2));

vector_muladd #(.CPF(2),
.RELU(1),
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
u_vector_muladd_42_3(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_42), 
.op_weight(op_weight[127:96]),
.op_bias(op_bias[63:48]),
.op_dout(op_dout_42_3));

vector_muladd #(.CPF(2),
.RELU(1),
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
.RELU(1),
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
.RELU(1),
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
u_vector_muladd_43_2(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_43), 
.op_weight(op_weight[95:64]),
.op_bias(op_bias[47:32]),
.op_dout(op_dout_43_2));

vector_muladd #(.CPF(2),
.RELU(1),
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
u_vector_muladd_43_3(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_43), 
.op_weight(op_weight[127:96]),
.op_bias(op_bias[63:48]),
.op_dout(op_dout_43_3));

vector_muladd #(.CPF(2),
.RELU(1),
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
.RELU(1),
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
.RELU(1),
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
u_vector_muladd_44_2(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_44), 
.op_weight(op_weight[95:64]),
.op_bias(op_bias[47:32]),
.op_dout(op_dout_44_2));

vector_muladd #(.CPF(2),
.RELU(1),
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
u_vector_muladd_44_3(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_44), 
.op_weight(op_weight[127:96]),
.op_bias(op_bias[63:48]),
.op_dout(op_dout_44_3));

vector_muladd #(.CPF(2),
.RELU(1),
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
.RELU(1),
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
.RELU(1),
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
u_vector_muladd_45_2(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_45), 
.op_weight(op_weight[95:64]),
.op_bias(op_bias[47:32]),
.op_dout(op_dout_45_2));

vector_muladd #(.CPF(2),
.RELU(1),
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
u_vector_muladd_45_3(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_45), 
.op_weight(op_weight[127:96]),
.op_bias(op_bias[63:48]),
.op_dout(op_dout_45_3));

vector_muladd #(.CPF(2),
.RELU(1),
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
.RELU(1),
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
.RELU(1),
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
u_vector_muladd_46_2(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_46), 
.op_weight(op_weight[95:64]),
.op_bias(op_bias[47:32]),
.op_dout(op_dout_46_2));

vector_muladd #(.CPF(2),
.RELU(1),
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
u_vector_muladd_46_3(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_46), 
.op_weight(op_weight[127:96]),
.op_bias(op_bias[63:48]),
.op_dout(op_dout_46_3));

vector_muladd #(.CPF(2),
.RELU(1),
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
.RELU(1),
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
.RELU(1),
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
u_vector_muladd_47_2(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_47), 
.op_weight(op_weight[95:64]),
.op_bias(op_bias[47:32]),
.op_dout(op_dout_47_2));

vector_muladd #(.CPF(2),
.RELU(1),
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
u_vector_muladd_47_3(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_47), 
.op_weight(op_weight[127:96]),
.op_bias(op_bias[63:48]),
.op_dout(op_dout_47_3));

vector_muladd #(.CPF(2),
.RELU(1),
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
.RELU(1),
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
.RELU(1),
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
u_vector_muladd_48_2(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_48), 
.op_weight(op_weight[95:64]),
.op_bias(op_bias[47:32]),
.op_dout(op_dout_48_2));

vector_muladd #(.CPF(2),
.RELU(1),
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
u_vector_muladd_48_3(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_48), 
.op_weight(op_weight[127:96]),
.op_bias(op_bias[63:48]),
.op_dout(op_dout_48_3));

vector_muladd #(.CPF(2),
.RELU(1),
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
.RELU(1),
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
.RELU(1),
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
u_vector_muladd_49_2(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_49), 
.op_weight(op_weight[95:64]),
.op_bias(op_bias[47:32]),
.op_dout(op_dout_49_2));

vector_muladd #(.CPF(2),
.RELU(1),
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
u_vector_muladd_49_3(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_49), 
.op_weight(op_weight[127:96]),
.op_bias(op_bias[63:48]),
.op_dout(op_dout_49_3));

vector_muladd #(.CPF(2),
.RELU(1),
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
.RELU(1),
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
.RELU(1),
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
u_vector_muladd_50_2(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_50), 
.op_weight(op_weight[95:64]),
.op_bias(op_bias[47:32]),
.op_dout(op_dout_50_2));

vector_muladd #(.CPF(2),
.RELU(1),
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
u_vector_muladd_50_3(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_50), 
.op_weight(op_weight[127:96]),
.op_bias(op_bias[63:48]),
.op_dout(op_dout_50_3));

vector_muladd #(.CPF(2),
.RELU(1),
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
.RELU(1),
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
.RELU(1),
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
u_vector_muladd_51_2(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_51), 
.op_weight(op_weight[95:64]),
.op_bias(op_bias[47:32]),
.op_dout(op_dout_51_2));

vector_muladd #(.CPF(2),
.RELU(1),
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
u_vector_muladd_51_3(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_51), 
.op_weight(op_weight[127:96]),
.op_bias(op_bias[63:48]),
.op_dout(op_dout_51_3));

vector_muladd #(.CPF(2),
.RELU(1),
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
.RELU(1),
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
.RELU(1),
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
u_vector_muladd_52_2(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_52), 
.op_weight(op_weight[95:64]),
.op_bias(op_bias[47:32]),
.op_dout(op_dout_52_2));

vector_muladd #(.CPF(2),
.RELU(1),
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
u_vector_muladd_52_3(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_52), 
.op_weight(op_weight[127:96]),
.op_bias(op_bias[63:48]),
.op_dout(op_dout_52_3));

vector_muladd #(.CPF(2),
.RELU(1),
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
.RELU(1),
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
.RELU(1),
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
u_vector_muladd_53_2(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_53), 
.op_weight(op_weight[95:64]),
.op_bias(op_bias[47:32]),
.op_dout(op_dout_53_2));

vector_muladd #(.CPF(2),
.RELU(1),
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
u_vector_muladd_53_3(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_53), 
.op_weight(op_weight[127:96]),
.op_bias(op_bias[63:48]),
.op_dout(op_dout_53_3));

vector_muladd #(.CPF(2),
.RELU(1),
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
.RELU(1),
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
.RELU(1),
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
u_vector_muladd_54_2(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_54), 
.op_weight(op_weight[95:64]),
.op_bias(op_bias[47:32]),
.op_dout(op_dout_54_2));

vector_muladd #(.CPF(2),
.RELU(1),
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
u_vector_muladd_54_3(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_54), 
.op_weight(op_weight[127:96]),
.op_bias(op_bias[63:48]),
.op_dout(op_dout_54_3));

vector_muladd #(.CPF(2),
.RELU(1),
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
.RELU(1),
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
.RELU(1),
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
u_vector_muladd_55_2(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_55), 
.op_weight(op_weight[95:64]),
.op_bias(op_bias[47:32]),
.op_dout(op_dout_55_2));

vector_muladd #(.CPF(2),
.RELU(1),
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
u_vector_muladd_55_3(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_55), 
.op_weight(op_weight[127:96]),
.op_bias(op_bias[63:48]),
.op_dout(op_dout_55_3));

vector_muladd #(.CPF(2),
.RELU(1),
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
.RELU(1),
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
.RELU(1),
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
u_vector_muladd_56_2(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_56), 
.op_weight(op_weight[95:64]),
.op_bias(op_bias[47:32]),
.op_dout(op_dout_56_2));

vector_muladd #(.CPF(2),
.RELU(1),
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
u_vector_muladd_56_3(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_56), 
.op_weight(op_weight[127:96]),
.op_bias(op_bias[63:48]),
.op_dout(op_dout_56_3));

vector_muladd #(.CPF(2),
.RELU(1),
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
.RELU(1),
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
.RELU(1),
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
u_vector_muladd_57_2(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_57), 
.op_weight(op_weight[95:64]),
.op_bias(op_bias[47:32]),
.op_dout(op_dout_57_2));

vector_muladd #(.CPF(2),
.RELU(1),
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
u_vector_muladd_57_3(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_57), 
.op_weight(op_weight[127:96]),
.op_bias(op_bias[63:48]),
.op_dout(op_dout_57_3));

vector_muladd #(.CPF(2),
.RELU(1),
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
.RELU(1),
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
.RELU(1),
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
u_vector_muladd_58_2(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_58), 
.op_weight(op_weight[95:64]),
.op_bias(op_bias[47:32]),
.op_dout(op_dout_58_2));

vector_muladd #(.CPF(2),
.RELU(1),
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
u_vector_muladd_58_3(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_58), 
.op_weight(op_weight[127:96]),
.op_bias(op_bias[63:48]),
.op_dout(op_dout_58_3));

vector_muladd #(.CPF(2),
.RELU(1),
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
.RELU(1),
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
.RELU(1),
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
u_vector_muladd_59_2(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_59), 
.op_weight(op_weight[95:64]),
.op_bias(op_bias[47:32]),
.op_dout(op_dout_59_2));

vector_muladd #(.CPF(2),
.RELU(1),
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
u_vector_muladd_59_3(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_59), 
.op_weight(op_weight[127:96]),
.op_bias(op_bias[63:48]),
.op_dout(op_dout_59_3));

vector_muladd #(.CPF(2),
.RELU(1),
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
.RELU(1),
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
.RELU(1),
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
u_vector_muladd_60_2(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_60), 
.op_weight(op_weight[95:64]),
.op_bias(op_bias[47:32]),
.op_dout(op_dout_60_2));

vector_muladd #(.CPF(2),
.RELU(1),
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
u_vector_muladd_60_3(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_60), 
.op_weight(op_weight[127:96]),
.op_bias(op_bias[63:48]),
.op_dout(op_dout_60_3));

vector_muladd #(.CPF(2),
.RELU(1),
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
.RELU(1),
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
.RELU(1),
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
u_vector_muladd_61_2(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_61), 
.op_weight(op_weight[95:64]),
.op_bias(op_bias[47:32]),
.op_dout(op_dout_61_2));

vector_muladd #(.CPF(2),
.RELU(1),
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
u_vector_muladd_61_3(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_61), 
.op_weight(op_weight[127:96]),
.op_bias(op_bias[63:48]),
.op_dout(op_dout_61_3));

vector_muladd #(.CPF(2),
.RELU(1),
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
.RELU(1),
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
.RELU(1),
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
u_vector_muladd_62_2(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_62), 
.op_weight(op_weight[95:64]),
.op_bias(op_bias[47:32]),
.op_dout(op_dout_62_2));

vector_muladd #(.CPF(2),
.RELU(1),
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
u_vector_muladd_62_3(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_62), 
.op_weight(op_weight[127:96]),
.op_bias(op_bias[63:48]),
.op_dout(op_dout_62_3));

vector_muladd #(.CPF(2),
.RELU(1),
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
.RELU(1),
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
.RELU(1),
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
u_vector_muladd_63_2(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_63), 
.op_weight(op_weight[95:64]),
.op_bias(op_bias[47:32]),
.op_dout(op_dout_63_2));

vector_muladd #(.CPF(2),
.RELU(1),
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
u_vector_muladd_63_3(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_63), 
.op_weight(op_weight[127:96]),
.op_bias(op_bias[63:48]),
.op_dout(op_dout_63_3));

vector_muladd #(.CPF(2),
.RELU(1),
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
.RELU(1),
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
.RELU(1),
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
u_vector_muladd_64_2(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_64), 
.op_weight(op_weight[95:64]),
.op_bias(op_bias[47:32]),
.op_dout(op_dout_64_2));

vector_muladd #(.CPF(2),
.RELU(1),
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
u_vector_muladd_64_3(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_64), 
.op_weight(op_weight[127:96]),
.op_bias(op_bias[63:48]),
.op_dout(op_dout_64_3));

vector_muladd #(.CPF(2),
.RELU(1),
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
.RELU(1),
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
.RELU(1),
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
u_vector_muladd_65_2(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_65), 
.op_weight(op_weight[95:64]),
.op_bias(op_bias[47:32]),
.op_dout(op_dout_65_2));

vector_muladd #(.CPF(2),
.RELU(1),
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
u_vector_muladd_65_3(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_65), 
.op_weight(op_weight[127:96]),
.op_bias(op_bias[63:48]),
.op_dout(op_dout_65_3));

vector_muladd #(.CPF(2),
.RELU(1),
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
.RELU(1),
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
.RELU(1),
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
u_vector_muladd_66_2(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_66), 
.op_weight(op_weight[95:64]),
.op_bias(op_bias[47:32]),
.op_dout(op_dout_66_2));

vector_muladd #(.CPF(2),
.RELU(1),
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
u_vector_muladd_66_3(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_66), 
.op_weight(op_weight[127:96]),
.op_bias(op_bias[63:48]),
.op_dout(op_dout_66_3));

vector_muladd #(.CPF(2),
.RELU(1),
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
.RELU(1),
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
.RELU(1),
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
u_vector_muladd_67_2(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_67), 
.op_weight(op_weight[95:64]),
.op_bias(op_bias[47:32]),
.op_dout(op_dout_67_2));

vector_muladd #(.CPF(2),
.RELU(1),
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
u_vector_muladd_67_3(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_67), 
.op_weight(op_weight[127:96]),
.op_bias(op_bias[63:48]),
.op_dout(op_dout_67_3));

vector_muladd #(.CPF(2),
.RELU(1),
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
.RELU(1),
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
.RELU(1),
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
u_vector_muladd_68_2(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_68), 
.op_weight(op_weight[95:64]),
.op_bias(op_bias[47:32]),
.op_dout(op_dout_68_2));

vector_muladd #(.CPF(2),
.RELU(1),
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
u_vector_muladd_68_3(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_68), 
.op_weight(op_weight[127:96]),
.op_bias(op_bias[63:48]),
.op_dout(op_dout_68_3));

vector_muladd #(.CPF(2),
.RELU(1),
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
.RELU(1),
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
.RELU(1),
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
u_vector_muladd_69_2(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_69), 
.op_weight(op_weight[95:64]),
.op_bias(op_bias[47:32]),
.op_dout(op_dout_69_2));

vector_muladd #(.CPF(2),
.RELU(1),
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
u_vector_muladd_69_3(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_69), 
.op_weight(op_weight[127:96]),
.op_bias(op_bias[63:48]),
.op_dout(op_dout_69_3));

vector_muladd #(.CPF(2),
.RELU(1),
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
.RELU(1),
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
.RELU(1),
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
u_vector_muladd_70_2(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_70), 
.op_weight(op_weight[95:64]),
.op_bias(op_bias[47:32]),
.op_dout(op_dout_70_2));

vector_muladd #(.CPF(2),
.RELU(1),
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
u_vector_muladd_70_3(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_70), 
.op_weight(op_weight[127:96]),
.op_bias(op_bias[63:48]),
.op_dout(op_dout_70_3));

vector_muladd #(.CPF(2),
.RELU(1),
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
.RELU(1),
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
.RELU(1),
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
u_vector_muladd_71_2(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_71), 
.op_weight(op_weight[95:64]),
.op_bias(op_bias[47:32]),
.op_dout(op_dout_71_2));

vector_muladd #(.CPF(2),
.RELU(1),
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
u_vector_muladd_71_3(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_71), 
.op_weight(op_weight[127:96]),
.op_bias(op_bias[63:48]),
.op_dout(op_dout_71_3));

vector_muladd #(.CPF(2),
.RELU(1),
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
.RELU(1),
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
.RELU(1),
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
u_vector_muladd_72_2(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_72), 
.op_weight(op_weight[95:64]),
.op_bias(op_bias[47:32]),
.op_dout(op_dout_72_2));

vector_muladd #(.CPF(2),
.RELU(1),
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
u_vector_muladd_72_3(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_72), 
.op_weight(op_weight[127:96]),
.op_bias(op_bias[63:48]),
.op_dout(op_dout_72_3));

vector_muladd #(.CPF(2),
.RELU(1),
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
.RELU(1),
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
.RELU(1),
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
u_vector_muladd_73_2(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_73), 
.op_weight(op_weight[95:64]),
.op_bias(op_bias[47:32]),
.op_dout(op_dout_73_2));

vector_muladd #(.CPF(2),
.RELU(1),
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
u_vector_muladd_73_3(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_73), 
.op_weight(op_weight[127:96]),
.op_bias(op_bias[63:48]),
.op_dout(op_dout_73_3));

vector_muladd #(.CPF(2),
.RELU(1),
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
.RELU(1),
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
.RELU(1),
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
u_vector_muladd_74_2(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_74), 
.op_weight(op_weight[95:64]),
.op_bias(op_bias[47:32]),
.op_dout(op_dout_74_2));

vector_muladd #(.CPF(2),
.RELU(1),
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
u_vector_muladd_74_3(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_74), 
.op_weight(op_weight[127:96]),
.op_bias(op_bias[63:48]),
.op_dout(op_dout_74_3));

vector_muladd #(.CPF(2),
.RELU(1),
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
.RELU(1),
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
.RELU(1),
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
u_vector_muladd_75_2(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_75), 
.op_weight(op_weight[95:64]),
.op_bias(op_bias[47:32]),
.op_dout(op_dout_75_2));

vector_muladd #(.CPF(2),
.RELU(1),
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
u_vector_muladd_75_3(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_75), 
.op_weight(op_weight[127:96]),
.op_bias(op_bias[63:48]),
.op_dout(op_dout_75_3));

vector_muladd #(.CPF(2),
.RELU(1),
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
.RELU(1),
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
.RELU(1),
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
u_vector_muladd_76_2(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_76), 
.op_weight(op_weight[95:64]),
.op_bias(op_bias[47:32]),
.op_dout(op_dout_76_2));

vector_muladd #(.CPF(2),
.RELU(1),
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
u_vector_muladd_76_3(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_76), 
.op_weight(op_weight[127:96]),
.op_bias(op_bias[63:48]),
.op_dout(op_dout_76_3));

vector_muladd #(.CPF(2),
.RELU(1),
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
.RELU(1),
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
.RELU(1),
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
u_vector_muladd_77_2(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_77), 
.op_weight(op_weight[95:64]),
.op_bias(op_bias[47:32]),
.op_dout(op_dout_77_2));

vector_muladd #(.CPF(2),
.RELU(1),
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
u_vector_muladd_77_3(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_77), 
.op_weight(op_weight[127:96]),
.op_bias(op_bias[63:48]),
.op_dout(op_dout_77_3));

vector_muladd #(.CPF(2),
.RELU(1),
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
.RELU(1),
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
.RELU(1),
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
u_vector_muladd_78_2(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_78), 
.op_weight(op_weight[95:64]),
.op_bias(op_bias[47:32]),
.op_dout(op_dout_78_2));

vector_muladd #(.CPF(2),
.RELU(1),
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
u_vector_muladd_78_3(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_78), 
.op_weight(op_weight[127:96]),
.op_bias(op_bias[63:48]),
.op_dout(op_dout_78_3));

vector_muladd #(.CPF(2),
.RELU(1),
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
.RELU(1),
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
.RELU(1),
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
u_vector_muladd_79_2(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_79), 
.op_weight(op_weight[95:64]),
.op_bias(op_bias[47:32]),
.op_dout(op_dout_79_2));

vector_muladd #(.CPF(2),
.RELU(1),
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
u_vector_muladd_79_3(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_79), 
.op_weight(op_weight[127:96]),
.op_bias(op_bias[63:48]),
.op_dout(op_dout_79_3));

vector_muladd #(.CPF(2),
.RELU(1),
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
.RELU(1),
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
.RELU(1),
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
u_vector_muladd_80_2(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_80), 
.op_weight(op_weight[95:64]),
.op_bias(op_bias[47:32]),
.op_dout(op_dout_80_2));

vector_muladd #(.CPF(2),
.RELU(1),
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
u_vector_muladd_80_3(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_80), 
.op_weight(op_weight[127:96]),
.op_bias(op_bias[63:48]),
.op_dout(op_dout_80_3));

vector_muladd #(.CPF(2),
.RELU(1),
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
.RELU(1),
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
.RELU(1),
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
u_vector_muladd_81_2(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_81), 
.op_weight(op_weight[95:64]),
.op_bias(op_bias[47:32]),
.op_dout(op_dout_81_2));

vector_muladd #(.CPF(2),
.RELU(1),
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
u_vector_muladd_81_3(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_81), 
.op_weight(op_weight[127:96]),
.op_bias(op_bias[63:48]),
.op_dout(op_dout_81_3));

vector_muladd #(.CPF(2),
.RELU(1),
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
.RELU(1),
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
.RELU(1),
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
u_vector_muladd_82_2(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_82), 
.op_weight(op_weight[95:64]),
.op_bias(op_bias[47:32]),
.op_dout(op_dout_82_2));

vector_muladd #(.CPF(2),
.RELU(1),
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
u_vector_muladd_82_3(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_82), 
.op_weight(op_weight[127:96]),
.op_bias(op_bias[63:48]),
.op_dout(op_dout_82_3));

vector_muladd #(.CPF(2),
.RELU(1),
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
.RELU(1),
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
.RELU(1),
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
u_vector_muladd_83_2(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_83), 
.op_weight(op_weight[95:64]),
.op_bias(op_bias[47:32]),
.op_dout(op_dout_83_2));

vector_muladd #(.CPF(2),
.RELU(1),
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
u_vector_muladd_83_3(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_83), 
.op_weight(op_weight[127:96]),
.op_bias(op_bias[63:48]),
.op_dout(op_dout_83_3));

vector_muladd #(.CPF(2),
.RELU(1),
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
.RELU(1),
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
.RELU(1),
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
u_vector_muladd_84_2(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_84), 
.op_weight(op_weight[95:64]),
.op_bias(op_bias[47:32]),
.op_dout(op_dout_84_2));

vector_muladd #(.CPF(2),
.RELU(1),
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
u_vector_muladd_84_3(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_84), 
.op_weight(op_weight[127:96]),
.op_bias(op_bias[63:48]),
.op_dout(op_dout_84_3));

vector_muladd #(.CPF(2),
.RELU(1),
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
.RELU(1),
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
.RELU(1),
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
u_vector_muladd_85_2(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_85), 
.op_weight(op_weight[95:64]),
.op_bias(op_bias[47:32]),
.op_dout(op_dout_85_2));

vector_muladd #(.CPF(2),
.RELU(1),
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
u_vector_muladd_85_3(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_85), 
.op_weight(op_weight[127:96]),
.op_bias(op_bias[63:48]),
.op_dout(op_dout_85_3));

vector_muladd #(.CPF(2),
.RELU(1),
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
.RELU(1),
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
.RELU(1),
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
u_vector_muladd_86_2(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_86), 
.op_weight(op_weight[95:64]),
.op_bias(op_bias[47:32]),
.op_dout(op_dout_86_2));

vector_muladd #(.CPF(2),
.RELU(1),
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
u_vector_muladd_86_3(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_86), 
.op_weight(op_weight[127:96]),
.op_bias(op_bias[63:48]),
.op_dout(op_dout_86_3));

vector_muladd #(.CPF(2),
.RELU(1),
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
.RELU(1),
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
.RELU(1),
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
u_vector_muladd_87_2(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_87), 
.op_weight(op_weight[95:64]),
.op_bias(op_bias[47:32]),
.op_dout(op_dout_87_2));

vector_muladd #(.CPF(2),
.RELU(1),
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
u_vector_muladd_87_3(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_87), 
.op_weight(op_weight[127:96]),
.op_bias(op_bias[63:48]),
.op_dout(op_dout_87_3));

vector_muladd #(.CPF(2),
.RELU(1),
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
.RELU(1),
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
.RELU(1),
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
u_vector_muladd_88_2(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_88), 
.op_weight(op_weight[95:64]),
.op_bias(op_bias[47:32]),
.op_dout(op_dout_88_2));

vector_muladd #(.CPF(2),
.RELU(1),
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
u_vector_muladd_88_3(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_88), 
.op_weight(op_weight[127:96]),
.op_bias(op_bias[63:48]),
.op_dout(op_dout_88_3));

vector_muladd #(.CPF(2),
.RELU(1),
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
.RELU(1),
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
.RELU(1),
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
u_vector_muladd_89_2(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_89), 
.op_weight(op_weight[95:64]),
.op_bias(op_bias[47:32]),
.op_dout(op_dout_89_2));

vector_muladd #(.CPF(2),
.RELU(1),
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
u_vector_muladd_89_3(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_89), 
.op_weight(op_weight[127:96]),
.op_bias(op_bias[63:48]),
.op_dout(op_dout_89_3));

vector_muladd #(.CPF(2),
.RELU(1),
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
.RELU(1),
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
.RELU(1),
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
u_vector_muladd_90_2(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_90), 
.op_weight(op_weight[95:64]),
.op_bias(op_bias[47:32]),
.op_dout(op_dout_90_2));

vector_muladd #(.CPF(2),
.RELU(1),
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
u_vector_muladd_90_3(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_90), 
.op_weight(op_weight[127:96]),
.op_bias(op_bias[63:48]),
.op_dout(op_dout_90_3));

vector_muladd #(.CPF(2),
.RELU(1),
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
.RELU(1),
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
.RELU(1),
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
u_vector_muladd_91_2(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_91), 
.op_weight(op_weight[95:64]),
.op_bias(op_bias[47:32]),
.op_dout(op_dout_91_2));

vector_muladd #(.CPF(2),
.RELU(1),
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
u_vector_muladd_91_3(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_91), 
.op_weight(op_weight[127:96]),
.op_bias(op_bias[63:48]),
.op_dout(op_dout_91_3));

vector_muladd #(.CPF(2),
.RELU(1),
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
.RELU(1),
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

vector_muladd #(.CPF(2),
.RELU(1),
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
u_vector_muladd_92_2(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_92), 
.op_weight(op_weight[95:64]),
.op_bias(op_bias[47:32]),
.op_dout(op_dout_92_2));

vector_muladd #(.CPF(2),
.RELU(1),
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
u_vector_muladd_92_3(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_92), 
.op_weight(op_weight[127:96]),
.op_bias(op_bias[63:48]),
.op_dout(op_dout_92_3));

assign blob_dout = {op_dout_92_3,op_dout_92_2,op_dout_92_1,op_dout_92_0,op_dout_91_3,op_dout_91_2,op_dout_91_1,op_dout_91_0,op_dout_90_3,op_dout_90_2,op_dout_90_1,op_dout_90_0,op_dout_89_3,op_dout_89_2,op_dout_89_1,op_dout_89_0,op_dout_88_3,op_dout_88_2,op_dout_88_1,op_dout_88_0,op_dout_87_3,op_dout_87_2,op_dout_87_1,op_dout_87_0,op_dout_86_3,op_dout_86_2,op_dout_86_1,op_dout_86_0,op_dout_85_3,op_dout_85_2,op_dout_85_1,op_dout_85_0,op_dout_84_3,op_dout_84_2,op_dout_84_1,op_dout_84_0,op_dout_83_3,op_dout_83_2,op_dout_83_1,op_dout_83_0,op_dout_82_3,op_dout_82_2,op_dout_82_1,op_dout_82_0,op_dout_81_3,op_dout_81_2,op_dout_81_1,op_dout_81_0,op_dout_80_3,op_dout_80_2,op_dout_80_1,op_dout_80_0,op_dout_79_3,op_dout_79_2,op_dout_79_1,op_dout_79_0,op_dout_78_3,op_dout_78_2,op_dout_78_1,op_dout_78_0,op_dout_77_3,op_dout_77_2,op_dout_77_1,op_dout_77_0,op_dout_76_3,op_dout_76_2,op_dout_76_1,op_dout_76_0,op_dout_75_3,op_dout_75_2,op_dout_75_1,op_dout_75_0,op_dout_74_3,op_dout_74_2,op_dout_74_1,op_dout_74_0,op_dout_73_3,op_dout_73_2,op_dout_73_1,op_dout_73_0,op_dout_72_3,op_dout_72_2,op_dout_72_1,op_dout_72_0,op_dout_71_3,op_dout_71_2,op_dout_71_1,op_dout_71_0,op_dout_70_3,op_dout_70_2,op_dout_70_1,op_dout_70_0,op_dout_69_3,op_dout_69_2,op_dout_69_1,op_dout_69_0,op_dout_68_3,op_dout_68_2,op_dout_68_1,op_dout_68_0,op_dout_67_3,op_dout_67_2,op_dout_67_1,op_dout_67_0,op_dout_66_3,op_dout_66_2,op_dout_66_1,op_dout_66_0,op_dout_65_3,op_dout_65_2,op_dout_65_1,op_dout_65_0,op_dout_64_3,op_dout_64_2,op_dout_64_1,op_dout_64_0,op_dout_63_3,op_dout_63_2,op_dout_63_1,op_dout_63_0,op_dout_62_3,op_dout_62_2,op_dout_62_1,op_dout_62_0,op_dout_61_3,op_dout_61_2,op_dout_61_1,op_dout_61_0,op_dout_60_3,op_dout_60_2,op_dout_60_1,op_dout_60_0,op_dout_59_3,op_dout_59_2,op_dout_59_1,op_dout_59_0,op_dout_58_3,op_dout_58_2,op_dout_58_1,op_dout_58_0,op_dout_57_3,op_dout_57_2,op_dout_57_1,op_dout_57_0,op_dout_56_3,op_dout_56_2,op_dout_56_1,op_dout_56_0,op_dout_55_3,op_dout_55_2,op_dout_55_1,op_dout_55_0,op_dout_54_3,op_dout_54_2,op_dout_54_1,op_dout_54_0,op_dout_53_3,op_dout_53_2,op_dout_53_1,op_dout_53_0,op_dout_52_3,op_dout_52_2,op_dout_52_1,op_dout_52_0,op_dout_51_3,op_dout_51_2,op_dout_51_1,op_dout_51_0,op_dout_50_3,op_dout_50_2,op_dout_50_1,op_dout_50_0,op_dout_49_3,op_dout_49_2,op_dout_49_1,op_dout_49_0,op_dout_48_3,op_dout_48_2,op_dout_48_1,op_dout_48_0,op_dout_47_3,op_dout_47_2,op_dout_47_1,op_dout_47_0,op_dout_46_3,op_dout_46_2,op_dout_46_1,op_dout_46_0,op_dout_45_3,op_dout_45_2,op_dout_45_1,op_dout_45_0,op_dout_44_3,op_dout_44_2,op_dout_44_1,op_dout_44_0,op_dout_43_3,op_dout_43_2,op_dout_43_1,op_dout_43_0,op_dout_42_3,op_dout_42_2,op_dout_42_1,op_dout_42_0,op_dout_41_3,op_dout_41_2,op_dout_41_1,op_dout_41_0,op_dout_40_3,op_dout_40_2,op_dout_40_1,op_dout_40_0,op_dout_39_3,op_dout_39_2,op_dout_39_1,op_dout_39_0,op_dout_38_3,op_dout_38_2,op_dout_38_1,op_dout_38_0,op_dout_37_3,op_dout_37_2,op_dout_37_1,op_dout_37_0,op_dout_36_3,op_dout_36_2,op_dout_36_1,op_dout_36_0,op_dout_35_3,op_dout_35_2,op_dout_35_1,op_dout_35_0,op_dout_34_3,op_dout_34_2,op_dout_34_1,op_dout_34_0,op_dout_33_3,op_dout_33_2,op_dout_33_1,op_dout_33_0,op_dout_32_3,op_dout_32_2,op_dout_32_1,op_dout_32_0,op_dout_31_3,op_dout_31_2,op_dout_31_1,op_dout_31_0,op_dout_30_3,op_dout_30_2,op_dout_30_1,op_dout_30_0,op_dout_29_3,op_dout_29_2,op_dout_29_1,op_dout_29_0,op_dout_28_3,op_dout_28_2,op_dout_28_1,op_dout_28_0,op_dout_27_3,op_dout_27_2,op_dout_27_1,op_dout_27_0,op_dout_26_3,op_dout_26_2,op_dout_26_1,op_dout_26_0,op_dout_25_3,op_dout_25_2,op_dout_25_1,op_dout_25_0,op_dout_24_3,op_dout_24_2,op_dout_24_1,op_dout_24_0,op_dout_23_3,op_dout_23_2,op_dout_23_1,op_dout_23_0,op_dout_22_3,op_dout_22_2,op_dout_22_1,op_dout_22_0,op_dout_21_3,op_dout_21_2,op_dout_21_1,op_dout_21_0,op_dout_20_3,op_dout_20_2,op_dout_20_1,op_dout_20_0,op_dout_19_3,op_dout_19_2,op_dout_19_1,op_dout_19_0,op_dout_18_3,op_dout_18_2,op_dout_18_1,op_dout_18_0,op_dout_17_3,op_dout_17_2,op_dout_17_1,op_dout_17_0,op_dout_16_3,op_dout_16_2,op_dout_16_1,op_dout_16_0,op_dout_15_3,op_dout_15_2,op_dout_15_1,op_dout_15_0,op_dout_14_3,op_dout_14_2,op_dout_14_1,op_dout_14_0,op_dout_13_3,op_dout_13_2,op_dout_13_1,op_dout_13_0,op_dout_12_3,op_dout_12_2,op_dout_12_1,op_dout_12_0,op_dout_11_3,op_dout_11_2,op_dout_11_1,op_dout_11_0,op_dout_10_3,op_dout_10_2,op_dout_10_1,op_dout_10_0,op_dout_9_3,op_dout_9_2,op_dout_9_1,op_dout_9_0,op_dout_8_3,op_dout_8_2,op_dout_8_1,op_dout_8_0,op_dout_7_3,op_dout_7_2,op_dout_7_1,op_dout_7_0,op_dout_6_3,op_dout_6_2,op_dout_6_1,op_dout_6_0,op_dout_5_3,op_dout_5_2,op_dout_5_1,op_dout_5_0,op_dout_4_3,op_dout_4_2,op_dout_4_1,op_dout_4_0,op_dout_3_3,op_dout_3_2,op_dout_3_1,op_dout_3_0,op_dout_2_3,op_dout_2_2,op_dout_2_1,op_dout_2_0,op_dout_1_3,op_dout_1_2,op_dout_1_1,op_dout_1_0,op_dout_0_3,op_dout_0_2,op_dout_0_1,op_dout_0_0};

endmodule
