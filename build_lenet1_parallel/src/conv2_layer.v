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
output[11903:0]	blob_dout;
input	blob_din_eop;
input[5951:0]	blob_din;


wire[15:0]	op_dout_72_5;
wire[15:0]	op_dout_72_4;
wire[15:0]	op_dout_72_7;
wire[15:0]	op_dout_72_6;
wire[15:0]	op_dout_72_1;
wire[15:0]	op_dout_72_0;
wire[15:0]	op_dout_72_3;
wire[15:0]	op_dout_72_2;
wire[15:0]	op_dout_22_2;
wire[15:0]	op_dout_22_3;
wire[15:0]	op_dout_22_0;
wire[15:0]	op_dout_22_1;
wire[15:0]	op_dout_22_6;
wire[15:0]	op_dout_22_7;
wire[15:0]	op_dout_22_4;
wire[15:0]	op_dout_22_5;
wire[15:0]	op_dout_70_3;
wire[15:0]	op_dout_70_2;
wire[15:0]	op_dout_70_1;
wire[15:0]	op_dout_70_0;
wire[15:0]	op_dout_70_7;
wire[15:0]	op_dout_70_6;
wire[15:0]	op_dout_70_5;
wire[15:0]	op_dout_70_4;
wire[63:0]	op_data_74;
wire[63:0]	op_data_75;
wire[63:0]	op_data_76;
wire[63:0]	op_data_77;
wire[63:0]	op_data_70;
wire[63:0]	op_data_71;
wire[63:0]	op_data_72;
wire[63:0]	op_data_73;
wire[63:0]	op_data_78;
wire[63:0]	op_data_79;
wire[15:0]	op_dout_84_3;
wire[15:0]	op_dout_41_3;
wire[15:0]	op_dout_41_1;
wire[15:0]	op_dout_41_0;
wire[15:0]	op_dout_58_0;
wire[15:0]	op_dout_76_1;
wire[15:0]	op_dout_76_0;
wire[15:0]	op_dout_76_3;
wire[15:0]	op_dout_76_2;
wire[15:0]	op_dout_76_5;
wire[15:0]	op_dout_76_4;
wire[15:0]	op_dout_76_7;
wire[15:0]	op_dout_76_6;
wire[15:0]	op_dout_74_7;
wire[15:0]	op_dout_74_6;
wire[15:0]	op_dout_74_5;
wire[15:0]	op_dout_74_4;
wire[15:0]	op_dout_74_3;
wire[15:0]	op_dout_74_2;
wire[15:0]	op_dout_74_1;
wire[15:0]	op_dout_74_0;
wire[63:0]	op_data_4;
wire[63:0]	op_data_5;
wire[15:0]	op_dout_18_7;
wire[63:0]	op_data_7;
wire[15:0]	op_dout_18_1;
wire[63:0]	op_data_1;
wire[15:0]	op_dout_18_3;
wire[15:0]	op_dout_18_2;
wire[63:0]	op_data_8;
wire[63:0]	op_data_9;
wire[15:0]	op_dout_78_3;
wire[15:0]	op_dout_78_2;
wire[15:0]	op_dout_78_1;
wire[15:0]	op_dout_78_0;
wire[15:0]	op_dout_78_7;
wire[15:0]	op_dout_78_6;
wire[15:0]	op_dout_78_5;
wire[15:0]	op_dout_78_4;
wire[15:0]	op_dout_14_1;
wire[15:0]	op_dout_14_0;
wire[15:0]	op_dout_14_3;
wire[15:0]	op_dout_14_2;
wire[15:0]	op_dout_14_5;
wire[15:0]	op_dout_14_4;
wire[15:0]	op_dout_14_7;
wire[15:0]	op_dout_14_6;
wire[15:0]	op_dout_16_7;
wire[15:0]	op_dout_16_6;
wire[15:0]	op_dout_16_5;
wire[15:0]	op_dout_16_4;
wire[15:0]	op_dout_16_3;
wire[15:0]	op_dout_16_2;
wire[15:0]	op_dout_16_1;
wire[15:0]	op_dout_16_0;
wire[15:0]	op_dout_87_1;
wire[15:0]	op_dout_87_0;
wire[15:0]	op_dout_87_3;
wire[15:0]	op_dout_87_2;
wire[15:0]	op_dout_87_5;
wire[15:0]	op_dout_87_4;
wire[15:0]	op_dout_87_7;
wire[15:0]	op_dout_87_6;
wire[15:0]	op_dout_39_2;
wire[15:0]	op_dout_67_6;
wire[15:0]	op_dout_85_6;
wire[15:0]	op_dout_85_5;
wire[15:0]	op_dout_85_4;
wire[15:0]	op_dout_85_3;
wire[15:0]	op_dout_85_2;
wire[15:0]	op_dout_85_1;
wire[15:0]	op_dout_85_0;
wire[15:0]	op_dout_83_5;
wire[15:0]	op_dout_83_4;
wire[15:0]	op_dout_83_7;
wire[15:0]	op_dout_83_6;
wire[15:0]	op_dout_83_1;
wire[15:0]	op_dout_83_0;
wire[15:0]	op_dout_64_7;
wire[15:0]	op_dout_83_2;
wire[15:0]	op_dout_81_3;
wire[15:0]	op_dout_81_2;
wire[15:0]	op_dout_81_1;
wire[15:0]	op_dout_81_0;
wire[15:0]	op_dout_81_7;
wire[15:0]	op_dout_81_6;
wire[15:0]	op_dout_81_5;
wire[15:0]	op_dout_81_4;
wire[15:0]	op_dout_10_5;
wire[15:0]	op_dout_10_4;
wire[15:0]	op_dout_10_7;
wire[15:0]	op_dout_10_6;
wire[15:0]	op_dout_10_1;
wire[15:0]	op_dout_10_0;
wire[15:0]	op_dout_10_3;
wire[15:0]	op_dout_10_2;
wire[15:0]	op_dout_25_1;
wire[15:0]	op_dout_25_0;
wire[15:0]	op_dout_25_3;
wire[15:0]	op_dout_25_2;
wire[15:0]	op_dout_25_5;
wire[63:0]	op_data_35;
wire[63:0]	op_data_36;
wire[15:0]	op_dout_25_6;
wire[63:0]	op_data_38;
wire[63:0]	op_data_39;
wire[15:0]	op_dout_27_7;
wire[15:0]	op_dout_12_2;
wire[15:0]	op_dout_12_1;
wire[15:0]	op_dout_27_4;
wire[15:0]	op_dout_27_3;
wire[15:0]	op_dout_27_2;
wire[15:0]	op_dout_12_5;
wire[15:0]	op_dout_27_0;
wire[15:0]	op_dout_21_5;
wire[15:0]	op_dout_21_4;
wire[15:0]	op_dout_21_7;
wire[15:0]	op_dout_21_6;
wire[15:0]	op_dout_21_1;
wire[15:0]	op_dout_21_0;
wire[15:0]	op_dout_21_3;
wire[15:0]	op_dout_21_2;
wire[15:0]	op_dout_58_5;
wire[15:0]	op_dout_77_3;
wire[15:0]	op_dout_23_3;
wire[15:0]	op_dout_23_2;
wire[15:0]	op_dout_23_1;
wire[15:0]	op_dout_23_0;
wire[15:0]	op_dout_23_7;
wire[15:0]	op_dout_23_6;
wire[15:0]	op_dout_23_5;
wire[15:0]	op_dout_23_4;
wire[15:0]	op_dout_59_2;
wire	rm_wr_en;
wire[15:0]	op_dout_29_5;
wire[15:0]	op_dout_29_4;
wire[15:0]	op_dout_29_7;
wire[15:0]	op_dout_29_6;
wire[15:0]	op_dout_29_1;
wire[15:0]	op_dout_29_0;
wire[15:0]	op_dout_29_3;
wire[15:0]	op_dout_29_2;
wire[15:0]	op_dout_88_3;
wire[15:0]	op_dout_75_5;
wire[5:0]	double_buf_wr_addr;
wire[15:0]	op_dout_80_2;
wire[15:0]	op_dout_80_3;
wire[15:0]	op_dout_80_0;
wire[15:0]	op_dout_80_1;
wire[15:0]	op_dout_80_6;
wire[15:0]	op_dout_80_7;
wire[15:0]	op_dout_80_4;
wire[15:0]	op_dout_80_5;
wire[15:0]	op_dout_90_5;
wire[15:0]	op_dout_47_5;
wire[15:0]	op_dout_47_4;
wire[15:0]	op_dout_47_7;
wire[15:0]	op_dout_47_6;
wire[15:0]	op_dout_47_1;
wire[15:0]	op_dout_47_0;
wire[15:0]	op_dout_47_3;
wire[15:0]	op_dout_47_2;
wire[15:0]	op_dout_86_0;
wire[15:0]	op_dout_86_1;
wire[15:0]	op_dout_86_2;
wire[15:0]	op_dout_86_3;
wire[15:0]	op_dout_86_4;
wire[15:0]	op_dout_86_5;
wire[15:0]	op_dout_86_6;
wire[15:0]	op_dout_86_7;
wire[63:0]	op_data_69;
wire[63:0]	op_data_68;
wire[15:0]	op_dout_90_4;
wire[63:0]	op_data_63;
wire[63:0]	op_data_62;
wire[63:0]	op_data_61;
wire[63:0]	op_data_60;
wire[63:0]	op_data_67;
wire[63:0]	op_data_66;
wire[63:0]	op_data_65;
wire[63:0]	op_data_64;
wire[15:0]	op_dout_82_4;
wire[15:0]	op_dout_82_5;
wire[15:0]	op_dout_82_6;
wire[15:0]	op_dout_82_7;
wire[15:0]	op_dout_82_0;
wire[15:0]	op_dout_82_1;
wire[15:0]	op_dout_82_2;
wire[15:0]	op_dout_82_3;
wire[6:0]	rm_rd_addr;
wire[15:0]	op_dout_49_7;
wire[15:0]	op_dout_49_6;
wire[15:0]	op_dout_49_5;
wire[15:0]	op_dout_49_4;
wire[15:0]	op_dout_49_3;
wire[15:0]	op_dout_49_2;
wire[15:0]	op_dout_49_1;
wire[15:0]	op_dout_49_0;
wire[15:0]	op_dout_89_3;
wire[15:0]	op_dout_89_2;
wire[15:0]	op_dout_89_1;
wire[15:0]	op_dout_89_0;
wire[15:0]	op_dout_89_7;
wire[15:0]	op_dout_89_6;
wire[15:0]	op_dout_89_5;
wire[15:0]	op_dout_89_4;
wire[15:0]	op_dout_85_7;
wire[15:0]	op_dout_90_6;
wire[15:0]	op_dout_43_1;
wire[15:0]	op_dout_43_0;
wire[15:0]	op_dout_43_3;
wire[15:0]	op_dout_43_2;
wire[15:0]	op_dout_43_5;
wire[15:0]	op_dout_43_4;
wire[15:0]	op_dout_43_7;
wire[15:0]	op_dout_43_6;
wire[15:0]	op_dout_90_1;
wire[15:0]	op_dout_41_7;
wire[15:0]	op_dout_41_6;
wire[15:0]	op_dout_41_5;
wire[15:0]	op_dout_41_4;
wire[63:0]	op_data_92;
wire[15:0]	op_dout_41_2;
wire[63:0]	op_data_90;
wire[63:0]	op_data_91;
wire[15:0]	op_dout_90_0;
wire[15:0]	op_dout_45_5;
wire[15:0]	op_dout_69_4;
wire[15:0]	op_dout_61_1;
wire[15:0]	op_dout_61_0;
wire[15:0]	op_dout_61_3;
wire[15:0]	op_dout_61_2;
wire[15:0]	op_dout_61_5;
wire[15:0]	op_dout_61_4;
wire[15:0]	op_dout_61_7;
wire[15:0]	op_dout_61_6;
wire[15:0]	op_dout_63_7;
wire[15:0]	op_dout_63_6;
wire[15:0]	op_dout_63_5;
wire[15:0]	op_dout_63_4;
wire[15:0]	op_dout_63_3;
wire[15:0]	op_dout_63_2;
wire[15:0]	op_dout_63_1;
wire[15:0]	op_dout_63_0;
wire[15:0]	op_dout_18_5;
wire[15:0]	op_dout_18_4;
wire[15:0]	op_dout_90_2;
wire[63:0]	op_data_6;
wire[15:0]	op_dout_18_6;
wire[63:0]	op_data_0;
wire[15:0]	op_dout_18_0;
wire[15:0]	op_dout_69_1;
wire[15:0]	op_dout_69_0;
wire[15:0]	op_dout_69_3;
wire[15:0]	op_dout_69_2;
wire[15:0]	op_dout_69_5;
wire[63:0]	op_data_2;
wire[15:0]	op_dout_69_7;
wire[15:0]	op_dout_69_6;
wire[63:0]	op_data_3;
wire[15:0]	op_dout_37_0;
wire[15:0]	op_dout_65_5;
wire[15:0]	op_dout_65_4;
wire[15:0]	op_dout_65_7;
wire[15:0]	op_dout_65_6;
wire[15:0]	op_dout_65_1;
wire[15:0]	op_dout_65_0;
wire[15:0]	op_dout_65_3;
wire[15:0]	op_dout_65_2;
wire[63:0]	op_data_27;
wire[63:0]	op_data_26;
wire[63:0]	op_data_25;
wire[63:0]	op_data_24;
wire[63:0]	op_data_23;
wire[63:0]	op_data_22;
wire[63:0]	op_data_21;
wire[63:0]	op_data_20;
wire[63:0]	op_data_29;
wire[63:0]	op_data_28;
wire[15:0]	op_dout_30_7;
wire[15:0]	op_dout_30_6;
wire[15:0]	op_dout_30_5;
wire[15:0]	op_dout_30_4;
wire[15:0]	op_dout_30_3;
wire[15:0]	op_dout_30_2;
wire[15:0]	op_dout_30_1;
wire[15:0]	op_dout_30_0;
wire[15:0]	op_dout_36_5;
wire[15:0]	op_dout_36_4;
wire[15:0]	op_dout_36_7;
wire[15:0]	op_dout_36_6;
wire[15:0]	op_dout_36_1;
wire[15:0]	op_dout_36_0;
wire[15:0]	op_dout_36_3;
wire[15:0]	op_dout_36_2;
wire[15:0]	op_dout_55_3;
wire	op_din_eop;
wire[15:0]	op_dout_84_6;
wire[6:0]	rm_wr_addr;
wire[63:0]	op_data_52;
wire[63:0]	op_data_53;
wire[63:0]	op_data_50;
wire[63:0]	op_data_51;
wire[63:0]	op_data_56;
wire[63:0]	op_data_57;
wire[63:0]	op_data_54;
wire[63:0]	op_data_55;
wire[63:0]	op_data_58;
wire[63:0]	op_data_59;
wire	op_din_en;
wire[15:0]	op_dout_67_2;
wire[15:0]	op_dout_34_3;
wire[15:0]	op_dout_34_2;
wire[15:0]	op_dout_34_1;
wire[15:0]	op_dout_34_0;
wire[15:0]	op_dout_34_7;
wire[15:0]	op_dout_34_6;
wire[15:0]	op_dout_34_5;
wire[15:0]	op_dout_34_4;
wire[15:0]	op_dout_44_2;
wire[15:0]	op_dout_32_1;
wire[15:0]	op_dout_44_0;
wire[15:0]	op_dout_44_1;
wire[15:0]	op_dout_44_6;
wire[15:0]	op_dout_44_7;
wire[15:0]	op_dout_44_4;
wire[15:0]	op_dout_32_0;
wire[15:0]	op_dout_38_7;
wire[15:0]	op_dout_38_6;
wire[15:0]	op_dout_38_5;
wire[15:0]	op_dout_38_4;
wire[15:0]	op_dout_38_3;
wire[15:0]	op_dout_32_3;
wire[15:0]	op_dout_38_1;
wire[15:0]	op_dout_38_0;
wire[15:0]	op_dout_91_4;
wire[15:0]	op_dout_32_2;
wire[15:0]	op_dout_91_5;
wire[15:0]	op_dout_32_5;
wire[15:0]	op_dout_91_6;
wire[15:0]	op_dout_32_4;
wire[15:0]	op_dout_68_3;
wire[15:0]	op_dout_32_7;
wire[15:0]	op_dout_91_0;
wire[15:0]	op_dout_32_6;
wire[15:0]	op_dout_91_1;
wire[15:0]	op_dout_91_2;
wire[15:0]	op_dout_91_3;
wire[15:0]	op_dout_13_4;
wire[15:0]	op_dout_42_0;
wire[15:0]	op_dout_42_1;
wire[15:0]	op_dout_42_2;
wire[15:0]	op_dout_42_3;
wire[15:0]	op_dout_42_4;
wire[15:0]	op_dout_42_5;
wire[15:0]	op_dout_42_6;
wire[15:0]	op_dout_42_7;
wire[5:0]	double_buf_rd_addr;
wire[15:0]	op_dout_55_5;
wire[15:0]	op_dout_40_6;
wire[15:0]	op_dout_40_7;
wire[15:0]	op_dout_40_4;
wire[15:0]	op_dout_40_5;
wire[15:0]	op_dout_40_2;
wire[15:0]	op_dout_40_3;
wire[15:0]	op_dout_40_0;
wire[15:0]	op_dout_40_1;
wire[15:0]	op_dout_48_6;
wire[15:0]	op_dout_48_7;
wire[15:0]	op_dout_48_4;
wire[15:0]	op_dout_48_5;
wire[15:0]	op_dout_48_2;
wire[15:0]	op_dout_48_3;
wire[15:0]	op_dout_48_0;
wire[15:0]	op_dout_48_1;
wire[15:0]	op_dout_6_1;
wire[15:0]	op_dout_6_0;
wire[15:0]	op_dout_6_3;
wire[15:0]	op_dout_6_2;
wire[15:0]	op_dout_6_5;
wire[15:0]	op_dout_6_4;
wire[15:0]	op_dout_6_7;
wire[15:0]	op_dout_6_6;
wire[15:0]	op_dout_67_0;
wire[15:0]	op_dout_0_3;
wire[15:0]	op_dout_0_2;
wire[15:0]	op_dout_0_1;
wire[15:0]	op_dout_0_0;
wire[15:0]	op_dout_0_7;
wire[15:0]	op_dout_0_6;
wire[15:0]	op_dout_0_5;
wire[15:0]	op_dout_0_4;
wire[15:0]	op_dout_67_5;
wire[15:0]	op_dout_67_4;
wire[15:0]	op_dout_60_0;
wire[15:0]	op_dout_60_1;
wire[15:0]	op_dout_60_2;
wire[15:0]	op_dout_60_3;
wire[15:0]	op_dout_60_4;
wire[15:0]	op_dout_60_5;
wire[15:0]	op_dout_60_6;
wire[15:0]	op_dout_60_7;
wire[15:0]	op_dout_66_3;
wire[63:0]	op_data_18;
wire[63:0]	op_data_19;
wire[63:0]	op_data_16;
wire[63:0]	op_data_17;
wire[63:0]	op_data_14;
wire[63:0]	op_data_15;
wire[63:0]	op_data_12;
wire[63:0]	op_data_13;
wire[63:0]	op_data_10;
wire[63:0]	op_data_11;
wire[15:0]	op_dout_68_0;
wire[15:0]	op_dout_68_1;
wire[15:0]	op_dout_68_2;
wire[15:0]	op_dout_62_1;
wire[15:0]	op_dout_68_4;
wire[15:0]	op_dout_68_5;
wire[15:0]	op_dout_68_6;
wire[15:0]	op_dout_68_7;
wire[15:0]	op_dout_4_7;
wire[15:0]	op_dout_4_6;
wire[15:0]	op_dout_4_5;
wire[15:0]	op_dout_4_4;
wire[15:0]	op_dout_4_3;
wire[15:0]	op_dout_4_2;
wire[15:0]	op_dout_4_1;
wire[15:0]	op_dout_4_0;
wire[15:0]	op_dout_62_6;
wire[15:0]	op_dout_62_7;
wire[15:0]	op_dout_62_4;
wire[15:0]	op_dout_62_5;
wire[15:0]	op_dout_62_2;
wire[15:0]	op_dout_62_3;
wire[15:0]	op_dout_62_0;
wire[15:0]	op_dout_57_3;
wire[15:0]	op_dout_90_7;
wire[15:0]	op_dout_64_4;
wire[15:0]	op_dout_64_5;
wire[15:0]	op_dout_64_6;
wire[15:0]	op_dout_57_1;
wire[15:0]	op_dout_64_0;
wire[15:0]	op_dout_64_1;
wire[15:0]	op_dout_64_2;
wire[15:0]	op_dout_64_3;
wire[15:0]	op_dout_9_2;
wire[15:0]	op_dout_9_3;
wire[15:0]	op_dout_9_0;
wire[15:0]	op_dout_9_1;
wire[15:0]	op_dout_9_6;
wire[15:0]	op_dout_9_7;
wire[15:0]	op_dout_9_4;
wire[15:0]	op_dout_9_5;
wire[15:0]	op_dout_67_3;
wire[15:0]	op_dout_90_3;
wire[15:0]	op_dout_31_6;
wire[15:0]	op_dout_31_7;
wire[15:0]	op_dout_31_4;
wire[15:0]	op_dout_31_5;
wire[15:0]	op_dout_31_2;
wire[15:0]	op_dout_31_3;
wire[15:0]	op_dout_31_0;
wire[15:0]	op_dout_31_1;
wire[63:0]	op_data_85;
wire[63:0]	op_data_84;
wire[63:0]	op_data_87;
wire[63:0]	op_data_86;
wire[63:0]	op_data_81;
wire[63:0]	op_data_80;
wire[63:0]	op_data_83;
wire[63:0]	op_data_82;
wire[15:0]	op_dout_37_4;
wire[15:0]	op_dout_37_5;
wire[15:0]	op_dout_37_6;
wire[15:0]	op_dout_37_7;
wire[63:0]	op_data_89;
wire[63:0]	op_data_88;
wire[15:0]	op_dout_37_2;
wire[15:0]	op_dout_37_3;
wire[15:0]	op_dout_54_5;
wire[15:0]	op_dout_54_4;
wire[15:0]	op_dout_73_5;
wire[15:0]	op_dout_54_7;
wire[15:0]	op_dout_33_0;
wire[15:0]	op_dout_54_6;
wire[15:0]	op_dout_33_1;
wire[15:0]	op_dout_54_1;
wire[15:0]	op_dout_33_2;
wire[15:0]	op_dout_54_0;
wire[15:0]	op_dout_66_2;
wire[15:0]	op_dout_59_0;
wire[15:0]	op_dout_33_3;
wire[15:0]	op_dout_54_3;
wire[15:0]	op_dout_59_1;
wire[15:0]	op_dout_3_4;
wire[15:0]	op_dout_3_5;
wire[15:0]	op_dout_3_6;
wire[15:0]	op_dout_3_7;
wire[15:0]	op_dout_3_0;
wire[15:0]	op_dout_3_1;
wire[15:0]	op_dout_3_2;
wire[15:0]	op_dout_3_3;
wire[15:0]	op_dout_59_3;
wire[15:0]	op_dout_33_6;
wire[15:0]	op_dout_59_4;
wire[15:0]	op_dout_33_7;
wire[15:0]	op_dout_59_5;
wire[15:0]	op_dout_59_6;
wire[127:0]	op_bias;
wire[15:0]	op_dout_59_7;
wire[15:0]	op_dout_35_2;
wire[15:0]	op_dout_35_3;
wire[15:0]	op_dout_35_0;
wire[15:0]	op_dout_35_1;
wire[15:0]	op_dout_35_6;
wire[15:0]	op_dout_35_7;
wire[15:0]	op_dout_35_4;
wire[15:0]	op_dout_35_5;
wire[15:0]	op_dout_67_7;
wire[15:0]	op_dout_92_0;
wire[15:0]	op_dout_83_3;
wire[15:0]	op_dout_58_3;
wire[15:0]	op_dout_92_6;
wire[15:0]	op_dout_39_6;
wire[15:0]	op_dout_39_7;
wire[15:0]	op_dout_39_4;
wire[15:0]	op_dout_39_5;
wire[15:0]	op_dout_33_4;
wire[15:0]	op_dout_39_3;
wire[15:0]	op_dout_39_0;
wire[15:0]	op_dout_39_1;
wire[15:0]	op_dout_66_0;
wire[15:0]	op_dout_66_1;
wire[15:0]	op_dout_46_4;
wire[15:0]	op_dout_66_6;
wire[15:0]	op_dout_66_7;
wire[15:0]	op_dout_56_3;
wire[15:0]	op_dout_33_5;
wire[15:0]	op_dout_66_4;
wire[15:0]	op_dout_56_2;
wire[15:0]	op_dout_66_5;
wire[15:0]	op_dout_56_1;
wire[15:0]	op_dout_56_0;
wire[15:0]	op_dout_56_7;
wire[15:0]	op_dout_56_6;
wire[15:0]	op_dout_56_5;
wire[15:0]	op_dout_56_4;
wire[15:0]	op_dout_7_0;
wire[15:0]	op_dout_7_1;
wire[15:0]	op_dout_7_2;
wire[15:0]	op_dout_7_3;
wire[15:0]	op_dout_7_4;
wire[15:0]	op_dout_7_5;
wire[15:0]	op_dout_7_6;
wire[15:0]	op_dout_7_7;
wire[15:0]	op_dout_1_2;
wire[15:0]	op_dout_1_3;
wire[15:0]	op_dout_1_0;
wire[15:0]	op_dout_1_1;
wire[15:0]	op_dout_1_6;
wire[15:0]	op_dout_1_7;
wire[15:0]	op_dout_1_4;
wire[15:0]	op_dout_1_5;
wire[63:0]	op_data_41;
wire[63:0]	op_data_40;
wire[63:0]	op_data_43;
wire[63:0]	op_data_42;
wire[63:0]	op_data_45;
wire[63:0]	op_data_44;
wire[63:0]	op_data_47;
wire[63:0]	op_data_46;
wire[63:0]	op_data_49;
wire[63:0]	op_data_48;
wire[15:0]	op_dout_37_1;
wire[15:0]	op_dout_26_6;
wire[15:0]	op_dout_46_5;
wire[15:0]	op_dout_58_1;
wire[15:0]	op_dout_91_7;
wire[15:0]	op_dout_26_7;
wire[15:0]	op_dout_13_0;
wire[15:0]	op_dout_26_5;
wire[15:0]	op_dout_84_7;
wire[15:0]	op_dout_55_4;
wire[15:0]	op_dout_26_2;
wire[15:0]	op_dout_55_6;
wire[15:0]	op_dout_55_7;
wire[15:0]	op_dout_55_0;
wire[15:0]	op_dout_55_1;
wire[15:0]	op_dout_55_2;
wire[15:0]	op_dout_13_7;
wire[15:0]	op_dout_45_3;
wire[15:0]	op_dout_26_0;
wire[15:0]	op_dout_45_2;
wire[15:0]	op_dout_13_5;
wire[15:0]	op_dout_45_1;
wire[15:0]	op_dout_57_2;
wire[511:0]	op_weight;
wire[15:0]	op_dout_57_0;
wire[15:0]	op_dout_45_0;
wire[15:0]	op_dout_57_6;
wire[15:0]	op_dout_57_7;
wire[15:0]	op_dout_57_4;
wire[15:0]	op_dout_57_5;
wire[15:0]	op_dout_45_7;
wire[15:0]	op_dout_45_6;
wire[15:0]	op_dout_5_6;
wire[15:0]	op_dout_5_7;
wire[15:0]	op_dout_5_4;
wire[15:0]	op_dout_5_5;
wire[15:0]	op_dout_5_2;
wire[15:0]	op_dout_5_3;
wire[15:0]	op_dout_5_0;
wire[15:0]	op_dout_5_1;
wire[15:0]	op_dout_92_3;
wire[15:0]	op_dout_92_2;
wire[15:0]	op_dout_92_1;
wire[15:0]	op_dout_45_4;
wire[15:0]	op_dout_92_7;
wire[15:0]	op_dout_88_0;
wire[15:0]	op_dout_92_5;
wire[15:0]	op_dout_92_4;
wire[15:0]	op_dout_84_5;
wire[15:0]	op_dout_88_1;
wire[15:0]	op_dout_88_6;
wire[15:0]	op_dout_58_2;
wire[15:0]	op_dout_88_7;
wire[15:0]	op_dout_54_2;
wire[15:0]	op_dout_88_4;
wire[15:0]	op_dout_88_5;
wire[15:0]	op_dout_8_3;
wire[15:0]	op_dout_8_2;
wire[15:0]	op_dout_8_1;
wire[15:0]	op_dout_8_0;
wire[15:0]	op_dout_8_7;
wire[15:0]	op_dout_8_6;
wire[15:0]	op_dout_8_5;
wire[15:0]	op_dout_8_4;
wire[15:0]	op_dout_51_0;
wire[15:0]	op_dout_51_1;
wire[15:0]	op_dout_51_2;
wire[15:0]	op_dout_51_3;
wire[15:0]	op_dout_51_4;
wire[63:0]	op_data_32;
wire[15:0]	op_dout_51_6;
wire[15:0]	op_dout_51_7;
wire[15:0]	op_dout_84_4;
wire[63:0]	op_data_33;
wire[15:0]	op_dout_53_6;
wire[63:0]	op_data_34;
wire[15:0]	op_dout_53_4;
wire[15:0]	op_dout_53_5;
wire[15:0]	op_dout_53_2;
wire[15:0]	op_dout_53_3;
wire[15:0]	op_dout_53_0;
wire[15:0]	op_dout_25_4;
wire[15:0]	op_dout_25_7;
wire[15:0]	op_dout_73_4;
wire[15:0]	op_dout_58_4;
wire[15:0]	op_dout_73_6;
wire[63:0]	op_data_37;
wire[15:0]	op_dout_73_0;
wire[15:0]	op_dout_73_1;
wire[15:0]	op_dout_73_2;
wire[15:0]	op_dout_51_5;
wire	double_buf_wr_en;
wire[15:0]	op_dout_84_0;
wire[15:0]	op_dout_71_2;
wire[15:0]	op_dout_71_3;
wire[15:0]	op_dout_71_0;
wire[15:0]	op_dout_71_1;
wire[15:0]	op_dout_71_6;
wire[15:0]	op_dout_71_7;
wire[15:0]	op_dout_71_4;
wire[15:0]	op_dout_58_7;
wire[15:0]	op_dout_2_5;
wire[15:0]	op_dout_2_4;
wire[15:0]	op_dout_2_7;
wire[15:0]	op_dout_2_6;
wire[15:0]	op_dout_2_1;
wire[15:0]	op_dout_2_0;
wire[15:0]	op_dout_2_3;
wire[15:0]	op_dout_2_2;
wire[15:0]	op_dout_84_1;
wire[15:0]	op_dout_46_6;
wire	bm_rd_addr;
wire[15:0]	op_dout_12_3;
wire[15:0]	op_dout_46_7;
wire[15:0]	op_dout_58_6;
wire[15:0]	op_dout_27_6;
wire[15:0]	op_dout_46_0;
wire[15:0]	op_dout_27_5;
wire[15:0]	op_dout_46_1;
wire[15:0]	op_dout_12_0;
wire[15:0]	op_dout_46_2;
wire[15:0]	op_dout_53_7;
wire[15:0]	op_dout_12_7;
wire[15:0]	op_dout_46_3;
wire[15:0]	op_dout_12_6;
wire[15:0]	op_dout_27_1;
wire[15:0]	op_dout_77_0;
wire[15:0]	op_dout_77_1;
wire[15:0]	op_dout_77_2;
wire[15:0]	op_dout_12_4;
wire[15:0]	op_dout_77_4;
wire[15:0]	op_dout_77_5;
wire[15:0]	op_dout_77_6;
wire[15:0]	op_dout_77_7;
wire[15:0]	op_dout_75_6;
wire[15:0]	op_dout_75_7;
wire[15:0]	op_dout_75_4;
wire[15:0]	op_dout_53_1;
wire[15:0]	op_dout_75_2;
wire[15:0]	op_dout_75_3;
wire[15:0]	op_dout_75_0;
wire[15:0]	op_dout_75_1;
wire[15:0]	op_dout_19_4;
wire[15:0]	op_dout_19_5;
wire[15:0]	op_dout_19_6;
wire[15:0]	op_dout_19_7;
wire[15:0]	op_dout_19_0;
wire[15:0]	op_dout_19_1;
wire[15:0]	op_dout_19_2;
wire[15:0]	op_dout_19_3;
wire[15:0]	op_dout_79_2;
wire[15:0]	op_dout_79_3;
wire[15:0]	op_dout_79_0;
wire[15:0]	op_dout_79_1;
wire[15:0]	op_dout_79_6;
wire[15:0]	op_dout_79_7;
wire[15:0]	op_dout_79_4;
wire[15:0]	op_dout_79_5;
wire[15:0]	op_dout_15_0;
wire[15:0]	op_dout_15_1;
wire[15:0]	op_dout_15_2;
wire[15:0]	op_dout_15_3;
wire[15:0]	op_dout_15_4;
wire[15:0]	op_dout_15_5;
wire[15:0]	op_dout_15_6;
wire[15:0]	op_dout_15_7;
wire[15:0]	op_dout_73_7;
wire[15:0]	op_dout_44_3;
wire[15:0]	op_dout_84_2;
wire[15:0]	op_dout_73_3;
wire[15:0]	op_dout_44_5;
wire[15:0]	op_dout_67_1;
wire[15:0]	op_dout_17_6;
wire[15:0]	op_dout_17_7;
wire[15:0]	op_dout_17_4;
wire[15:0]	op_dout_17_5;
wire[15:0]	op_dout_17_2;
wire[15:0]	op_dout_17_3;
wire[15:0]	op_dout_17_0;
wire[15:0]	op_dout_17_1;
wire[15:0]	op_dout_38_2;
wire[15:0]	op_dout_11_4;
wire[15:0]	op_dout_11_5;
wire[15:0]	op_dout_11_6;
wire[15:0]	op_dout_11_7;
wire[15:0]	op_dout_11_0;
wire[15:0]	op_dout_11_1;
wire[15:0]	op_dout_11_2;
wire[15:0]	op_dout_11_3;
wire[15:0]	op_dout_24_0;
wire[15:0]	op_dout_24_1;
wire[15:0]	op_dout_24_2;
wire[15:0]	op_dout_24_3;
wire[15:0]	op_dout_24_4;
wire[15:0]	op_dout_24_5;
wire[15:0]	op_dout_24_6;
wire[15:0]	op_dout_24_7;
wire[15:0]	op_dout_13_2;
wire[15:0]	op_dout_13_3;
wire[15:0]	op_dout_26_4;
wire[15:0]	op_dout_13_1;
wire[15:0]	op_dout_13_6;
wire[15:0]	op_dout_26_3;
wire[63:0]	op_data_30;
wire[15:0]	op_dout_26_1;
wire[15:0]	op_dout_20_4;
wire[15:0]	op_dout_20_5;
wire[15:0]	op_dout_20_6;
wire[15:0]	op_dout_20_7;
wire[15:0]	op_dout_20_0;
wire[15:0]	op_dout_20_1;
wire[15:0]	op_dout_20_2;
wire[15:0]	op_dout_20_3;
wire[15:0]	op_dout_28_4;
wire[15:0]	op_dout_28_5;
wire[15:0]	op_dout_28_6;
wire[15:0]	op_dout_28_7;
wire[15:0]	op_dout_28_0;
wire[15:0]	op_dout_28_1;
wire[15:0]	op_dout_28_2;
wire[15:0]	op_dout_28_3;
wire[63:0]	op_data_31;
wire[15:0]	op_dout_50_1;
wire[15:0]	op_dout_50_0;
wire[15:0]	op_dout_50_3;
wire[15:0]	op_dout_50_2;
wire[15:0]	op_dout_50_5;
wire[15:0]	op_dout_50_4;
wire[15:0]	op_dout_50_7;
wire[15:0]	op_dout_50_6;
wire[15:0]	op_dout_71_5;
wire[15:0]	op_dout_52_7;
wire[15:0]	op_dout_52_6;
wire[15:0]	op_dout_52_5;
wire[15:0]	op_dout_52_4;
wire[15:0]	op_dout_52_3;
wire[15:0]	op_dout_52_2;
wire[15:0]	op_dout_52_1;
wire[15:0]	op_dout_52_0;
wire[15:0]	op_dout_88_2;


controller_v2 #(
.DB_W_IN (12),
.DB_H_IN (12),
.DB_C_IN (4),
.DB_W_OUT (8),
.DB_H_OUT (8),
.DB_C_OUT (8),
.WB_W (5),
.WB_H (5),
.WB_C (4),
.WB_K (8),
.GROUP (1),
.RM_WR_ADDR_WIDTH (7),
.RM_WR_NUM_PER_CHANNEL (1),
.RM_WR_STRIDE (1),
.RM_RING_LENGTH (6),
.RM_RD_PHY_ADDR_JUMP (5),
.RM_RD_ADDR_WIDTH (7),
.DOUBLE_BUF_WR_DEPTH (50),
.DOUBLE_BUF_RD_DEPTH (50),
.DOUBLE_BUF_WR_ADDR_WIDTH (6),
.DOUBLE_BUF_RD_ADDR_WIDTH (6),
.START_ADDR (7),
.LENGTH (25),
.BM_RD_ADDR_WIDTH (1),
.CPF (4),
.KPF (8),
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

conv2_rm_ram u_conv2_rm_ram_0(
.clka(clk),
.wea(rm_wr_en),
.addra(rm_wr_addr),
.dina(blob_din[63:0]),
.clkb(clk),
.addrb(rm_rd_addr),
.doutb(op_data_0));

conv2_rm_ram u_conv2_rm_ram_1(
.clka(clk),
.wea(rm_wr_en),
.addra(rm_wr_addr),
.dina(blob_din[127:64]),
.clkb(clk),
.addrb(rm_rd_addr),
.doutb(op_data_1));

conv2_rm_ram u_conv2_rm_ram_2(
.clka(clk),
.wea(rm_wr_en),
.addra(rm_wr_addr),
.dina(blob_din[191:128]),
.clkb(clk),
.addrb(rm_rd_addr),
.doutb(op_data_2));

conv2_rm_ram u_conv2_rm_ram_3(
.clka(clk),
.wea(rm_wr_en),
.addra(rm_wr_addr),
.dina(blob_din[255:192]),
.clkb(clk),
.addrb(rm_rd_addr),
.doutb(op_data_3));

conv2_rm_ram u_conv2_rm_ram_4(
.clka(clk),
.wea(rm_wr_en),
.addra(rm_wr_addr),
.dina(blob_din[319:256]),
.clkb(clk),
.addrb(rm_rd_addr),
.doutb(op_data_4));

conv2_rm_ram u_conv2_rm_ram_5(
.clka(clk),
.wea(rm_wr_en),
.addra(rm_wr_addr),
.dina(blob_din[383:320]),
.clkb(clk),
.addrb(rm_rd_addr),
.doutb(op_data_5));

conv2_rm_ram u_conv2_rm_ram_6(
.clka(clk),
.wea(rm_wr_en),
.addra(rm_wr_addr),
.dina(blob_din[447:384]),
.clkb(clk),
.addrb(rm_rd_addr),
.doutb(op_data_6));

conv2_rm_ram u_conv2_rm_ram_7(
.clka(clk),
.wea(rm_wr_en),
.addra(rm_wr_addr),
.dina(blob_din[511:448]),
.clkb(clk),
.addrb(rm_rd_addr),
.doutb(op_data_7));

conv2_rm_ram u_conv2_rm_ram_8(
.clka(clk),
.wea(rm_wr_en),
.addra(rm_wr_addr),
.dina(blob_din[575:512]),
.clkb(clk),
.addrb(rm_rd_addr),
.doutb(op_data_8));

conv2_rm_ram u_conv2_rm_ram_9(
.clka(clk),
.wea(rm_wr_en),
.addra(rm_wr_addr),
.dina(blob_din[639:576]),
.clkb(clk),
.addrb(rm_rd_addr),
.doutb(op_data_9));

conv2_rm_ram u_conv2_rm_ram_10(
.clka(clk),
.wea(rm_wr_en),
.addra(rm_wr_addr),
.dina(blob_din[703:640]),
.clkb(clk),
.addrb(rm_rd_addr),
.doutb(op_data_10));

conv2_rm_ram u_conv2_rm_ram_11(
.clka(clk),
.wea(rm_wr_en),
.addra(rm_wr_addr),
.dina(blob_din[767:704]),
.clkb(clk),
.addrb(rm_rd_addr),
.doutb(op_data_11));

conv2_rm_ram u_conv2_rm_ram_12(
.clka(clk),
.wea(rm_wr_en),
.addra(rm_wr_addr),
.dina(blob_din[831:768]),
.clkb(clk),
.addrb(rm_rd_addr),
.doutb(op_data_12));

conv2_rm_ram u_conv2_rm_ram_13(
.clka(clk),
.wea(rm_wr_en),
.addra(rm_wr_addr),
.dina(blob_din[895:832]),
.clkb(clk),
.addrb(rm_rd_addr),
.doutb(op_data_13));

conv2_rm_ram u_conv2_rm_ram_14(
.clka(clk),
.wea(rm_wr_en),
.addra(rm_wr_addr),
.dina(blob_din[959:896]),
.clkb(clk),
.addrb(rm_rd_addr),
.doutb(op_data_14));

conv2_rm_ram u_conv2_rm_ram_15(
.clka(clk),
.wea(rm_wr_en),
.addra(rm_wr_addr),
.dina(blob_din[1023:960]),
.clkb(clk),
.addrb(rm_rd_addr),
.doutb(op_data_15));

conv2_rm_ram u_conv2_rm_ram_16(
.clka(clk),
.wea(rm_wr_en),
.addra(rm_wr_addr),
.dina(blob_din[1087:1024]),
.clkb(clk),
.addrb(rm_rd_addr),
.doutb(op_data_16));

conv2_rm_ram u_conv2_rm_ram_17(
.clka(clk),
.wea(rm_wr_en),
.addra(rm_wr_addr),
.dina(blob_din[1151:1088]),
.clkb(clk),
.addrb(rm_rd_addr),
.doutb(op_data_17));

conv2_rm_ram u_conv2_rm_ram_18(
.clka(clk),
.wea(rm_wr_en),
.addra(rm_wr_addr),
.dina(blob_din[1215:1152]),
.clkb(clk),
.addrb(rm_rd_addr),
.doutb(op_data_18));

conv2_rm_ram u_conv2_rm_ram_19(
.clka(clk),
.wea(rm_wr_en),
.addra(rm_wr_addr),
.dina(blob_din[1279:1216]),
.clkb(clk),
.addrb(rm_rd_addr),
.doutb(op_data_19));

conv2_rm_ram u_conv2_rm_ram_20(
.clka(clk),
.wea(rm_wr_en),
.addra(rm_wr_addr),
.dina(blob_din[1343:1280]),
.clkb(clk),
.addrb(rm_rd_addr),
.doutb(op_data_20));

conv2_rm_ram u_conv2_rm_ram_21(
.clka(clk),
.wea(rm_wr_en),
.addra(rm_wr_addr),
.dina(blob_din[1407:1344]),
.clkb(clk),
.addrb(rm_rd_addr),
.doutb(op_data_21));

conv2_rm_ram u_conv2_rm_ram_22(
.clka(clk),
.wea(rm_wr_en),
.addra(rm_wr_addr),
.dina(blob_din[1471:1408]),
.clkb(clk),
.addrb(rm_rd_addr),
.doutb(op_data_22));

conv2_rm_ram u_conv2_rm_ram_23(
.clka(clk),
.wea(rm_wr_en),
.addra(rm_wr_addr),
.dina(blob_din[1535:1472]),
.clkb(clk),
.addrb(rm_rd_addr),
.doutb(op_data_23));

conv2_rm_ram u_conv2_rm_ram_24(
.clka(clk),
.wea(rm_wr_en),
.addra(rm_wr_addr),
.dina(blob_din[1599:1536]),
.clkb(clk),
.addrb(rm_rd_addr),
.doutb(op_data_24));

conv2_rm_ram u_conv2_rm_ram_25(
.clka(clk),
.wea(rm_wr_en),
.addra(rm_wr_addr),
.dina(blob_din[1663:1600]),
.clkb(clk),
.addrb(rm_rd_addr),
.doutb(op_data_25));

conv2_rm_ram u_conv2_rm_ram_26(
.clka(clk),
.wea(rm_wr_en),
.addra(rm_wr_addr),
.dina(blob_din[1727:1664]),
.clkb(clk),
.addrb(rm_rd_addr),
.doutb(op_data_26));

conv2_rm_ram u_conv2_rm_ram_27(
.clka(clk),
.wea(rm_wr_en),
.addra(rm_wr_addr),
.dina(blob_din[1791:1728]),
.clkb(clk),
.addrb(rm_rd_addr),
.doutb(op_data_27));

conv2_rm_ram u_conv2_rm_ram_28(
.clka(clk),
.wea(rm_wr_en),
.addra(rm_wr_addr),
.dina(blob_din[1855:1792]),
.clkb(clk),
.addrb(rm_rd_addr),
.doutb(op_data_28));

conv2_rm_ram u_conv2_rm_ram_29(
.clka(clk),
.wea(rm_wr_en),
.addra(rm_wr_addr),
.dina(blob_din[1919:1856]),
.clkb(clk),
.addrb(rm_rd_addr),
.doutb(op_data_29));

conv2_rm_ram u_conv2_rm_ram_30(
.clka(clk),
.wea(rm_wr_en),
.addra(rm_wr_addr),
.dina(blob_din[1983:1920]),
.clkb(clk),
.addrb(rm_rd_addr),
.doutb(op_data_30));

conv2_rm_ram u_conv2_rm_ram_31(
.clka(clk),
.wea(rm_wr_en),
.addra(rm_wr_addr),
.dina(blob_din[2047:1984]),
.clkb(clk),
.addrb(rm_rd_addr),
.doutb(op_data_31));

conv2_rm_ram u_conv2_rm_ram_32(
.clka(clk),
.wea(rm_wr_en),
.addra(rm_wr_addr),
.dina(blob_din[2111:2048]),
.clkb(clk),
.addrb(rm_rd_addr),
.doutb(op_data_32));

conv2_rm_ram u_conv2_rm_ram_33(
.clka(clk),
.wea(rm_wr_en),
.addra(rm_wr_addr),
.dina(blob_din[2175:2112]),
.clkb(clk),
.addrb(rm_rd_addr),
.doutb(op_data_33));

conv2_rm_ram u_conv2_rm_ram_34(
.clka(clk),
.wea(rm_wr_en),
.addra(rm_wr_addr),
.dina(blob_din[2239:2176]),
.clkb(clk),
.addrb(rm_rd_addr),
.doutb(op_data_34));

conv2_rm_ram u_conv2_rm_ram_35(
.clka(clk),
.wea(rm_wr_en),
.addra(rm_wr_addr),
.dina(blob_din[2303:2240]),
.clkb(clk),
.addrb(rm_rd_addr),
.doutb(op_data_35));

conv2_rm_ram u_conv2_rm_ram_36(
.clka(clk),
.wea(rm_wr_en),
.addra(rm_wr_addr),
.dina(blob_din[2367:2304]),
.clkb(clk),
.addrb(rm_rd_addr),
.doutb(op_data_36));

conv2_rm_ram u_conv2_rm_ram_37(
.clka(clk),
.wea(rm_wr_en),
.addra(rm_wr_addr),
.dina(blob_din[2431:2368]),
.clkb(clk),
.addrb(rm_rd_addr),
.doutb(op_data_37));

conv2_rm_ram u_conv2_rm_ram_38(
.clka(clk),
.wea(rm_wr_en),
.addra(rm_wr_addr),
.dina(blob_din[2495:2432]),
.clkb(clk),
.addrb(rm_rd_addr),
.doutb(op_data_38));

conv2_rm_ram u_conv2_rm_ram_39(
.clka(clk),
.wea(rm_wr_en),
.addra(rm_wr_addr),
.dina(blob_din[2559:2496]),
.clkb(clk),
.addrb(rm_rd_addr),
.doutb(op_data_39));

conv2_rm_ram u_conv2_rm_ram_40(
.clka(clk),
.wea(rm_wr_en),
.addra(rm_wr_addr),
.dina(blob_din[2623:2560]),
.clkb(clk),
.addrb(rm_rd_addr),
.doutb(op_data_40));

conv2_rm_ram u_conv2_rm_ram_41(
.clka(clk),
.wea(rm_wr_en),
.addra(rm_wr_addr),
.dina(blob_din[2687:2624]),
.clkb(clk),
.addrb(rm_rd_addr),
.doutb(op_data_41));

conv2_rm_ram u_conv2_rm_ram_42(
.clka(clk),
.wea(rm_wr_en),
.addra(rm_wr_addr),
.dina(blob_din[2751:2688]),
.clkb(clk),
.addrb(rm_rd_addr),
.doutb(op_data_42));

conv2_rm_ram u_conv2_rm_ram_43(
.clka(clk),
.wea(rm_wr_en),
.addra(rm_wr_addr),
.dina(blob_din[2815:2752]),
.clkb(clk),
.addrb(rm_rd_addr),
.doutb(op_data_43));

conv2_rm_ram u_conv2_rm_ram_44(
.clka(clk),
.wea(rm_wr_en),
.addra(rm_wr_addr),
.dina(blob_din[2879:2816]),
.clkb(clk),
.addrb(rm_rd_addr),
.doutb(op_data_44));

conv2_rm_ram u_conv2_rm_ram_45(
.clka(clk),
.wea(rm_wr_en),
.addra(rm_wr_addr),
.dina(blob_din[2943:2880]),
.clkb(clk),
.addrb(rm_rd_addr),
.doutb(op_data_45));

conv2_rm_ram u_conv2_rm_ram_46(
.clka(clk),
.wea(rm_wr_en),
.addra(rm_wr_addr),
.dina(blob_din[3007:2944]),
.clkb(clk),
.addrb(rm_rd_addr),
.doutb(op_data_46));

conv2_rm_ram u_conv2_rm_ram_47(
.clka(clk),
.wea(rm_wr_en),
.addra(rm_wr_addr),
.dina(blob_din[3071:3008]),
.clkb(clk),
.addrb(rm_rd_addr),
.doutb(op_data_47));

conv2_rm_ram u_conv2_rm_ram_48(
.clka(clk),
.wea(rm_wr_en),
.addra(rm_wr_addr),
.dina(blob_din[3135:3072]),
.clkb(clk),
.addrb(rm_rd_addr),
.doutb(op_data_48));

conv2_rm_ram u_conv2_rm_ram_49(
.clka(clk),
.wea(rm_wr_en),
.addra(rm_wr_addr),
.dina(blob_din[3199:3136]),
.clkb(clk),
.addrb(rm_rd_addr),
.doutb(op_data_49));

conv2_rm_ram u_conv2_rm_ram_50(
.clka(clk),
.wea(rm_wr_en),
.addra(rm_wr_addr),
.dina(blob_din[3263:3200]),
.clkb(clk),
.addrb(rm_rd_addr),
.doutb(op_data_50));

conv2_rm_ram u_conv2_rm_ram_51(
.clka(clk),
.wea(rm_wr_en),
.addra(rm_wr_addr),
.dina(blob_din[3327:3264]),
.clkb(clk),
.addrb(rm_rd_addr),
.doutb(op_data_51));

conv2_rm_ram u_conv2_rm_ram_52(
.clka(clk),
.wea(rm_wr_en),
.addra(rm_wr_addr),
.dina(blob_din[3391:3328]),
.clkb(clk),
.addrb(rm_rd_addr),
.doutb(op_data_52));

conv2_rm_ram u_conv2_rm_ram_53(
.clka(clk),
.wea(rm_wr_en),
.addra(rm_wr_addr),
.dina(blob_din[3455:3392]),
.clkb(clk),
.addrb(rm_rd_addr),
.doutb(op_data_53));

conv2_rm_ram u_conv2_rm_ram_54(
.clka(clk),
.wea(rm_wr_en),
.addra(rm_wr_addr),
.dina(blob_din[3519:3456]),
.clkb(clk),
.addrb(rm_rd_addr),
.doutb(op_data_54));

conv2_rm_ram u_conv2_rm_ram_55(
.clka(clk),
.wea(rm_wr_en),
.addra(rm_wr_addr),
.dina(blob_din[3583:3520]),
.clkb(clk),
.addrb(rm_rd_addr),
.doutb(op_data_55));

conv2_rm_ram u_conv2_rm_ram_56(
.clka(clk),
.wea(rm_wr_en),
.addra(rm_wr_addr),
.dina(blob_din[3647:3584]),
.clkb(clk),
.addrb(rm_rd_addr),
.doutb(op_data_56));

conv2_rm_ram u_conv2_rm_ram_57(
.clka(clk),
.wea(rm_wr_en),
.addra(rm_wr_addr),
.dina(blob_din[3711:3648]),
.clkb(clk),
.addrb(rm_rd_addr),
.doutb(op_data_57));

conv2_rm_ram u_conv2_rm_ram_58(
.clka(clk),
.wea(rm_wr_en),
.addra(rm_wr_addr),
.dina(blob_din[3775:3712]),
.clkb(clk),
.addrb(rm_rd_addr),
.doutb(op_data_58));

conv2_rm_ram u_conv2_rm_ram_59(
.clka(clk),
.wea(rm_wr_en),
.addra(rm_wr_addr),
.dina(blob_din[3839:3776]),
.clkb(clk),
.addrb(rm_rd_addr),
.doutb(op_data_59));

conv2_rm_ram u_conv2_rm_ram_60(
.clka(clk),
.wea(rm_wr_en),
.addra(rm_wr_addr),
.dina(blob_din[3903:3840]),
.clkb(clk),
.addrb(rm_rd_addr),
.doutb(op_data_60));

conv2_rm_ram u_conv2_rm_ram_61(
.clka(clk),
.wea(rm_wr_en),
.addra(rm_wr_addr),
.dina(blob_din[3967:3904]),
.clkb(clk),
.addrb(rm_rd_addr),
.doutb(op_data_61));

conv2_rm_ram u_conv2_rm_ram_62(
.clka(clk),
.wea(rm_wr_en),
.addra(rm_wr_addr),
.dina(blob_din[4031:3968]),
.clkb(clk),
.addrb(rm_rd_addr),
.doutb(op_data_62));

conv2_rm_ram u_conv2_rm_ram_63(
.clka(clk),
.wea(rm_wr_en),
.addra(rm_wr_addr),
.dina(blob_din[4095:4032]),
.clkb(clk),
.addrb(rm_rd_addr),
.doutb(op_data_63));

conv2_rm_ram u_conv2_rm_ram_64(
.clka(clk),
.wea(rm_wr_en),
.addra(rm_wr_addr),
.dina(blob_din[4159:4096]),
.clkb(clk),
.addrb(rm_rd_addr),
.doutb(op_data_64));

conv2_rm_ram u_conv2_rm_ram_65(
.clka(clk),
.wea(rm_wr_en),
.addra(rm_wr_addr),
.dina(blob_din[4223:4160]),
.clkb(clk),
.addrb(rm_rd_addr),
.doutb(op_data_65));

conv2_rm_ram u_conv2_rm_ram_66(
.clka(clk),
.wea(rm_wr_en),
.addra(rm_wr_addr),
.dina(blob_din[4287:4224]),
.clkb(clk),
.addrb(rm_rd_addr),
.doutb(op_data_66));

conv2_rm_ram u_conv2_rm_ram_67(
.clka(clk),
.wea(rm_wr_en),
.addra(rm_wr_addr),
.dina(blob_din[4351:4288]),
.clkb(clk),
.addrb(rm_rd_addr),
.doutb(op_data_67));

conv2_rm_ram u_conv2_rm_ram_68(
.clka(clk),
.wea(rm_wr_en),
.addra(rm_wr_addr),
.dina(blob_din[4415:4352]),
.clkb(clk),
.addrb(rm_rd_addr),
.doutb(op_data_68));

conv2_rm_ram u_conv2_rm_ram_69(
.clka(clk),
.wea(rm_wr_en),
.addra(rm_wr_addr),
.dina(blob_din[4479:4416]),
.clkb(clk),
.addrb(rm_rd_addr),
.doutb(op_data_69));

conv2_rm_ram u_conv2_rm_ram_70(
.clka(clk),
.wea(rm_wr_en),
.addra(rm_wr_addr),
.dina(blob_din[4543:4480]),
.clkb(clk),
.addrb(rm_rd_addr),
.doutb(op_data_70));

conv2_rm_ram u_conv2_rm_ram_71(
.clka(clk),
.wea(rm_wr_en),
.addra(rm_wr_addr),
.dina(blob_din[4607:4544]),
.clkb(clk),
.addrb(rm_rd_addr),
.doutb(op_data_71));

conv2_rm_ram u_conv2_rm_ram_72(
.clka(clk),
.wea(rm_wr_en),
.addra(rm_wr_addr),
.dina(blob_din[4671:4608]),
.clkb(clk),
.addrb(rm_rd_addr),
.doutb(op_data_72));

conv2_rm_ram u_conv2_rm_ram_73(
.clka(clk),
.wea(rm_wr_en),
.addra(rm_wr_addr),
.dina(blob_din[4735:4672]),
.clkb(clk),
.addrb(rm_rd_addr),
.doutb(op_data_73));

conv2_rm_ram u_conv2_rm_ram_74(
.clka(clk),
.wea(rm_wr_en),
.addra(rm_wr_addr),
.dina(blob_din[4799:4736]),
.clkb(clk),
.addrb(rm_rd_addr),
.doutb(op_data_74));

conv2_rm_ram u_conv2_rm_ram_75(
.clka(clk),
.wea(rm_wr_en),
.addra(rm_wr_addr),
.dina(blob_din[4863:4800]),
.clkb(clk),
.addrb(rm_rd_addr),
.doutb(op_data_75));

conv2_rm_ram u_conv2_rm_ram_76(
.clka(clk),
.wea(rm_wr_en),
.addra(rm_wr_addr),
.dina(blob_din[4927:4864]),
.clkb(clk),
.addrb(rm_rd_addr),
.doutb(op_data_76));

conv2_rm_ram u_conv2_rm_ram_77(
.clka(clk),
.wea(rm_wr_en),
.addra(rm_wr_addr),
.dina(blob_din[4991:4928]),
.clkb(clk),
.addrb(rm_rd_addr),
.doutb(op_data_77));

conv2_rm_ram u_conv2_rm_ram_78(
.clka(clk),
.wea(rm_wr_en),
.addra(rm_wr_addr),
.dina(blob_din[5055:4992]),
.clkb(clk),
.addrb(rm_rd_addr),
.doutb(op_data_78));

conv2_rm_ram u_conv2_rm_ram_79(
.clka(clk),
.wea(rm_wr_en),
.addra(rm_wr_addr),
.dina(blob_din[5119:5056]),
.clkb(clk),
.addrb(rm_rd_addr),
.doutb(op_data_79));

conv2_rm_ram u_conv2_rm_ram_80(
.clka(clk),
.wea(rm_wr_en),
.addra(rm_wr_addr),
.dina(blob_din[5183:5120]),
.clkb(clk),
.addrb(rm_rd_addr),
.doutb(op_data_80));

conv2_rm_ram u_conv2_rm_ram_81(
.clka(clk),
.wea(rm_wr_en),
.addra(rm_wr_addr),
.dina(blob_din[5247:5184]),
.clkb(clk),
.addrb(rm_rd_addr),
.doutb(op_data_81));

conv2_rm_ram u_conv2_rm_ram_82(
.clka(clk),
.wea(rm_wr_en),
.addra(rm_wr_addr),
.dina(blob_din[5311:5248]),
.clkb(clk),
.addrb(rm_rd_addr),
.doutb(op_data_82));

conv2_rm_ram u_conv2_rm_ram_83(
.clka(clk),
.wea(rm_wr_en),
.addra(rm_wr_addr),
.dina(blob_din[5375:5312]),
.clkb(clk),
.addrb(rm_rd_addr),
.doutb(op_data_83));

conv2_rm_ram u_conv2_rm_ram_84(
.clka(clk),
.wea(rm_wr_en),
.addra(rm_wr_addr),
.dina(blob_din[5439:5376]),
.clkb(clk),
.addrb(rm_rd_addr),
.doutb(op_data_84));

conv2_rm_ram u_conv2_rm_ram_85(
.clka(clk),
.wea(rm_wr_en),
.addra(rm_wr_addr),
.dina(blob_din[5503:5440]),
.clkb(clk),
.addrb(rm_rd_addr),
.doutb(op_data_85));

conv2_rm_ram u_conv2_rm_ram_86(
.clka(clk),
.wea(rm_wr_en),
.addra(rm_wr_addr),
.dina(blob_din[5567:5504]),
.clkb(clk),
.addrb(rm_rd_addr),
.doutb(op_data_86));

conv2_rm_ram u_conv2_rm_ram_87(
.clka(clk),
.wea(rm_wr_en),
.addra(rm_wr_addr),
.dina(blob_din[5631:5568]),
.clkb(clk),
.addrb(rm_rd_addr),
.doutb(op_data_87));

conv2_rm_ram u_conv2_rm_ram_88(
.clka(clk),
.wea(rm_wr_en),
.addra(rm_wr_addr),
.dina(blob_din[5695:5632]),
.clkb(clk),
.addrb(rm_rd_addr),
.doutb(op_data_88));

conv2_rm_ram u_conv2_rm_ram_89(
.clka(clk),
.wea(rm_wr_en),
.addra(rm_wr_addr),
.dina(blob_din[5759:5696]),
.clkb(clk),
.addrb(rm_rd_addr),
.doutb(op_data_89));

conv2_rm_ram u_conv2_rm_ram_90(
.clka(clk),
.wea(rm_wr_en),
.addra(rm_wr_addr),
.dina(blob_din[5823:5760]),
.clkb(clk),
.addrb(rm_rd_addr),
.doutb(op_data_90));

conv2_rm_ram u_conv2_rm_ram_91(
.clka(clk),
.wea(rm_wr_en),
.addra(rm_wr_addr),
.dina(blob_din[5887:5824]),
.clkb(clk),
.addrb(rm_rd_addr),
.doutb(op_data_91));

conv2_rm_ram u_conv2_rm_ram_92(
.clka(clk),
.wea(rm_wr_en),
.addra(rm_wr_addr),
.dina(blob_din[5951:5888]),
.clkb(clk),
.addrb(rm_rd_addr),
.doutb(op_data_92));

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

vector_muladd #(.CPF(4),
.RELU(1),
.BN(0),
.DIN_Q(6),
.DOUT_Q(6),
.BN_SCALE_Q(6),
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
.RELU(1),
.BN(0),
.DIN_Q(6),
.DOUT_Q(6),
.BN_SCALE_Q(6),
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
.RELU(1),
.BN(0),
.DIN_Q(6),
.DOUT_Q(6),
.BN_SCALE_Q(6),
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
.RELU(1),
.BN(0),
.DIN_Q(6),
.DOUT_Q(6),
.BN_SCALE_Q(6),
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

vector_muladd #(.CPF(4),
.RELU(1),
.BN(0),
.DIN_Q(6),
.DOUT_Q(6),
.BN_SCALE_Q(6),
.BN_BIAS_Q(6),
.MID_Q(6),
.BIAS_DW(16),
.Q(13),
.DIN_DW(16), 
.DOUT_DW(16), 
.DATA_CHANNEL(1), 
.ACC_WIDTH(40), 
.WW(16))
u_vector_muladd_0_4(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_0), 
.op_weight(op_weight[319:256]),
.op_bias(op_bias[79:64]),
.op_dout(op_dout_0_4));

vector_muladd #(.CPF(4),
.RELU(1),
.BN(0),
.DIN_Q(6),
.DOUT_Q(6),
.BN_SCALE_Q(6),
.BN_BIAS_Q(6),
.MID_Q(6),
.BIAS_DW(16),
.Q(13),
.DIN_DW(16), 
.DOUT_DW(16), 
.DATA_CHANNEL(1), 
.ACC_WIDTH(40), 
.WW(16))
u_vector_muladd_0_5(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_0), 
.op_weight(op_weight[383:320]),
.op_bias(op_bias[95:80]),
.op_dout(op_dout_0_5));

vector_muladd #(.CPF(4),
.RELU(1),
.BN(0),
.DIN_Q(6),
.DOUT_Q(6),
.BN_SCALE_Q(6),
.BN_BIAS_Q(6),
.MID_Q(6),
.BIAS_DW(16),
.Q(13),
.DIN_DW(16), 
.DOUT_DW(16), 
.DATA_CHANNEL(1), 
.ACC_WIDTH(40), 
.WW(16))
u_vector_muladd_0_6(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_0), 
.op_weight(op_weight[447:384]),
.op_bias(op_bias[111:96]),
.op_dout(op_dout_0_6));

vector_muladd #(.CPF(4),
.RELU(1),
.BN(0),
.DIN_Q(6),
.DOUT_Q(6),
.BN_SCALE_Q(6),
.BN_BIAS_Q(6),
.MID_Q(6),
.BIAS_DW(16),
.Q(13),
.DIN_DW(16), 
.DOUT_DW(16), 
.DATA_CHANNEL(1), 
.ACC_WIDTH(40), 
.WW(16))
u_vector_muladd_0_7(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_0), 
.op_weight(op_weight[511:448]),
.op_bias(op_bias[127:112]),
.op_dout(op_dout_0_7));

vector_muladd #(.CPF(4),
.RELU(1),
.BN(0),
.DIN_Q(6),
.DOUT_Q(6),
.BN_SCALE_Q(6),
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
.op_weight(op_weight[63:0]),
.op_bias(op_bias[15:0]),
.op_dout(op_dout_1_0));

vector_muladd #(.CPF(4),
.RELU(1),
.BN(0),
.DIN_Q(6),
.DOUT_Q(6),
.BN_SCALE_Q(6),
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
.op_weight(op_weight[127:64]),
.op_bias(op_bias[31:16]),
.op_dout(op_dout_1_1));

vector_muladd #(.CPF(4),
.RELU(1),
.BN(0),
.DIN_Q(6),
.DOUT_Q(6),
.BN_SCALE_Q(6),
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
.op_weight(op_weight[191:128]),
.op_bias(op_bias[47:32]),
.op_dout(op_dout_1_2));

vector_muladd #(.CPF(4),
.RELU(1),
.BN(0),
.DIN_Q(6),
.DOUT_Q(6),
.BN_SCALE_Q(6),
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
.op_weight(op_weight[255:192]),
.op_bias(op_bias[63:48]),
.op_dout(op_dout_1_3));

vector_muladd #(.CPF(4),
.RELU(1),
.BN(0),
.DIN_Q(6),
.DOUT_Q(6),
.BN_SCALE_Q(6),
.BN_BIAS_Q(6),
.MID_Q(6),
.BIAS_DW(16),
.Q(13),
.DIN_DW(16), 
.DOUT_DW(16), 
.DATA_CHANNEL(1), 
.ACC_WIDTH(40), 
.WW(16))
u_vector_muladd_1_4(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_1), 
.op_weight(op_weight[319:256]),
.op_bias(op_bias[79:64]),
.op_dout(op_dout_1_4));

vector_muladd #(.CPF(4),
.RELU(1),
.BN(0),
.DIN_Q(6),
.DOUT_Q(6),
.BN_SCALE_Q(6),
.BN_BIAS_Q(6),
.MID_Q(6),
.BIAS_DW(16),
.Q(13),
.DIN_DW(16), 
.DOUT_DW(16), 
.DATA_CHANNEL(1), 
.ACC_WIDTH(40), 
.WW(16))
u_vector_muladd_1_5(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_1), 
.op_weight(op_weight[383:320]),
.op_bias(op_bias[95:80]),
.op_dout(op_dout_1_5));

vector_muladd #(.CPF(4),
.RELU(1),
.BN(0),
.DIN_Q(6),
.DOUT_Q(6),
.BN_SCALE_Q(6),
.BN_BIAS_Q(6),
.MID_Q(6),
.BIAS_DW(16),
.Q(13),
.DIN_DW(16), 
.DOUT_DW(16), 
.DATA_CHANNEL(1), 
.ACC_WIDTH(40), 
.WW(16))
u_vector_muladd_1_6(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_1), 
.op_weight(op_weight[447:384]),
.op_bias(op_bias[111:96]),
.op_dout(op_dout_1_6));

vector_muladd #(.CPF(4),
.RELU(1),
.BN(0),
.DIN_Q(6),
.DOUT_Q(6),
.BN_SCALE_Q(6),
.BN_BIAS_Q(6),
.MID_Q(6),
.BIAS_DW(16),
.Q(13),
.DIN_DW(16), 
.DOUT_DW(16), 
.DATA_CHANNEL(1), 
.ACC_WIDTH(40), 
.WW(16))
u_vector_muladd_1_7(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_1), 
.op_weight(op_weight[511:448]),
.op_bias(op_bias[127:112]),
.op_dout(op_dout_1_7));

vector_muladd #(.CPF(4),
.RELU(1),
.BN(0),
.DIN_Q(6),
.DOUT_Q(6),
.BN_SCALE_Q(6),
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
.op_weight(op_weight[63:0]),
.op_bias(op_bias[15:0]),
.op_dout(op_dout_2_0));

vector_muladd #(.CPF(4),
.RELU(1),
.BN(0),
.DIN_Q(6),
.DOUT_Q(6),
.BN_SCALE_Q(6),
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
.op_weight(op_weight[127:64]),
.op_bias(op_bias[31:16]),
.op_dout(op_dout_2_1));

vector_muladd #(.CPF(4),
.RELU(1),
.BN(0),
.DIN_Q(6),
.DOUT_Q(6),
.BN_SCALE_Q(6),
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
.op_weight(op_weight[191:128]),
.op_bias(op_bias[47:32]),
.op_dout(op_dout_2_2));

vector_muladd #(.CPF(4),
.RELU(1),
.BN(0),
.DIN_Q(6),
.DOUT_Q(6),
.BN_SCALE_Q(6),
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
.op_weight(op_weight[255:192]),
.op_bias(op_bias[63:48]),
.op_dout(op_dout_2_3));

vector_muladd #(.CPF(4),
.RELU(1),
.BN(0),
.DIN_Q(6),
.DOUT_Q(6),
.BN_SCALE_Q(6),
.BN_BIAS_Q(6),
.MID_Q(6),
.BIAS_DW(16),
.Q(13),
.DIN_DW(16), 
.DOUT_DW(16), 
.DATA_CHANNEL(1), 
.ACC_WIDTH(40), 
.WW(16))
u_vector_muladd_2_4(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_2), 
.op_weight(op_weight[319:256]),
.op_bias(op_bias[79:64]),
.op_dout(op_dout_2_4));

vector_muladd #(.CPF(4),
.RELU(1),
.BN(0),
.DIN_Q(6),
.DOUT_Q(6),
.BN_SCALE_Q(6),
.BN_BIAS_Q(6),
.MID_Q(6),
.BIAS_DW(16),
.Q(13),
.DIN_DW(16), 
.DOUT_DW(16), 
.DATA_CHANNEL(1), 
.ACC_WIDTH(40), 
.WW(16))
u_vector_muladd_2_5(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_2), 
.op_weight(op_weight[383:320]),
.op_bias(op_bias[95:80]),
.op_dout(op_dout_2_5));

vector_muladd #(.CPF(4),
.RELU(1),
.BN(0),
.DIN_Q(6),
.DOUT_Q(6),
.BN_SCALE_Q(6),
.BN_BIAS_Q(6),
.MID_Q(6),
.BIAS_DW(16),
.Q(13),
.DIN_DW(16), 
.DOUT_DW(16), 
.DATA_CHANNEL(1), 
.ACC_WIDTH(40), 
.WW(16))
u_vector_muladd_2_6(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_2), 
.op_weight(op_weight[447:384]),
.op_bias(op_bias[111:96]),
.op_dout(op_dout_2_6));

vector_muladd #(.CPF(4),
.RELU(1),
.BN(0),
.DIN_Q(6),
.DOUT_Q(6),
.BN_SCALE_Q(6),
.BN_BIAS_Q(6),
.MID_Q(6),
.BIAS_DW(16),
.Q(13),
.DIN_DW(16), 
.DOUT_DW(16), 
.DATA_CHANNEL(1), 
.ACC_WIDTH(40), 
.WW(16))
u_vector_muladd_2_7(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_2), 
.op_weight(op_weight[511:448]),
.op_bias(op_bias[127:112]),
.op_dout(op_dout_2_7));

vector_muladd #(.CPF(4),
.RELU(1),
.BN(0),
.DIN_Q(6),
.DOUT_Q(6),
.BN_SCALE_Q(6),
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
.op_weight(op_weight[63:0]),
.op_bias(op_bias[15:0]),
.op_dout(op_dout_3_0));

vector_muladd #(.CPF(4),
.RELU(1),
.BN(0),
.DIN_Q(6),
.DOUT_Q(6),
.BN_SCALE_Q(6),
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
.op_weight(op_weight[127:64]),
.op_bias(op_bias[31:16]),
.op_dout(op_dout_3_1));

vector_muladd #(.CPF(4),
.RELU(1),
.BN(0),
.DIN_Q(6),
.DOUT_Q(6),
.BN_SCALE_Q(6),
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
.op_weight(op_weight[191:128]),
.op_bias(op_bias[47:32]),
.op_dout(op_dout_3_2));

vector_muladd #(.CPF(4),
.RELU(1),
.BN(0),
.DIN_Q(6),
.DOUT_Q(6),
.BN_SCALE_Q(6),
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
.op_weight(op_weight[255:192]),
.op_bias(op_bias[63:48]),
.op_dout(op_dout_3_3));

vector_muladd #(.CPF(4),
.RELU(1),
.BN(0),
.DIN_Q(6),
.DOUT_Q(6),
.BN_SCALE_Q(6),
.BN_BIAS_Q(6),
.MID_Q(6),
.BIAS_DW(16),
.Q(13),
.DIN_DW(16), 
.DOUT_DW(16), 
.DATA_CHANNEL(1), 
.ACC_WIDTH(40), 
.WW(16))
u_vector_muladd_3_4(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_3), 
.op_weight(op_weight[319:256]),
.op_bias(op_bias[79:64]),
.op_dout(op_dout_3_4));

vector_muladd #(.CPF(4),
.RELU(1),
.BN(0),
.DIN_Q(6),
.DOUT_Q(6),
.BN_SCALE_Q(6),
.BN_BIAS_Q(6),
.MID_Q(6),
.BIAS_DW(16),
.Q(13),
.DIN_DW(16), 
.DOUT_DW(16), 
.DATA_CHANNEL(1), 
.ACC_WIDTH(40), 
.WW(16))
u_vector_muladd_3_5(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_3), 
.op_weight(op_weight[383:320]),
.op_bias(op_bias[95:80]),
.op_dout(op_dout_3_5));

vector_muladd #(.CPF(4),
.RELU(1),
.BN(0),
.DIN_Q(6),
.DOUT_Q(6),
.BN_SCALE_Q(6),
.BN_BIAS_Q(6),
.MID_Q(6),
.BIAS_DW(16),
.Q(13),
.DIN_DW(16), 
.DOUT_DW(16), 
.DATA_CHANNEL(1), 
.ACC_WIDTH(40), 
.WW(16))
u_vector_muladd_3_6(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_3), 
.op_weight(op_weight[447:384]),
.op_bias(op_bias[111:96]),
.op_dout(op_dout_3_6));

vector_muladd #(.CPF(4),
.RELU(1),
.BN(0),
.DIN_Q(6),
.DOUT_Q(6),
.BN_SCALE_Q(6),
.BN_BIAS_Q(6),
.MID_Q(6),
.BIAS_DW(16),
.Q(13),
.DIN_DW(16), 
.DOUT_DW(16), 
.DATA_CHANNEL(1), 
.ACC_WIDTH(40), 
.WW(16))
u_vector_muladd_3_7(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_3), 
.op_weight(op_weight[511:448]),
.op_bias(op_bias[127:112]),
.op_dout(op_dout_3_7));

vector_muladd #(.CPF(4),
.RELU(1),
.BN(0),
.DIN_Q(6),
.DOUT_Q(6),
.BN_SCALE_Q(6),
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
.op_weight(op_weight[63:0]),
.op_bias(op_bias[15:0]),
.op_dout(op_dout_4_0));

vector_muladd #(.CPF(4),
.RELU(1),
.BN(0),
.DIN_Q(6),
.DOUT_Q(6),
.BN_SCALE_Q(6),
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
.op_weight(op_weight[127:64]),
.op_bias(op_bias[31:16]),
.op_dout(op_dout_4_1));

vector_muladd #(.CPF(4),
.RELU(1),
.BN(0),
.DIN_Q(6),
.DOUT_Q(6),
.BN_SCALE_Q(6),
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
.op_weight(op_weight[191:128]),
.op_bias(op_bias[47:32]),
.op_dout(op_dout_4_2));

vector_muladd #(.CPF(4),
.RELU(1),
.BN(0),
.DIN_Q(6),
.DOUT_Q(6),
.BN_SCALE_Q(6),
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
.op_weight(op_weight[255:192]),
.op_bias(op_bias[63:48]),
.op_dout(op_dout_4_3));

vector_muladd #(.CPF(4),
.RELU(1),
.BN(0),
.DIN_Q(6),
.DOUT_Q(6),
.BN_SCALE_Q(6),
.BN_BIAS_Q(6),
.MID_Q(6),
.BIAS_DW(16),
.Q(13),
.DIN_DW(16), 
.DOUT_DW(16), 
.DATA_CHANNEL(1), 
.ACC_WIDTH(40), 
.WW(16))
u_vector_muladd_4_4(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_4), 
.op_weight(op_weight[319:256]),
.op_bias(op_bias[79:64]),
.op_dout(op_dout_4_4));

vector_muladd #(.CPF(4),
.RELU(1),
.BN(0),
.DIN_Q(6),
.DOUT_Q(6),
.BN_SCALE_Q(6),
.BN_BIAS_Q(6),
.MID_Q(6),
.BIAS_DW(16),
.Q(13),
.DIN_DW(16), 
.DOUT_DW(16), 
.DATA_CHANNEL(1), 
.ACC_WIDTH(40), 
.WW(16))
u_vector_muladd_4_5(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_4), 
.op_weight(op_weight[383:320]),
.op_bias(op_bias[95:80]),
.op_dout(op_dout_4_5));

vector_muladd #(.CPF(4),
.RELU(1),
.BN(0),
.DIN_Q(6),
.DOUT_Q(6),
.BN_SCALE_Q(6),
.BN_BIAS_Q(6),
.MID_Q(6),
.BIAS_DW(16),
.Q(13),
.DIN_DW(16), 
.DOUT_DW(16), 
.DATA_CHANNEL(1), 
.ACC_WIDTH(40), 
.WW(16))
u_vector_muladd_4_6(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_4), 
.op_weight(op_weight[447:384]),
.op_bias(op_bias[111:96]),
.op_dout(op_dout_4_6));

vector_muladd #(.CPF(4),
.RELU(1),
.BN(0),
.DIN_Q(6),
.DOUT_Q(6),
.BN_SCALE_Q(6),
.BN_BIAS_Q(6),
.MID_Q(6),
.BIAS_DW(16),
.Q(13),
.DIN_DW(16), 
.DOUT_DW(16), 
.DATA_CHANNEL(1), 
.ACC_WIDTH(40), 
.WW(16))
u_vector_muladd_4_7(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_4), 
.op_weight(op_weight[511:448]),
.op_bias(op_bias[127:112]),
.op_dout(op_dout_4_7));

vector_muladd #(.CPF(4),
.RELU(1),
.BN(0),
.DIN_Q(6),
.DOUT_Q(6),
.BN_SCALE_Q(6),
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
.op_weight(op_weight[63:0]),
.op_bias(op_bias[15:0]),
.op_dout(op_dout_5_0));

vector_muladd #(.CPF(4),
.RELU(1),
.BN(0),
.DIN_Q(6),
.DOUT_Q(6),
.BN_SCALE_Q(6),
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
.op_weight(op_weight[127:64]),
.op_bias(op_bias[31:16]),
.op_dout(op_dout_5_1));

vector_muladd #(.CPF(4),
.RELU(1),
.BN(0),
.DIN_Q(6),
.DOUT_Q(6),
.BN_SCALE_Q(6),
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
.op_weight(op_weight[191:128]),
.op_bias(op_bias[47:32]),
.op_dout(op_dout_5_2));

vector_muladd #(.CPF(4),
.RELU(1),
.BN(0),
.DIN_Q(6),
.DOUT_Q(6),
.BN_SCALE_Q(6),
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
.op_weight(op_weight[255:192]),
.op_bias(op_bias[63:48]),
.op_dout(op_dout_5_3));

vector_muladd #(.CPF(4),
.RELU(1),
.BN(0),
.DIN_Q(6),
.DOUT_Q(6),
.BN_SCALE_Q(6),
.BN_BIAS_Q(6),
.MID_Q(6),
.BIAS_DW(16),
.Q(13),
.DIN_DW(16), 
.DOUT_DW(16), 
.DATA_CHANNEL(1), 
.ACC_WIDTH(40), 
.WW(16))
u_vector_muladd_5_4(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_5), 
.op_weight(op_weight[319:256]),
.op_bias(op_bias[79:64]),
.op_dout(op_dout_5_4));

vector_muladd #(.CPF(4),
.RELU(1),
.BN(0),
.DIN_Q(6),
.DOUT_Q(6),
.BN_SCALE_Q(6),
.BN_BIAS_Q(6),
.MID_Q(6),
.BIAS_DW(16),
.Q(13),
.DIN_DW(16), 
.DOUT_DW(16), 
.DATA_CHANNEL(1), 
.ACC_WIDTH(40), 
.WW(16))
u_vector_muladd_5_5(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_5), 
.op_weight(op_weight[383:320]),
.op_bias(op_bias[95:80]),
.op_dout(op_dout_5_5));

vector_muladd #(.CPF(4),
.RELU(1),
.BN(0),
.DIN_Q(6),
.DOUT_Q(6),
.BN_SCALE_Q(6),
.BN_BIAS_Q(6),
.MID_Q(6),
.BIAS_DW(16),
.Q(13),
.DIN_DW(16), 
.DOUT_DW(16), 
.DATA_CHANNEL(1), 
.ACC_WIDTH(40), 
.WW(16))
u_vector_muladd_5_6(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_5), 
.op_weight(op_weight[447:384]),
.op_bias(op_bias[111:96]),
.op_dout(op_dout_5_6));

vector_muladd #(.CPF(4),
.RELU(1),
.BN(0),
.DIN_Q(6),
.DOUT_Q(6),
.BN_SCALE_Q(6),
.BN_BIAS_Q(6),
.MID_Q(6),
.BIAS_DW(16),
.Q(13),
.DIN_DW(16), 
.DOUT_DW(16), 
.DATA_CHANNEL(1), 
.ACC_WIDTH(40), 
.WW(16))
u_vector_muladd_5_7(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_5), 
.op_weight(op_weight[511:448]),
.op_bias(op_bias[127:112]),
.op_dout(op_dout_5_7));

vector_muladd #(.CPF(4),
.RELU(1),
.BN(0),
.DIN_Q(6),
.DOUT_Q(6),
.BN_SCALE_Q(6),
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
.op_weight(op_weight[63:0]),
.op_bias(op_bias[15:0]),
.op_dout(op_dout_6_0));

vector_muladd #(.CPF(4),
.RELU(1),
.BN(0),
.DIN_Q(6),
.DOUT_Q(6),
.BN_SCALE_Q(6),
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
.op_weight(op_weight[127:64]),
.op_bias(op_bias[31:16]),
.op_dout(op_dout_6_1));

vector_muladd #(.CPF(4),
.RELU(1),
.BN(0),
.DIN_Q(6),
.DOUT_Q(6),
.BN_SCALE_Q(6),
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
.op_weight(op_weight[191:128]),
.op_bias(op_bias[47:32]),
.op_dout(op_dout_6_2));

vector_muladd #(.CPF(4),
.RELU(1),
.BN(0),
.DIN_Q(6),
.DOUT_Q(6),
.BN_SCALE_Q(6),
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
.op_weight(op_weight[255:192]),
.op_bias(op_bias[63:48]),
.op_dout(op_dout_6_3));

vector_muladd #(.CPF(4),
.RELU(1),
.BN(0),
.DIN_Q(6),
.DOUT_Q(6),
.BN_SCALE_Q(6),
.BN_BIAS_Q(6),
.MID_Q(6),
.BIAS_DW(16),
.Q(13),
.DIN_DW(16), 
.DOUT_DW(16), 
.DATA_CHANNEL(1), 
.ACC_WIDTH(40), 
.WW(16))
u_vector_muladd_6_4(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_6), 
.op_weight(op_weight[319:256]),
.op_bias(op_bias[79:64]),
.op_dout(op_dout_6_4));

vector_muladd #(.CPF(4),
.RELU(1),
.BN(0),
.DIN_Q(6),
.DOUT_Q(6),
.BN_SCALE_Q(6),
.BN_BIAS_Q(6),
.MID_Q(6),
.BIAS_DW(16),
.Q(13),
.DIN_DW(16), 
.DOUT_DW(16), 
.DATA_CHANNEL(1), 
.ACC_WIDTH(40), 
.WW(16))
u_vector_muladd_6_5(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_6), 
.op_weight(op_weight[383:320]),
.op_bias(op_bias[95:80]),
.op_dout(op_dout_6_5));

vector_muladd #(.CPF(4),
.RELU(1),
.BN(0),
.DIN_Q(6),
.DOUT_Q(6),
.BN_SCALE_Q(6),
.BN_BIAS_Q(6),
.MID_Q(6),
.BIAS_DW(16),
.Q(13),
.DIN_DW(16), 
.DOUT_DW(16), 
.DATA_CHANNEL(1), 
.ACC_WIDTH(40), 
.WW(16))
u_vector_muladd_6_6(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_6), 
.op_weight(op_weight[447:384]),
.op_bias(op_bias[111:96]),
.op_dout(op_dout_6_6));

vector_muladd #(.CPF(4),
.RELU(1),
.BN(0),
.DIN_Q(6),
.DOUT_Q(6),
.BN_SCALE_Q(6),
.BN_BIAS_Q(6),
.MID_Q(6),
.BIAS_DW(16),
.Q(13),
.DIN_DW(16), 
.DOUT_DW(16), 
.DATA_CHANNEL(1), 
.ACC_WIDTH(40), 
.WW(16))
u_vector_muladd_6_7(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_6), 
.op_weight(op_weight[511:448]),
.op_bias(op_bias[127:112]),
.op_dout(op_dout_6_7));

vector_muladd #(.CPF(4),
.RELU(1),
.BN(0),
.DIN_Q(6),
.DOUT_Q(6),
.BN_SCALE_Q(6),
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
.op_weight(op_weight[63:0]),
.op_bias(op_bias[15:0]),
.op_dout(op_dout_7_0));

vector_muladd #(.CPF(4),
.RELU(1),
.BN(0),
.DIN_Q(6),
.DOUT_Q(6),
.BN_SCALE_Q(6),
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
.op_weight(op_weight[127:64]),
.op_bias(op_bias[31:16]),
.op_dout(op_dout_7_1));

vector_muladd #(.CPF(4),
.RELU(1),
.BN(0),
.DIN_Q(6),
.DOUT_Q(6),
.BN_SCALE_Q(6),
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
.op_weight(op_weight[191:128]),
.op_bias(op_bias[47:32]),
.op_dout(op_dout_7_2));

vector_muladd #(.CPF(4),
.RELU(1),
.BN(0),
.DIN_Q(6),
.DOUT_Q(6),
.BN_SCALE_Q(6),
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
.op_weight(op_weight[255:192]),
.op_bias(op_bias[63:48]),
.op_dout(op_dout_7_3));

vector_muladd #(.CPF(4),
.RELU(1),
.BN(0),
.DIN_Q(6),
.DOUT_Q(6),
.BN_SCALE_Q(6),
.BN_BIAS_Q(6),
.MID_Q(6),
.BIAS_DW(16),
.Q(13),
.DIN_DW(16), 
.DOUT_DW(16), 
.DATA_CHANNEL(1), 
.ACC_WIDTH(40), 
.WW(16))
u_vector_muladd_7_4(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_7), 
.op_weight(op_weight[319:256]),
.op_bias(op_bias[79:64]),
.op_dout(op_dout_7_4));

vector_muladd #(.CPF(4),
.RELU(1),
.BN(0),
.DIN_Q(6),
.DOUT_Q(6),
.BN_SCALE_Q(6),
.BN_BIAS_Q(6),
.MID_Q(6),
.BIAS_DW(16),
.Q(13),
.DIN_DW(16), 
.DOUT_DW(16), 
.DATA_CHANNEL(1), 
.ACC_WIDTH(40), 
.WW(16))
u_vector_muladd_7_5(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_7), 
.op_weight(op_weight[383:320]),
.op_bias(op_bias[95:80]),
.op_dout(op_dout_7_5));

vector_muladd #(.CPF(4),
.RELU(1),
.BN(0),
.DIN_Q(6),
.DOUT_Q(6),
.BN_SCALE_Q(6),
.BN_BIAS_Q(6),
.MID_Q(6),
.BIAS_DW(16),
.Q(13),
.DIN_DW(16), 
.DOUT_DW(16), 
.DATA_CHANNEL(1), 
.ACC_WIDTH(40), 
.WW(16))
u_vector_muladd_7_6(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_7), 
.op_weight(op_weight[447:384]),
.op_bias(op_bias[111:96]),
.op_dout(op_dout_7_6));

vector_muladd #(.CPF(4),
.RELU(1),
.BN(0),
.DIN_Q(6),
.DOUT_Q(6),
.BN_SCALE_Q(6),
.BN_BIAS_Q(6),
.MID_Q(6),
.BIAS_DW(16),
.Q(13),
.DIN_DW(16), 
.DOUT_DW(16), 
.DATA_CHANNEL(1), 
.ACC_WIDTH(40), 
.WW(16))
u_vector_muladd_7_7(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_7), 
.op_weight(op_weight[511:448]),
.op_bias(op_bias[127:112]),
.op_dout(op_dout_7_7));

vector_muladd #(.CPF(4),
.RELU(1),
.BN(0),
.DIN_Q(6),
.DOUT_Q(6),
.BN_SCALE_Q(6),
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
.op_weight(op_weight[63:0]),
.op_bias(op_bias[15:0]),
.op_dout(op_dout_8_0));

vector_muladd #(.CPF(4),
.RELU(1),
.BN(0),
.DIN_Q(6),
.DOUT_Q(6),
.BN_SCALE_Q(6),
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
.op_weight(op_weight[127:64]),
.op_bias(op_bias[31:16]),
.op_dout(op_dout_8_1));

vector_muladd #(.CPF(4),
.RELU(1),
.BN(0),
.DIN_Q(6),
.DOUT_Q(6),
.BN_SCALE_Q(6),
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
.op_weight(op_weight[191:128]),
.op_bias(op_bias[47:32]),
.op_dout(op_dout_8_2));

vector_muladd #(.CPF(4),
.RELU(1),
.BN(0),
.DIN_Q(6),
.DOUT_Q(6),
.BN_SCALE_Q(6),
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
.op_weight(op_weight[255:192]),
.op_bias(op_bias[63:48]),
.op_dout(op_dout_8_3));

vector_muladd #(.CPF(4),
.RELU(1),
.BN(0),
.DIN_Q(6),
.DOUT_Q(6),
.BN_SCALE_Q(6),
.BN_BIAS_Q(6),
.MID_Q(6),
.BIAS_DW(16),
.Q(13),
.DIN_DW(16), 
.DOUT_DW(16), 
.DATA_CHANNEL(1), 
.ACC_WIDTH(40), 
.WW(16))
u_vector_muladd_8_4(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_8), 
.op_weight(op_weight[319:256]),
.op_bias(op_bias[79:64]),
.op_dout(op_dout_8_4));

vector_muladd #(.CPF(4),
.RELU(1),
.BN(0),
.DIN_Q(6),
.DOUT_Q(6),
.BN_SCALE_Q(6),
.BN_BIAS_Q(6),
.MID_Q(6),
.BIAS_DW(16),
.Q(13),
.DIN_DW(16), 
.DOUT_DW(16), 
.DATA_CHANNEL(1), 
.ACC_WIDTH(40), 
.WW(16))
u_vector_muladd_8_5(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_8), 
.op_weight(op_weight[383:320]),
.op_bias(op_bias[95:80]),
.op_dout(op_dout_8_5));

vector_muladd #(.CPF(4),
.RELU(1),
.BN(0),
.DIN_Q(6),
.DOUT_Q(6),
.BN_SCALE_Q(6),
.BN_BIAS_Q(6),
.MID_Q(6),
.BIAS_DW(16),
.Q(13),
.DIN_DW(16), 
.DOUT_DW(16), 
.DATA_CHANNEL(1), 
.ACC_WIDTH(40), 
.WW(16))
u_vector_muladd_8_6(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_8), 
.op_weight(op_weight[447:384]),
.op_bias(op_bias[111:96]),
.op_dout(op_dout_8_6));

vector_muladd #(.CPF(4),
.RELU(1),
.BN(0),
.DIN_Q(6),
.DOUT_Q(6),
.BN_SCALE_Q(6),
.BN_BIAS_Q(6),
.MID_Q(6),
.BIAS_DW(16),
.Q(13),
.DIN_DW(16), 
.DOUT_DW(16), 
.DATA_CHANNEL(1), 
.ACC_WIDTH(40), 
.WW(16))
u_vector_muladd_8_7(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_8), 
.op_weight(op_weight[511:448]),
.op_bias(op_bias[127:112]),
.op_dout(op_dout_8_7));

vector_muladd #(.CPF(4),
.RELU(1),
.BN(0),
.DIN_Q(6),
.DOUT_Q(6),
.BN_SCALE_Q(6),
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
.op_weight(op_weight[63:0]),
.op_bias(op_bias[15:0]),
.op_dout(op_dout_9_0));

vector_muladd #(.CPF(4),
.RELU(1),
.BN(0),
.DIN_Q(6),
.DOUT_Q(6),
.BN_SCALE_Q(6),
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
.op_weight(op_weight[127:64]),
.op_bias(op_bias[31:16]),
.op_dout(op_dout_9_1));

vector_muladd #(.CPF(4),
.RELU(1),
.BN(0),
.DIN_Q(6),
.DOUT_Q(6),
.BN_SCALE_Q(6),
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
.op_weight(op_weight[191:128]),
.op_bias(op_bias[47:32]),
.op_dout(op_dout_9_2));

vector_muladd #(.CPF(4),
.RELU(1),
.BN(0),
.DIN_Q(6),
.DOUT_Q(6),
.BN_SCALE_Q(6),
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
.op_weight(op_weight[255:192]),
.op_bias(op_bias[63:48]),
.op_dout(op_dout_9_3));

vector_muladd #(.CPF(4),
.RELU(1),
.BN(0),
.DIN_Q(6),
.DOUT_Q(6),
.BN_SCALE_Q(6),
.BN_BIAS_Q(6),
.MID_Q(6),
.BIAS_DW(16),
.Q(13),
.DIN_DW(16), 
.DOUT_DW(16), 
.DATA_CHANNEL(1), 
.ACC_WIDTH(40), 
.WW(16))
u_vector_muladd_9_4(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_9), 
.op_weight(op_weight[319:256]),
.op_bias(op_bias[79:64]),
.op_dout(op_dout_9_4));

vector_muladd #(.CPF(4),
.RELU(1),
.BN(0),
.DIN_Q(6),
.DOUT_Q(6),
.BN_SCALE_Q(6),
.BN_BIAS_Q(6),
.MID_Q(6),
.BIAS_DW(16),
.Q(13),
.DIN_DW(16), 
.DOUT_DW(16), 
.DATA_CHANNEL(1), 
.ACC_WIDTH(40), 
.WW(16))
u_vector_muladd_9_5(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_9), 
.op_weight(op_weight[383:320]),
.op_bias(op_bias[95:80]),
.op_dout(op_dout_9_5));

vector_muladd #(.CPF(4),
.RELU(1),
.BN(0),
.DIN_Q(6),
.DOUT_Q(6),
.BN_SCALE_Q(6),
.BN_BIAS_Q(6),
.MID_Q(6),
.BIAS_DW(16),
.Q(13),
.DIN_DW(16), 
.DOUT_DW(16), 
.DATA_CHANNEL(1), 
.ACC_WIDTH(40), 
.WW(16))
u_vector_muladd_9_6(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_9), 
.op_weight(op_weight[447:384]),
.op_bias(op_bias[111:96]),
.op_dout(op_dout_9_6));

vector_muladd #(.CPF(4),
.RELU(1),
.BN(0),
.DIN_Q(6),
.DOUT_Q(6),
.BN_SCALE_Q(6),
.BN_BIAS_Q(6),
.MID_Q(6),
.BIAS_DW(16),
.Q(13),
.DIN_DW(16), 
.DOUT_DW(16), 
.DATA_CHANNEL(1), 
.ACC_WIDTH(40), 
.WW(16))
u_vector_muladd_9_7(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_9), 
.op_weight(op_weight[511:448]),
.op_bias(op_bias[127:112]),
.op_dout(op_dout_9_7));

vector_muladd #(.CPF(4),
.RELU(1),
.BN(0),
.DIN_Q(6),
.DOUT_Q(6),
.BN_SCALE_Q(6),
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
.op_weight(op_weight[63:0]),
.op_bias(op_bias[15:0]),
.op_dout(op_dout_10_0));

vector_muladd #(.CPF(4),
.RELU(1),
.BN(0),
.DIN_Q(6),
.DOUT_Q(6),
.BN_SCALE_Q(6),
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
.op_weight(op_weight[127:64]),
.op_bias(op_bias[31:16]),
.op_dout(op_dout_10_1));

vector_muladd #(.CPF(4),
.RELU(1),
.BN(0),
.DIN_Q(6),
.DOUT_Q(6),
.BN_SCALE_Q(6),
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
.op_weight(op_weight[191:128]),
.op_bias(op_bias[47:32]),
.op_dout(op_dout_10_2));

vector_muladd #(.CPF(4),
.RELU(1),
.BN(0),
.DIN_Q(6),
.DOUT_Q(6),
.BN_SCALE_Q(6),
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
.op_weight(op_weight[255:192]),
.op_bias(op_bias[63:48]),
.op_dout(op_dout_10_3));

vector_muladd #(.CPF(4),
.RELU(1),
.BN(0),
.DIN_Q(6),
.DOUT_Q(6),
.BN_SCALE_Q(6),
.BN_BIAS_Q(6),
.MID_Q(6),
.BIAS_DW(16),
.Q(13),
.DIN_DW(16), 
.DOUT_DW(16), 
.DATA_CHANNEL(1), 
.ACC_WIDTH(40), 
.WW(16))
u_vector_muladd_10_4(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_10), 
.op_weight(op_weight[319:256]),
.op_bias(op_bias[79:64]),
.op_dout(op_dout_10_4));

vector_muladd #(.CPF(4),
.RELU(1),
.BN(0),
.DIN_Q(6),
.DOUT_Q(6),
.BN_SCALE_Q(6),
.BN_BIAS_Q(6),
.MID_Q(6),
.BIAS_DW(16),
.Q(13),
.DIN_DW(16), 
.DOUT_DW(16), 
.DATA_CHANNEL(1), 
.ACC_WIDTH(40), 
.WW(16))
u_vector_muladd_10_5(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_10), 
.op_weight(op_weight[383:320]),
.op_bias(op_bias[95:80]),
.op_dout(op_dout_10_5));

vector_muladd #(.CPF(4),
.RELU(1),
.BN(0),
.DIN_Q(6),
.DOUT_Q(6),
.BN_SCALE_Q(6),
.BN_BIAS_Q(6),
.MID_Q(6),
.BIAS_DW(16),
.Q(13),
.DIN_DW(16), 
.DOUT_DW(16), 
.DATA_CHANNEL(1), 
.ACC_WIDTH(40), 
.WW(16))
u_vector_muladd_10_6(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_10), 
.op_weight(op_weight[447:384]),
.op_bias(op_bias[111:96]),
.op_dout(op_dout_10_6));

vector_muladd #(.CPF(4),
.RELU(1),
.BN(0),
.DIN_Q(6),
.DOUT_Q(6),
.BN_SCALE_Q(6),
.BN_BIAS_Q(6),
.MID_Q(6),
.BIAS_DW(16),
.Q(13),
.DIN_DW(16), 
.DOUT_DW(16), 
.DATA_CHANNEL(1), 
.ACC_WIDTH(40), 
.WW(16))
u_vector_muladd_10_7(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_10), 
.op_weight(op_weight[511:448]),
.op_bias(op_bias[127:112]),
.op_dout(op_dout_10_7));

vector_muladd #(.CPF(4),
.RELU(1),
.BN(0),
.DIN_Q(6),
.DOUT_Q(6),
.BN_SCALE_Q(6),
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
.op_weight(op_weight[63:0]),
.op_bias(op_bias[15:0]),
.op_dout(op_dout_11_0));

vector_muladd #(.CPF(4),
.RELU(1),
.BN(0),
.DIN_Q(6),
.DOUT_Q(6),
.BN_SCALE_Q(6),
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
.op_weight(op_weight[127:64]),
.op_bias(op_bias[31:16]),
.op_dout(op_dout_11_1));

vector_muladd #(.CPF(4),
.RELU(1),
.BN(0),
.DIN_Q(6),
.DOUT_Q(6),
.BN_SCALE_Q(6),
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
.op_weight(op_weight[191:128]),
.op_bias(op_bias[47:32]),
.op_dout(op_dout_11_2));

vector_muladd #(.CPF(4),
.RELU(1),
.BN(0),
.DIN_Q(6),
.DOUT_Q(6),
.BN_SCALE_Q(6),
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
.op_weight(op_weight[255:192]),
.op_bias(op_bias[63:48]),
.op_dout(op_dout_11_3));

vector_muladd #(.CPF(4),
.RELU(1),
.BN(0),
.DIN_Q(6),
.DOUT_Q(6),
.BN_SCALE_Q(6),
.BN_BIAS_Q(6),
.MID_Q(6),
.BIAS_DW(16),
.Q(13),
.DIN_DW(16), 
.DOUT_DW(16), 
.DATA_CHANNEL(1), 
.ACC_WIDTH(40), 
.WW(16))
u_vector_muladd_11_4(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_11), 
.op_weight(op_weight[319:256]),
.op_bias(op_bias[79:64]),
.op_dout(op_dout_11_4));

vector_muladd #(.CPF(4),
.RELU(1),
.BN(0),
.DIN_Q(6),
.DOUT_Q(6),
.BN_SCALE_Q(6),
.BN_BIAS_Q(6),
.MID_Q(6),
.BIAS_DW(16),
.Q(13),
.DIN_DW(16), 
.DOUT_DW(16), 
.DATA_CHANNEL(1), 
.ACC_WIDTH(40), 
.WW(16))
u_vector_muladd_11_5(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_11), 
.op_weight(op_weight[383:320]),
.op_bias(op_bias[95:80]),
.op_dout(op_dout_11_5));

vector_muladd #(.CPF(4),
.RELU(1),
.BN(0),
.DIN_Q(6),
.DOUT_Q(6),
.BN_SCALE_Q(6),
.BN_BIAS_Q(6),
.MID_Q(6),
.BIAS_DW(16),
.Q(13),
.DIN_DW(16), 
.DOUT_DW(16), 
.DATA_CHANNEL(1), 
.ACC_WIDTH(40), 
.WW(16))
u_vector_muladd_11_6(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_11), 
.op_weight(op_weight[447:384]),
.op_bias(op_bias[111:96]),
.op_dout(op_dout_11_6));

vector_muladd #(.CPF(4),
.RELU(1),
.BN(0),
.DIN_Q(6),
.DOUT_Q(6),
.BN_SCALE_Q(6),
.BN_BIAS_Q(6),
.MID_Q(6),
.BIAS_DW(16),
.Q(13),
.DIN_DW(16), 
.DOUT_DW(16), 
.DATA_CHANNEL(1), 
.ACC_WIDTH(40), 
.WW(16))
u_vector_muladd_11_7(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_11), 
.op_weight(op_weight[511:448]),
.op_bias(op_bias[127:112]),
.op_dout(op_dout_11_7));

vector_muladd #(.CPF(4),
.RELU(1),
.BN(0),
.DIN_Q(6),
.DOUT_Q(6),
.BN_SCALE_Q(6),
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
.op_weight(op_weight[63:0]),
.op_bias(op_bias[15:0]),
.op_dout(op_dout_12_0));

vector_muladd #(.CPF(4),
.RELU(1),
.BN(0),
.DIN_Q(6),
.DOUT_Q(6),
.BN_SCALE_Q(6),
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
.op_weight(op_weight[127:64]),
.op_bias(op_bias[31:16]),
.op_dout(op_dout_12_1));

vector_muladd #(.CPF(4),
.RELU(1),
.BN(0),
.DIN_Q(6),
.DOUT_Q(6),
.BN_SCALE_Q(6),
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
.op_weight(op_weight[191:128]),
.op_bias(op_bias[47:32]),
.op_dout(op_dout_12_2));

vector_muladd #(.CPF(4),
.RELU(1),
.BN(0),
.DIN_Q(6),
.DOUT_Q(6),
.BN_SCALE_Q(6),
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
.op_weight(op_weight[255:192]),
.op_bias(op_bias[63:48]),
.op_dout(op_dout_12_3));

vector_muladd #(.CPF(4),
.RELU(1),
.BN(0),
.DIN_Q(6),
.DOUT_Q(6),
.BN_SCALE_Q(6),
.BN_BIAS_Q(6),
.MID_Q(6),
.BIAS_DW(16),
.Q(13),
.DIN_DW(16), 
.DOUT_DW(16), 
.DATA_CHANNEL(1), 
.ACC_WIDTH(40), 
.WW(16))
u_vector_muladd_12_4(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_12), 
.op_weight(op_weight[319:256]),
.op_bias(op_bias[79:64]),
.op_dout(op_dout_12_4));

vector_muladd #(.CPF(4),
.RELU(1),
.BN(0),
.DIN_Q(6),
.DOUT_Q(6),
.BN_SCALE_Q(6),
.BN_BIAS_Q(6),
.MID_Q(6),
.BIAS_DW(16),
.Q(13),
.DIN_DW(16), 
.DOUT_DW(16), 
.DATA_CHANNEL(1), 
.ACC_WIDTH(40), 
.WW(16))
u_vector_muladd_12_5(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_12), 
.op_weight(op_weight[383:320]),
.op_bias(op_bias[95:80]),
.op_dout(op_dout_12_5));

vector_muladd #(.CPF(4),
.RELU(1),
.BN(0),
.DIN_Q(6),
.DOUT_Q(6),
.BN_SCALE_Q(6),
.BN_BIAS_Q(6),
.MID_Q(6),
.BIAS_DW(16),
.Q(13),
.DIN_DW(16), 
.DOUT_DW(16), 
.DATA_CHANNEL(1), 
.ACC_WIDTH(40), 
.WW(16))
u_vector_muladd_12_6(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_12), 
.op_weight(op_weight[447:384]),
.op_bias(op_bias[111:96]),
.op_dout(op_dout_12_6));

vector_muladd #(.CPF(4),
.RELU(1),
.BN(0),
.DIN_Q(6),
.DOUT_Q(6),
.BN_SCALE_Q(6),
.BN_BIAS_Q(6),
.MID_Q(6),
.BIAS_DW(16),
.Q(13),
.DIN_DW(16), 
.DOUT_DW(16), 
.DATA_CHANNEL(1), 
.ACC_WIDTH(40), 
.WW(16))
u_vector_muladd_12_7(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_12), 
.op_weight(op_weight[511:448]),
.op_bias(op_bias[127:112]),
.op_dout(op_dout_12_7));

vector_muladd #(.CPF(4),
.RELU(1),
.BN(0),
.DIN_Q(6),
.DOUT_Q(6),
.BN_SCALE_Q(6),
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
.op_weight(op_weight[63:0]),
.op_bias(op_bias[15:0]),
.op_dout(op_dout_13_0));

vector_muladd #(.CPF(4),
.RELU(1),
.BN(0),
.DIN_Q(6),
.DOUT_Q(6),
.BN_SCALE_Q(6),
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
.op_weight(op_weight[127:64]),
.op_bias(op_bias[31:16]),
.op_dout(op_dout_13_1));

vector_muladd #(.CPF(4),
.RELU(1),
.BN(0),
.DIN_Q(6),
.DOUT_Q(6),
.BN_SCALE_Q(6),
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
.op_weight(op_weight[191:128]),
.op_bias(op_bias[47:32]),
.op_dout(op_dout_13_2));

vector_muladd #(.CPF(4),
.RELU(1),
.BN(0),
.DIN_Q(6),
.DOUT_Q(6),
.BN_SCALE_Q(6),
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
.op_weight(op_weight[255:192]),
.op_bias(op_bias[63:48]),
.op_dout(op_dout_13_3));

vector_muladd #(.CPF(4),
.RELU(1),
.BN(0),
.DIN_Q(6),
.DOUT_Q(6),
.BN_SCALE_Q(6),
.BN_BIAS_Q(6),
.MID_Q(6),
.BIAS_DW(16),
.Q(13),
.DIN_DW(16), 
.DOUT_DW(16), 
.DATA_CHANNEL(1), 
.ACC_WIDTH(40), 
.WW(16))
u_vector_muladd_13_4(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_13), 
.op_weight(op_weight[319:256]),
.op_bias(op_bias[79:64]),
.op_dout(op_dout_13_4));

vector_muladd #(.CPF(4),
.RELU(1),
.BN(0),
.DIN_Q(6),
.DOUT_Q(6),
.BN_SCALE_Q(6),
.BN_BIAS_Q(6),
.MID_Q(6),
.BIAS_DW(16),
.Q(13),
.DIN_DW(16), 
.DOUT_DW(16), 
.DATA_CHANNEL(1), 
.ACC_WIDTH(40), 
.WW(16))
u_vector_muladd_13_5(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_13), 
.op_weight(op_weight[383:320]),
.op_bias(op_bias[95:80]),
.op_dout(op_dout_13_5));

vector_muladd #(.CPF(4),
.RELU(1),
.BN(0),
.DIN_Q(6),
.DOUT_Q(6),
.BN_SCALE_Q(6),
.BN_BIAS_Q(6),
.MID_Q(6),
.BIAS_DW(16),
.Q(13),
.DIN_DW(16), 
.DOUT_DW(16), 
.DATA_CHANNEL(1), 
.ACC_WIDTH(40), 
.WW(16))
u_vector_muladd_13_6(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_13), 
.op_weight(op_weight[447:384]),
.op_bias(op_bias[111:96]),
.op_dout(op_dout_13_6));

vector_muladd #(.CPF(4),
.RELU(1),
.BN(0),
.DIN_Q(6),
.DOUT_Q(6),
.BN_SCALE_Q(6),
.BN_BIAS_Q(6),
.MID_Q(6),
.BIAS_DW(16),
.Q(13),
.DIN_DW(16), 
.DOUT_DW(16), 
.DATA_CHANNEL(1), 
.ACC_WIDTH(40), 
.WW(16))
u_vector_muladd_13_7(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_13), 
.op_weight(op_weight[511:448]),
.op_bias(op_bias[127:112]),
.op_dout(op_dout_13_7));

vector_muladd #(.CPF(4),
.RELU(1),
.BN(0),
.DIN_Q(6),
.DOUT_Q(6),
.BN_SCALE_Q(6),
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
.op_weight(op_weight[63:0]),
.op_bias(op_bias[15:0]),
.op_dout(op_dout_14_0));

vector_muladd #(.CPF(4),
.RELU(1),
.BN(0),
.DIN_Q(6),
.DOUT_Q(6),
.BN_SCALE_Q(6),
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
.op_weight(op_weight[127:64]),
.op_bias(op_bias[31:16]),
.op_dout(op_dout_14_1));

vector_muladd #(.CPF(4),
.RELU(1),
.BN(0),
.DIN_Q(6),
.DOUT_Q(6),
.BN_SCALE_Q(6),
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
.op_weight(op_weight[191:128]),
.op_bias(op_bias[47:32]),
.op_dout(op_dout_14_2));

vector_muladd #(.CPF(4),
.RELU(1),
.BN(0),
.DIN_Q(6),
.DOUT_Q(6),
.BN_SCALE_Q(6),
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
.op_weight(op_weight[255:192]),
.op_bias(op_bias[63:48]),
.op_dout(op_dout_14_3));

vector_muladd #(.CPF(4),
.RELU(1),
.BN(0),
.DIN_Q(6),
.DOUT_Q(6),
.BN_SCALE_Q(6),
.BN_BIAS_Q(6),
.MID_Q(6),
.BIAS_DW(16),
.Q(13),
.DIN_DW(16), 
.DOUT_DW(16), 
.DATA_CHANNEL(1), 
.ACC_WIDTH(40), 
.WW(16))
u_vector_muladd_14_4(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_14), 
.op_weight(op_weight[319:256]),
.op_bias(op_bias[79:64]),
.op_dout(op_dout_14_4));

vector_muladd #(.CPF(4),
.RELU(1),
.BN(0),
.DIN_Q(6),
.DOUT_Q(6),
.BN_SCALE_Q(6),
.BN_BIAS_Q(6),
.MID_Q(6),
.BIAS_DW(16),
.Q(13),
.DIN_DW(16), 
.DOUT_DW(16), 
.DATA_CHANNEL(1), 
.ACC_WIDTH(40), 
.WW(16))
u_vector_muladd_14_5(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_14), 
.op_weight(op_weight[383:320]),
.op_bias(op_bias[95:80]),
.op_dout(op_dout_14_5));

vector_muladd #(.CPF(4),
.RELU(1),
.BN(0),
.DIN_Q(6),
.DOUT_Q(6),
.BN_SCALE_Q(6),
.BN_BIAS_Q(6),
.MID_Q(6),
.BIAS_DW(16),
.Q(13),
.DIN_DW(16), 
.DOUT_DW(16), 
.DATA_CHANNEL(1), 
.ACC_WIDTH(40), 
.WW(16))
u_vector_muladd_14_6(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_14), 
.op_weight(op_weight[447:384]),
.op_bias(op_bias[111:96]),
.op_dout(op_dout_14_6));

vector_muladd #(.CPF(4),
.RELU(1),
.BN(0),
.DIN_Q(6),
.DOUT_Q(6),
.BN_SCALE_Q(6),
.BN_BIAS_Q(6),
.MID_Q(6),
.BIAS_DW(16),
.Q(13),
.DIN_DW(16), 
.DOUT_DW(16), 
.DATA_CHANNEL(1), 
.ACC_WIDTH(40), 
.WW(16))
u_vector_muladd_14_7(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_14), 
.op_weight(op_weight[511:448]),
.op_bias(op_bias[127:112]),
.op_dout(op_dout_14_7));

vector_muladd #(.CPF(4),
.RELU(1),
.BN(0),
.DIN_Q(6),
.DOUT_Q(6),
.BN_SCALE_Q(6),
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
.op_weight(op_weight[63:0]),
.op_bias(op_bias[15:0]),
.op_dout(op_dout_15_0));

vector_muladd #(.CPF(4),
.RELU(1),
.BN(0),
.DIN_Q(6),
.DOUT_Q(6),
.BN_SCALE_Q(6),
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
.op_weight(op_weight[127:64]),
.op_bias(op_bias[31:16]),
.op_dout(op_dout_15_1));

vector_muladd #(.CPF(4),
.RELU(1),
.BN(0),
.DIN_Q(6),
.DOUT_Q(6),
.BN_SCALE_Q(6),
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
.op_weight(op_weight[191:128]),
.op_bias(op_bias[47:32]),
.op_dout(op_dout_15_2));

vector_muladd #(.CPF(4),
.RELU(1),
.BN(0),
.DIN_Q(6),
.DOUT_Q(6),
.BN_SCALE_Q(6),
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
.op_weight(op_weight[255:192]),
.op_bias(op_bias[63:48]),
.op_dout(op_dout_15_3));

vector_muladd #(.CPF(4),
.RELU(1),
.BN(0),
.DIN_Q(6),
.DOUT_Q(6),
.BN_SCALE_Q(6),
.BN_BIAS_Q(6),
.MID_Q(6),
.BIAS_DW(16),
.Q(13),
.DIN_DW(16), 
.DOUT_DW(16), 
.DATA_CHANNEL(1), 
.ACC_WIDTH(40), 
.WW(16))
u_vector_muladd_15_4(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_15), 
.op_weight(op_weight[319:256]),
.op_bias(op_bias[79:64]),
.op_dout(op_dout_15_4));

vector_muladd #(.CPF(4),
.RELU(1),
.BN(0),
.DIN_Q(6),
.DOUT_Q(6),
.BN_SCALE_Q(6),
.BN_BIAS_Q(6),
.MID_Q(6),
.BIAS_DW(16),
.Q(13),
.DIN_DW(16), 
.DOUT_DW(16), 
.DATA_CHANNEL(1), 
.ACC_WIDTH(40), 
.WW(16))
u_vector_muladd_15_5(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_15), 
.op_weight(op_weight[383:320]),
.op_bias(op_bias[95:80]),
.op_dout(op_dout_15_5));

vector_muladd #(.CPF(4),
.RELU(1),
.BN(0),
.DIN_Q(6),
.DOUT_Q(6),
.BN_SCALE_Q(6),
.BN_BIAS_Q(6),
.MID_Q(6),
.BIAS_DW(16),
.Q(13),
.DIN_DW(16), 
.DOUT_DW(16), 
.DATA_CHANNEL(1), 
.ACC_WIDTH(40), 
.WW(16))
u_vector_muladd_15_6(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_15), 
.op_weight(op_weight[447:384]),
.op_bias(op_bias[111:96]),
.op_dout(op_dout_15_6));

vector_muladd #(.CPF(4),
.RELU(1),
.BN(0),
.DIN_Q(6),
.DOUT_Q(6),
.BN_SCALE_Q(6),
.BN_BIAS_Q(6),
.MID_Q(6),
.BIAS_DW(16),
.Q(13),
.DIN_DW(16), 
.DOUT_DW(16), 
.DATA_CHANNEL(1), 
.ACC_WIDTH(40), 
.WW(16))
u_vector_muladd_15_7(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_15), 
.op_weight(op_weight[511:448]),
.op_bias(op_bias[127:112]),
.op_dout(op_dout_15_7));

vector_muladd #(.CPF(4),
.RELU(1),
.BN(0),
.DIN_Q(6),
.DOUT_Q(6),
.BN_SCALE_Q(6),
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
.op_weight(op_weight[63:0]),
.op_bias(op_bias[15:0]),
.op_dout(op_dout_16_0));

vector_muladd #(.CPF(4),
.RELU(1),
.BN(0),
.DIN_Q(6),
.DOUT_Q(6),
.BN_SCALE_Q(6),
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
.op_weight(op_weight[127:64]),
.op_bias(op_bias[31:16]),
.op_dout(op_dout_16_1));

vector_muladd #(.CPF(4),
.RELU(1),
.BN(0),
.DIN_Q(6),
.DOUT_Q(6),
.BN_SCALE_Q(6),
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
.op_weight(op_weight[191:128]),
.op_bias(op_bias[47:32]),
.op_dout(op_dout_16_2));

vector_muladd #(.CPF(4),
.RELU(1),
.BN(0),
.DIN_Q(6),
.DOUT_Q(6),
.BN_SCALE_Q(6),
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
.op_weight(op_weight[255:192]),
.op_bias(op_bias[63:48]),
.op_dout(op_dout_16_3));

vector_muladd #(.CPF(4),
.RELU(1),
.BN(0),
.DIN_Q(6),
.DOUT_Q(6),
.BN_SCALE_Q(6),
.BN_BIAS_Q(6),
.MID_Q(6),
.BIAS_DW(16),
.Q(13),
.DIN_DW(16), 
.DOUT_DW(16), 
.DATA_CHANNEL(1), 
.ACC_WIDTH(40), 
.WW(16))
u_vector_muladd_16_4(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_16), 
.op_weight(op_weight[319:256]),
.op_bias(op_bias[79:64]),
.op_dout(op_dout_16_4));

vector_muladd #(.CPF(4),
.RELU(1),
.BN(0),
.DIN_Q(6),
.DOUT_Q(6),
.BN_SCALE_Q(6),
.BN_BIAS_Q(6),
.MID_Q(6),
.BIAS_DW(16),
.Q(13),
.DIN_DW(16), 
.DOUT_DW(16), 
.DATA_CHANNEL(1), 
.ACC_WIDTH(40), 
.WW(16))
u_vector_muladd_16_5(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_16), 
.op_weight(op_weight[383:320]),
.op_bias(op_bias[95:80]),
.op_dout(op_dout_16_5));

vector_muladd #(.CPF(4),
.RELU(1),
.BN(0),
.DIN_Q(6),
.DOUT_Q(6),
.BN_SCALE_Q(6),
.BN_BIAS_Q(6),
.MID_Q(6),
.BIAS_DW(16),
.Q(13),
.DIN_DW(16), 
.DOUT_DW(16), 
.DATA_CHANNEL(1), 
.ACC_WIDTH(40), 
.WW(16))
u_vector_muladd_16_6(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_16), 
.op_weight(op_weight[447:384]),
.op_bias(op_bias[111:96]),
.op_dout(op_dout_16_6));

vector_muladd #(.CPF(4),
.RELU(1),
.BN(0),
.DIN_Q(6),
.DOUT_Q(6),
.BN_SCALE_Q(6),
.BN_BIAS_Q(6),
.MID_Q(6),
.BIAS_DW(16),
.Q(13),
.DIN_DW(16), 
.DOUT_DW(16), 
.DATA_CHANNEL(1), 
.ACC_WIDTH(40), 
.WW(16))
u_vector_muladd_16_7(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_16), 
.op_weight(op_weight[511:448]),
.op_bias(op_bias[127:112]),
.op_dout(op_dout_16_7));

vector_muladd #(.CPF(4),
.RELU(1),
.BN(0),
.DIN_Q(6),
.DOUT_Q(6),
.BN_SCALE_Q(6),
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
.op_weight(op_weight[63:0]),
.op_bias(op_bias[15:0]),
.op_dout(op_dout_17_0));

vector_muladd #(.CPF(4),
.RELU(1),
.BN(0),
.DIN_Q(6),
.DOUT_Q(6),
.BN_SCALE_Q(6),
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
.op_weight(op_weight[127:64]),
.op_bias(op_bias[31:16]),
.op_dout(op_dout_17_1));

vector_muladd #(.CPF(4),
.RELU(1),
.BN(0),
.DIN_Q(6),
.DOUT_Q(6),
.BN_SCALE_Q(6),
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
.op_weight(op_weight[191:128]),
.op_bias(op_bias[47:32]),
.op_dout(op_dout_17_2));

vector_muladd #(.CPF(4),
.RELU(1),
.BN(0),
.DIN_Q(6),
.DOUT_Q(6),
.BN_SCALE_Q(6),
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
.op_weight(op_weight[255:192]),
.op_bias(op_bias[63:48]),
.op_dout(op_dout_17_3));

vector_muladd #(.CPF(4),
.RELU(1),
.BN(0),
.DIN_Q(6),
.DOUT_Q(6),
.BN_SCALE_Q(6),
.BN_BIAS_Q(6),
.MID_Q(6),
.BIAS_DW(16),
.Q(13),
.DIN_DW(16), 
.DOUT_DW(16), 
.DATA_CHANNEL(1), 
.ACC_WIDTH(40), 
.WW(16))
u_vector_muladd_17_4(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_17), 
.op_weight(op_weight[319:256]),
.op_bias(op_bias[79:64]),
.op_dout(op_dout_17_4));

vector_muladd #(.CPF(4),
.RELU(1),
.BN(0),
.DIN_Q(6),
.DOUT_Q(6),
.BN_SCALE_Q(6),
.BN_BIAS_Q(6),
.MID_Q(6),
.BIAS_DW(16),
.Q(13),
.DIN_DW(16), 
.DOUT_DW(16), 
.DATA_CHANNEL(1), 
.ACC_WIDTH(40), 
.WW(16))
u_vector_muladd_17_5(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_17), 
.op_weight(op_weight[383:320]),
.op_bias(op_bias[95:80]),
.op_dout(op_dout_17_5));

vector_muladd #(.CPF(4),
.RELU(1),
.BN(0),
.DIN_Q(6),
.DOUT_Q(6),
.BN_SCALE_Q(6),
.BN_BIAS_Q(6),
.MID_Q(6),
.BIAS_DW(16),
.Q(13),
.DIN_DW(16), 
.DOUT_DW(16), 
.DATA_CHANNEL(1), 
.ACC_WIDTH(40), 
.WW(16))
u_vector_muladd_17_6(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_17), 
.op_weight(op_weight[447:384]),
.op_bias(op_bias[111:96]),
.op_dout(op_dout_17_6));

vector_muladd #(.CPF(4),
.RELU(1),
.BN(0),
.DIN_Q(6),
.DOUT_Q(6),
.BN_SCALE_Q(6),
.BN_BIAS_Q(6),
.MID_Q(6),
.BIAS_DW(16),
.Q(13),
.DIN_DW(16), 
.DOUT_DW(16), 
.DATA_CHANNEL(1), 
.ACC_WIDTH(40), 
.WW(16))
u_vector_muladd_17_7(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_17), 
.op_weight(op_weight[511:448]),
.op_bias(op_bias[127:112]),
.op_dout(op_dout_17_7));

vector_muladd #(.CPF(4),
.RELU(1),
.BN(0),
.DIN_Q(6),
.DOUT_Q(6),
.BN_SCALE_Q(6),
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
.op_weight(op_weight[63:0]),
.op_bias(op_bias[15:0]),
.op_dout(op_dout_18_0));

vector_muladd #(.CPF(4),
.RELU(1),
.BN(0),
.DIN_Q(6),
.DOUT_Q(6),
.BN_SCALE_Q(6),
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
.op_weight(op_weight[127:64]),
.op_bias(op_bias[31:16]),
.op_dout(op_dout_18_1));

vector_muladd #(.CPF(4),
.RELU(1),
.BN(0),
.DIN_Q(6),
.DOUT_Q(6),
.BN_SCALE_Q(6),
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
.op_weight(op_weight[191:128]),
.op_bias(op_bias[47:32]),
.op_dout(op_dout_18_2));

vector_muladd #(.CPF(4),
.RELU(1),
.BN(0),
.DIN_Q(6),
.DOUT_Q(6),
.BN_SCALE_Q(6),
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
.op_weight(op_weight[255:192]),
.op_bias(op_bias[63:48]),
.op_dout(op_dout_18_3));

vector_muladd #(.CPF(4),
.RELU(1),
.BN(0),
.DIN_Q(6),
.DOUT_Q(6),
.BN_SCALE_Q(6),
.BN_BIAS_Q(6),
.MID_Q(6),
.BIAS_DW(16),
.Q(13),
.DIN_DW(16), 
.DOUT_DW(16), 
.DATA_CHANNEL(1), 
.ACC_WIDTH(40), 
.WW(16))
u_vector_muladd_18_4(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_18), 
.op_weight(op_weight[319:256]),
.op_bias(op_bias[79:64]),
.op_dout(op_dout_18_4));

vector_muladd #(.CPF(4),
.RELU(1),
.BN(0),
.DIN_Q(6),
.DOUT_Q(6),
.BN_SCALE_Q(6),
.BN_BIAS_Q(6),
.MID_Q(6),
.BIAS_DW(16),
.Q(13),
.DIN_DW(16), 
.DOUT_DW(16), 
.DATA_CHANNEL(1), 
.ACC_WIDTH(40), 
.WW(16))
u_vector_muladd_18_5(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_18), 
.op_weight(op_weight[383:320]),
.op_bias(op_bias[95:80]),
.op_dout(op_dout_18_5));

vector_muladd #(.CPF(4),
.RELU(1),
.BN(0),
.DIN_Q(6),
.DOUT_Q(6),
.BN_SCALE_Q(6),
.BN_BIAS_Q(6),
.MID_Q(6),
.BIAS_DW(16),
.Q(13),
.DIN_DW(16), 
.DOUT_DW(16), 
.DATA_CHANNEL(1), 
.ACC_WIDTH(40), 
.WW(16))
u_vector_muladd_18_6(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_18), 
.op_weight(op_weight[447:384]),
.op_bias(op_bias[111:96]),
.op_dout(op_dout_18_6));

vector_muladd #(.CPF(4),
.RELU(1),
.BN(0),
.DIN_Q(6),
.DOUT_Q(6),
.BN_SCALE_Q(6),
.BN_BIAS_Q(6),
.MID_Q(6),
.BIAS_DW(16),
.Q(13),
.DIN_DW(16), 
.DOUT_DW(16), 
.DATA_CHANNEL(1), 
.ACC_WIDTH(40), 
.WW(16))
u_vector_muladd_18_7(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_18), 
.op_weight(op_weight[511:448]),
.op_bias(op_bias[127:112]),
.op_dout(op_dout_18_7));

vector_muladd #(.CPF(4),
.RELU(1),
.BN(0),
.DIN_Q(6),
.DOUT_Q(6),
.BN_SCALE_Q(6),
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
.op_weight(op_weight[63:0]),
.op_bias(op_bias[15:0]),
.op_dout(op_dout_19_0));

vector_muladd #(.CPF(4),
.RELU(1),
.BN(0),
.DIN_Q(6),
.DOUT_Q(6),
.BN_SCALE_Q(6),
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
.op_weight(op_weight[127:64]),
.op_bias(op_bias[31:16]),
.op_dout(op_dout_19_1));

vector_muladd #(.CPF(4),
.RELU(1),
.BN(0),
.DIN_Q(6),
.DOUT_Q(6),
.BN_SCALE_Q(6),
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
.op_weight(op_weight[191:128]),
.op_bias(op_bias[47:32]),
.op_dout(op_dout_19_2));

vector_muladd #(.CPF(4),
.RELU(1),
.BN(0),
.DIN_Q(6),
.DOUT_Q(6),
.BN_SCALE_Q(6),
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
.op_weight(op_weight[255:192]),
.op_bias(op_bias[63:48]),
.op_dout(op_dout_19_3));

vector_muladd #(.CPF(4),
.RELU(1),
.BN(0),
.DIN_Q(6),
.DOUT_Q(6),
.BN_SCALE_Q(6),
.BN_BIAS_Q(6),
.MID_Q(6),
.BIAS_DW(16),
.Q(13),
.DIN_DW(16), 
.DOUT_DW(16), 
.DATA_CHANNEL(1), 
.ACC_WIDTH(40), 
.WW(16))
u_vector_muladd_19_4(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_19), 
.op_weight(op_weight[319:256]),
.op_bias(op_bias[79:64]),
.op_dout(op_dout_19_4));

vector_muladd #(.CPF(4),
.RELU(1),
.BN(0),
.DIN_Q(6),
.DOUT_Q(6),
.BN_SCALE_Q(6),
.BN_BIAS_Q(6),
.MID_Q(6),
.BIAS_DW(16),
.Q(13),
.DIN_DW(16), 
.DOUT_DW(16), 
.DATA_CHANNEL(1), 
.ACC_WIDTH(40), 
.WW(16))
u_vector_muladd_19_5(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_19), 
.op_weight(op_weight[383:320]),
.op_bias(op_bias[95:80]),
.op_dout(op_dout_19_5));

vector_muladd #(.CPF(4),
.RELU(1),
.BN(0),
.DIN_Q(6),
.DOUT_Q(6),
.BN_SCALE_Q(6),
.BN_BIAS_Q(6),
.MID_Q(6),
.BIAS_DW(16),
.Q(13),
.DIN_DW(16), 
.DOUT_DW(16), 
.DATA_CHANNEL(1), 
.ACC_WIDTH(40), 
.WW(16))
u_vector_muladd_19_6(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_19), 
.op_weight(op_weight[447:384]),
.op_bias(op_bias[111:96]),
.op_dout(op_dout_19_6));

vector_muladd #(.CPF(4),
.RELU(1),
.BN(0),
.DIN_Q(6),
.DOUT_Q(6),
.BN_SCALE_Q(6),
.BN_BIAS_Q(6),
.MID_Q(6),
.BIAS_DW(16),
.Q(13),
.DIN_DW(16), 
.DOUT_DW(16), 
.DATA_CHANNEL(1), 
.ACC_WIDTH(40), 
.WW(16))
u_vector_muladd_19_7(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_19), 
.op_weight(op_weight[511:448]),
.op_bias(op_bias[127:112]),
.op_dout(op_dout_19_7));

vector_muladd #(.CPF(4),
.RELU(1),
.BN(0),
.DIN_Q(6),
.DOUT_Q(6),
.BN_SCALE_Q(6),
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
.op_weight(op_weight[63:0]),
.op_bias(op_bias[15:0]),
.op_dout(op_dout_20_0));

vector_muladd #(.CPF(4),
.RELU(1),
.BN(0),
.DIN_Q(6),
.DOUT_Q(6),
.BN_SCALE_Q(6),
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
.op_weight(op_weight[127:64]),
.op_bias(op_bias[31:16]),
.op_dout(op_dout_20_1));

vector_muladd #(.CPF(4),
.RELU(1),
.BN(0),
.DIN_Q(6),
.DOUT_Q(6),
.BN_SCALE_Q(6),
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
.op_weight(op_weight[191:128]),
.op_bias(op_bias[47:32]),
.op_dout(op_dout_20_2));

vector_muladd #(.CPF(4),
.RELU(1),
.BN(0),
.DIN_Q(6),
.DOUT_Q(6),
.BN_SCALE_Q(6),
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
.op_weight(op_weight[255:192]),
.op_bias(op_bias[63:48]),
.op_dout(op_dout_20_3));

vector_muladd #(.CPF(4),
.RELU(1),
.BN(0),
.DIN_Q(6),
.DOUT_Q(6),
.BN_SCALE_Q(6),
.BN_BIAS_Q(6),
.MID_Q(6),
.BIAS_DW(16),
.Q(13),
.DIN_DW(16), 
.DOUT_DW(16), 
.DATA_CHANNEL(1), 
.ACC_WIDTH(40), 
.WW(16))
u_vector_muladd_20_4(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_20), 
.op_weight(op_weight[319:256]),
.op_bias(op_bias[79:64]),
.op_dout(op_dout_20_4));

vector_muladd #(.CPF(4),
.RELU(1),
.BN(0),
.DIN_Q(6),
.DOUT_Q(6),
.BN_SCALE_Q(6),
.BN_BIAS_Q(6),
.MID_Q(6),
.BIAS_DW(16),
.Q(13),
.DIN_DW(16), 
.DOUT_DW(16), 
.DATA_CHANNEL(1), 
.ACC_WIDTH(40), 
.WW(16))
u_vector_muladd_20_5(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_20), 
.op_weight(op_weight[383:320]),
.op_bias(op_bias[95:80]),
.op_dout(op_dout_20_5));

vector_muladd #(.CPF(4),
.RELU(1),
.BN(0),
.DIN_Q(6),
.DOUT_Q(6),
.BN_SCALE_Q(6),
.BN_BIAS_Q(6),
.MID_Q(6),
.BIAS_DW(16),
.Q(13),
.DIN_DW(16), 
.DOUT_DW(16), 
.DATA_CHANNEL(1), 
.ACC_WIDTH(40), 
.WW(16))
u_vector_muladd_20_6(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_20), 
.op_weight(op_weight[447:384]),
.op_bias(op_bias[111:96]),
.op_dout(op_dout_20_6));

vector_muladd #(.CPF(4),
.RELU(1),
.BN(0),
.DIN_Q(6),
.DOUT_Q(6),
.BN_SCALE_Q(6),
.BN_BIAS_Q(6),
.MID_Q(6),
.BIAS_DW(16),
.Q(13),
.DIN_DW(16), 
.DOUT_DW(16), 
.DATA_CHANNEL(1), 
.ACC_WIDTH(40), 
.WW(16))
u_vector_muladd_20_7(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_20), 
.op_weight(op_weight[511:448]),
.op_bias(op_bias[127:112]),
.op_dout(op_dout_20_7));

vector_muladd #(.CPF(4),
.RELU(1),
.BN(0),
.DIN_Q(6),
.DOUT_Q(6),
.BN_SCALE_Q(6),
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
.op_weight(op_weight[63:0]),
.op_bias(op_bias[15:0]),
.op_dout(op_dout_21_0));

vector_muladd #(.CPF(4),
.RELU(1),
.BN(0),
.DIN_Q(6),
.DOUT_Q(6),
.BN_SCALE_Q(6),
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
.op_weight(op_weight[127:64]),
.op_bias(op_bias[31:16]),
.op_dout(op_dout_21_1));

vector_muladd #(.CPF(4),
.RELU(1),
.BN(0),
.DIN_Q(6),
.DOUT_Q(6),
.BN_SCALE_Q(6),
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
.op_weight(op_weight[191:128]),
.op_bias(op_bias[47:32]),
.op_dout(op_dout_21_2));

vector_muladd #(.CPF(4),
.RELU(1),
.BN(0),
.DIN_Q(6),
.DOUT_Q(6),
.BN_SCALE_Q(6),
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
.op_weight(op_weight[255:192]),
.op_bias(op_bias[63:48]),
.op_dout(op_dout_21_3));

vector_muladd #(.CPF(4),
.RELU(1),
.BN(0),
.DIN_Q(6),
.DOUT_Q(6),
.BN_SCALE_Q(6),
.BN_BIAS_Q(6),
.MID_Q(6),
.BIAS_DW(16),
.Q(13),
.DIN_DW(16), 
.DOUT_DW(16), 
.DATA_CHANNEL(1), 
.ACC_WIDTH(40), 
.WW(16))
u_vector_muladd_21_4(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_21), 
.op_weight(op_weight[319:256]),
.op_bias(op_bias[79:64]),
.op_dout(op_dout_21_4));

vector_muladd #(.CPF(4),
.RELU(1),
.BN(0),
.DIN_Q(6),
.DOUT_Q(6),
.BN_SCALE_Q(6),
.BN_BIAS_Q(6),
.MID_Q(6),
.BIAS_DW(16),
.Q(13),
.DIN_DW(16), 
.DOUT_DW(16), 
.DATA_CHANNEL(1), 
.ACC_WIDTH(40), 
.WW(16))
u_vector_muladd_21_5(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_21), 
.op_weight(op_weight[383:320]),
.op_bias(op_bias[95:80]),
.op_dout(op_dout_21_5));

vector_muladd #(.CPF(4),
.RELU(1),
.BN(0),
.DIN_Q(6),
.DOUT_Q(6),
.BN_SCALE_Q(6),
.BN_BIAS_Q(6),
.MID_Q(6),
.BIAS_DW(16),
.Q(13),
.DIN_DW(16), 
.DOUT_DW(16), 
.DATA_CHANNEL(1), 
.ACC_WIDTH(40), 
.WW(16))
u_vector_muladd_21_6(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_21), 
.op_weight(op_weight[447:384]),
.op_bias(op_bias[111:96]),
.op_dout(op_dout_21_6));

vector_muladd #(.CPF(4),
.RELU(1),
.BN(0),
.DIN_Q(6),
.DOUT_Q(6),
.BN_SCALE_Q(6),
.BN_BIAS_Q(6),
.MID_Q(6),
.BIAS_DW(16),
.Q(13),
.DIN_DW(16), 
.DOUT_DW(16), 
.DATA_CHANNEL(1), 
.ACC_WIDTH(40), 
.WW(16))
u_vector_muladd_21_7(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_21), 
.op_weight(op_weight[511:448]),
.op_bias(op_bias[127:112]),
.op_dout(op_dout_21_7));

vector_muladd #(.CPF(4),
.RELU(1),
.BN(0),
.DIN_Q(6),
.DOUT_Q(6),
.BN_SCALE_Q(6),
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
.op_weight(op_weight[63:0]),
.op_bias(op_bias[15:0]),
.op_dout(op_dout_22_0));

vector_muladd #(.CPF(4),
.RELU(1),
.BN(0),
.DIN_Q(6),
.DOUT_Q(6),
.BN_SCALE_Q(6),
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
.op_weight(op_weight[127:64]),
.op_bias(op_bias[31:16]),
.op_dout(op_dout_22_1));

vector_muladd #(.CPF(4),
.RELU(1),
.BN(0),
.DIN_Q(6),
.DOUT_Q(6),
.BN_SCALE_Q(6),
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
.op_weight(op_weight[191:128]),
.op_bias(op_bias[47:32]),
.op_dout(op_dout_22_2));

vector_muladd #(.CPF(4),
.RELU(1),
.BN(0),
.DIN_Q(6),
.DOUT_Q(6),
.BN_SCALE_Q(6),
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
.op_weight(op_weight[255:192]),
.op_bias(op_bias[63:48]),
.op_dout(op_dout_22_3));

vector_muladd #(.CPF(4),
.RELU(1),
.BN(0),
.DIN_Q(6),
.DOUT_Q(6),
.BN_SCALE_Q(6),
.BN_BIAS_Q(6),
.MID_Q(6),
.BIAS_DW(16),
.Q(13),
.DIN_DW(16), 
.DOUT_DW(16), 
.DATA_CHANNEL(1), 
.ACC_WIDTH(40), 
.WW(16))
u_vector_muladd_22_4(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_22), 
.op_weight(op_weight[319:256]),
.op_bias(op_bias[79:64]),
.op_dout(op_dout_22_4));

vector_muladd #(.CPF(4),
.RELU(1),
.BN(0),
.DIN_Q(6),
.DOUT_Q(6),
.BN_SCALE_Q(6),
.BN_BIAS_Q(6),
.MID_Q(6),
.BIAS_DW(16),
.Q(13),
.DIN_DW(16), 
.DOUT_DW(16), 
.DATA_CHANNEL(1), 
.ACC_WIDTH(40), 
.WW(16))
u_vector_muladd_22_5(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_22), 
.op_weight(op_weight[383:320]),
.op_bias(op_bias[95:80]),
.op_dout(op_dout_22_5));

vector_muladd #(.CPF(4),
.RELU(1),
.BN(0),
.DIN_Q(6),
.DOUT_Q(6),
.BN_SCALE_Q(6),
.BN_BIAS_Q(6),
.MID_Q(6),
.BIAS_DW(16),
.Q(13),
.DIN_DW(16), 
.DOUT_DW(16), 
.DATA_CHANNEL(1), 
.ACC_WIDTH(40), 
.WW(16))
u_vector_muladd_22_6(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_22), 
.op_weight(op_weight[447:384]),
.op_bias(op_bias[111:96]),
.op_dout(op_dout_22_6));

vector_muladd #(.CPF(4),
.RELU(1),
.BN(0),
.DIN_Q(6),
.DOUT_Q(6),
.BN_SCALE_Q(6),
.BN_BIAS_Q(6),
.MID_Q(6),
.BIAS_DW(16),
.Q(13),
.DIN_DW(16), 
.DOUT_DW(16), 
.DATA_CHANNEL(1), 
.ACC_WIDTH(40), 
.WW(16))
u_vector_muladd_22_7(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_22), 
.op_weight(op_weight[511:448]),
.op_bias(op_bias[127:112]),
.op_dout(op_dout_22_7));

vector_muladd #(.CPF(4),
.RELU(1),
.BN(0),
.DIN_Q(6),
.DOUT_Q(6),
.BN_SCALE_Q(6),
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
.op_weight(op_weight[63:0]),
.op_bias(op_bias[15:0]),
.op_dout(op_dout_23_0));

vector_muladd #(.CPF(4),
.RELU(1),
.BN(0),
.DIN_Q(6),
.DOUT_Q(6),
.BN_SCALE_Q(6),
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
.op_weight(op_weight[127:64]),
.op_bias(op_bias[31:16]),
.op_dout(op_dout_23_1));

vector_muladd #(.CPF(4),
.RELU(1),
.BN(0),
.DIN_Q(6),
.DOUT_Q(6),
.BN_SCALE_Q(6),
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
.op_weight(op_weight[191:128]),
.op_bias(op_bias[47:32]),
.op_dout(op_dout_23_2));

vector_muladd #(.CPF(4),
.RELU(1),
.BN(0),
.DIN_Q(6),
.DOUT_Q(6),
.BN_SCALE_Q(6),
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
.op_weight(op_weight[255:192]),
.op_bias(op_bias[63:48]),
.op_dout(op_dout_23_3));

vector_muladd #(.CPF(4),
.RELU(1),
.BN(0),
.DIN_Q(6),
.DOUT_Q(6),
.BN_SCALE_Q(6),
.BN_BIAS_Q(6),
.MID_Q(6),
.BIAS_DW(16),
.Q(13),
.DIN_DW(16), 
.DOUT_DW(16), 
.DATA_CHANNEL(1), 
.ACC_WIDTH(40), 
.WW(16))
u_vector_muladd_23_4(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_23), 
.op_weight(op_weight[319:256]),
.op_bias(op_bias[79:64]),
.op_dout(op_dout_23_4));

vector_muladd #(.CPF(4),
.RELU(1),
.BN(0),
.DIN_Q(6),
.DOUT_Q(6),
.BN_SCALE_Q(6),
.BN_BIAS_Q(6),
.MID_Q(6),
.BIAS_DW(16),
.Q(13),
.DIN_DW(16), 
.DOUT_DW(16), 
.DATA_CHANNEL(1), 
.ACC_WIDTH(40), 
.WW(16))
u_vector_muladd_23_5(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_23), 
.op_weight(op_weight[383:320]),
.op_bias(op_bias[95:80]),
.op_dout(op_dout_23_5));

vector_muladd #(.CPF(4),
.RELU(1),
.BN(0),
.DIN_Q(6),
.DOUT_Q(6),
.BN_SCALE_Q(6),
.BN_BIAS_Q(6),
.MID_Q(6),
.BIAS_DW(16),
.Q(13),
.DIN_DW(16), 
.DOUT_DW(16), 
.DATA_CHANNEL(1), 
.ACC_WIDTH(40), 
.WW(16))
u_vector_muladd_23_6(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_23), 
.op_weight(op_weight[447:384]),
.op_bias(op_bias[111:96]),
.op_dout(op_dout_23_6));

vector_muladd #(.CPF(4),
.RELU(1),
.BN(0),
.DIN_Q(6),
.DOUT_Q(6),
.BN_SCALE_Q(6),
.BN_BIAS_Q(6),
.MID_Q(6),
.BIAS_DW(16),
.Q(13),
.DIN_DW(16), 
.DOUT_DW(16), 
.DATA_CHANNEL(1), 
.ACC_WIDTH(40), 
.WW(16))
u_vector_muladd_23_7(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_23), 
.op_weight(op_weight[511:448]),
.op_bias(op_bias[127:112]),
.op_dout(op_dout_23_7));

vector_muladd #(.CPF(4),
.RELU(1),
.BN(0),
.DIN_Q(6),
.DOUT_Q(6),
.BN_SCALE_Q(6),
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
.op_weight(op_weight[63:0]),
.op_bias(op_bias[15:0]),
.op_dout(op_dout_24_0));

vector_muladd #(.CPF(4),
.RELU(1),
.BN(0),
.DIN_Q(6),
.DOUT_Q(6),
.BN_SCALE_Q(6),
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
.op_weight(op_weight[127:64]),
.op_bias(op_bias[31:16]),
.op_dout(op_dout_24_1));

vector_muladd #(.CPF(4),
.RELU(1),
.BN(0),
.DIN_Q(6),
.DOUT_Q(6),
.BN_SCALE_Q(6),
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
.op_weight(op_weight[191:128]),
.op_bias(op_bias[47:32]),
.op_dout(op_dout_24_2));

vector_muladd #(.CPF(4),
.RELU(1),
.BN(0),
.DIN_Q(6),
.DOUT_Q(6),
.BN_SCALE_Q(6),
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
.op_weight(op_weight[255:192]),
.op_bias(op_bias[63:48]),
.op_dout(op_dout_24_3));

vector_muladd #(.CPF(4),
.RELU(1),
.BN(0),
.DIN_Q(6),
.DOUT_Q(6),
.BN_SCALE_Q(6),
.BN_BIAS_Q(6),
.MID_Q(6),
.BIAS_DW(16),
.Q(13),
.DIN_DW(16), 
.DOUT_DW(16), 
.DATA_CHANNEL(1), 
.ACC_WIDTH(40), 
.WW(16))
u_vector_muladd_24_4(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_24), 
.op_weight(op_weight[319:256]),
.op_bias(op_bias[79:64]),
.op_dout(op_dout_24_4));

vector_muladd #(.CPF(4),
.RELU(1),
.BN(0),
.DIN_Q(6),
.DOUT_Q(6),
.BN_SCALE_Q(6),
.BN_BIAS_Q(6),
.MID_Q(6),
.BIAS_DW(16),
.Q(13),
.DIN_DW(16), 
.DOUT_DW(16), 
.DATA_CHANNEL(1), 
.ACC_WIDTH(40), 
.WW(16))
u_vector_muladd_24_5(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_24), 
.op_weight(op_weight[383:320]),
.op_bias(op_bias[95:80]),
.op_dout(op_dout_24_5));

vector_muladd #(.CPF(4),
.RELU(1),
.BN(0),
.DIN_Q(6),
.DOUT_Q(6),
.BN_SCALE_Q(6),
.BN_BIAS_Q(6),
.MID_Q(6),
.BIAS_DW(16),
.Q(13),
.DIN_DW(16), 
.DOUT_DW(16), 
.DATA_CHANNEL(1), 
.ACC_WIDTH(40), 
.WW(16))
u_vector_muladd_24_6(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_24), 
.op_weight(op_weight[447:384]),
.op_bias(op_bias[111:96]),
.op_dout(op_dout_24_6));

vector_muladd #(.CPF(4),
.RELU(1),
.BN(0),
.DIN_Q(6),
.DOUT_Q(6),
.BN_SCALE_Q(6),
.BN_BIAS_Q(6),
.MID_Q(6),
.BIAS_DW(16),
.Q(13),
.DIN_DW(16), 
.DOUT_DW(16), 
.DATA_CHANNEL(1), 
.ACC_WIDTH(40), 
.WW(16))
u_vector_muladd_24_7(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_24), 
.op_weight(op_weight[511:448]),
.op_bias(op_bias[127:112]),
.op_dout(op_dout_24_7));

vector_muladd #(.CPF(4),
.RELU(1),
.BN(0),
.DIN_Q(6),
.DOUT_Q(6),
.BN_SCALE_Q(6),
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
.op_weight(op_weight[63:0]),
.op_bias(op_bias[15:0]),
.op_dout(op_dout_25_0));

vector_muladd #(.CPF(4),
.RELU(1),
.BN(0),
.DIN_Q(6),
.DOUT_Q(6),
.BN_SCALE_Q(6),
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
.op_weight(op_weight[127:64]),
.op_bias(op_bias[31:16]),
.op_dout(op_dout_25_1));

vector_muladd #(.CPF(4),
.RELU(1),
.BN(0),
.DIN_Q(6),
.DOUT_Q(6),
.BN_SCALE_Q(6),
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
.op_weight(op_weight[191:128]),
.op_bias(op_bias[47:32]),
.op_dout(op_dout_25_2));

vector_muladd #(.CPF(4),
.RELU(1),
.BN(0),
.DIN_Q(6),
.DOUT_Q(6),
.BN_SCALE_Q(6),
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
.op_weight(op_weight[255:192]),
.op_bias(op_bias[63:48]),
.op_dout(op_dout_25_3));

vector_muladd #(.CPF(4),
.RELU(1),
.BN(0),
.DIN_Q(6),
.DOUT_Q(6),
.BN_SCALE_Q(6),
.BN_BIAS_Q(6),
.MID_Q(6),
.BIAS_DW(16),
.Q(13),
.DIN_DW(16), 
.DOUT_DW(16), 
.DATA_CHANNEL(1), 
.ACC_WIDTH(40), 
.WW(16))
u_vector_muladd_25_4(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_25), 
.op_weight(op_weight[319:256]),
.op_bias(op_bias[79:64]),
.op_dout(op_dout_25_4));

vector_muladd #(.CPF(4),
.RELU(1),
.BN(0),
.DIN_Q(6),
.DOUT_Q(6),
.BN_SCALE_Q(6),
.BN_BIAS_Q(6),
.MID_Q(6),
.BIAS_DW(16),
.Q(13),
.DIN_DW(16), 
.DOUT_DW(16), 
.DATA_CHANNEL(1), 
.ACC_WIDTH(40), 
.WW(16))
u_vector_muladd_25_5(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_25), 
.op_weight(op_weight[383:320]),
.op_bias(op_bias[95:80]),
.op_dout(op_dout_25_5));

vector_muladd #(.CPF(4),
.RELU(1),
.BN(0),
.DIN_Q(6),
.DOUT_Q(6),
.BN_SCALE_Q(6),
.BN_BIAS_Q(6),
.MID_Q(6),
.BIAS_DW(16),
.Q(13),
.DIN_DW(16), 
.DOUT_DW(16), 
.DATA_CHANNEL(1), 
.ACC_WIDTH(40), 
.WW(16))
u_vector_muladd_25_6(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_25), 
.op_weight(op_weight[447:384]),
.op_bias(op_bias[111:96]),
.op_dout(op_dout_25_6));

vector_muladd #(.CPF(4),
.RELU(1),
.BN(0),
.DIN_Q(6),
.DOUT_Q(6),
.BN_SCALE_Q(6),
.BN_BIAS_Q(6),
.MID_Q(6),
.BIAS_DW(16),
.Q(13),
.DIN_DW(16), 
.DOUT_DW(16), 
.DATA_CHANNEL(1), 
.ACC_WIDTH(40), 
.WW(16))
u_vector_muladd_25_7(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_25), 
.op_weight(op_weight[511:448]),
.op_bias(op_bias[127:112]),
.op_dout(op_dout_25_7));

vector_muladd #(.CPF(4),
.RELU(1),
.BN(0),
.DIN_Q(6),
.DOUT_Q(6),
.BN_SCALE_Q(6),
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
.op_weight(op_weight[63:0]),
.op_bias(op_bias[15:0]),
.op_dout(op_dout_26_0));

vector_muladd #(.CPF(4),
.RELU(1),
.BN(0),
.DIN_Q(6),
.DOUT_Q(6),
.BN_SCALE_Q(6),
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
.op_weight(op_weight[127:64]),
.op_bias(op_bias[31:16]),
.op_dout(op_dout_26_1));

vector_muladd #(.CPF(4),
.RELU(1),
.BN(0),
.DIN_Q(6),
.DOUT_Q(6),
.BN_SCALE_Q(6),
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
.op_weight(op_weight[191:128]),
.op_bias(op_bias[47:32]),
.op_dout(op_dout_26_2));

vector_muladd #(.CPF(4),
.RELU(1),
.BN(0),
.DIN_Q(6),
.DOUT_Q(6),
.BN_SCALE_Q(6),
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
.op_weight(op_weight[255:192]),
.op_bias(op_bias[63:48]),
.op_dout(op_dout_26_3));

vector_muladd #(.CPF(4),
.RELU(1),
.BN(0),
.DIN_Q(6),
.DOUT_Q(6),
.BN_SCALE_Q(6),
.BN_BIAS_Q(6),
.MID_Q(6),
.BIAS_DW(16),
.Q(13),
.DIN_DW(16), 
.DOUT_DW(16), 
.DATA_CHANNEL(1), 
.ACC_WIDTH(40), 
.WW(16))
u_vector_muladd_26_4(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_26), 
.op_weight(op_weight[319:256]),
.op_bias(op_bias[79:64]),
.op_dout(op_dout_26_4));

vector_muladd #(.CPF(4),
.RELU(1),
.BN(0),
.DIN_Q(6),
.DOUT_Q(6),
.BN_SCALE_Q(6),
.BN_BIAS_Q(6),
.MID_Q(6),
.BIAS_DW(16),
.Q(13),
.DIN_DW(16), 
.DOUT_DW(16), 
.DATA_CHANNEL(1), 
.ACC_WIDTH(40), 
.WW(16))
u_vector_muladd_26_5(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_26), 
.op_weight(op_weight[383:320]),
.op_bias(op_bias[95:80]),
.op_dout(op_dout_26_5));

vector_muladd #(.CPF(4),
.RELU(1),
.BN(0),
.DIN_Q(6),
.DOUT_Q(6),
.BN_SCALE_Q(6),
.BN_BIAS_Q(6),
.MID_Q(6),
.BIAS_DW(16),
.Q(13),
.DIN_DW(16), 
.DOUT_DW(16), 
.DATA_CHANNEL(1), 
.ACC_WIDTH(40), 
.WW(16))
u_vector_muladd_26_6(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_26), 
.op_weight(op_weight[447:384]),
.op_bias(op_bias[111:96]),
.op_dout(op_dout_26_6));

vector_muladd #(.CPF(4),
.RELU(1),
.BN(0),
.DIN_Q(6),
.DOUT_Q(6),
.BN_SCALE_Q(6),
.BN_BIAS_Q(6),
.MID_Q(6),
.BIAS_DW(16),
.Q(13),
.DIN_DW(16), 
.DOUT_DW(16), 
.DATA_CHANNEL(1), 
.ACC_WIDTH(40), 
.WW(16))
u_vector_muladd_26_7(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_26), 
.op_weight(op_weight[511:448]),
.op_bias(op_bias[127:112]),
.op_dout(op_dout_26_7));

vector_muladd #(.CPF(4),
.RELU(1),
.BN(0),
.DIN_Q(6),
.DOUT_Q(6),
.BN_SCALE_Q(6),
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
.op_weight(op_weight[63:0]),
.op_bias(op_bias[15:0]),
.op_dout(op_dout_27_0));

vector_muladd #(.CPF(4),
.RELU(1),
.BN(0),
.DIN_Q(6),
.DOUT_Q(6),
.BN_SCALE_Q(6),
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
.op_weight(op_weight[127:64]),
.op_bias(op_bias[31:16]),
.op_dout(op_dout_27_1));

vector_muladd #(.CPF(4),
.RELU(1),
.BN(0),
.DIN_Q(6),
.DOUT_Q(6),
.BN_SCALE_Q(6),
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
.op_weight(op_weight[191:128]),
.op_bias(op_bias[47:32]),
.op_dout(op_dout_27_2));

vector_muladd #(.CPF(4),
.RELU(1),
.BN(0),
.DIN_Q(6),
.DOUT_Q(6),
.BN_SCALE_Q(6),
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
.op_weight(op_weight[255:192]),
.op_bias(op_bias[63:48]),
.op_dout(op_dout_27_3));

vector_muladd #(.CPF(4),
.RELU(1),
.BN(0),
.DIN_Q(6),
.DOUT_Q(6),
.BN_SCALE_Q(6),
.BN_BIAS_Q(6),
.MID_Q(6),
.BIAS_DW(16),
.Q(13),
.DIN_DW(16), 
.DOUT_DW(16), 
.DATA_CHANNEL(1), 
.ACC_WIDTH(40), 
.WW(16))
u_vector_muladd_27_4(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_27), 
.op_weight(op_weight[319:256]),
.op_bias(op_bias[79:64]),
.op_dout(op_dout_27_4));

vector_muladd #(.CPF(4),
.RELU(1),
.BN(0),
.DIN_Q(6),
.DOUT_Q(6),
.BN_SCALE_Q(6),
.BN_BIAS_Q(6),
.MID_Q(6),
.BIAS_DW(16),
.Q(13),
.DIN_DW(16), 
.DOUT_DW(16), 
.DATA_CHANNEL(1), 
.ACC_WIDTH(40), 
.WW(16))
u_vector_muladd_27_5(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_27), 
.op_weight(op_weight[383:320]),
.op_bias(op_bias[95:80]),
.op_dout(op_dout_27_5));

vector_muladd #(.CPF(4),
.RELU(1),
.BN(0),
.DIN_Q(6),
.DOUT_Q(6),
.BN_SCALE_Q(6),
.BN_BIAS_Q(6),
.MID_Q(6),
.BIAS_DW(16),
.Q(13),
.DIN_DW(16), 
.DOUT_DW(16), 
.DATA_CHANNEL(1), 
.ACC_WIDTH(40), 
.WW(16))
u_vector_muladd_27_6(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_27), 
.op_weight(op_weight[447:384]),
.op_bias(op_bias[111:96]),
.op_dout(op_dout_27_6));

vector_muladd #(.CPF(4),
.RELU(1),
.BN(0),
.DIN_Q(6),
.DOUT_Q(6),
.BN_SCALE_Q(6),
.BN_BIAS_Q(6),
.MID_Q(6),
.BIAS_DW(16),
.Q(13),
.DIN_DW(16), 
.DOUT_DW(16), 
.DATA_CHANNEL(1), 
.ACC_WIDTH(40), 
.WW(16))
u_vector_muladd_27_7(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_27), 
.op_weight(op_weight[511:448]),
.op_bias(op_bias[127:112]),
.op_dout(op_dout_27_7));

vector_muladd #(.CPF(4),
.RELU(1),
.BN(0),
.DIN_Q(6),
.DOUT_Q(6),
.BN_SCALE_Q(6),
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
.op_weight(op_weight[63:0]),
.op_bias(op_bias[15:0]),
.op_dout(op_dout_28_0));

vector_muladd #(.CPF(4),
.RELU(1),
.BN(0),
.DIN_Q(6),
.DOUT_Q(6),
.BN_SCALE_Q(6),
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
.op_weight(op_weight[127:64]),
.op_bias(op_bias[31:16]),
.op_dout(op_dout_28_1));

vector_muladd #(.CPF(4),
.RELU(1),
.BN(0),
.DIN_Q(6),
.DOUT_Q(6),
.BN_SCALE_Q(6),
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
.op_weight(op_weight[191:128]),
.op_bias(op_bias[47:32]),
.op_dout(op_dout_28_2));

vector_muladd #(.CPF(4),
.RELU(1),
.BN(0),
.DIN_Q(6),
.DOUT_Q(6),
.BN_SCALE_Q(6),
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
.op_weight(op_weight[255:192]),
.op_bias(op_bias[63:48]),
.op_dout(op_dout_28_3));

vector_muladd #(.CPF(4),
.RELU(1),
.BN(0),
.DIN_Q(6),
.DOUT_Q(6),
.BN_SCALE_Q(6),
.BN_BIAS_Q(6),
.MID_Q(6),
.BIAS_DW(16),
.Q(13),
.DIN_DW(16), 
.DOUT_DW(16), 
.DATA_CHANNEL(1), 
.ACC_WIDTH(40), 
.WW(16))
u_vector_muladd_28_4(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_28), 
.op_weight(op_weight[319:256]),
.op_bias(op_bias[79:64]),
.op_dout(op_dout_28_4));

vector_muladd #(.CPF(4),
.RELU(1),
.BN(0),
.DIN_Q(6),
.DOUT_Q(6),
.BN_SCALE_Q(6),
.BN_BIAS_Q(6),
.MID_Q(6),
.BIAS_DW(16),
.Q(13),
.DIN_DW(16), 
.DOUT_DW(16), 
.DATA_CHANNEL(1), 
.ACC_WIDTH(40), 
.WW(16))
u_vector_muladd_28_5(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_28), 
.op_weight(op_weight[383:320]),
.op_bias(op_bias[95:80]),
.op_dout(op_dout_28_5));

vector_muladd #(.CPF(4),
.RELU(1),
.BN(0),
.DIN_Q(6),
.DOUT_Q(6),
.BN_SCALE_Q(6),
.BN_BIAS_Q(6),
.MID_Q(6),
.BIAS_DW(16),
.Q(13),
.DIN_DW(16), 
.DOUT_DW(16), 
.DATA_CHANNEL(1), 
.ACC_WIDTH(40), 
.WW(16))
u_vector_muladd_28_6(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_28), 
.op_weight(op_weight[447:384]),
.op_bias(op_bias[111:96]),
.op_dout(op_dout_28_6));

vector_muladd #(.CPF(4),
.RELU(1),
.BN(0),
.DIN_Q(6),
.DOUT_Q(6),
.BN_SCALE_Q(6),
.BN_BIAS_Q(6),
.MID_Q(6),
.BIAS_DW(16),
.Q(13),
.DIN_DW(16), 
.DOUT_DW(16), 
.DATA_CHANNEL(1), 
.ACC_WIDTH(40), 
.WW(16))
u_vector_muladd_28_7(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_28), 
.op_weight(op_weight[511:448]),
.op_bias(op_bias[127:112]),
.op_dout(op_dout_28_7));

vector_muladd #(.CPF(4),
.RELU(1),
.BN(0),
.DIN_Q(6),
.DOUT_Q(6),
.BN_SCALE_Q(6),
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
.op_weight(op_weight[63:0]),
.op_bias(op_bias[15:0]),
.op_dout(op_dout_29_0));

vector_muladd #(.CPF(4),
.RELU(1),
.BN(0),
.DIN_Q(6),
.DOUT_Q(6),
.BN_SCALE_Q(6),
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
.op_weight(op_weight[127:64]),
.op_bias(op_bias[31:16]),
.op_dout(op_dout_29_1));

vector_muladd #(.CPF(4),
.RELU(1),
.BN(0),
.DIN_Q(6),
.DOUT_Q(6),
.BN_SCALE_Q(6),
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
.op_weight(op_weight[191:128]),
.op_bias(op_bias[47:32]),
.op_dout(op_dout_29_2));

vector_muladd #(.CPF(4),
.RELU(1),
.BN(0),
.DIN_Q(6),
.DOUT_Q(6),
.BN_SCALE_Q(6),
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
.op_weight(op_weight[255:192]),
.op_bias(op_bias[63:48]),
.op_dout(op_dout_29_3));

vector_muladd #(.CPF(4),
.RELU(1),
.BN(0),
.DIN_Q(6),
.DOUT_Q(6),
.BN_SCALE_Q(6),
.BN_BIAS_Q(6),
.MID_Q(6),
.BIAS_DW(16),
.Q(13),
.DIN_DW(16), 
.DOUT_DW(16), 
.DATA_CHANNEL(1), 
.ACC_WIDTH(40), 
.WW(16))
u_vector_muladd_29_4(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_29), 
.op_weight(op_weight[319:256]),
.op_bias(op_bias[79:64]),
.op_dout(op_dout_29_4));

vector_muladd #(.CPF(4),
.RELU(1),
.BN(0),
.DIN_Q(6),
.DOUT_Q(6),
.BN_SCALE_Q(6),
.BN_BIAS_Q(6),
.MID_Q(6),
.BIAS_DW(16),
.Q(13),
.DIN_DW(16), 
.DOUT_DW(16), 
.DATA_CHANNEL(1), 
.ACC_WIDTH(40), 
.WW(16))
u_vector_muladd_29_5(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_29), 
.op_weight(op_weight[383:320]),
.op_bias(op_bias[95:80]),
.op_dout(op_dout_29_5));

vector_muladd #(.CPF(4),
.RELU(1),
.BN(0),
.DIN_Q(6),
.DOUT_Q(6),
.BN_SCALE_Q(6),
.BN_BIAS_Q(6),
.MID_Q(6),
.BIAS_DW(16),
.Q(13),
.DIN_DW(16), 
.DOUT_DW(16), 
.DATA_CHANNEL(1), 
.ACC_WIDTH(40), 
.WW(16))
u_vector_muladd_29_6(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_29), 
.op_weight(op_weight[447:384]),
.op_bias(op_bias[111:96]),
.op_dout(op_dout_29_6));

vector_muladd #(.CPF(4),
.RELU(1),
.BN(0),
.DIN_Q(6),
.DOUT_Q(6),
.BN_SCALE_Q(6),
.BN_BIAS_Q(6),
.MID_Q(6),
.BIAS_DW(16),
.Q(13),
.DIN_DW(16), 
.DOUT_DW(16), 
.DATA_CHANNEL(1), 
.ACC_WIDTH(40), 
.WW(16))
u_vector_muladd_29_7(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_29), 
.op_weight(op_weight[511:448]),
.op_bias(op_bias[127:112]),
.op_dout(op_dout_29_7));

vector_muladd #(.CPF(4),
.RELU(1),
.BN(0),
.DIN_Q(6),
.DOUT_Q(6),
.BN_SCALE_Q(6),
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
.op_weight(op_weight[63:0]),
.op_bias(op_bias[15:0]),
.op_dout(op_dout_30_0));

vector_muladd #(.CPF(4),
.RELU(1),
.BN(0),
.DIN_Q(6),
.DOUT_Q(6),
.BN_SCALE_Q(6),
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
.op_weight(op_weight[127:64]),
.op_bias(op_bias[31:16]),
.op_dout(op_dout_30_1));

vector_muladd #(.CPF(4),
.RELU(1),
.BN(0),
.DIN_Q(6),
.DOUT_Q(6),
.BN_SCALE_Q(6),
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
.op_weight(op_weight[191:128]),
.op_bias(op_bias[47:32]),
.op_dout(op_dout_30_2));

vector_muladd #(.CPF(4),
.RELU(1),
.BN(0),
.DIN_Q(6),
.DOUT_Q(6),
.BN_SCALE_Q(6),
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
.op_weight(op_weight[255:192]),
.op_bias(op_bias[63:48]),
.op_dout(op_dout_30_3));

vector_muladd #(.CPF(4),
.RELU(1),
.BN(0),
.DIN_Q(6),
.DOUT_Q(6),
.BN_SCALE_Q(6),
.BN_BIAS_Q(6),
.MID_Q(6),
.BIAS_DW(16),
.Q(13),
.DIN_DW(16), 
.DOUT_DW(16), 
.DATA_CHANNEL(1), 
.ACC_WIDTH(40), 
.WW(16))
u_vector_muladd_30_4(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_30), 
.op_weight(op_weight[319:256]),
.op_bias(op_bias[79:64]),
.op_dout(op_dout_30_4));

vector_muladd #(.CPF(4),
.RELU(1),
.BN(0),
.DIN_Q(6),
.DOUT_Q(6),
.BN_SCALE_Q(6),
.BN_BIAS_Q(6),
.MID_Q(6),
.BIAS_DW(16),
.Q(13),
.DIN_DW(16), 
.DOUT_DW(16), 
.DATA_CHANNEL(1), 
.ACC_WIDTH(40), 
.WW(16))
u_vector_muladd_30_5(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_30), 
.op_weight(op_weight[383:320]),
.op_bias(op_bias[95:80]),
.op_dout(op_dout_30_5));

vector_muladd #(.CPF(4),
.RELU(1),
.BN(0),
.DIN_Q(6),
.DOUT_Q(6),
.BN_SCALE_Q(6),
.BN_BIAS_Q(6),
.MID_Q(6),
.BIAS_DW(16),
.Q(13),
.DIN_DW(16), 
.DOUT_DW(16), 
.DATA_CHANNEL(1), 
.ACC_WIDTH(40), 
.WW(16))
u_vector_muladd_30_6(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_30), 
.op_weight(op_weight[447:384]),
.op_bias(op_bias[111:96]),
.op_dout(op_dout_30_6));

vector_muladd #(.CPF(4),
.RELU(1),
.BN(0),
.DIN_Q(6),
.DOUT_Q(6),
.BN_SCALE_Q(6),
.BN_BIAS_Q(6),
.MID_Q(6),
.BIAS_DW(16),
.Q(13),
.DIN_DW(16), 
.DOUT_DW(16), 
.DATA_CHANNEL(1), 
.ACC_WIDTH(40), 
.WW(16))
u_vector_muladd_30_7(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_30), 
.op_weight(op_weight[511:448]),
.op_bias(op_bias[127:112]),
.op_dout(op_dout_30_7));

vector_muladd #(.CPF(4),
.RELU(1),
.BN(0),
.DIN_Q(6),
.DOUT_Q(6),
.BN_SCALE_Q(6),
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
.op_weight(op_weight[63:0]),
.op_bias(op_bias[15:0]),
.op_dout(op_dout_31_0));

vector_muladd #(.CPF(4),
.RELU(1),
.BN(0),
.DIN_Q(6),
.DOUT_Q(6),
.BN_SCALE_Q(6),
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
.op_weight(op_weight[127:64]),
.op_bias(op_bias[31:16]),
.op_dout(op_dout_31_1));

vector_muladd #(.CPF(4),
.RELU(1),
.BN(0),
.DIN_Q(6),
.DOUT_Q(6),
.BN_SCALE_Q(6),
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
.op_weight(op_weight[191:128]),
.op_bias(op_bias[47:32]),
.op_dout(op_dout_31_2));

vector_muladd #(.CPF(4),
.RELU(1),
.BN(0),
.DIN_Q(6),
.DOUT_Q(6),
.BN_SCALE_Q(6),
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
.op_weight(op_weight[255:192]),
.op_bias(op_bias[63:48]),
.op_dout(op_dout_31_3));

vector_muladd #(.CPF(4),
.RELU(1),
.BN(0),
.DIN_Q(6),
.DOUT_Q(6),
.BN_SCALE_Q(6),
.BN_BIAS_Q(6),
.MID_Q(6),
.BIAS_DW(16),
.Q(13),
.DIN_DW(16), 
.DOUT_DW(16), 
.DATA_CHANNEL(1), 
.ACC_WIDTH(40), 
.WW(16))
u_vector_muladd_31_4(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_31), 
.op_weight(op_weight[319:256]),
.op_bias(op_bias[79:64]),
.op_dout(op_dout_31_4));

vector_muladd #(.CPF(4),
.RELU(1),
.BN(0),
.DIN_Q(6),
.DOUT_Q(6),
.BN_SCALE_Q(6),
.BN_BIAS_Q(6),
.MID_Q(6),
.BIAS_DW(16),
.Q(13),
.DIN_DW(16), 
.DOUT_DW(16), 
.DATA_CHANNEL(1), 
.ACC_WIDTH(40), 
.WW(16))
u_vector_muladd_31_5(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_31), 
.op_weight(op_weight[383:320]),
.op_bias(op_bias[95:80]),
.op_dout(op_dout_31_5));

vector_muladd #(.CPF(4),
.RELU(1),
.BN(0),
.DIN_Q(6),
.DOUT_Q(6),
.BN_SCALE_Q(6),
.BN_BIAS_Q(6),
.MID_Q(6),
.BIAS_DW(16),
.Q(13),
.DIN_DW(16), 
.DOUT_DW(16), 
.DATA_CHANNEL(1), 
.ACC_WIDTH(40), 
.WW(16))
u_vector_muladd_31_6(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_31), 
.op_weight(op_weight[447:384]),
.op_bias(op_bias[111:96]),
.op_dout(op_dout_31_6));

vector_muladd #(.CPF(4),
.RELU(1),
.BN(0),
.DIN_Q(6),
.DOUT_Q(6),
.BN_SCALE_Q(6),
.BN_BIAS_Q(6),
.MID_Q(6),
.BIAS_DW(16),
.Q(13),
.DIN_DW(16), 
.DOUT_DW(16), 
.DATA_CHANNEL(1), 
.ACC_WIDTH(40), 
.WW(16))
u_vector_muladd_31_7(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_31), 
.op_weight(op_weight[511:448]),
.op_bias(op_bias[127:112]),
.op_dout(op_dout_31_7));

vector_muladd #(.CPF(4),
.RELU(1),
.BN(0),
.DIN_Q(6),
.DOUT_Q(6),
.BN_SCALE_Q(6),
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
.op_weight(op_weight[63:0]),
.op_bias(op_bias[15:0]),
.op_dout(op_dout_32_0));

vector_muladd #(.CPF(4),
.RELU(1),
.BN(0),
.DIN_Q(6),
.DOUT_Q(6),
.BN_SCALE_Q(6),
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
.op_weight(op_weight[127:64]),
.op_bias(op_bias[31:16]),
.op_dout(op_dout_32_1));

vector_muladd #(.CPF(4),
.RELU(1),
.BN(0),
.DIN_Q(6),
.DOUT_Q(6),
.BN_SCALE_Q(6),
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
.op_weight(op_weight[191:128]),
.op_bias(op_bias[47:32]),
.op_dout(op_dout_32_2));

vector_muladd #(.CPF(4),
.RELU(1),
.BN(0),
.DIN_Q(6),
.DOUT_Q(6),
.BN_SCALE_Q(6),
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
.op_weight(op_weight[255:192]),
.op_bias(op_bias[63:48]),
.op_dout(op_dout_32_3));

vector_muladd #(.CPF(4),
.RELU(1),
.BN(0),
.DIN_Q(6),
.DOUT_Q(6),
.BN_SCALE_Q(6),
.BN_BIAS_Q(6),
.MID_Q(6),
.BIAS_DW(16),
.Q(13),
.DIN_DW(16), 
.DOUT_DW(16), 
.DATA_CHANNEL(1), 
.ACC_WIDTH(40), 
.WW(16))
u_vector_muladd_32_4(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_32), 
.op_weight(op_weight[319:256]),
.op_bias(op_bias[79:64]),
.op_dout(op_dout_32_4));

vector_muladd #(.CPF(4),
.RELU(1),
.BN(0),
.DIN_Q(6),
.DOUT_Q(6),
.BN_SCALE_Q(6),
.BN_BIAS_Q(6),
.MID_Q(6),
.BIAS_DW(16),
.Q(13),
.DIN_DW(16), 
.DOUT_DW(16), 
.DATA_CHANNEL(1), 
.ACC_WIDTH(40), 
.WW(16))
u_vector_muladd_32_5(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_32), 
.op_weight(op_weight[383:320]),
.op_bias(op_bias[95:80]),
.op_dout(op_dout_32_5));

vector_muladd #(.CPF(4),
.RELU(1),
.BN(0),
.DIN_Q(6),
.DOUT_Q(6),
.BN_SCALE_Q(6),
.BN_BIAS_Q(6),
.MID_Q(6),
.BIAS_DW(16),
.Q(13),
.DIN_DW(16), 
.DOUT_DW(16), 
.DATA_CHANNEL(1), 
.ACC_WIDTH(40), 
.WW(16))
u_vector_muladd_32_6(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_32), 
.op_weight(op_weight[447:384]),
.op_bias(op_bias[111:96]),
.op_dout(op_dout_32_6));

vector_muladd #(.CPF(4),
.RELU(1),
.BN(0),
.DIN_Q(6),
.DOUT_Q(6),
.BN_SCALE_Q(6),
.BN_BIAS_Q(6),
.MID_Q(6),
.BIAS_DW(16),
.Q(13),
.DIN_DW(16), 
.DOUT_DW(16), 
.DATA_CHANNEL(1), 
.ACC_WIDTH(40), 
.WW(16))
u_vector_muladd_32_7(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_32), 
.op_weight(op_weight[511:448]),
.op_bias(op_bias[127:112]),
.op_dout(op_dout_32_7));

vector_muladd #(.CPF(4),
.RELU(1),
.BN(0),
.DIN_Q(6),
.DOUT_Q(6),
.BN_SCALE_Q(6),
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
.op_weight(op_weight[63:0]),
.op_bias(op_bias[15:0]),
.op_dout(op_dout_33_0));

vector_muladd #(.CPF(4),
.RELU(1),
.BN(0),
.DIN_Q(6),
.DOUT_Q(6),
.BN_SCALE_Q(6),
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
.op_weight(op_weight[127:64]),
.op_bias(op_bias[31:16]),
.op_dout(op_dout_33_1));

vector_muladd #(.CPF(4),
.RELU(1),
.BN(0),
.DIN_Q(6),
.DOUT_Q(6),
.BN_SCALE_Q(6),
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
.op_weight(op_weight[191:128]),
.op_bias(op_bias[47:32]),
.op_dout(op_dout_33_2));

vector_muladd #(.CPF(4),
.RELU(1),
.BN(0),
.DIN_Q(6),
.DOUT_Q(6),
.BN_SCALE_Q(6),
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
.op_weight(op_weight[255:192]),
.op_bias(op_bias[63:48]),
.op_dout(op_dout_33_3));

vector_muladd #(.CPF(4),
.RELU(1),
.BN(0),
.DIN_Q(6),
.DOUT_Q(6),
.BN_SCALE_Q(6),
.BN_BIAS_Q(6),
.MID_Q(6),
.BIAS_DW(16),
.Q(13),
.DIN_DW(16), 
.DOUT_DW(16), 
.DATA_CHANNEL(1), 
.ACC_WIDTH(40), 
.WW(16))
u_vector_muladd_33_4(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_33), 
.op_weight(op_weight[319:256]),
.op_bias(op_bias[79:64]),
.op_dout(op_dout_33_4));

vector_muladd #(.CPF(4),
.RELU(1),
.BN(0),
.DIN_Q(6),
.DOUT_Q(6),
.BN_SCALE_Q(6),
.BN_BIAS_Q(6),
.MID_Q(6),
.BIAS_DW(16),
.Q(13),
.DIN_DW(16), 
.DOUT_DW(16), 
.DATA_CHANNEL(1), 
.ACC_WIDTH(40), 
.WW(16))
u_vector_muladd_33_5(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_33), 
.op_weight(op_weight[383:320]),
.op_bias(op_bias[95:80]),
.op_dout(op_dout_33_5));

vector_muladd #(.CPF(4),
.RELU(1),
.BN(0),
.DIN_Q(6),
.DOUT_Q(6),
.BN_SCALE_Q(6),
.BN_BIAS_Q(6),
.MID_Q(6),
.BIAS_DW(16),
.Q(13),
.DIN_DW(16), 
.DOUT_DW(16), 
.DATA_CHANNEL(1), 
.ACC_WIDTH(40), 
.WW(16))
u_vector_muladd_33_6(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_33), 
.op_weight(op_weight[447:384]),
.op_bias(op_bias[111:96]),
.op_dout(op_dout_33_6));

vector_muladd #(.CPF(4),
.RELU(1),
.BN(0),
.DIN_Q(6),
.DOUT_Q(6),
.BN_SCALE_Q(6),
.BN_BIAS_Q(6),
.MID_Q(6),
.BIAS_DW(16),
.Q(13),
.DIN_DW(16), 
.DOUT_DW(16), 
.DATA_CHANNEL(1), 
.ACC_WIDTH(40), 
.WW(16))
u_vector_muladd_33_7(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_33), 
.op_weight(op_weight[511:448]),
.op_bias(op_bias[127:112]),
.op_dout(op_dout_33_7));

vector_muladd #(.CPF(4),
.RELU(1),
.BN(0),
.DIN_Q(6),
.DOUT_Q(6),
.BN_SCALE_Q(6),
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
.op_weight(op_weight[63:0]),
.op_bias(op_bias[15:0]),
.op_dout(op_dout_34_0));

vector_muladd #(.CPF(4),
.RELU(1),
.BN(0),
.DIN_Q(6),
.DOUT_Q(6),
.BN_SCALE_Q(6),
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
.op_weight(op_weight[127:64]),
.op_bias(op_bias[31:16]),
.op_dout(op_dout_34_1));

vector_muladd #(.CPF(4),
.RELU(1),
.BN(0),
.DIN_Q(6),
.DOUT_Q(6),
.BN_SCALE_Q(6),
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
.op_weight(op_weight[191:128]),
.op_bias(op_bias[47:32]),
.op_dout(op_dout_34_2));

vector_muladd #(.CPF(4),
.RELU(1),
.BN(0),
.DIN_Q(6),
.DOUT_Q(6),
.BN_SCALE_Q(6),
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
.op_weight(op_weight[255:192]),
.op_bias(op_bias[63:48]),
.op_dout(op_dout_34_3));

vector_muladd #(.CPF(4),
.RELU(1),
.BN(0),
.DIN_Q(6),
.DOUT_Q(6),
.BN_SCALE_Q(6),
.BN_BIAS_Q(6),
.MID_Q(6),
.BIAS_DW(16),
.Q(13),
.DIN_DW(16), 
.DOUT_DW(16), 
.DATA_CHANNEL(1), 
.ACC_WIDTH(40), 
.WW(16))
u_vector_muladd_34_4(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_34), 
.op_weight(op_weight[319:256]),
.op_bias(op_bias[79:64]),
.op_dout(op_dout_34_4));

vector_muladd #(.CPF(4),
.RELU(1),
.BN(0),
.DIN_Q(6),
.DOUT_Q(6),
.BN_SCALE_Q(6),
.BN_BIAS_Q(6),
.MID_Q(6),
.BIAS_DW(16),
.Q(13),
.DIN_DW(16), 
.DOUT_DW(16), 
.DATA_CHANNEL(1), 
.ACC_WIDTH(40), 
.WW(16))
u_vector_muladd_34_5(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_34), 
.op_weight(op_weight[383:320]),
.op_bias(op_bias[95:80]),
.op_dout(op_dout_34_5));

vector_muladd #(.CPF(4),
.RELU(1),
.BN(0),
.DIN_Q(6),
.DOUT_Q(6),
.BN_SCALE_Q(6),
.BN_BIAS_Q(6),
.MID_Q(6),
.BIAS_DW(16),
.Q(13),
.DIN_DW(16), 
.DOUT_DW(16), 
.DATA_CHANNEL(1), 
.ACC_WIDTH(40), 
.WW(16))
u_vector_muladd_34_6(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_34), 
.op_weight(op_weight[447:384]),
.op_bias(op_bias[111:96]),
.op_dout(op_dout_34_6));

vector_muladd #(.CPF(4),
.RELU(1),
.BN(0),
.DIN_Q(6),
.DOUT_Q(6),
.BN_SCALE_Q(6),
.BN_BIAS_Q(6),
.MID_Q(6),
.BIAS_DW(16),
.Q(13),
.DIN_DW(16), 
.DOUT_DW(16), 
.DATA_CHANNEL(1), 
.ACC_WIDTH(40), 
.WW(16))
u_vector_muladd_34_7(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_34), 
.op_weight(op_weight[511:448]),
.op_bias(op_bias[127:112]),
.op_dout(op_dout_34_7));

vector_muladd #(.CPF(4),
.RELU(1),
.BN(0),
.DIN_Q(6),
.DOUT_Q(6),
.BN_SCALE_Q(6),
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
.op_weight(op_weight[63:0]),
.op_bias(op_bias[15:0]),
.op_dout(op_dout_35_0));

vector_muladd #(.CPF(4),
.RELU(1),
.BN(0),
.DIN_Q(6),
.DOUT_Q(6),
.BN_SCALE_Q(6),
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
.op_weight(op_weight[127:64]),
.op_bias(op_bias[31:16]),
.op_dout(op_dout_35_1));

vector_muladd #(.CPF(4),
.RELU(1),
.BN(0),
.DIN_Q(6),
.DOUT_Q(6),
.BN_SCALE_Q(6),
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
.op_weight(op_weight[191:128]),
.op_bias(op_bias[47:32]),
.op_dout(op_dout_35_2));

vector_muladd #(.CPF(4),
.RELU(1),
.BN(0),
.DIN_Q(6),
.DOUT_Q(6),
.BN_SCALE_Q(6),
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
.op_weight(op_weight[255:192]),
.op_bias(op_bias[63:48]),
.op_dout(op_dout_35_3));

vector_muladd #(.CPF(4),
.RELU(1),
.BN(0),
.DIN_Q(6),
.DOUT_Q(6),
.BN_SCALE_Q(6),
.BN_BIAS_Q(6),
.MID_Q(6),
.BIAS_DW(16),
.Q(13),
.DIN_DW(16), 
.DOUT_DW(16), 
.DATA_CHANNEL(1), 
.ACC_WIDTH(40), 
.WW(16))
u_vector_muladd_35_4(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_35), 
.op_weight(op_weight[319:256]),
.op_bias(op_bias[79:64]),
.op_dout(op_dout_35_4));

vector_muladd #(.CPF(4),
.RELU(1),
.BN(0),
.DIN_Q(6),
.DOUT_Q(6),
.BN_SCALE_Q(6),
.BN_BIAS_Q(6),
.MID_Q(6),
.BIAS_DW(16),
.Q(13),
.DIN_DW(16), 
.DOUT_DW(16), 
.DATA_CHANNEL(1), 
.ACC_WIDTH(40), 
.WW(16))
u_vector_muladd_35_5(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_35), 
.op_weight(op_weight[383:320]),
.op_bias(op_bias[95:80]),
.op_dout(op_dout_35_5));

vector_muladd #(.CPF(4),
.RELU(1),
.BN(0),
.DIN_Q(6),
.DOUT_Q(6),
.BN_SCALE_Q(6),
.BN_BIAS_Q(6),
.MID_Q(6),
.BIAS_DW(16),
.Q(13),
.DIN_DW(16), 
.DOUT_DW(16), 
.DATA_CHANNEL(1), 
.ACC_WIDTH(40), 
.WW(16))
u_vector_muladd_35_6(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_35), 
.op_weight(op_weight[447:384]),
.op_bias(op_bias[111:96]),
.op_dout(op_dout_35_6));

vector_muladd #(.CPF(4),
.RELU(1),
.BN(0),
.DIN_Q(6),
.DOUT_Q(6),
.BN_SCALE_Q(6),
.BN_BIAS_Q(6),
.MID_Q(6),
.BIAS_DW(16),
.Q(13),
.DIN_DW(16), 
.DOUT_DW(16), 
.DATA_CHANNEL(1), 
.ACC_WIDTH(40), 
.WW(16))
u_vector_muladd_35_7(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_35), 
.op_weight(op_weight[511:448]),
.op_bias(op_bias[127:112]),
.op_dout(op_dout_35_7));

vector_muladd #(.CPF(4),
.RELU(1),
.BN(0),
.DIN_Q(6),
.DOUT_Q(6),
.BN_SCALE_Q(6),
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
.op_weight(op_weight[63:0]),
.op_bias(op_bias[15:0]),
.op_dout(op_dout_36_0));

vector_muladd #(.CPF(4),
.RELU(1),
.BN(0),
.DIN_Q(6),
.DOUT_Q(6),
.BN_SCALE_Q(6),
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
.op_weight(op_weight[127:64]),
.op_bias(op_bias[31:16]),
.op_dout(op_dout_36_1));

vector_muladd #(.CPF(4),
.RELU(1),
.BN(0),
.DIN_Q(6),
.DOUT_Q(6),
.BN_SCALE_Q(6),
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
.op_weight(op_weight[191:128]),
.op_bias(op_bias[47:32]),
.op_dout(op_dout_36_2));

vector_muladd #(.CPF(4),
.RELU(1),
.BN(0),
.DIN_Q(6),
.DOUT_Q(6),
.BN_SCALE_Q(6),
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
.op_weight(op_weight[255:192]),
.op_bias(op_bias[63:48]),
.op_dout(op_dout_36_3));

vector_muladd #(.CPF(4),
.RELU(1),
.BN(0),
.DIN_Q(6),
.DOUT_Q(6),
.BN_SCALE_Q(6),
.BN_BIAS_Q(6),
.MID_Q(6),
.BIAS_DW(16),
.Q(13),
.DIN_DW(16), 
.DOUT_DW(16), 
.DATA_CHANNEL(1), 
.ACC_WIDTH(40), 
.WW(16))
u_vector_muladd_36_4(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_36), 
.op_weight(op_weight[319:256]),
.op_bias(op_bias[79:64]),
.op_dout(op_dout_36_4));

vector_muladd #(.CPF(4),
.RELU(1),
.BN(0),
.DIN_Q(6),
.DOUT_Q(6),
.BN_SCALE_Q(6),
.BN_BIAS_Q(6),
.MID_Q(6),
.BIAS_DW(16),
.Q(13),
.DIN_DW(16), 
.DOUT_DW(16), 
.DATA_CHANNEL(1), 
.ACC_WIDTH(40), 
.WW(16))
u_vector_muladd_36_5(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_36), 
.op_weight(op_weight[383:320]),
.op_bias(op_bias[95:80]),
.op_dout(op_dout_36_5));

vector_muladd #(.CPF(4),
.RELU(1),
.BN(0),
.DIN_Q(6),
.DOUT_Q(6),
.BN_SCALE_Q(6),
.BN_BIAS_Q(6),
.MID_Q(6),
.BIAS_DW(16),
.Q(13),
.DIN_DW(16), 
.DOUT_DW(16), 
.DATA_CHANNEL(1), 
.ACC_WIDTH(40), 
.WW(16))
u_vector_muladd_36_6(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_36), 
.op_weight(op_weight[447:384]),
.op_bias(op_bias[111:96]),
.op_dout(op_dout_36_6));

vector_muladd #(.CPF(4),
.RELU(1),
.BN(0),
.DIN_Q(6),
.DOUT_Q(6),
.BN_SCALE_Q(6),
.BN_BIAS_Q(6),
.MID_Q(6),
.BIAS_DW(16),
.Q(13),
.DIN_DW(16), 
.DOUT_DW(16), 
.DATA_CHANNEL(1), 
.ACC_WIDTH(40), 
.WW(16))
u_vector_muladd_36_7(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_36), 
.op_weight(op_weight[511:448]),
.op_bias(op_bias[127:112]),
.op_dout(op_dout_36_7));

vector_muladd #(.CPF(4),
.RELU(1),
.BN(0),
.DIN_Q(6),
.DOUT_Q(6),
.BN_SCALE_Q(6),
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
.op_weight(op_weight[63:0]),
.op_bias(op_bias[15:0]),
.op_dout(op_dout_37_0));

vector_muladd #(.CPF(4),
.RELU(1),
.BN(0),
.DIN_Q(6),
.DOUT_Q(6),
.BN_SCALE_Q(6),
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
.op_weight(op_weight[127:64]),
.op_bias(op_bias[31:16]),
.op_dout(op_dout_37_1));

vector_muladd #(.CPF(4),
.RELU(1),
.BN(0),
.DIN_Q(6),
.DOUT_Q(6),
.BN_SCALE_Q(6),
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
.op_weight(op_weight[191:128]),
.op_bias(op_bias[47:32]),
.op_dout(op_dout_37_2));

vector_muladd #(.CPF(4),
.RELU(1),
.BN(0),
.DIN_Q(6),
.DOUT_Q(6),
.BN_SCALE_Q(6),
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
.op_weight(op_weight[255:192]),
.op_bias(op_bias[63:48]),
.op_dout(op_dout_37_3));

vector_muladd #(.CPF(4),
.RELU(1),
.BN(0),
.DIN_Q(6),
.DOUT_Q(6),
.BN_SCALE_Q(6),
.BN_BIAS_Q(6),
.MID_Q(6),
.BIAS_DW(16),
.Q(13),
.DIN_DW(16), 
.DOUT_DW(16), 
.DATA_CHANNEL(1), 
.ACC_WIDTH(40), 
.WW(16))
u_vector_muladd_37_4(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_37), 
.op_weight(op_weight[319:256]),
.op_bias(op_bias[79:64]),
.op_dout(op_dout_37_4));

vector_muladd #(.CPF(4),
.RELU(1),
.BN(0),
.DIN_Q(6),
.DOUT_Q(6),
.BN_SCALE_Q(6),
.BN_BIAS_Q(6),
.MID_Q(6),
.BIAS_DW(16),
.Q(13),
.DIN_DW(16), 
.DOUT_DW(16), 
.DATA_CHANNEL(1), 
.ACC_WIDTH(40), 
.WW(16))
u_vector_muladd_37_5(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_37), 
.op_weight(op_weight[383:320]),
.op_bias(op_bias[95:80]),
.op_dout(op_dout_37_5));

vector_muladd #(.CPF(4),
.RELU(1),
.BN(0),
.DIN_Q(6),
.DOUT_Q(6),
.BN_SCALE_Q(6),
.BN_BIAS_Q(6),
.MID_Q(6),
.BIAS_DW(16),
.Q(13),
.DIN_DW(16), 
.DOUT_DW(16), 
.DATA_CHANNEL(1), 
.ACC_WIDTH(40), 
.WW(16))
u_vector_muladd_37_6(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_37), 
.op_weight(op_weight[447:384]),
.op_bias(op_bias[111:96]),
.op_dout(op_dout_37_6));

vector_muladd #(.CPF(4),
.RELU(1),
.BN(0),
.DIN_Q(6),
.DOUT_Q(6),
.BN_SCALE_Q(6),
.BN_BIAS_Q(6),
.MID_Q(6),
.BIAS_DW(16),
.Q(13),
.DIN_DW(16), 
.DOUT_DW(16), 
.DATA_CHANNEL(1), 
.ACC_WIDTH(40), 
.WW(16))
u_vector_muladd_37_7(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_37), 
.op_weight(op_weight[511:448]),
.op_bias(op_bias[127:112]),
.op_dout(op_dout_37_7));

vector_muladd #(.CPF(4),
.RELU(1),
.BN(0),
.DIN_Q(6),
.DOUT_Q(6),
.BN_SCALE_Q(6),
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
.op_weight(op_weight[63:0]),
.op_bias(op_bias[15:0]),
.op_dout(op_dout_38_0));

vector_muladd #(.CPF(4),
.RELU(1),
.BN(0),
.DIN_Q(6),
.DOUT_Q(6),
.BN_SCALE_Q(6),
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
.op_weight(op_weight[127:64]),
.op_bias(op_bias[31:16]),
.op_dout(op_dout_38_1));

vector_muladd #(.CPF(4),
.RELU(1),
.BN(0),
.DIN_Q(6),
.DOUT_Q(6),
.BN_SCALE_Q(6),
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
.op_weight(op_weight[191:128]),
.op_bias(op_bias[47:32]),
.op_dout(op_dout_38_2));

vector_muladd #(.CPF(4),
.RELU(1),
.BN(0),
.DIN_Q(6),
.DOUT_Q(6),
.BN_SCALE_Q(6),
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
.op_weight(op_weight[255:192]),
.op_bias(op_bias[63:48]),
.op_dout(op_dout_38_3));

vector_muladd #(.CPF(4),
.RELU(1),
.BN(0),
.DIN_Q(6),
.DOUT_Q(6),
.BN_SCALE_Q(6),
.BN_BIAS_Q(6),
.MID_Q(6),
.BIAS_DW(16),
.Q(13),
.DIN_DW(16), 
.DOUT_DW(16), 
.DATA_CHANNEL(1), 
.ACC_WIDTH(40), 
.WW(16))
u_vector_muladd_38_4(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_38), 
.op_weight(op_weight[319:256]),
.op_bias(op_bias[79:64]),
.op_dout(op_dout_38_4));

vector_muladd #(.CPF(4),
.RELU(1),
.BN(0),
.DIN_Q(6),
.DOUT_Q(6),
.BN_SCALE_Q(6),
.BN_BIAS_Q(6),
.MID_Q(6),
.BIAS_DW(16),
.Q(13),
.DIN_DW(16), 
.DOUT_DW(16), 
.DATA_CHANNEL(1), 
.ACC_WIDTH(40), 
.WW(16))
u_vector_muladd_38_5(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_38), 
.op_weight(op_weight[383:320]),
.op_bias(op_bias[95:80]),
.op_dout(op_dout_38_5));

vector_muladd #(.CPF(4),
.RELU(1),
.BN(0),
.DIN_Q(6),
.DOUT_Q(6),
.BN_SCALE_Q(6),
.BN_BIAS_Q(6),
.MID_Q(6),
.BIAS_DW(16),
.Q(13),
.DIN_DW(16), 
.DOUT_DW(16), 
.DATA_CHANNEL(1), 
.ACC_WIDTH(40), 
.WW(16))
u_vector_muladd_38_6(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_38), 
.op_weight(op_weight[447:384]),
.op_bias(op_bias[111:96]),
.op_dout(op_dout_38_6));

vector_muladd #(.CPF(4),
.RELU(1),
.BN(0),
.DIN_Q(6),
.DOUT_Q(6),
.BN_SCALE_Q(6),
.BN_BIAS_Q(6),
.MID_Q(6),
.BIAS_DW(16),
.Q(13),
.DIN_DW(16), 
.DOUT_DW(16), 
.DATA_CHANNEL(1), 
.ACC_WIDTH(40), 
.WW(16))
u_vector_muladd_38_7(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_38), 
.op_weight(op_weight[511:448]),
.op_bias(op_bias[127:112]),
.op_dout(op_dout_38_7));

vector_muladd #(.CPF(4),
.RELU(1),
.BN(0),
.DIN_Q(6),
.DOUT_Q(6),
.BN_SCALE_Q(6),
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
.op_weight(op_weight[63:0]),
.op_bias(op_bias[15:0]),
.op_dout(op_dout_39_0));

vector_muladd #(.CPF(4),
.RELU(1),
.BN(0),
.DIN_Q(6),
.DOUT_Q(6),
.BN_SCALE_Q(6),
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
.op_weight(op_weight[127:64]),
.op_bias(op_bias[31:16]),
.op_dout(op_dout_39_1));

vector_muladd #(.CPF(4),
.RELU(1),
.BN(0),
.DIN_Q(6),
.DOUT_Q(6),
.BN_SCALE_Q(6),
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
.op_weight(op_weight[191:128]),
.op_bias(op_bias[47:32]),
.op_dout(op_dout_39_2));

vector_muladd #(.CPF(4),
.RELU(1),
.BN(0),
.DIN_Q(6),
.DOUT_Q(6),
.BN_SCALE_Q(6),
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
.op_weight(op_weight[255:192]),
.op_bias(op_bias[63:48]),
.op_dout(op_dout_39_3));

vector_muladd #(.CPF(4),
.RELU(1),
.BN(0),
.DIN_Q(6),
.DOUT_Q(6),
.BN_SCALE_Q(6),
.BN_BIAS_Q(6),
.MID_Q(6),
.BIAS_DW(16),
.Q(13),
.DIN_DW(16), 
.DOUT_DW(16), 
.DATA_CHANNEL(1), 
.ACC_WIDTH(40), 
.WW(16))
u_vector_muladd_39_4(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_39), 
.op_weight(op_weight[319:256]),
.op_bias(op_bias[79:64]),
.op_dout(op_dout_39_4));

vector_muladd #(.CPF(4),
.RELU(1),
.BN(0),
.DIN_Q(6),
.DOUT_Q(6),
.BN_SCALE_Q(6),
.BN_BIAS_Q(6),
.MID_Q(6),
.BIAS_DW(16),
.Q(13),
.DIN_DW(16), 
.DOUT_DW(16), 
.DATA_CHANNEL(1), 
.ACC_WIDTH(40), 
.WW(16))
u_vector_muladd_39_5(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_39), 
.op_weight(op_weight[383:320]),
.op_bias(op_bias[95:80]),
.op_dout(op_dout_39_5));

vector_muladd #(.CPF(4),
.RELU(1),
.BN(0),
.DIN_Q(6),
.DOUT_Q(6),
.BN_SCALE_Q(6),
.BN_BIAS_Q(6),
.MID_Q(6),
.BIAS_DW(16),
.Q(13),
.DIN_DW(16), 
.DOUT_DW(16), 
.DATA_CHANNEL(1), 
.ACC_WIDTH(40), 
.WW(16))
u_vector_muladd_39_6(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_39), 
.op_weight(op_weight[447:384]),
.op_bias(op_bias[111:96]),
.op_dout(op_dout_39_6));

vector_muladd #(.CPF(4),
.RELU(1),
.BN(0),
.DIN_Q(6),
.DOUT_Q(6),
.BN_SCALE_Q(6),
.BN_BIAS_Q(6),
.MID_Q(6),
.BIAS_DW(16),
.Q(13),
.DIN_DW(16), 
.DOUT_DW(16), 
.DATA_CHANNEL(1), 
.ACC_WIDTH(40), 
.WW(16))
u_vector_muladd_39_7(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_39), 
.op_weight(op_weight[511:448]),
.op_bias(op_bias[127:112]),
.op_dout(op_dout_39_7));

vector_muladd #(.CPF(4),
.RELU(1),
.BN(0),
.DIN_Q(6),
.DOUT_Q(6),
.BN_SCALE_Q(6),
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
.op_weight(op_weight[63:0]),
.op_bias(op_bias[15:0]),
.op_dout(op_dout_40_0));

vector_muladd #(.CPF(4),
.RELU(1),
.BN(0),
.DIN_Q(6),
.DOUT_Q(6),
.BN_SCALE_Q(6),
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
.op_weight(op_weight[127:64]),
.op_bias(op_bias[31:16]),
.op_dout(op_dout_40_1));

vector_muladd #(.CPF(4),
.RELU(1),
.BN(0),
.DIN_Q(6),
.DOUT_Q(6),
.BN_SCALE_Q(6),
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
.op_weight(op_weight[191:128]),
.op_bias(op_bias[47:32]),
.op_dout(op_dout_40_2));

vector_muladd #(.CPF(4),
.RELU(1),
.BN(0),
.DIN_Q(6),
.DOUT_Q(6),
.BN_SCALE_Q(6),
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
.op_weight(op_weight[255:192]),
.op_bias(op_bias[63:48]),
.op_dout(op_dout_40_3));

vector_muladd #(.CPF(4),
.RELU(1),
.BN(0),
.DIN_Q(6),
.DOUT_Q(6),
.BN_SCALE_Q(6),
.BN_BIAS_Q(6),
.MID_Q(6),
.BIAS_DW(16),
.Q(13),
.DIN_DW(16), 
.DOUT_DW(16), 
.DATA_CHANNEL(1), 
.ACC_WIDTH(40), 
.WW(16))
u_vector_muladd_40_4(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_40), 
.op_weight(op_weight[319:256]),
.op_bias(op_bias[79:64]),
.op_dout(op_dout_40_4));

vector_muladd #(.CPF(4),
.RELU(1),
.BN(0),
.DIN_Q(6),
.DOUT_Q(6),
.BN_SCALE_Q(6),
.BN_BIAS_Q(6),
.MID_Q(6),
.BIAS_DW(16),
.Q(13),
.DIN_DW(16), 
.DOUT_DW(16), 
.DATA_CHANNEL(1), 
.ACC_WIDTH(40), 
.WW(16))
u_vector_muladd_40_5(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_40), 
.op_weight(op_weight[383:320]),
.op_bias(op_bias[95:80]),
.op_dout(op_dout_40_5));

vector_muladd #(.CPF(4),
.RELU(1),
.BN(0),
.DIN_Q(6),
.DOUT_Q(6),
.BN_SCALE_Q(6),
.BN_BIAS_Q(6),
.MID_Q(6),
.BIAS_DW(16),
.Q(13),
.DIN_DW(16), 
.DOUT_DW(16), 
.DATA_CHANNEL(1), 
.ACC_WIDTH(40), 
.WW(16))
u_vector_muladd_40_6(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_40), 
.op_weight(op_weight[447:384]),
.op_bias(op_bias[111:96]),
.op_dout(op_dout_40_6));

vector_muladd #(.CPF(4),
.RELU(1),
.BN(0),
.DIN_Q(6),
.DOUT_Q(6),
.BN_SCALE_Q(6),
.BN_BIAS_Q(6),
.MID_Q(6),
.BIAS_DW(16),
.Q(13),
.DIN_DW(16), 
.DOUT_DW(16), 
.DATA_CHANNEL(1), 
.ACC_WIDTH(40), 
.WW(16))
u_vector_muladd_40_7(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_40), 
.op_weight(op_weight[511:448]),
.op_bias(op_bias[127:112]),
.op_dout(op_dout_40_7));

vector_muladd #(.CPF(4),
.RELU(1),
.BN(0),
.DIN_Q(6),
.DOUT_Q(6),
.BN_SCALE_Q(6),
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
.op_weight(op_weight[63:0]),
.op_bias(op_bias[15:0]),
.op_dout(op_dout_41_0));

vector_muladd #(.CPF(4),
.RELU(1),
.BN(0),
.DIN_Q(6),
.DOUT_Q(6),
.BN_SCALE_Q(6),
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
.op_weight(op_weight[127:64]),
.op_bias(op_bias[31:16]),
.op_dout(op_dout_41_1));

vector_muladd #(.CPF(4),
.RELU(1),
.BN(0),
.DIN_Q(6),
.DOUT_Q(6),
.BN_SCALE_Q(6),
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
.op_weight(op_weight[191:128]),
.op_bias(op_bias[47:32]),
.op_dout(op_dout_41_2));

vector_muladd #(.CPF(4),
.RELU(1),
.BN(0),
.DIN_Q(6),
.DOUT_Q(6),
.BN_SCALE_Q(6),
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
.op_weight(op_weight[255:192]),
.op_bias(op_bias[63:48]),
.op_dout(op_dout_41_3));

vector_muladd #(.CPF(4),
.RELU(1),
.BN(0),
.DIN_Q(6),
.DOUT_Q(6),
.BN_SCALE_Q(6),
.BN_BIAS_Q(6),
.MID_Q(6),
.BIAS_DW(16),
.Q(13),
.DIN_DW(16), 
.DOUT_DW(16), 
.DATA_CHANNEL(1), 
.ACC_WIDTH(40), 
.WW(16))
u_vector_muladd_41_4(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_41), 
.op_weight(op_weight[319:256]),
.op_bias(op_bias[79:64]),
.op_dout(op_dout_41_4));

vector_muladd #(.CPF(4),
.RELU(1),
.BN(0),
.DIN_Q(6),
.DOUT_Q(6),
.BN_SCALE_Q(6),
.BN_BIAS_Q(6),
.MID_Q(6),
.BIAS_DW(16),
.Q(13),
.DIN_DW(16), 
.DOUT_DW(16), 
.DATA_CHANNEL(1), 
.ACC_WIDTH(40), 
.WW(16))
u_vector_muladd_41_5(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_41), 
.op_weight(op_weight[383:320]),
.op_bias(op_bias[95:80]),
.op_dout(op_dout_41_5));

vector_muladd #(.CPF(4),
.RELU(1),
.BN(0),
.DIN_Q(6),
.DOUT_Q(6),
.BN_SCALE_Q(6),
.BN_BIAS_Q(6),
.MID_Q(6),
.BIAS_DW(16),
.Q(13),
.DIN_DW(16), 
.DOUT_DW(16), 
.DATA_CHANNEL(1), 
.ACC_WIDTH(40), 
.WW(16))
u_vector_muladd_41_6(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_41), 
.op_weight(op_weight[447:384]),
.op_bias(op_bias[111:96]),
.op_dout(op_dout_41_6));

vector_muladd #(.CPF(4),
.RELU(1),
.BN(0),
.DIN_Q(6),
.DOUT_Q(6),
.BN_SCALE_Q(6),
.BN_BIAS_Q(6),
.MID_Q(6),
.BIAS_DW(16),
.Q(13),
.DIN_DW(16), 
.DOUT_DW(16), 
.DATA_CHANNEL(1), 
.ACC_WIDTH(40), 
.WW(16))
u_vector_muladd_41_7(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_41), 
.op_weight(op_weight[511:448]),
.op_bias(op_bias[127:112]),
.op_dout(op_dout_41_7));

vector_muladd #(.CPF(4),
.RELU(1),
.BN(0),
.DIN_Q(6),
.DOUT_Q(6),
.BN_SCALE_Q(6),
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
.op_weight(op_weight[63:0]),
.op_bias(op_bias[15:0]),
.op_dout(op_dout_42_0));

vector_muladd #(.CPF(4),
.RELU(1),
.BN(0),
.DIN_Q(6),
.DOUT_Q(6),
.BN_SCALE_Q(6),
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
.op_weight(op_weight[127:64]),
.op_bias(op_bias[31:16]),
.op_dout(op_dout_42_1));

vector_muladd #(.CPF(4),
.RELU(1),
.BN(0),
.DIN_Q(6),
.DOUT_Q(6),
.BN_SCALE_Q(6),
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
.op_weight(op_weight[191:128]),
.op_bias(op_bias[47:32]),
.op_dout(op_dout_42_2));

vector_muladd #(.CPF(4),
.RELU(1),
.BN(0),
.DIN_Q(6),
.DOUT_Q(6),
.BN_SCALE_Q(6),
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
.op_weight(op_weight[255:192]),
.op_bias(op_bias[63:48]),
.op_dout(op_dout_42_3));

vector_muladd #(.CPF(4),
.RELU(1),
.BN(0),
.DIN_Q(6),
.DOUT_Q(6),
.BN_SCALE_Q(6),
.BN_BIAS_Q(6),
.MID_Q(6),
.BIAS_DW(16),
.Q(13),
.DIN_DW(16), 
.DOUT_DW(16), 
.DATA_CHANNEL(1), 
.ACC_WIDTH(40), 
.WW(16))
u_vector_muladd_42_4(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_42), 
.op_weight(op_weight[319:256]),
.op_bias(op_bias[79:64]),
.op_dout(op_dout_42_4));

vector_muladd #(.CPF(4),
.RELU(1),
.BN(0),
.DIN_Q(6),
.DOUT_Q(6),
.BN_SCALE_Q(6),
.BN_BIAS_Q(6),
.MID_Q(6),
.BIAS_DW(16),
.Q(13),
.DIN_DW(16), 
.DOUT_DW(16), 
.DATA_CHANNEL(1), 
.ACC_WIDTH(40), 
.WW(16))
u_vector_muladd_42_5(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_42), 
.op_weight(op_weight[383:320]),
.op_bias(op_bias[95:80]),
.op_dout(op_dout_42_5));

vector_muladd #(.CPF(4),
.RELU(1),
.BN(0),
.DIN_Q(6),
.DOUT_Q(6),
.BN_SCALE_Q(6),
.BN_BIAS_Q(6),
.MID_Q(6),
.BIAS_DW(16),
.Q(13),
.DIN_DW(16), 
.DOUT_DW(16), 
.DATA_CHANNEL(1), 
.ACC_WIDTH(40), 
.WW(16))
u_vector_muladd_42_6(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_42), 
.op_weight(op_weight[447:384]),
.op_bias(op_bias[111:96]),
.op_dout(op_dout_42_6));

vector_muladd #(.CPF(4),
.RELU(1),
.BN(0),
.DIN_Q(6),
.DOUT_Q(6),
.BN_SCALE_Q(6),
.BN_BIAS_Q(6),
.MID_Q(6),
.BIAS_DW(16),
.Q(13),
.DIN_DW(16), 
.DOUT_DW(16), 
.DATA_CHANNEL(1), 
.ACC_WIDTH(40), 
.WW(16))
u_vector_muladd_42_7(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_42), 
.op_weight(op_weight[511:448]),
.op_bias(op_bias[127:112]),
.op_dout(op_dout_42_7));

vector_muladd #(.CPF(4),
.RELU(1),
.BN(0),
.DIN_Q(6),
.DOUT_Q(6),
.BN_SCALE_Q(6),
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
.op_weight(op_weight[63:0]),
.op_bias(op_bias[15:0]),
.op_dout(op_dout_43_0));

vector_muladd #(.CPF(4),
.RELU(1),
.BN(0),
.DIN_Q(6),
.DOUT_Q(6),
.BN_SCALE_Q(6),
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
.op_weight(op_weight[127:64]),
.op_bias(op_bias[31:16]),
.op_dout(op_dout_43_1));

vector_muladd #(.CPF(4),
.RELU(1),
.BN(0),
.DIN_Q(6),
.DOUT_Q(6),
.BN_SCALE_Q(6),
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
.op_weight(op_weight[191:128]),
.op_bias(op_bias[47:32]),
.op_dout(op_dout_43_2));

vector_muladd #(.CPF(4),
.RELU(1),
.BN(0),
.DIN_Q(6),
.DOUT_Q(6),
.BN_SCALE_Q(6),
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
.op_weight(op_weight[255:192]),
.op_bias(op_bias[63:48]),
.op_dout(op_dout_43_3));

vector_muladd #(.CPF(4),
.RELU(1),
.BN(0),
.DIN_Q(6),
.DOUT_Q(6),
.BN_SCALE_Q(6),
.BN_BIAS_Q(6),
.MID_Q(6),
.BIAS_DW(16),
.Q(13),
.DIN_DW(16), 
.DOUT_DW(16), 
.DATA_CHANNEL(1), 
.ACC_WIDTH(40), 
.WW(16))
u_vector_muladd_43_4(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_43), 
.op_weight(op_weight[319:256]),
.op_bias(op_bias[79:64]),
.op_dout(op_dout_43_4));

vector_muladd #(.CPF(4),
.RELU(1),
.BN(0),
.DIN_Q(6),
.DOUT_Q(6),
.BN_SCALE_Q(6),
.BN_BIAS_Q(6),
.MID_Q(6),
.BIAS_DW(16),
.Q(13),
.DIN_DW(16), 
.DOUT_DW(16), 
.DATA_CHANNEL(1), 
.ACC_WIDTH(40), 
.WW(16))
u_vector_muladd_43_5(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_43), 
.op_weight(op_weight[383:320]),
.op_bias(op_bias[95:80]),
.op_dout(op_dout_43_5));

vector_muladd #(.CPF(4),
.RELU(1),
.BN(0),
.DIN_Q(6),
.DOUT_Q(6),
.BN_SCALE_Q(6),
.BN_BIAS_Q(6),
.MID_Q(6),
.BIAS_DW(16),
.Q(13),
.DIN_DW(16), 
.DOUT_DW(16), 
.DATA_CHANNEL(1), 
.ACC_WIDTH(40), 
.WW(16))
u_vector_muladd_43_6(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_43), 
.op_weight(op_weight[447:384]),
.op_bias(op_bias[111:96]),
.op_dout(op_dout_43_6));

vector_muladd #(.CPF(4),
.RELU(1),
.BN(0),
.DIN_Q(6),
.DOUT_Q(6),
.BN_SCALE_Q(6),
.BN_BIAS_Q(6),
.MID_Q(6),
.BIAS_DW(16),
.Q(13),
.DIN_DW(16), 
.DOUT_DW(16), 
.DATA_CHANNEL(1), 
.ACC_WIDTH(40), 
.WW(16))
u_vector_muladd_43_7(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_43), 
.op_weight(op_weight[511:448]),
.op_bias(op_bias[127:112]),
.op_dout(op_dout_43_7));

vector_muladd #(.CPF(4),
.RELU(1),
.BN(0),
.DIN_Q(6),
.DOUT_Q(6),
.BN_SCALE_Q(6),
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
.op_weight(op_weight[63:0]),
.op_bias(op_bias[15:0]),
.op_dout(op_dout_44_0));

vector_muladd #(.CPF(4),
.RELU(1),
.BN(0),
.DIN_Q(6),
.DOUT_Q(6),
.BN_SCALE_Q(6),
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
.op_weight(op_weight[127:64]),
.op_bias(op_bias[31:16]),
.op_dout(op_dout_44_1));

vector_muladd #(.CPF(4),
.RELU(1),
.BN(0),
.DIN_Q(6),
.DOUT_Q(6),
.BN_SCALE_Q(6),
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
.op_weight(op_weight[191:128]),
.op_bias(op_bias[47:32]),
.op_dout(op_dout_44_2));

vector_muladd #(.CPF(4),
.RELU(1),
.BN(0),
.DIN_Q(6),
.DOUT_Q(6),
.BN_SCALE_Q(6),
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
.op_weight(op_weight[255:192]),
.op_bias(op_bias[63:48]),
.op_dout(op_dout_44_3));

vector_muladd #(.CPF(4),
.RELU(1),
.BN(0),
.DIN_Q(6),
.DOUT_Q(6),
.BN_SCALE_Q(6),
.BN_BIAS_Q(6),
.MID_Q(6),
.BIAS_DW(16),
.Q(13),
.DIN_DW(16), 
.DOUT_DW(16), 
.DATA_CHANNEL(1), 
.ACC_WIDTH(40), 
.WW(16))
u_vector_muladd_44_4(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_44), 
.op_weight(op_weight[319:256]),
.op_bias(op_bias[79:64]),
.op_dout(op_dout_44_4));

vector_muladd #(.CPF(4),
.RELU(1),
.BN(0),
.DIN_Q(6),
.DOUT_Q(6),
.BN_SCALE_Q(6),
.BN_BIAS_Q(6),
.MID_Q(6),
.BIAS_DW(16),
.Q(13),
.DIN_DW(16), 
.DOUT_DW(16), 
.DATA_CHANNEL(1), 
.ACC_WIDTH(40), 
.WW(16))
u_vector_muladd_44_5(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_44), 
.op_weight(op_weight[383:320]),
.op_bias(op_bias[95:80]),
.op_dout(op_dout_44_5));

vector_muladd #(.CPF(4),
.RELU(1),
.BN(0),
.DIN_Q(6),
.DOUT_Q(6),
.BN_SCALE_Q(6),
.BN_BIAS_Q(6),
.MID_Q(6),
.BIAS_DW(16),
.Q(13),
.DIN_DW(16), 
.DOUT_DW(16), 
.DATA_CHANNEL(1), 
.ACC_WIDTH(40), 
.WW(16))
u_vector_muladd_44_6(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_44), 
.op_weight(op_weight[447:384]),
.op_bias(op_bias[111:96]),
.op_dout(op_dout_44_6));

vector_muladd #(.CPF(4),
.RELU(1),
.BN(0),
.DIN_Q(6),
.DOUT_Q(6),
.BN_SCALE_Q(6),
.BN_BIAS_Q(6),
.MID_Q(6),
.BIAS_DW(16),
.Q(13),
.DIN_DW(16), 
.DOUT_DW(16), 
.DATA_CHANNEL(1), 
.ACC_WIDTH(40), 
.WW(16))
u_vector_muladd_44_7(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_44), 
.op_weight(op_weight[511:448]),
.op_bias(op_bias[127:112]),
.op_dout(op_dout_44_7));

vector_muladd #(.CPF(4),
.RELU(1),
.BN(0),
.DIN_Q(6),
.DOUT_Q(6),
.BN_SCALE_Q(6),
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
.op_weight(op_weight[63:0]),
.op_bias(op_bias[15:0]),
.op_dout(op_dout_45_0));

vector_muladd #(.CPF(4),
.RELU(1),
.BN(0),
.DIN_Q(6),
.DOUT_Q(6),
.BN_SCALE_Q(6),
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
.op_weight(op_weight[127:64]),
.op_bias(op_bias[31:16]),
.op_dout(op_dout_45_1));

vector_muladd #(.CPF(4),
.RELU(1),
.BN(0),
.DIN_Q(6),
.DOUT_Q(6),
.BN_SCALE_Q(6),
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
.op_weight(op_weight[191:128]),
.op_bias(op_bias[47:32]),
.op_dout(op_dout_45_2));

vector_muladd #(.CPF(4),
.RELU(1),
.BN(0),
.DIN_Q(6),
.DOUT_Q(6),
.BN_SCALE_Q(6),
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
.op_weight(op_weight[255:192]),
.op_bias(op_bias[63:48]),
.op_dout(op_dout_45_3));

vector_muladd #(.CPF(4),
.RELU(1),
.BN(0),
.DIN_Q(6),
.DOUT_Q(6),
.BN_SCALE_Q(6),
.BN_BIAS_Q(6),
.MID_Q(6),
.BIAS_DW(16),
.Q(13),
.DIN_DW(16), 
.DOUT_DW(16), 
.DATA_CHANNEL(1), 
.ACC_WIDTH(40), 
.WW(16))
u_vector_muladd_45_4(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_45), 
.op_weight(op_weight[319:256]),
.op_bias(op_bias[79:64]),
.op_dout(op_dout_45_4));

vector_muladd #(.CPF(4),
.RELU(1),
.BN(0),
.DIN_Q(6),
.DOUT_Q(6),
.BN_SCALE_Q(6),
.BN_BIAS_Q(6),
.MID_Q(6),
.BIAS_DW(16),
.Q(13),
.DIN_DW(16), 
.DOUT_DW(16), 
.DATA_CHANNEL(1), 
.ACC_WIDTH(40), 
.WW(16))
u_vector_muladd_45_5(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_45), 
.op_weight(op_weight[383:320]),
.op_bias(op_bias[95:80]),
.op_dout(op_dout_45_5));

vector_muladd #(.CPF(4),
.RELU(1),
.BN(0),
.DIN_Q(6),
.DOUT_Q(6),
.BN_SCALE_Q(6),
.BN_BIAS_Q(6),
.MID_Q(6),
.BIAS_DW(16),
.Q(13),
.DIN_DW(16), 
.DOUT_DW(16), 
.DATA_CHANNEL(1), 
.ACC_WIDTH(40), 
.WW(16))
u_vector_muladd_45_6(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_45), 
.op_weight(op_weight[447:384]),
.op_bias(op_bias[111:96]),
.op_dout(op_dout_45_6));

vector_muladd #(.CPF(4),
.RELU(1),
.BN(0),
.DIN_Q(6),
.DOUT_Q(6),
.BN_SCALE_Q(6),
.BN_BIAS_Q(6),
.MID_Q(6),
.BIAS_DW(16),
.Q(13),
.DIN_DW(16), 
.DOUT_DW(16), 
.DATA_CHANNEL(1), 
.ACC_WIDTH(40), 
.WW(16))
u_vector_muladd_45_7(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_45), 
.op_weight(op_weight[511:448]),
.op_bias(op_bias[127:112]),
.op_dout(op_dout_45_7));

vector_muladd #(.CPF(4),
.RELU(1),
.BN(0),
.DIN_Q(6),
.DOUT_Q(6),
.BN_SCALE_Q(6),
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
.op_weight(op_weight[63:0]),
.op_bias(op_bias[15:0]),
.op_dout(op_dout_46_0));

vector_muladd #(.CPF(4),
.RELU(1),
.BN(0),
.DIN_Q(6),
.DOUT_Q(6),
.BN_SCALE_Q(6),
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
.op_weight(op_weight[127:64]),
.op_bias(op_bias[31:16]),
.op_dout(op_dout_46_1));

vector_muladd #(.CPF(4),
.RELU(1),
.BN(0),
.DIN_Q(6),
.DOUT_Q(6),
.BN_SCALE_Q(6),
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
.op_weight(op_weight[191:128]),
.op_bias(op_bias[47:32]),
.op_dout(op_dout_46_2));

vector_muladd #(.CPF(4),
.RELU(1),
.BN(0),
.DIN_Q(6),
.DOUT_Q(6),
.BN_SCALE_Q(6),
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
.op_weight(op_weight[255:192]),
.op_bias(op_bias[63:48]),
.op_dout(op_dout_46_3));

vector_muladd #(.CPF(4),
.RELU(1),
.BN(0),
.DIN_Q(6),
.DOUT_Q(6),
.BN_SCALE_Q(6),
.BN_BIAS_Q(6),
.MID_Q(6),
.BIAS_DW(16),
.Q(13),
.DIN_DW(16), 
.DOUT_DW(16), 
.DATA_CHANNEL(1), 
.ACC_WIDTH(40), 
.WW(16))
u_vector_muladd_46_4(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_46), 
.op_weight(op_weight[319:256]),
.op_bias(op_bias[79:64]),
.op_dout(op_dout_46_4));

vector_muladd #(.CPF(4),
.RELU(1),
.BN(0),
.DIN_Q(6),
.DOUT_Q(6),
.BN_SCALE_Q(6),
.BN_BIAS_Q(6),
.MID_Q(6),
.BIAS_DW(16),
.Q(13),
.DIN_DW(16), 
.DOUT_DW(16), 
.DATA_CHANNEL(1), 
.ACC_WIDTH(40), 
.WW(16))
u_vector_muladd_46_5(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_46), 
.op_weight(op_weight[383:320]),
.op_bias(op_bias[95:80]),
.op_dout(op_dout_46_5));

vector_muladd #(.CPF(4),
.RELU(1),
.BN(0),
.DIN_Q(6),
.DOUT_Q(6),
.BN_SCALE_Q(6),
.BN_BIAS_Q(6),
.MID_Q(6),
.BIAS_DW(16),
.Q(13),
.DIN_DW(16), 
.DOUT_DW(16), 
.DATA_CHANNEL(1), 
.ACC_WIDTH(40), 
.WW(16))
u_vector_muladd_46_6(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_46), 
.op_weight(op_weight[447:384]),
.op_bias(op_bias[111:96]),
.op_dout(op_dout_46_6));

vector_muladd #(.CPF(4),
.RELU(1),
.BN(0),
.DIN_Q(6),
.DOUT_Q(6),
.BN_SCALE_Q(6),
.BN_BIAS_Q(6),
.MID_Q(6),
.BIAS_DW(16),
.Q(13),
.DIN_DW(16), 
.DOUT_DW(16), 
.DATA_CHANNEL(1), 
.ACC_WIDTH(40), 
.WW(16))
u_vector_muladd_46_7(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_46), 
.op_weight(op_weight[511:448]),
.op_bias(op_bias[127:112]),
.op_dout(op_dout_46_7));

vector_muladd #(.CPF(4),
.RELU(1),
.BN(0),
.DIN_Q(6),
.DOUT_Q(6),
.BN_SCALE_Q(6),
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
.op_weight(op_weight[63:0]),
.op_bias(op_bias[15:0]),
.op_dout(op_dout_47_0));

vector_muladd #(.CPF(4),
.RELU(1),
.BN(0),
.DIN_Q(6),
.DOUT_Q(6),
.BN_SCALE_Q(6),
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
.op_weight(op_weight[127:64]),
.op_bias(op_bias[31:16]),
.op_dout(op_dout_47_1));

vector_muladd #(.CPF(4),
.RELU(1),
.BN(0),
.DIN_Q(6),
.DOUT_Q(6),
.BN_SCALE_Q(6),
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
.op_weight(op_weight[191:128]),
.op_bias(op_bias[47:32]),
.op_dout(op_dout_47_2));

vector_muladd #(.CPF(4),
.RELU(1),
.BN(0),
.DIN_Q(6),
.DOUT_Q(6),
.BN_SCALE_Q(6),
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
.op_weight(op_weight[255:192]),
.op_bias(op_bias[63:48]),
.op_dout(op_dout_47_3));

vector_muladd #(.CPF(4),
.RELU(1),
.BN(0),
.DIN_Q(6),
.DOUT_Q(6),
.BN_SCALE_Q(6),
.BN_BIAS_Q(6),
.MID_Q(6),
.BIAS_DW(16),
.Q(13),
.DIN_DW(16), 
.DOUT_DW(16), 
.DATA_CHANNEL(1), 
.ACC_WIDTH(40), 
.WW(16))
u_vector_muladd_47_4(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_47), 
.op_weight(op_weight[319:256]),
.op_bias(op_bias[79:64]),
.op_dout(op_dout_47_4));

vector_muladd #(.CPF(4),
.RELU(1),
.BN(0),
.DIN_Q(6),
.DOUT_Q(6),
.BN_SCALE_Q(6),
.BN_BIAS_Q(6),
.MID_Q(6),
.BIAS_DW(16),
.Q(13),
.DIN_DW(16), 
.DOUT_DW(16), 
.DATA_CHANNEL(1), 
.ACC_WIDTH(40), 
.WW(16))
u_vector_muladd_47_5(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_47), 
.op_weight(op_weight[383:320]),
.op_bias(op_bias[95:80]),
.op_dout(op_dout_47_5));

vector_muladd #(.CPF(4),
.RELU(1),
.BN(0),
.DIN_Q(6),
.DOUT_Q(6),
.BN_SCALE_Q(6),
.BN_BIAS_Q(6),
.MID_Q(6),
.BIAS_DW(16),
.Q(13),
.DIN_DW(16), 
.DOUT_DW(16), 
.DATA_CHANNEL(1), 
.ACC_WIDTH(40), 
.WW(16))
u_vector_muladd_47_6(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_47), 
.op_weight(op_weight[447:384]),
.op_bias(op_bias[111:96]),
.op_dout(op_dout_47_6));

vector_muladd #(.CPF(4),
.RELU(1),
.BN(0),
.DIN_Q(6),
.DOUT_Q(6),
.BN_SCALE_Q(6),
.BN_BIAS_Q(6),
.MID_Q(6),
.BIAS_DW(16),
.Q(13),
.DIN_DW(16), 
.DOUT_DW(16), 
.DATA_CHANNEL(1), 
.ACC_WIDTH(40), 
.WW(16))
u_vector_muladd_47_7(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_47), 
.op_weight(op_weight[511:448]),
.op_bias(op_bias[127:112]),
.op_dout(op_dout_47_7));

vector_muladd #(.CPF(4),
.RELU(1),
.BN(0),
.DIN_Q(6),
.DOUT_Q(6),
.BN_SCALE_Q(6),
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
.op_weight(op_weight[63:0]),
.op_bias(op_bias[15:0]),
.op_dout(op_dout_48_0));

vector_muladd #(.CPF(4),
.RELU(1),
.BN(0),
.DIN_Q(6),
.DOUT_Q(6),
.BN_SCALE_Q(6),
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
.op_weight(op_weight[127:64]),
.op_bias(op_bias[31:16]),
.op_dout(op_dout_48_1));

vector_muladd #(.CPF(4),
.RELU(1),
.BN(0),
.DIN_Q(6),
.DOUT_Q(6),
.BN_SCALE_Q(6),
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
.op_weight(op_weight[191:128]),
.op_bias(op_bias[47:32]),
.op_dout(op_dout_48_2));

vector_muladd #(.CPF(4),
.RELU(1),
.BN(0),
.DIN_Q(6),
.DOUT_Q(6),
.BN_SCALE_Q(6),
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
.op_weight(op_weight[255:192]),
.op_bias(op_bias[63:48]),
.op_dout(op_dout_48_3));

vector_muladd #(.CPF(4),
.RELU(1),
.BN(0),
.DIN_Q(6),
.DOUT_Q(6),
.BN_SCALE_Q(6),
.BN_BIAS_Q(6),
.MID_Q(6),
.BIAS_DW(16),
.Q(13),
.DIN_DW(16), 
.DOUT_DW(16), 
.DATA_CHANNEL(1), 
.ACC_WIDTH(40), 
.WW(16))
u_vector_muladd_48_4(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_48), 
.op_weight(op_weight[319:256]),
.op_bias(op_bias[79:64]),
.op_dout(op_dout_48_4));

vector_muladd #(.CPF(4),
.RELU(1),
.BN(0),
.DIN_Q(6),
.DOUT_Q(6),
.BN_SCALE_Q(6),
.BN_BIAS_Q(6),
.MID_Q(6),
.BIAS_DW(16),
.Q(13),
.DIN_DW(16), 
.DOUT_DW(16), 
.DATA_CHANNEL(1), 
.ACC_WIDTH(40), 
.WW(16))
u_vector_muladd_48_5(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_48), 
.op_weight(op_weight[383:320]),
.op_bias(op_bias[95:80]),
.op_dout(op_dout_48_5));

vector_muladd #(.CPF(4),
.RELU(1),
.BN(0),
.DIN_Q(6),
.DOUT_Q(6),
.BN_SCALE_Q(6),
.BN_BIAS_Q(6),
.MID_Q(6),
.BIAS_DW(16),
.Q(13),
.DIN_DW(16), 
.DOUT_DW(16), 
.DATA_CHANNEL(1), 
.ACC_WIDTH(40), 
.WW(16))
u_vector_muladd_48_6(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_48), 
.op_weight(op_weight[447:384]),
.op_bias(op_bias[111:96]),
.op_dout(op_dout_48_6));

vector_muladd #(.CPF(4),
.RELU(1),
.BN(0),
.DIN_Q(6),
.DOUT_Q(6),
.BN_SCALE_Q(6),
.BN_BIAS_Q(6),
.MID_Q(6),
.BIAS_DW(16),
.Q(13),
.DIN_DW(16), 
.DOUT_DW(16), 
.DATA_CHANNEL(1), 
.ACC_WIDTH(40), 
.WW(16))
u_vector_muladd_48_7(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_48), 
.op_weight(op_weight[511:448]),
.op_bias(op_bias[127:112]),
.op_dout(op_dout_48_7));

vector_muladd #(.CPF(4),
.RELU(1),
.BN(0),
.DIN_Q(6),
.DOUT_Q(6),
.BN_SCALE_Q(6),
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
.op_weight(op_weight[63:0]),
.op_bias(op_bias[15:0]),
.op_dout(op_dout_49_0));

vector_muladd #(.CPF(4),
.RELU(1),
.BN(0),
.DIN_Q(6),
.DOUT_Q(6),
.BN_SCALE_Q(6),
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
.op_weight(op_weight[127:64]),
.op_bias(op_bias[31:16]),
.op_dout(op_dout_49_1));

vector_muladd #(.CPF(4),
.RELU(1),
.BN(0),
.DIN_Q(6),
.DOUT_Q(6),
.BN_SCALE_Q(6),
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
.op_weight(op_weight[191:128]),
.op_bias(op_bias[47:32]),
.op_dout(op_dout_49_2));

vector_muladd #(.CPF(4),
.RELU(1),
.BN(0),
.DIN_Q(6),
.DOUT_Q(6),
.BN_SCALE_Q(6),
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
.op_weight(op_weight[255:192]),
.op_bias(op_bias[63:48]),
.op_dout(op_dout_49_3));

vector_muladd #(.CPF(4),
.RELU(1),
.BN(0),
.DIN_Q(6),
.DOUT_Q(6),
.BN_SCALE_Q(6),
.BN_BIAS_Q(6),
.MID_Q(6),
.BIAS_DW(16),
.Q(13),
.DIN_DW(16), 
.DOUT_DW(16), 
.DATA_CHANNEL(1), 
.ACC_WIDTH(40), 
.WW(16))
u_vector_muladd_49_4(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_49), 
.op_weight(op_weight[319:256]),
.op_bias(op_bias[79:64]),
.op_dout(op_dout_49_4));

vector_muladd #(.CPF(4),
.RELU(1),
.BN(0),
.DIN_Q(6),
.DOUT_Q(6),
.BN_SCALE_Q(6),
.BN_BIAS_Q(6),
.MID_Q(6),
.BIAS_DW(16),
.Q(13),
.DIN_DW(16), 
.DOUT_DW(16), 
.DATA_CHANNEL(1), 
.ACC_WIDTH(40), 
.WW(16))
u_vector_muladd_49_5(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_49), 
.op_weight(op_weight[383:320]),
.op_bias(op_bias[95:80]),
.op_dout(op_dout_49_5));

vector_muladd #(.CPF(4),
.RELU(1),
.BN(0),
.DIN_Q(6),
.DOUT_Q(6),
.BN_SCALE_Q(6),
.BN_BIAS_Q(6),
.MID_Q(6),
.BIAS_DW(16),
.Q(13),
.DIN_DW(16), 
.DOUT_DW(16), 
.DATA_CHANNEL(1), 
.ACC_WIDTH(40), 
.WW(16))
u_vector_muladd_49_6(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_49), 
.op_weight(op_weight[447:384]),
.op_bias(op_bias[111:96]),
.op_dout(op_dout_49_6));

vector_muladd #(.CPF(4),
.RELU(1),
.BN(0),
.DIN_Q(6),
.DOUT_Q(6),
.BN_SCALE_Q(6),
.BN_BIAS_Q(6),
.MID_Q(6),
.BIAS_DW(16),
.Q(13),
.DIN_DW(16), 
.DOUT_DW(16), 
.DATA_CHANNEL(1), 
.ACC_WIDTH(40), 
.WW(16))
u_vector_muladd_49_7(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_49), 
.op_weight(op_weight[511:448]),
.op_bias(op_bias[127:112]),
.op_dout(op_dout_49_7));

vector_muladd #(.CPF(4),
.RELU(1),
.BN(0),
.DIN_Q(6),
.DOUT_Q(6),
.BN_SCALE_Q(6),
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
.op_weight(op_weight[63:0]),
.op_bias(op_bias[15:0]),
.op_dout(op_dout_50_0));

vector_muladd #(.CPF(4),
.RELU(1),
.BN(0),
.DIN_Q(6),
.DOUT_Q(6),
.BN_SCALE_Q(6),
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
.op_weight(op_weight[127:64]),
.op_bias(op_bias[31:16]),
.op_dout(op_dout_50_1));

vector_muladd #(.CPF(4),
.RELU(1),
.BN(0),
.DIN_Q(6),
.DOUT_Q(6),
.BN_SCALE_Q(6),
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
.op_weight(op_weight[191:128]),
.op_bias(op_bias[47:32]),
.op_dout(op_dout_50_2));

vector_muladd #(.CPF(4),
.RELU(1),
.BN(0),
.DIN_Q(6),
.DOUT_Q(6),
.BN_SCALE_Q(6),
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
.op_weight(op_weight[255:192]),
.op_bias(op_bias[63:48]),
.op_dout(op_dout_50_3));

vector_muladd #(.CPF(4),
.RELU(1),
.BN(0),
.DIN_Q(6),
.DOUT_Q(6),
.BN_SCALE_Q(6),
.BN_BIAS_Q(6),
.MID_Q(6),
.BIAS_DW(16),
.Q(13),
.DIN_DW(16), 
.DOUT_DW(16), 
.DATA_CHANNEL(1), 
.ACC_WIDTH(40), 
.WW(16))
u_vector_muladd_50_4(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_50), 
.op_weight(op_weight[319:256]),
.op_bias(op_bias[79:64]),
.op_dout(op_dout_50_4));

vector_muladd #(.CPF(4),
.RELU(1),
.BN(0),
.DIN_Q(6),
.DOUT_Q(6),
.BN_SCALE_Q(6),
.BN_BIAS_Q(6),
.MID_Q(6),
.BIAS_DW(16),
.Q(13),
.DIN_DW(16), 
.DOUT_DW(16), 
.DATA_CHANNEL(1), 
.ACC_WIDTH(40), 
.WW(16))
u_vector_muladd_50_5(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_50), 
.op_weight(op_weight[383:320]),
.op_bias(op_bias[95:80]),
.op_dout(op_dout_50_5));

vector_muladd #(.CPF(4),
.RELU(1),
.BN(0),
.DIN_Q(6),
.DOUT_Q(6),
.BN_SCALE_Q(6),
.BN_BIAS_Q(6),
.MID_Q(6),
.BIAS_DW(16),
.Q(13),
.DIN_DW(16), 
.DOUT_DW(16), 
.DATA_CHANNEL(1), 
.ACC_WIDTH(40), 
.WW(16))
u_vector_muladd_50_6(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_50), 
.op_weight(op_weight[447:384]),
.op_bias(op_bias[111:96]),
.op_dout(op_dout_50_6));

vector_muladd #(.CPF(4),
.RELU(1),
.BN(0),
.DIN_Q(6),
.DOUT_Q(6),
.BN_SCALE_Q(6),
.BN_BIAS_Q(6),
.MID_Q(6),
.BIAS_DW(16),
.Q(13),
.DIN_DW(16), 
.DOUT_DW(16), 
.DATA_CHANNEL(1), 
.ACC_WIDTH(40), 
.WW(16))
u_vector_muladd_50_7(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_50), 
.op_weight(op_weight[511:448]),
.op_bias(op_bias[127:112]),
.op_dout(op_dout_50_7));

vector_muladd #(.CPF(4),
.RELU(1),
.BN(0),
.DIN_Q(6),
.DOUT_Q(6),
.BN_SCALE_Q(6),
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
.op_weight(op_weight[63:0]),
.op_bias(op_bias[15:0]),
.op_dout(op_dout_51_0));

vector_muladd #(.CPF(4),
.RELU(1),
.BN(0),
.DIN_Q(6),
.DOUT_Q(6),
.BN_SCALE_Q(6),
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
.op_weight(op_weight[127:64]),
.op_bias(op_bias[31:16]),
.op_dout(op_dout_51_1));

vector_muladd #(.CPF(4),
.RELU(1),
.BN(0),
.DIN_Q(6),
.DOUT_Q(6),
.BN_SCALE_Q(6),
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
.op_weight(op_weight[191:128]),
.op_bias(op_bias[47:32]),
.op_dout(op_dout_51_2));

vector_muladd #(.CPF(4),
.RELU(1),
.BN(0),
.DIN_Q(6),
.DOUT_Q(6),
.BN_SCALE_Q(6),
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
.op_weight(op_weight[255:192]),
.op_bias(op_bias[63:48]),
.op_dout(op_dout_51_3));

vector_muladd #(.CPF(4),
.RELU(1),
.BN(0),
.DIN_Q(6),
.DOUT_Q(6),
.BN_SCALE_Q(6),
.BN_BIAS_Q(6),
.MID_Q(6),
.BIAS_DW(16),
.Q(13),
.DIN_DW(16), 
.DOUT_DW(16), 
.DATA_CHANNEL(1), 
.ACC_WIDTH(40), 
.WW(16))
u_vector_muladd_51_4(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_51), 
.op_weight(op_weight[319:256]),
.op_bias(op_bias[79:64]),
.op_dout(op_dout_51_4));

vector_muladd #(.CPF(4),
.RELU(1),
.BN(0),
.DIN_Q(6),
.DOUT_Q(6),
.BN_SCALE_Q(6),
.BN_BIAS_Q(6),
.MID_Q(6),
.BIAS_DW(16),
.Q(13),
.DIN_DW(16), 
.DOUT_DW(16), 
.DATA_CHANNEL(1), 
.ACC_WIDTH(40), 
.WW(16))
u_vector_muladd_51_5(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_51), 
.op_weight(op_weight[383:320]),
.op_bias(op_bias[95:80]),
.op_dout(op_dout_51_5));

vector_muladd #(.CPF(4),
.RELU(1),
.BN(0),
.DIN_Q(6),
.DOUT_Q(6),
.BN_SCALE_Q(6),
.BN_BIAS_Q(6),
.MID_Q(6),
.BIAS_DW(16),
.Q(13),
.DIN_DW(16), 
.DOUT_DW(16), 
.DATA_CHANNEL(1), 
.ACC_WIDTH(40), 
.WW(16))
u_vector_muladd_51_6(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_51), 
.op_weight(op_weight[447:384]),
.op_bias(op_bias[111:96]),
.op_dout(op_dout_51_6));

vector_muladd #(.CPF(4),
.RELU(1),
.BN(0),
.DIN_Q(6),
.DOUT_Q(6),
.BN_SCALE_Q(6),
.BN_BIAS_Q(6),
.MID_Q(6),
.BIAS_DW(16),
.Q(13),
.DIN_DW(16), 
.DOUT_DW(16), 
.DATA_CHANNEL(1), 
.ACC_WIDTH(40), 
.WW(16))
u_vector_muladd_51_7(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_51), 
.op_weight(op_weight[511:448]),
.op_bias(op_bias[127:112]),
.op_dout(op_dout_51_7));

vector_muladd #(.CPF(4),
.RELU(1),
.BN(0),
.DIN_Q(6),
.DOUT_Q(6),
.BN_SCALE_Q(6),
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
.op_weight(op_weight[63:0]),
.op_bias(op_bias[15:0]),
.op_dout(op_dout_52_0));

vector_muladd #(.CPF(4),
.RELU(1),
.BN(0),
.DIN_Q(6),
.DOUT_Q(6),
.BN_SCALE_Q(6),
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
.op_weight(op_weight[127:64]),
.op_bias(op_bias[31:16]),
.op_dout(op_dout_52_1));

vector_muladd #(.CPF(4),
.RELU(1),
.BN(0),
.DIN_Q(6),
.DOUT_Q(6),
.BN_SCALE_Q(6),
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
.op_weight(op_weight[191:128]),
.op_bias(op_bias[47:32]),
.op_dout(op_dout_52_2));

vector_muladd #(.CPF(4),
.RELU(1),
.BN(0),
.DIN_Q(6),
.DOUT_Q(6),
.BN_SCALE_Q(6),
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
.op_weight(op_weight[255:192]),
.op_bias(op_bias[63:48]),
.op_dout(op_dout_52_3));

vector_muladd #(.CPF(4),
.RELU(1),
.BN(0),
.DIN_Q(6),
.DOUT_Q(6),
.BN_SCALE_Q(6),
.BN_BIAS_Q(6),
.MID_Q(6),
.BIAS_DW(16),
.Q(13),
.DIN_DW(16), 
.DOUT_DW(16), 
.DATA_CHANNEL(1), 
.ACC_WIDTH(40), 
.WW(16))
u_vector_muladd_52_4(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_52), 
.op_weight(op_weight[319:256]),
.op_bias(op_bias[79:64]),
.op_dout(op_dout_52_4));

vector_muladd #(.CPF(4),
.RELU(1),
.BN(0),
.DIN_Q(6),
.DOUT_Q(6),
.BN_SCALE_Q(6),
.BN_BIAS_Q(6),
.MID_Q(6),
.BIAS_DW(16),
.Q(13),
.DIN_DW(16), 
.DOUT_DW(16), 
.DATA_CHANNEL(1), 
.ACC_WIDTH(40), 
.WW(16))
u_vector_muladd_52_5(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_52), 
.op_weight(op_weight[383:320]),
.op_bias(op_bias[95:80]),
.op_dout(op_dout_52_5));

vector_muladd #(.CPF(4),
.RELU(1),
.BN(0),
.DIN_Q(6),
.DOUT_Q(6),
.BN_SCALE_Q(6),
.BN_BIAS_Q(6),
.MID_Q(6),
.BIAS_DW(16),
.Q(13),
.DIN_DW(16), 
.DOUT_DW(16), 
.DATA_CHANNEL(1), 
.ACC_WIDTH(40), 
.WW(16))
u_vector_muladd_52_6(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_52), 
.op_weight(op_weight[447:384]),
.op_bias(op_bias[111:96]),
.op_dout(op_dout_52_6));

vector_muladd #(.CPF(4),
.RELU(1),
.BN(0),
.DIN_Q(6),
.DOUT_Q(6),
.BN_SCALE_Q(6),
.BN_BIAS_Q(6),
.MID_Q(6),
.BIAS_DW(16),
.Q(13),
.DIN_DW(16), 
.DOUT_DW(16), 
.DATA_CHANNEL(1), 
.ACC_WIDTH(40), 
.WW(16))
u_vector_muladd_52_7(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_52), 
.op_weight(op_weight[511:448]),
.op_bias(op_bias[127:112]),
.op_dout(op_dout_52_7));

vector_muladd #(.CPF(4),
.RELU(1),
.BN(0),
.DIN_Q(6),
.DOUT_Q(6),
.BN_SCALE_Q(6),
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
.op_weight(op_weight[63:0]),
.op_bias(op_bias[15:0]),
.op_dout(op_dout_53_0));

vector_muladd #(.CPF(4),
.RELU(1),
.BN(0),
.DIN_Q(6),
.DOUT_Q(6),
.BN_SCALE_Q(6),
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
.op_weight(op_weight[127:64]),
.op_bias(op_bias[31:16]),
.op_dout(op_dout_53_1));

vector_muladd #(.CPF(4),
.RELU(1),
.BN(0),
.DIN_Q(6),
.DOUT_Q(6),
.BN_SCALE_Q(6),
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
.op_weight(op_weight[191:128]),
.op_bias(op_bias[47:32]),
.op_dout(op_dout_53_2));

vector_muladd #(.CPF(4),
.RELU(1),
.BN(0),
.DIN_Q(6),
.DOUT_Q(6),
.BN_SCALE_Q(6),
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
.op_weight(op_weight[255:192]),
.op_bias(op_bias[63:48]),
.op_dout(op_dout_53_3));

vector_muladd #(.CPF(4),
.RELU(1),
.BN(0),
.DIN_Q(6),
.DOUT_Q(6),
.BN_SCALE_Q(6),
.BN_BIAS_Q(6),
.MID_Q(6),
.BIAS_DW(16),
.Q(13),
.DIN_DW(16), 
.DOUT_DW(16), 
.DATA_CHANNEL(1), 
.ACC_WIDTH(40), 
.WW(16))
u_vector_muladd_53_4(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_53), 
.op_weight(op_weight[319:256]),
.op_bias(op_bias[79:64]),
.op_dout(op_dout_53_4));

vector_muladd #(.CPF(4),
.RELU(1),
.BN(0),
.DIN_Q(6),
.DOUT_Q(6),
.BN_SCALE_Q(6),
.BN_BIAS_Q(6),
.MID_Q(6),
.BIAS_DW(16),
.Q(13),
.DIN_DW(16), 
.DOUT_DW(16), 
.DATA_CHANNEL(1), 
.ACC_WIDTH(40), 
.WW(16))
u_vector_muladd_53_5(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_53), 
.op_weight(op_weight[383:320]),
.op_bias(op_bias[95:80]),
.op_dout(op_dout_53_5));

vector_muladd #(.CPF(4),
.RELU(1),
.BN(0),
.DIN_Q(6),
.DOUT_Q(6),
.BN_SCALE_Q(6),
.BN_BIAS_Q(6),
.MID_Q(6),
.BIAS_DW(16),
.Q(13),
.DIN_DW(16), 
.DOUT_DW(16), 
.DATA_CHANNEL(1), 
.ACC_WIDTH(40), 
.WW(16))
u_vector_muladd_53_6(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_53), 
.op_weight(op_weight[447:384]),
.op_bias(op_bias[111:96]),
.op_dout(op_dout_53_6));

vector_muladd #(.CPF(4),
.RELU(1),
.BN(0),
.DIN_Q(6),
.DOUT_Q(6),
.BN_SCALE_Q(6),
.BN_BIAS_Q(6),
.MID_Q(6),
.BIAS_DW(16),
.Q(13),
.DIN_DW(16), 
.DOUT_DW(16), 
.DATA_CHANNEL(1), 
.ACC_WIDTH(40), 
.WW(16))
u_vector_muladd_53_7(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_53), 
.op_weight(op_weight[511:448]),
.op_bias(op_bias[127:112]),
.op_dout(op_dout_53_7));

vector_muladd #(.CPF(4),
.RELU(1),
.BN(0),
.DIN_Q(6),
.DOUT_Q(6),
.BN_SCALE_Q(6),
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
.op_weight(op_weight[63:0]),
.op_bias(op_bias[15:0]),
.op_dout(op_dout_54_0));

vector_muladd #(.CPF(4),
.RELU(1),
.BN(0),
.DIN_Q(6),
.DOUT_Q(6),
.BN_SCALE_Q(6),
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
.op_weight(op_weight[127:64]),
.op_bias(op_bias[31:16]),
.op_dout(op_dout_54_1));

vector_muladd #(.CPF(4),
.RELU(1),
.BN(0),
.DIN_Q(6),
.DOUT_Q(6),
.BN_SCALE_Q(6),
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
.op_weight(op_weight[191:128]),
.op_bias(op_bias[47:32]),
.op_dout(op_dout_54_2));

vector_muladd #(.CPF(4),
.RELU(1),
.BN(0),
.DIN_Q(6),
.DOUT_Q(6),
.BN_SCALE_Q(6),
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
.op_weight(op_weight[255:192]),
.op_bias(op_bias[63:48]),
.op_dout(op_dout_54_3));

vector_muladd #(.CPF(4),
.RELU(1),
.BN(0),
.DIN_Q(6),
.DOUT_Q(6),
.BN_SCALE_Q(6),
.BN_BIAS_Q(6),
.MID_Q(6),
.BIAS_DW(16),
.Q(13),
.DIN_DW(16), 
.DOUT_DW(16), 
.DATA_CHANNEL(1), 
.ACC_WIDTH(40), 
.WW(16))
u_vector_muladd_54_4(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_54), 
.op_weight(op_weight[319:256]),
.op_bias(op_bias[79:64]),
.op_dout(op_dout_54_4));

vector_muladd #(.CPF(4),
.RELU(1),
.BN(0),
.DIN_Q(6),
.DOUT_Q(6),
.BN_SCALE_Q(6),
.BN_BIAS_Q(6),
.MID_Q(6),
.BIAS_DW(16),
.Q(13),
.DIN_DW(16), 
.DOUT_DW(16), 
.DATA_CHANNEL(1), 
.ACC_WIDTH(40), 
.WW(16))
u_vector_muladd_54_5(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_54), 
.op_weight(op_weight[383:320]),
.op_bias(op_bias[95:80]),
.op_dout(op_dout_54_5));

vector_muladd #(.CPF(4),
.RELU(1),
.BN(0),
.DIN_Q(6),
.DOUT_Q(6),
.BN_SCALE_Q(6),
.BN_BIAS_Q(6),
.MID_Q(6),
.BIAS_DW(16),
.Q(13),
.DIN_DW(16), 
.DOUT_DW(16), 
.DATA_CHANNEL(1), 
.ACC_WIDTH(40), 
.WW(16))
u_vector_muladd_54_6(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_54), 
.op_weight(op_weight[447:384]),
.op_bias(op_bias[111:96]),
.op_dout(op_dout_54_6));

vector_muladd #(.CPF(4),
.RELU(1),
.BN(0),
.DIN_Q(6),
.DOUT_Q(6),
.BN_SCALE_Q(6),
.BN_BIAS_Q(6),
.MID_Q(6),
.BIAS_DW(16),
.Q(13),
.DIN_DW(16), 
.DOUT_DW(16), 
.DATA_CHANNEL(1), 
.ACC_WIDTH(40), 
.WW(16))
u_vector_muladd_54_7(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_54), 
.op_weight(op_weight[511:448]),
.op_bias(op_bias[127:112]),
.op_dout(op_dout_54_7));

vector_muladd #(.CPF(4),
.RELU(1),
.BN(0),
.DIN_Q(6),
.DOUT_Q(6),
.BN_SCALE_Q(6),
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
.op_weight(op_weight[63:0]),
.op_bias(op_bias[15:0]),
.op_dout(op_dout_55_0));

vector_muladd #(.CPF(4),
.RELU(1),
.BN(0),
.DIN_Q(6),
.DOUT_Q(6),
.BN_SCALE_Q(6),
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
.op_weight(op_weight[127:64]),
.op_bias(op_bias[31:16]),
.op_dout(op_dout_55_1));

vector_muladd #(.CPF(4),
.RELU(1),
.BN(0),
.DIN_Q(6),
.DOUT_Q(6),
.BN_SCALE_Q(6),
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
.op_weight(op_weight[191:128]),
.op_bias(op_bias[47:32]),
.op_dout(op_dout_55_2));

vector_muladd #(.CPF(4),
.RELU(1),
.BN(0),
.DIN_Q(6),
.DOUT_Q(6),
.BN_SCALE_Q(6),
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
.op_weight(op_weight[255:192]),
.op_bias(op_bias[63:48]),
.op_dout(op_dout_55_3));

vector_muladd #(.CPF(4),
.RELU(1),
.BN(0),
.DIN_Q(6),
.DOUT_Q(6),
.BN_SCALE_Q(6),
.BN_BIAS_Q(6),
.MID_Q(6),
.BIAS_DW(16),
.Q(13),
.DIN_DW(16), 
.DOUT_DW(16), 
.DATA_CHANNEL(1), 
.ACC_WIDTH(40), 
.WW(16))
u_vector_muladd_55_4(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_55), 
.op_weight(op_weight[319:256]),
.op_bias(op_bias[79:64]),
.op_dout(op_dout_55_4));

vector_muladd #(.CPF(4),
.RELU(1),
.BN(0),
.DIN_Q(6),
.DOUT_Q(6),
.BN_SCALE_Q(6),
.BN_BIAS_Q(6),
.MID_Q(6),
.BIAS_DW(16),
.Q(13),
.DIN_DW(16), 
.DOUT_DW(16), 
.DATA_CHANNEL(1), 
.ACC_WIDTH(40), 
.WW(16))
u_vector_muladd_55_5(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_55), 
.op_weight(op_weight[383:320]),
.op_bias(op_bias[95:80]),
.op_dout(op_dout_55_5));

vector_muladd #(.CPF(4),
.RELU(1),
.BN(0),
.DIN_Q(6),
.DOUT_Q(6),
.BN_SCALE_Q(6),
.BN_BIAS_Q(6),
.MID_Q(6),
.BIAS_DW(16),
.Q(13),
.DIN_DW(16), 
.DOUT_DW(16), 
.DATA_CHANNEL(1), 
.ACC_WIDTH(40), 
.WW(16))
u_vector_muladd_55_6(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_55), 
.op_weight(op_weight[447:384]),
.op_bias(op_bias[111:96]),
.op_dout(op_dout_55_6));

vector_muladd #(.CPF(4),
.RELU(1),
.BN(0),
.DIN_Q(6),
.DOUT_Q(6),
.BN_SCALE_Q(6),
.BN_BIAS_Q(6),
.MID_Q(6),
.BIAS_DW(16),
.Q(13),
.DIN_DW(16), 
.DOUT_DW(16), 
.DATA_CHANNEL(1), 
.ACC_WIDTH(40), 
.WW(16))
u_vector_muladd_55_7(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_55), 
.op_weight(op_weight[511:448]),
.op_bias(op_bias[127:112]),
.op_dout(op_dout_55_7));

vector_muladd #(.CPF(4),
.RELU(1),
.BN(0),
.DIN_Q(6),
.DOUT_Q(6),
.BN_SCALE_Q(6),
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
.op_weight(op_weight[63:0]),
.op_bias(op_bias[15:0]),
.op_dout(op_dout_56_0));

vector_muladd #(.CPF(4),
.RELU(1),
.BN(0),
.DIN_Q(6),
.DOUT_Q(6),
.BN_SCALE_Q(6),
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
.op_weight(op_weight[127:64]),
.op_bias(op_bias[31:16]),
.op_dout(op_dout_56_1));

vector_muladd #(.CPF(4),
.RELU(1),
.BN(0),
.DIN_Q(6),
.DOUT_Q(6),
.BN_SCALE_Q(6),
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
.op_weight(op_weight[191:128]),
.op_bias(op_bias[47:32]),
.op_dout(op_dout_56_2));

vector_muladd #(.CPF(4),
.RELU(1),
.BN(0),
.DIN_Q(6),
.DOUT_Q(6),
.BN_SCALE_Q(6),
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
.op_weight(op_weight[255:192]),
.op_bias(op_bias[63:48]),
.op_dout(op_dout_56_3));

vector_muladd #(.CPF(4),
.RELU(1),
.BN(0),
.DIN_Q(6),
.DOUT_Q(6),
.BN_SCALE_Q(6),
.BN_BIAS_Q(6),
.MID_Q(6),
.BIAS_DW(16),
.Q(13),
.DIN_DW(16), 
.DOUT_DW(16), 
.DATA_CHANNEL(1), 
.ACC_WIDTH(40), 
.WW(16))
u_vector_muladd_56_4(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_56), 
.op_weight(op_weight[319:256]),
.op_bias(op_bias[79:64]),
.op_dout(op_dout_56_4));

vector_muladd #(.CPF(4),
.RELU(1),
.BN(0),
.DIN_Q(6),
.DOUT_Q(6),
.BN_SCALE_Q(6),
.BN_BIAS_Q(6),
.MID_Q(6),
.BIAS_DW(16),
.Q(13),
.DIN_DW(16), 
.DOUT_DW(16), 
.DATA_CHANNEL(1), 
.ACC_WIDTH(40), 
.WW(16))
u_vector_muladd_56_5(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_56), 
.op_weight(op_weight[383:320]),
.op_bias(op_bias[95:80]),
.op_dout(op_dout_56_5));

vector_muladd #(.CPF(4),
.RELU(1),
.BN(0),
.DIN_Q(6),
.DOUT_Q(6),
.BN_SCALE_Q(6),
.BN_BIAS_Q(6),
.MID_Q(6),
.BIAS_DW(16),
.Q(13),
.DIN_DW(16), 
.DOUT_DW(16), 
.DATA_CHANNEL(1), 
.ACC_WIDTH(40), 
.WW(16))
u_vector_muladd_56_6(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_56), 
.op_weight(op_weight[447:384]),
.op_bias(op_bias[111:96]),
.op_dout(op_dout_56_6));

vector_muladd #(.CPF(4),
.RELU(1),
.BN(0),
.DIN_Q(6),
.DOUT_Q(6),
.BN_SCALE_Q(6),
.BN_BIAS_Q(6),
.MID_Q(6),
.BIAS_DW(16),
.Q(13),
.DIN_DW(16), 
.DOUT_DW(16), 
.DATA_CHANNEL(1), 
.ACC_WIDTH(40), 
.WW(16))
u_vector_muladd_56_7(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_56), 
.op_weight(op_weight[511:448]),
.op_bias(op_bias[127:112]),
.op_dout(op_dout_56_7));

vector_muladd #(.CPF(4),
.RELU(1),
.BN(0),
.DIN_Q(6),
.DOUT_Q(6),
.BN_SCALE_Q(6),
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
.op_weight(op_weight[63:0]),
.op_bias(op_bias[15:0]),
.op_dout(op_dout_57_0));

vector_muladd #(.CPF(4),
.RELU(1),
.BN(0),
.DIN_Q(6),
.DOUT_Q(6),
.BN_SCALE_Q(6),
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
.op_weight(op_weight[127:64]),
.op_bias(op_bias[31:16]),
.op_dout(op_dout_57_1));

vector_muladd #(.CPF(4),
.RELU(1),
.BN(0),
.DIN_Q(6),
.DOUT_Q(6),
.BN_SCALE_Q(6),
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
.op_weight(op_weight[191:128]),
.op_bias(op_bias[47:32]),
.op_dout(op_dout_57_2));

vector_muladd #(.CPF(4),
.RELU(1),
.BN(0),
.DIN_Q(6),
.DOUT_Q(6),
.BN_SCALE_Q(6),
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
.op_weight(op_weight[255:192]),
.op_bias(op_bias[63:48]),
.op_dout(op_dout_57_3));

vector_muladd #(.CPF(4),
.RELU(1),
.BN(0),
.DIN_Q(6),
.DOUT_Q(6),
.BN_SCALE_Q(6),
.BN_BIAS_Q(6),
.MID_Q(6),
.BIAS_DW(16),
.Q(13),
.DIN_DW(16), 
.DOUT_DW(16), 
.DATA_CHANNEL(1), 
.ACC_WIDTH(40), 
.WW(16))
u_vector_muladd_57_4(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_57), 
.op_weight(op_weight[319:256]),
.op_bias(op_bias[79:64]),
.op_dout(op_dout_57_4));

vector_muladd #(.CPF(4),
.RELU(1),
.BN(0),
.DIN_Q(6),
.DOUT_Q(6),
.BN_SCALE_Q(6),
.BN_BIAS_Q(6),
.MID_Q(6),
.BIAS_DW(16),
.Q(13),
.DIN_DW(16), 
.DOUT_DW(16), 
.DATA_CHANNEL(1), 
.ACC_WIDTH(40), 
.WW(16))
u_vector_muladd_57_5(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_57), 
.op_weight(op_weight[383:320]),
.op_bias(op_bias[95:80]),
.op_dout(op_dout_57_5));

vector_muladd #(.CPF(4),
.RELU(1),
.BN(0),
.DIN_Q(6),
.DOUT_Q(6),
.BN_SCALE_Q(6),
.BN_BIAS_Q(6),
.MID_Q(6),
.BIAS_DW(16),
.Q(13),
.DIN_DW(16), 
.DOUT_DW(16), 
.DATA_CHANNEL(1), 
.ACC_WIDTH(40), 
.WW(16))
u_vector_muladd_57_6(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_57), 
.op_weight(op_weight[447:384]),
.op_bias(op_bias[111:96]),
.op_dout(op_dout_57_6));

vector_muladd #(.CPF(4),
.RELU(1),
.BN(0),
.DIN_Q(6),
.DOUT_Q(6),
.BN_SCALE_Q(6),
.BN_BIAS_Q(6),
.MID_Q(6),
.BIAS_DW(16),
.Q(13),
.DIN_DW(16), 
.DOUT_DW(16), 
.DATA_CHANNEL(1), 
.ACC_WIDTH(40), 
.WW(16))
u_vector_muladd_57_7(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_57), 
.op_weight(op_weight[511:448]),
.op_bias(op_bias[127:112]),
.op_dout(op_dout_57_7));

vector_muladd #(.CPF(4),
.RELU(1),
.BN(0),
.DIN_Q(6),
.DOUT_Q(6),
.BN_SCALE_Q(6),
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
.op_weight(op_weight[63:0]),
.op_bias(op_bias[15:0]),
.op_dout(op_dout_58_0));

vector_muladd #(.CPF(4),
.RELU(1),
.BN(0),
.DIN_Q(6),
.DOUT_Q(6),
.BN_SCALE_Q(6),
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
.op_weight(op_weight[127:64]),
.op_bias(op_bias[31:16]),
.op_dout(op_dout_58_1));

vector_muladd #(.CPF(4),
.RELU(1),
.BN(0),
.DIN_Q(6),
.DOUT_Q(6),
.BN_SCALE_Q(6),
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
.op_weight(op_weight[191:128]),
.op_bias(op_bias[47:32]),
.op_dout(op_dout_58_2));

vector_muladd #(.CPF(4),
.RELU(1),
.BN(0),
.DIN_Q(6),
.DOUT_Q(6),
.BN_SCALE_Q(6),
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
.op_weight(op_weight[255:192]),
.op_bias(op_bias[63:48]),
.op_dout(op_dout_58_3));

vector_muladd #(.CPF(4),
.RELU(1),
.BN(0),
.DIN_Q(6),
.DOUT_Q(6),
.BN_SCALE_Q(6),
.BN_BIAS_Q(6),
.MID_Q(6),
.BIAS_DW(16),
.Q(13),
.DIN_DW(16), 
.DOUT_DW(16), 
.DATA_CHANNEL(1), 
.ACC_WIDTH(40), 
.WW(16))
u_vector_muladd_58_4(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_58), 
.op_weight(op_weight[319:256]),
.op_bias(op_bias[79:64]),
.op_dout(op_dout_58_4));

vector_muladd #(.CPF(4),
.RELU(1),
.BN(0),
.DIN_Q(6),
.DOUT_Q(6),
.BN_SCALE_Q(6),
.BN_BIAS_Q(6),
.MID_Q(6),
.BIAS_DW(16),
.Q(13),
.DIN_DW(16), 
.DOUT_DW(16), 
.DATA_CHANNEL(1), 
.ACC_WIDTH(40), 
.WW(16))
u_vector_muladd_58_5(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_58), 
.op_weight(op_weight[383:320]),
.op_bias(op_bias[95:80]),
.op_dout(op_dout_58_5));

vector_muladd #(.CPF(4),
.RELU(1),
.BN(0),
.DIN_Q(6),
.DOUT_Q(6),
.BN_SCALE_Q(6),
.BN_BIAS_Q(6),
.MID_Q(6),
.BIAS_DW(16),
.Q(13),
.DIN_DW(16), 
.DOUT_DW(16), 
.DATA_CHANNEL(1), 
.ACC_WIDTH(40), 
.WW(16))
u_vector_muladd_58_6(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_58), 
.op_weight(op_weight[447:384]),
.op_bias(op_bias[111:96]),
.op_dout(op_dout_58_6));

vector_muladd #(.CPF(4),
.RELU(1),
.BN(0),
.DIN_Q(6),
.DOUT_Q(6),
.BN_SCALE_Q(6),
.BN_BIAS_Q(6),
.MID_Q(6),
.BIAS_DW(16),
.Q(13),
.DIN_DW(16), 
.DOUT_DW(16), 
.DATA_CHANNEL(1), 
.ACC_WIDTH(40), 
.WW(16))
u_vector_muladd_58_7(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_58), 
.op_weight(op_weight[511:448]),
.op_bias(op_bias[127:112]),
.op_dout(op_dout_58_7));

vector_muladd #(.CPF(4),
.RELU(1),
.BN(0),
.DIN_Q(6),
.DOUT_Q(6),
.BN_SCALE_Q(6),
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
.op_weight(op_weight[63:0]),
.op_bias(op_bias[15:0]),
.op_dout(op_dout_59_0));

vector_muladd #(.CPF(4),
.RELU(1),
.BN(0),
.DIN_Q(6),
.DOUT_Q(6),
.BN_SCALE_Q(6),
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
.op_weight(op_weight[127:64]),
.op_bias(op_bias[31:16]),
.op_dout(op_dout_59_1));

vector_muladd #(.CPF(4),
.RELU(1),
.BN(0),
.DIN_Q(6),
.DOUT_Q(6),
.BN_SCALE_Q(6),
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
.op_weight(op_weight[191:128]),
.op_bias(op_bias[47:32]),
.op_dout(op_dout_59_2));

vector_muladd #(.CPF(4),
.RELU(1),
.BN(0),
.DIN_Q(6),
.DOUT_Q(6),
.BN_SCALE_Q(6),
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
.op_weight(op_weight[255:192]),
.op_bias(op_bias[63:48]),
.op_dout(op_dout_59_3));

vector_muladd #(.CPF(4),
.RELU(1),
.BN(0),
.DIN_Q(6),
.DOUT_Q(6),
.BN_SCALE_Q(6),
.BN_BIAS_Q(6),
.MID_Q(6),
.BIAS_DW(16),
.Q(13),
.DIN_DW(16), 
.DOUT_DW(16), 
.DATA_CHANNEL(1), 
.ACC_WIDTH(40), 
.WW(16))
u_vector_muladd_59_4(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_59), 
.op_weight(op_weight[319:256]),
.op_bias(op_bias[79:64]),
.op_dout(op_dout_59_4));

vector_muladd #(.CPF(4),
.RELU(1),
.BN(0),
.DIN_Q(6),
.DOUT_Q(6),
.BN_SCALE_Q(6),
.BN_BIAS_Q(6),
.MID_Q(6),
.BIAS_DW(16),
.Q(13),
.DIN_DW(16), 
.DOUT_DW(16), 
.DATA_CHANNEL(1), 
.ACC_WIDTH(40), 
.WW(16))
u_vector_muladd_59_5(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_59), 
.op_weight(op_weight[383:320]),
.op_bias(op_bias[95:80]),
.op_dout(op_dout_59_5));

vector_muladd #(.CPF(4),
.RELU(1),
.BN(0),
.DIN_Q(6),
.DOUT_Q(6),
.BN_SCALE_Q(6),
.BN_BIAS_Q(6),
.MID_Q(6),
.BIAS_DW(16),
.Q(13),
.DIN_DW(16), 
.DOUT_DW(16), 
.DATA_CHANNEL(1), 
.ACC_WIDTH(40), 
.WW(16))
u_vector_muladd_59_6(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_59), 
.op_weight(op_weight[447:384]),
.op_bias(op_bias[111:96]),
.op_dout(op_dout_59_6));

vector_muladd #(.CPF(4),
.RELU(1),
.BN(0),
.DIN_Q(6),
.DOUT_Q(6),
.BN_SCALE_Q(6),
.BN_BIAS_Q(6),
.MID_Q(6),
.BIAS_DW(16),
.Q(13),
.DIN_DW(16), 
.DOUT_DW(16), 
.DATA_CHANNEL(1), 
.ACC_WIDTH(40), 
.WW(16))
u_vector_muladd_59_7(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_59), 
.op_weight(op_weight[511:448]),
.op_bias(op_bias[127:112]),
.op_dout(op_dout_59_7));

vector_muladd #(.CPF(4),
.RELU(1),
.BN(0),
.DIN_Q(6),
.DOUT_Q(6),
.BN_SCALE_Q(6),
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
.op_weight(op_weight[63:0]),
.op_bias(op_bias[15:0]),
.op_dout(op_dout_60_0));

vector_muladd #(.CPF(4),
.RELU(1),
.BN(0),
.DIN_Q(6),
.DOUT_Q(6),
.BN_SCALE_Q(6),
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
.op_weight(op_weight[127:64]),
.op_bias(op_bias[31:16]),
.op_dout(op_dout_60_1));

vector_muladd #(.CPF(4),
.RELU(1),
.BN(0),
.DIN_Q(6),
.DOUT_Q(6),
.BN_SCALE_Q(6),
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
.op_weight(op_weight[191:128]),
.op_bias(op_bias[47:32]),
.op_dout(op_dout_60_2));

vector_muladd #(.CPF(4),
.RELU(1),
.BN(0),
.DIN_Q(6),
.DOUT_Q(6),
.BN_SCALE_Q(6),
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
.op_weight(op_weight[255:192]),
.op_bias(op_bias[63:48]),
.op_dout(op_dout_60_3));

vector_muladd #(.CPF(4),
.RELU(1),
.BN(0),
.DIN_Q(6),
.DOUT_Q(6),
.BN_SCALE_Q(6),
.BN_BIAS_Q(6),
.MID_Q(6),
.BIAS_DW(16),
.Q(13),
.DIN_DW(16), 
.DOUT_DW(16), 
.DATA_CHANNEL(1), 
.ACC_WIDTH(40), 
.WW(16))
u_vector_muladd_60_4(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_60), 
.op_weight(op_weight[319:256]),
.op_bias(op_bias[79:64]),
.op_dout(op_dout_60_4));

vector_muladd #(.CPF(4),
.RELU(1),
.BN(0),
.DIN_Q(6),
.DOUT_Q(6),
.BN_SCALE_Q(6),
.BN_BIAS_Q(6),
.MID_Q(6),
.BIAS_DW(16),
.Q(13),
.DIN_DW(16), 
.DOUT_DW(16), 
.DATA_CHANNEL(1), 
.ACC_WIDTH(40), 
.WW(16))
u_vector_muladd_60_5(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_60), 
.op_weight(op_weight[383:320]),
.op_bias(op_bias[95:80]),
.op_dout(op_dout_60_5));

vector_muladd #(.CPF(4),
.RELU(1),
.BN(0),
.DIN_Q(6),
.DOUT_Q(6),
.BN_SCALE_Q(6),
.BN_BIAS_Q(6),
.MID_Q(6),
.BIAS_DW(16),
.Q(13),
.DIN_DW(16), 
.DOUT_DW(16), 
.DATA_CHANNEL(1), 
.ACC_WIDTH(40), 
.WW(16))
u_vector_muladd_60_6(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_60), 
.op_weight(op_weight[447:384]),
.op_bias(op_bias[111:96]),
.op_dout(op_dout_60_6));

vector_muladd #(.CPF(4),
.RELU(1),
.BN(0),
.DIN_Q(6),
.DOUT_Q(6),
.BN_SCALE_Q(6),
.BN_BIAS_Q(6),
.MID_Q(6),
.BIAS_DW(16),
.Q(13),
.DIN_DW(16), 
.DOUT_DW(16), 
.DATA_CHANNEL(1), 
.ACC_WIDTH(40), 
.WW(16))
u_vector_muladd_60_7(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_60), 
.op_weight(op_weight[511:448]),
.op_bias(op_bias[127:112]),
.op_dout(op_dout_60_7));

vector_muladd #(.CPF(4),
.RELU(1),
.BN(0),
.DIN_Q(6),
.DOUT_Q(6),
.BN_SCALE_Q(6),
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
.op_weight(op_weight[63:0]),
.op_bias(op_bias[15:0]),
.op_dout(op_dout_61_0));

vector_muladd #(.CPF(4),
.RELU(1),
.BN(0),
.DIN_Q(6),
.DOUT_Q(6),
.BN_SCALE_Q(6),
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
.op_weight(op_weight[127:64]),
.op_bias(op_bias[31:16]),
.op_dout(op_dout_61_1));

vector_muladd #(.CPF(4),
.RELU(1),
.BN(0),
.DIN_Q(6),
.DOUT_Q(6),
.BN_SCALE_Q(6),
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
.op_weight(op_weight[191:128]),
.op_bias(op_bias[47:32]),
.op_dout(op_dout_61_2));

vector_muladd #(.CPF(4),
.RELU(1),
.BN(0),
.DIN_Q(6),
.DOUT_Q(6),
.BN_SCALE_Q(6),
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
.op_weight(op_weight[255:192]),
.op_bias(op_bias[63:48]),
.op_dout(op_dout_61_3));

vector_muladd #(.CPF(4),
.RELU(1),
.BN(0),
.DIN_Q(6),
.DOUT_Q(6),
.BN_SCALE_Q(6),
.BN_BIAS_Q(6),
.MID_Q(6),
.BIAS_DW(16),
.Q(13),
.DIN_DW(16), 
.DOUT_DW(16), 
.DATA_CHANNEL(1), 
.ACC_WIDTH(40), 
.WW(16))
u_vector_muladd_61_4(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_61), 
.op_weight(op_weight[319:256]),
.op_bias(op_bias[79:64]),
.op_dout(op_dout_61_4));

vector_muladd #(.CPF(4),
.RELU(1),
.BN(0),
.DIN_Q(6),
.DOUT_Q(6),
.BN_SCALE_Q(6),
.BN_BIAS_Q(6),
.MID_Q(6),
.BIAS_DW(16),
.Q(13),
.DIN_DW(16), 
.DOUT_DW(16), 
.DATA_CHANNEL(1), 
.ACC_WIDTH(40), 
.WW(16))
u_vector_muladd_61_5(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_61), 
.op_weight(op_weight[383:320]),
.op_bias(op_bias[95:80]),
.op_dout(op_dout_61_5));

vector_muladd #(.CPF(4),
.RELU(1),
.BN(0),
.DIN_Q(6),
.DOUT_Q(6),
.BN_SCALE_Q(6),
.BN_BIAS_Q(6),
.MID_Q(6),
.BIAS_DW(16),
.Q(13),
.DIN_DW(16), 
.DOUT_DW(16), 
.DATA_CHANNEL(1), 
.ACC_WIDTH(40), 
.WW(16))
u_vector_muladd_61_6(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_61), 
.op_weight(op_weight[447:384]),
.op_bias(op_bias[111:96]),
.op_dout(op_dout_61_6));

vector_muladd #(.CPF(4),
.RELU(1),
.BN(0),
.DIN_Q(6),
.DOUT_Q(6),
.BN_SCALE_Q(6),
.BN_BIAS_Q(6),
.MID_Q(6),
.BIAS_DW(16),
.Q(13),
.DIN_DW(16), 
.DOUT_DW(16), 
.DATA_CHANNEL(1), 
.ACC_WIDTH(40), 
.WW(16))
u_vector_muladd_61_7(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_61), 
.op_weight(op_weight[511:448]),
.op_bias(op_bias[127:112]),
.op_dout(op_dout_61_7));

vector_muladd #(.CPF(4),
.RELU(1),
.BN(0),
.DIN_Q(6),
.DOUT_Q(6),
.BN_SCALE_Q(6),
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
.op_weight(op_weight[63:0]),
.op_bias(op_bias[15:0]),
.op_dout(op_dout_62_0));

vector_muladd #(.CPF(4),
.RELU(1),
.BN(0),
.DIN_Q(6),
.DOUT_Q(6),
.BN_SCALE_Q(6),
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
.op_weight(op_weight[127:64]),
.op_bias(op_bias[31:16]),
.op_dout(op_dout_62_1));

vector_muladd #(.CPF(4),
.RELU(1),
.BN(0),
.DIN_Q(6),
.DOUT_Q(6),
.BN_SCALE_Q(6),
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
.op_weight(op_weight[191:128]),
.op_bias(op_bias[47:32]),
.op_dout(op_dout_62_2));

vector_muladd #(.CPF(4),
.RELU(1),
.BN(0),
.DIN_Q(6),
.DOUT_Q(6),
.BN_SCALE_Q(6),
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
.op_weight(op_weight[255:192]),
.op_bias(op_bias[63:48]),
.op_dout(op_dout_62_3));

vector_muladd #(.CPF(4),
.RELU(1),
.BN(0),
.DIN_Q(6),
.DOUT_Q(6),
.BN_SCALE_Q(6),
.BN_BIAS_Q(6),
.MID_Q(6),
.BIAS_DW(16),
.Q(13),
.DIN_DW(16), 
.DOUT_DW(16), 
.DATA_CHANNEL(1), 
.ACC_WIDTH(40), 
.WW(16))
u_vector_muladd_62_4(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_62), 
.op_weight(op_weight[319:256]),
.op_bias(op_bias[79:64]),
.op_dout(op_dout_62_4));

vector_muladd #(.CPF(4),
.RELU(1),
.BN(0),
.DIN_Q(6),
.DOUT_Q(6),
.BN_SCALE_Q(6),
.BN_BIAS_Q(6),
.MID_Q(6),
.BIAS_DW(16),
.Q(13),
.DIN_DW(16), 
.DOUT_DW(16), 
.DATA_CHANNEL(1), 
.ACC_WIDTH(40), 
.WW(16))
u_vector_muladd_62_5(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_62), 
.op_weight(op_weight[383:320]),
.op_bias(op_bias[95:80]),
.op_dout(op_dout_62_5));

vector_muladd #(.CPF(4),
.RELU(1),
.BN(0),
.DIN_Q(6),
.DOUT_Q(6),
.BN_SCALE_Q(6),
.BN_BIAS_Q(6),
.MID_Q(6),
.BIAS_DW(16),
.Q(13),
.DIN_DW(16), 
.DOUT_DW(16), 
.DATA_CHANNEL(1), 
.ACC_WIDTH(40), 
.WW(16))
u_vector_muladd_62_6(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_62), 
.op_weight(op_weight[447:384]),
.op_bias(op_bias[111:96]),
.op_dout(op_dout_62_6));

vector_muladd #(.CPF(4),
.RELU(1),
.BN(0),
.DIN_Q(6),
.DOUT_Q(6),
.BN_SCALE_Q(6),
.BN_BIAS_Q(6),
.MID_Q(6),
.BIAS_DW(16),
.Q(13),
.DIN_DW(16), 
.DOUT_DW(16), 
.DATA_CHANNEL(1), 
.ACC_WIDTH(40), 
.WW(16))
u_vector_muladd_62_7(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_62), 
.op_weight(op_weight[511:448]),
.op_bias(op_bias[127:112]),
.op_dout(op_dout_62_7));

vector_muladd #(.CPF(4),
.RELU(1),
.BN(0),
.DIN_Q(6),
.DOUT_Q(6),
.BN_SCALE_Q(6),
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
.op_weight(op_weight[63:0]),
.op_bias(op_bias[15:0]),
.op_dout(op_dout_63_0));

vector_muladd #(.CPF(4),
.RELU(1),
.BN(0),
.DIN_Q(6),
.DOUT_Q(6),
.BN_SCALE_Q(6),
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
.op_weight(op_weight[127:64]),
.op_bias(op_bias[31:16]),
.op_dout(op_dout_63_1));

vector_muladd #(.CPF(4),
.RELU(1),
.BN(0),
.DIN_Q(6),
.DOUT_Q(6),
.BN_SCALE_Q(6),
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
.op_weight(op_weight[191:128]),
.op_bias(op_bias[47:32]),
.op_dout(op_dout_63_2));

vector_muladd #(.CPF(4),
.RELU(1),
.BN(0),
.DIN_Q(6),
.DOUT_Q(6),
.BN_SCALE_Q(6),
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
.op_weight(op_weight[255:192]),
.op_bias(op_bias[63:48]),
.op_dout(op_dout_63_3));

vector_muladd #(.CPF(4),
.RELU(1),
.BN(0),
.DIN_Q(6),
.DOUT_Q(6),
.BN_SCALE_Q(6),
.BN_BIAS_Q(6),
.MID_Q(6),
.BIAS_DW(16),
.Q(13),
.DIN_DW(16), 
.DOUT_DW(16), 
.DATA_CHANNEL(1), 
.ACC_WIDTH(40), 
.WW(16))
u_vector_muladd_63_4(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_63), 
.op_weight(op_weight[319:256]),
.op_bias(op_bias[79:64]),
.op_dout(op_dout_63_4));

vector_muladd #(.CPF(4),
.RELU(1),
.BN(0),
.DIN_Q(6),
.DOUT_Q(6),
.BN_SCALE_Q(6),
.BN_BIAS_Q(6),
.MID_Q(6),
.BIAS_DW(16),
.Q(13),
.DIN_DW(16), 
.DOUT_DW(16), 
.DATA_CHANNEL(1), 
.ACC_WIDTH(40), 
.WW(16))
u_vector_muladd_63_5(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_63), 
.op_weight(op_weight[383:320]),
.op_bias(op_bias[95:80]),
.op_dout(op_dout_63_5));

vector_muladd #(.CPF(4),
.RELU(1),
.BN(0),
.DIN_Q(6),
.DOUT_Q(6),
.BN_SCALE_Q(6),
.BN_BIAS_Q(6),
.MID_Q(6),
.BIAS_DW(16),
.Q(13),
.DIN_DW(16), 
.DOUT_DW(16), 
.DATA_CHANNEL(1), 
.ACC_WIDTH(40), 
.WW(16))
u_vector_muladd_63_6(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_63), 
.op_weight(op_weight[447:384]),
.op_bias(op_bias[111:96]),
.op_dout(op_dout_63_6));

vector_muladd #(.CPF(4),
.RELU(1),
.BN(0),
.DIN_Q(6),
.DOUT_Q(6),
.BN_SCALE_Q(6),
.BN_BIAS_Q(6),
.MID_Q(6),
.BIAS_DW(16),
.Q(13),
.DIN_DW(16), 
.DOUT_DW(16), 
.DATA_CHANNEL(1), 
.ACC_WIDTH(40), 
.WW(16))
u_vector_muladd_63_7(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_63), 
.op_weight(op_weight[511:448]),
.op_bias(op_bias[127:112]),
.op_dout(op_dout_63_7));

vector_muladd #(.CPF(4),
.RELU(1),
.BN(0),
.DIN_Q(6),
.DOUT_Q(6),
.BN_SCALE_Q(6),
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
.op_weight(op_weight[63:0]),
.op_bias(op_bias[15:0]),
.op_dout(op_dout_64_0));

vector_muladd #(.CPF(4),
.RELU(1),
.BN(0),
.DIN_Q(6),
.DOUT_Q(6),
.BN_SCALE_Q(6),
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
.op_weight(op_weight[127:64]),
.op_bias(op_bias[31:16]),
.op_dout(op_dout_64_1));

vector_muladd #(.CPF(4),
.RELU(1),
.BN(0),
.DIN_Q(6),
.DOUT_Q(6),
.BN_SCALE_Q(6),
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
.op_weight(op_weight[191:128]),
.op_bias(op_bias[47:32]),
.op_dout(op_dout_64_2));

vector_muladd #(.CPF(4),
.RELU(1),
.BN(0),
.DIN_Q(6),
.DOUT_Q(6),
.BN_SCALE_Q(6),
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
.op_weight(op_weight[255:192]),
.op_bias(op_bias[63:48]),
.op_dout(op_dout_64_3));

vector_muladd #(.CPF(4),
.RELU(1),
.BN(0),
.DIN_Q(6),
.DOUT_Q(6),
.BN_SCALE_Q(6),
.BN_BIAS_Q(6),
.MID_Q(6),
.BIAS_DW(16),
.Q(13),
.DIN_DW(16), 
.DOUT_DW(16), 
.DATA_CHANNEL(1), 
.ACC_WIDTH(40), 
.WW(16))
u_vector_muladd_64_4(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_64), 
.op_weight(op_weight[319:256]),
.op_bias(op_bias[79:64]),
.op_dout(op_dout_64_4));

vector_muladd #(.CPF(4),
.RELU(1),
.BN(0),
.DIN_Q(6),
.DOUT_Q(6),
.BN_SCALE_Q(6),
.BN_BIAS_Q(6),
.MID_Q(6),
.BIAS_DW(16),
.Q(13),
.DIN_DW(16), 
.DOUT_DW(16), 
.DATA_CHANNEL(1), 
.ACC_WIDTH(40), 
.WW(16))
u_vector_muladd_64_5(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_64), 
.op_weight(op_weight[383:320]),
.op_bias(op_bias[95:80]),
.op_dout(op_dout_64_5));

vector_muladd #(.CPF(4),
.RELU(1),
.BN(0),
.DIN_Q(6),
.DOUT_Q(6),
.BN_SCALE_Q(6),
.BN_BIAS_Q(6),
.MID_Q(6),
.BIAS_DW(16),
.Q(13),
.DIN_DW(16), 
.DOUT_DW(16), 
.DATA_CHANNEL(1), 
.ACC_WIDTH(40), 
.WW(16))
u_vector_muladd_64_6(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_64), 
.op_weight(op_weight[447:384]),
.op_bias(op_bias[111:96]),
.op_dout(op_dout_64_6));

vector_muladd #(.CPF(4),
.RELU(1),
.BN(0),
.DIN_Q(6),
.DOUT_Q(6),
.BN_SCALE_Q(6),
.BN_BIAS_Q(6),
.MID_Q(6),
.BIAS_DW(16),
.Q(13),
.DIN_DW(16), 
.DOUT_DW(16), 
.DATA_CHANNEL(1), 
.ACC_WIDTH(40), 
.WW(16))
u_vector_muladd_64_7(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_64), 
.op_weight(op_weight[511:448]),
.op_bias(op_bias[127:112]),
.op_dout(op_dout_64_7));

vector_muladd #(.CPF(4),
.RELU(1),
.BN(0),
.DIN_Q(6),
.DOUT_Q(6),
.BN_SCALE_Q(6),
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
.op_weight(op_weight[63:0]),
.op_bias(op_bias[15:0]),
.op_dout(op_dout_65_0));

vector_muladd #(.CPF(4),
.RELU(1),
.BN(0),
.DIN_Q(6),
.DOUT_Q(6),
.BN_SCALE_Q(6),
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
.op_weight(op_weight[127:64]),
.op_bias(op_bias[31:16]),
.op_dout(op_dout_65_1));

vector_muladd #(.CPF(4),
.RELU(1),
.BN(0),
.DIN_Q(6),
.DOUT_Q(6),
.BN_SCALE_Q(6),
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
.op_weight(op_weight[191:128]),
.op_bias(op_bias[47:32]),
.op_dout(op_dout_65_2));

vector_muladd #(.CPF(4),
.RELU(1),
.BN(0),
.DIN_Q(6),
.DOUT_Q(6),
.BN_SCALE_Q(6),
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
.op_weight(op_weight[255:192]),
.op_bias(op_bias[63:48]),
.op_dout(op_dout_65_3));

vector_muladd #(.CPF(4),
.RELU(1),
.BN(0),
.DIN_Q(6),
.DOUT_Q(6),
.BN_SCALE_Q(6),
.BN_BIAS_Q(6),
.MID_Q(6),
.BIAS_DW(16),
.Q(13),
.DIN_DW(16), 
.DOUT_DW(16), 
.DATA_CHANNEL(1), 
.ACC_WIDTH(40), 
.WW(16))
u_vector_muladd_65_4(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_65), 
.op_weight(op_weight[319:256]),
.op_bias(op_bias[79:64]),
.op_dout(op_dout_65_4));

vector_muladd #(.CPF(4),
.RELU(1),
.BN(0),
.DIN_Q(6),
.DOUT_Q(6),
.BN_SCALE_Q(6),
.BN_BIAS_Q(6),
.MID_Q(6),
.BIAS_DW(16),
.Q(13),
.DIN_DW(16), 
.DOUT_DW(16), 
.DATA_CHANNEL(1), 
.ACC_WIDTH(40), 
.WW(16))
u_vector_muladd_65_5(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_65), 
.op_weight(op_weight[383:320]),
.op_bias(op_bias[95:80]),
.op_dout(op_dout_65_5));

vector_muladd #(.CPF(4),
.RELU(1),
.BN(0),
.DIN_Q(6),
.DOUT_Q(6),
.BN_SCALE_Q(6),
.BN_BIAS_Q(6),
.MID_Q(6),
.BIAS_DW(16),
.Q(13),
.DIN_DW(16), 
.DOUT_DW(16), 
.DATA_CHANNEL(1), 
.ACC_WIDTH(40), 
.WW(16))
u_vector_muladd_65_6(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_65), 
.op_weight(op_weight[447:384]),
.op_bias(op_bias[111:96]),
.op_dout(op_dout_65_6));

vector_muladd #(.CPF(4),
.RELU(1),
.BN(0),
.DIN_Q(6),
.DOUT_Q(6),
.BN_SCALE_Q(6),
.BN_BIAS_Q(6),
.MID_Q(6),
.BIAS_DW(16),
.Q(13),
.DIN_DW(16), 
.DOUT_DW(16), 
.DATA_CHANNEL(1), 
.ACC_WIDTH(40), 
.WW(16))
u_vector_muladd_65_7(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_65), 
.op_weight(op_weight[511:448]),
.op_bias(op_bias[127:112]),
.op_dout(op_dout_65_7));

vector_muladd #(.CPF(4),
.RELU(1),
.BN(0),
.DIN_Q(6),
.DOUT_Q(6),
.BN_SCALE_Q(6),
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
.op_weight(op_weight[63:0]),
.op_bias(op_bias[15:0]),
.op_dout(op_dout_66_0));

vector_muladd #(.CPF(4),
.RELU(1),
.BN(0),
.DIN_Q(6),
.DOUT_Q(6),
.BN_SCALE_Q(6),
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
.op_weight(op_weight[127:64]),
.op_bias(op_bias[31:16]),
.op_dout(op_dout_66_1));

vector_muladd #(.CPF(4),
.RELU(1),
.BN(0),
.DIN_Q(6),
.DOUT_Q(6),
.BN_SCALE_Q(6),
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
.op_weight(op_weight[191:128]),
.op_bias(op_bias[47:32]),
.op_dout(op_dout_66_2));

vector_muladd #(.CPF(4),
.RELU(1),
.BN(0),
.DIN_Q(6),
.DOUT_Q(6),
.BN_SCALE_Q(6),
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
.op_weight(op_weight[255:192]),
.op_bias(op_bias[63:48]),
.op_dout(op_dout_66_3));

vector_muladd #(.CPF(4),
.RELU(1),
.BN(0),
.DIN_Q(6),
.DOUT_Q(6),
.BN_SCALE_Q(6),
.BN_BIAS_Q(6),
.MID_Q(6),
.BIAS_DW(16),
.Q(13),
.DIN_DW(16), 
.DOUT_DW(16), 
.DATA_CHANNEL(1), 
.ACC_WIDTH(40), 
.WW(16))
u_vector_muladd_66_4(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_66), 
.op_weight(op_weight[319:256]),
.op_bias(op_bias[79:64]),
.op_dout(op_dout_66_4));

vector_muladd #(.CPF(4),
.RELU(1),
.BN(0),
.DIN_Q(6),
.DOUT_Q(6),
.BN_SCALE_Q(6),
.BN_BIAS_Q(6),
.MID_Q(6),
.BIAS_DW(16),
.Q(13),
.DIN_DW(16), 
.DOUT_DW(16), 
.DATA_CHANNEL(1), 
.ACC_WIDTH(40), 
.WW(16))
u_vector_muladd_66_5(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_66), 
.op_weight(op_weight[383:320]),
.op_bias(op_bias[95:80]),
.op_dout(op_dout_66_5));

vector_muladd #(.CPF(4),
.RELU(1),
.BN(0),
.DIN_Q(6),
.DOUT_Q(6),
.BN_SCALE_Q(6),
.BN_BIAS_Q(6),
.MID_Q(6),
.BIAS_DW(16),
.Q(13),
.DIN_DW(16), 
.DOUT_DW(16), 
.DATA_CHANNEL(1), 
.ACC_WIDTH(40), 
.WW(16))
u_vector_muladd_66_6(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_66), 
.op_weight(op_weight[447:384]),
.op_bias(op_bias[111:96]),
.op_dout(op_dout_66_6));

vector_muladd #(.CPF(4),
.RELU(1),
.BN(0),
.DIN_Q(6),
.DOUT_Q(6),
.BN_SCALE_Q(6),
.BN_BIAS_Q(6),
.MID_Q(6),
.BIAS_DW(16),
.Q(13),
.DIN_DW(16), 
.DOUT_DW(16), 
.DATA_CHANNEL(1), 
.ACC_WIDTH(40), 
.WW(16))
u_vector_muladd_66_7(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_66), 
.op_weight(op_weight[511:448]),
.op_bias(op_bias[127:112]),
.op_dout(op_dout_66_7));

vector_muladd #(.CPF(4),
.RELU(1),
.BN(0),
.DIN_Q(6),
.DOUT_Q(6),
.BN_SCALE_Q(6),
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
.op_weight(op_weight[63:0]),
.op_bias(op_bias[15:0]),
.op_dout(op_dout_67_0));

vector_muladd #(.CPF(4),
.RELU(1),
.BN(0),
.DIN_Q(6),
.DOUT_Q(6),
.BN_SCALE_Q(6),
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
.op_weight(op_weight[127:64]),
.op_bias(op_bias[31:16]),
.op_dout(op_dout_67_1));

vector_muladd #(.CPF(4),
.RELU(1),
.BN(0),
.DIN_Q(6),
.DOUT_Q(6),
.BN_SCALE_Q(6),
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
.op_weight(op_weight[191:128]),
.op_bias(op_bias[47:32]),
.op_dout(op_dout_67_2));

vector_muladd #(.CPF(4),
.RELU(1),
.BN(0),
.DIN_Q(6),
.DOUT_Q(6),
.BN_SCALE_Q(6),
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
.op_weight(op_weight[255:192]),
.op_bias(op_bias[63:48]),
.op_dout(op_dout_67_3));

vector_muladd #(.CPF(4),
.RELU(1),
.BN(0),
.DIN_Q(6),
.DOUT_Q(6),
.BN_SCALE_Q(6),
.BN_BIAS_Q(6),
.MID_Q(6),
.BIAS_DW(16),
.Q(13),
.DIN_DW(16), 
.DOUT_DW(16), 
.DATA_CHANNEL(1), 
.ACC_WIDTH(40), 
.WW(16))
u_vector_muladd_67_4(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_67), 
.op_weight(op_weight[319:256]),
.op_bias(op_bias[79:64]),
.op_dout(op_dout_67_4));

vector_muladd #(.CPF(4),
.RELU(1),
.BN(0),
.DIN_Q(6),
.DOUT_Q(6),
.BN_SCALE_Q(6),
.BN_BIAS_Q(6),
.MID_Q(6),
.BIAS_DW(16),
.Q(13),
.DIN_DW(16), 
.DOUT_DW(16), 
.DATA_CHANNEL(1), 
.ACC_WIDTH(40), 
.WW(16))
u_vector_muladd_67_5(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_67), 
.op_weight(op_weight[383:320]),
.op_bias(op_bias[95:80]),
.op_dout(op_dout_67_5));

vector_muladd #(.CPF(4),
.RELU(1),
.BN(0),
.DIN_Q(6),
.DOUT_Q(6),
.BN_SCALE_Q(6),
.BN_BIAS_Q(6),
.MID_Q(6),
.BIAS_DW(16),
.Q(13),
.DIN_DW(16), 
.DOUT_DW(16), 
.DATA_CHANNEL(1), 
.ACC_WIDTH(40), 
.WW(16))
u_vector_muladd_67_6(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_67), 
.op_weight(op_weight[447:384]),
.op_bias(op_bias[111:96]),
.op_dout(op_dout_67_6));

vector_muladd #(.CPF(4),
.RELU(1),
.BN(0),
.DIN_Q(6),
.DOUT_Q(6),
.BN_SCALE_Q(6),
.BN_BIAS_Q(6),
.MID_Q(6),
.BIAS_DW(16),
.Q(13),
.DIN_DW(16), 
.DOUT_DW(16), 
.DATA_CHANNEL(1), 
.ACC_WIDTH(40), 
.WW(16))
u_vector_muladd_67_7(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_67), 
.op_weight(op_weight[511:448]),
.op_bias(op_bias[127:112]),
.op_dout(op_dout_67_7));

vector_muladd #(.CPF(4),
.RELU(1),
.BN(0),
.DIN_Q(6),
.DOUT_Q(6),
.BN_SCALE_Q(6),
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
.op_weight(op_weight[63:0]),
.op_bias(op_bias[15:0]),
.op_dout(op_dout_68_0));

vector_muladd #(.CPF(4),
.RELU(1),
.BN(0),
.DIN_Q(6),
.DOUT_Q(6),
.BN_SCALE_Q(6),
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
.op_weight(op_weight[127:64]),
.op_bias(op_bias[31:16]),
.op_dout(op_dout_68_1));

vector_muladd #(.CPF(4),
.RELU(1),
.BN(0),
.DIN_Q(6),
.DOUT_Q(6),
.BN_SCALE_Q(6),
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
.op_weight(op_weight[191:128]),
.op_bias(op_bias[47:32]),
.op_dout(op_dout_68_2));

vector_muladd #(.CPF(4),
.RELU(1),
.BN(0),
.DIN_Q(6),
.DOUT_Q(6),
.BN_SCALE_Q(6),
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
.op_weight(op_weight[255:192]),
.op_bias(op_bias[63:48]),
.op_dout(op_dout_68_3));

vector_muladd #(.CPF(4),
.RELU(1),
.BN(0),
.DIN_Q(6),
.DOUT_Q(6),
.BN_SCALE_Q(6),
.BN_BIAS_Q(6),
.MID_Q(6),
.BIAS_DW(16),
.Q(13),
.DIN_DW(16), 
.DOUT_DW(16), 
.DATA_CHANNEL(1), 
.ACC_WIDTH(40), 
.WW(16))
u_vector_muladd_68_4(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_68), 
.op_weight(op_weight[319:256]),
.op_bias(op_bias[79:64]),
.op_dout(op_dout_68_4));

vector_muladd #(.CPF(4),
.RELU(1),
.BN(0),
.DIN_Q(6),
.DOUT_Q(6),
.BN_SCALE_Q(6),
.BN_BIAS_Q(6),
.MID_Q(6),
.BIAS_DW(16),
.Q(13),
.DIN_DW(16), 
.DOUT_DW(16), 
.DATA_CHANNEL(1), 
.ACC_WIDTH(40), 
.WW(16))
u_vector_muladd_68_5(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_68), 
.op_weight(op_weight[383:320]),
.op_bias(op_bias[95:80]),
.op_dout(op_dout_68_5));

vector_muladd #(.CPF(4),
.RELU(1),
.BN(0),
.DIN_Q(6),
.DOUT_Q(6),
.BN_SCALE_Q(6),
.BN_BIAS_Q(6),
.MID_Q(6),
.BIAS_DW(16),
.Q(13),
.DIN_DW(16), 
.DOUT_DW(16), 
.DATA_CHANNEL(1), 
.ACC_WIDTH(40), 
.WW(16))
u_vector_muladd_68_6(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_68), 
.op_weight(op_weight[447:384]),
.op_bias(op_bias[111:96]),
.op_dout(op_dout_68_6));

vector_muladd #(.CPF(4),
.RELU(1),
.BN(0),
.DIN_Q(6),
.DOUT_Q(6),
.BN_SCALE_Q(6),
.BN_BIAS_Q(6),
.MID_Q(6),
.BIAS_DW(16),
.Q(13),
.DIN_DW(16), 
.DOUT_DW(16), 
.DATA_CHANNEL(1), 
.ACC_WIDTH(40), 
.WW(16))
u_vector_muladd_68_7(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_68), 
.op_weight(op_weight[511:448]),
.op_bias(op_bias[127:112]),
.op_dout(op_dout_68_7));

vector_muladd #(.CPF(4),
.RELU(1),
.BN(0),
.DIN_Q(6),
.DOUT_Q(6),
.BN_SCALE_Q(6),
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
.op_weight(op_weight[63:0]),
.op_bias(op_bias[15:0]),
.op_dout(op_dout_69_0));

vector_muladd #(.CPF(4),
.RELU(1),
.BN(0),
.DIN_Q(6),
.DOUT_Q(6),
.BN_SCALE_Q(6),
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
.op_weight(op_weight[127:64]),
.op_bias(op_bias[31:16]),
.op_dout(op_dout_69_1));

vector_muladd #(.CPF(4),
.RELU(1),
.BN(0),
.DIN_Q(6),
.DOUT_Q(6),
.BN_SCALE_Q(6),
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
.op_weight(op_weight[191:128]),
.op_bias(op_bias[47:32]),
.op_dout(op_dout_69_2));

vector_muladd #(.CPF(4),
.RELU(1),
.BN(0),
.DIN_Q(6),
.DOUT_Q(6),
.BN_SCALE_Q(6),
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
.op_weight(op_weight[255:192]),
.op_bias(op_bias[63:48]),
.op_dout(op_dout_69_3));

vector_muladd #(.CPF(4),
.RELU(1),
.BN(0),
.DIN_Q(6),
.DOUT_Q(6),
.BN_SCALE_Q(6),
.BN_BIAS_Q(6),
.MID_Q(6),
.BIAS_DW(16),
.Q(13),
.DIN_DW(16), 
.DOUT_DW(16), 
.DATA_CHANNEL(1), 
.ACC_WIDTH(40), 
.WW(16))
u_vector_muladd_69_4(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_69), 
.op_weight(op_weight[319:256]),
.op_bias(op_bias[79:64]),
.op_dout(op_dout_69_4));

vector_muladd #(.CPF(4),
.RELU(1),
.BN(0),
.DIN_Q(6),
.DOUT_Q(6),
.BN_SCALE_Q(6),
.BN_BIAS_Q(6),
.MID_Q(6),
.BIAS_DW(16),
.Q(13),
.DIN_DW(16), 
.DOUT_DW(16), 
.DATA_CHANNEL(1), 
.ACC_WIDTH(40), 
.WW(16))
u_vector_muladd_69_5(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_69), 
.op_weight(op_weight[383:320]),
.op_bias(op_bias[95:80]),
.op_dout(op_dout_69_5));

vector_muladd #(.CPF(4),
.RELU(1),
.BN(0),
.DIN_Q(6),
.DOUT_Q(6),
.BN_SCALE_Q(6),
.BN_BIAS_Q(6),
.MID_Q(6),
.BIAS_DW(16),
.Q(13),
.DIN_DW(16), 
.DOUT_DW(16), 
.DATA_CHANNEL(1), 
.ACC_WIDTH(40), 
.WW(16))
u_vector_muladd_69_6(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_69), 
.op_weight(op_weight[447:384]),
.op_bias(op_bias[111:96]),
.op_dout(op_dout_69_6));

vector_muladd #(.CPF(4),
.RELU(1),
.BN(0),
.DIN_Q(6),
.DOUT_Q(6),
.BN_SCALE_Q(6),
.BN_BIAS_Q(6),
.MID_Q(6),
.BIAS_DW(16),
.Q(13),
.DIN_DW(16), 
.DOUT_DW(16), 
.DATA_CHANNEL(1), 
.ACC_WIDTH(40), 
.WW(16))
u_vector_muladd_69_7(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_69), 
.op_weight(op_weight[511:448]),
.op_bias(op_bias[127:112]),
.op_dout(op_dout_69_7));

vector_muladd #(.CPF(4),
.RELU(1),
.BN(0),
.DIN_Q(6),
.DOUT_Q(6),
.BN_SCALE_Q(6),
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
.op_weight(op_weight[63:0]),
.op_bias(op_bias[15:0]),
.op_dout(op_dout_70_0));

vector_muladd #(.CPF(4),
.RELU(1),
.BN(0),
.DIN_Q(6),
.DOUT_Q(6),
.BN_SCALE_Q(6),
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
.op_weight(op_weight[127:64]),
.op_bias(op_bias[31:16]),
.op_dout(op_dout_70_1));

vector_muladd #(.CPF(4),
.RELU(1),
.BN(0),
.DIN_Q(6),
.DOUT_Q(6),
.BN_SCALE_Q(6),
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
.op_weight(op_weight[191:128]),
.op_bias(op_bias[47:32]),
.op_dout(op_dout_70_2));

vector_muladd #(.CPF(4),
.RELU(1),
.BN(0),
.DIN_Q(6),
.DOUT_Q(6),
.BN_SCALE_Q(6),
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
.op_weight(op_weight[255:192]),
.op_bias(op_bias[63:48]),
.op_dout(op_dout_70_3));

vector_muladd #(.CPF(4),
.RELU(1),
.BN(0),
.DIN_Q(6),
.DOUT_Q(6),
.BN_SCALE_Q(6),
.BN_BIAS_Q(6),
.MID_Q(6),
.BIAS_DW(16),
.Q(13),
.DIN_DW(16), 
.DOUT_DW(16), 
.DATA_CHANNEL(1), 
.ACC_WIDTH(40), 
.WW(16))
u_vector_muladd_70_4(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_70), 
.op_weight(op_weight[319:256]),
.op_bias(op_bias[79:64]),
.op_dout(op_dout_70_4));

vector_muladd #(.CPF(4),
.RELU(1),
.BN(0),
.DIN_Q(6),
.DOUT_Q(6),
.BN_SCALE_Q(6),
.BN_BIAS_Q(6),
.MID_Q(6),
.BIAS_DW(16),
.Q(13),
.DIN_DW(16), 
.DOUT_DW(16), 
.DATA_CHANNEL(1), 
.ACC_WIDTH(40), 
.WW(16))
u_vector_muladd_70_5(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_70), 
.op_weight(op_weight[383:320]),
.op_bias(op_bias[95:80]),
.op_dout(op_dout_70_5));

vector_muladd #(.CPF(4),
.RELU(1),
.BN(0),
.DIN_Q(6),
.DOUT_Q(6),
.BN_SCALE_Q(6),
.BN_BIAS_Q(6),
.MID_Q(6),
.BIAS_DW(16),
.Q(13),
.DIN_DW(16), 
.DOUT_DW(16), 
.DATA_CHANNEL(1), 
.ACC_WIDTH(40), 
.WW(16))
u_vector_muladd_70_6(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_70), 
.op_weight(op_weight[447:384]),
.op_bias(op_bias[111:96]),
.op_dout(op_dout_70_6));

vector_muladd #(.CPF(4),
.RELU(1),
.BN(0),
.DIN_Q(6),
.DOUT_Q(6),
.BN_SCALE_Q(6),
.BN_BIAS_Q(6),
.MID_Q(6),
.BIAS_DW(16),
.Q(13),
.DIN_DW(16), 
.DOUT_DW(16), 
.DATA_CHANNEL(1), 
.ACC_WIDTH(40), 
.WW(16))
u_vector_muladd_70_7(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_70), 
.op_weight(op_weight[511:448]),
.op_bias(op_bias[127:112]),
.op_dout(op_dout_70_7));

vector_muladd #(.CPF(4),
.RELU(1),
.BN(0),
.DIN_Q(6),
.DOUT_Q(6),
.BN_SCALE_Q(6),
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
.op_weight(op_weight[63:0]),
.op_bias(op_bias[15:0]),
.op_dout(op_dout_71_0));

vector_muladd #(.CPF(4),
.RELU(1),
.BN(0),
.DIN_Q(6),
.DOUT_Q(6),
.BN_SCALE_Q(6),
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
.op_weight(op_weight[127:64]),
.op_bias(op_bias[31:16]),
.op_dout(op_dout_71_1));

vector_muladd #(.CPF(4),
.RELU(1),
.BN(0),
.DIN_Q(6),
.DOUT_Q(6),
.BN_SCALE_Q(6),
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
.op_weight(op_weight[191:128]),
.op_bias(op_bias[47:32]),
.op_dout(op_dout_71_2));

vector_muladd #(.CPF(4),
.RELU(1),
.BN(0),
.DIN_Q(6),
.DOUT_Q(6),
.BN_SCALE_Q(6),
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
.op_weight(op_weight[255:192]),
.op_bias(op_bias[63:48]),
.op_dout(op_dout_71_3));

vector_muladd #(.CPF(4),
.RELU(1),
.BN(0),
.DIN_Q(6),
.DOUT_Q(6),
.BN_SCALE_Q(6),
.BN_BIAS_Q(6),
.MID_Q(6),
.BIAS_DW(16),
.Q(13),
.DIN_DW(16), 
.DOUT_DW(16), 
.DATA_CHANNEL(1), 
.ACC_WIDTH(40), 
.WW(16))
u_vector_muladd_71_4(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_71), 
.op_weight(op_weight[319:256]),
.op_bias(op_bias[79:64]),
.op_dout(op_dout_71_4));

vector_muladd #(.CPF(4),
.RELU(1),
.BN(0),
.DIN_Q(6),
.DOUT_Q(6),
.BN_SCALE_Q(6),
.BN_BIAS_Q(6),
.MID_Q(6),
.BIAS_DW(16),
.Q(13),
.DIN_DW(16), 
.DOUT_DW(16), 
.DATA_CHANNEL(1), 
.ACC_WIDTH(40), 
.WW(16))
u_vector_muladd_71_5(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_71), 
.op_weight(op_weight[383:320]),
.op_bias(op_bias[95:80]),
.op_dout(op_dout_71_5));

vector_muladd #(.CPF(4),
.RELU(1),
.BN(0),
.DIN_Q(6),
.DOUT_Q(6),
.BN_SCALE_Q(6),
.BN_BIAS_Q(6),
.MID_Q(6),
.BIAS_DW(16),
.Q(13),
.DIN_DW(16), 
.DOUT_DW(16), 
.DATA_CHANNEL(1), 
.ACC_WIDTH(40), 
.WW(16))
u_vector_muladd_71_6(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_71), 
.op_weight(op_weight[447:384]),
.op_bias(op_bias[111:96]),
.op_dout(op_dout_71_6));

vector_muladd #(.CPF(4),
.RELU(1),
.BN(0),
.DIN_Q(6),
.DOUT_Q(6),
.BN_SCALE_Q(6),
.BN_BIAS_Q(6),
.MID_Q(6),
.BIAS_DW(16),
.Q(13),
.DIN_DW(16), 
.DOUT_DW(16), 
.DATA_CHANNEL(1), 
.ACC_WIDTH(40), 
.WW(16))
u_vector_muladd_71_7(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_71), 
.op_weight(op_weight[511:448]),
.op_bias(op_bias[127:112]),
.op_dout(op_dout_71_7));

vector_muladd #(.CPF(4),
.RELU(1),
.BN(0),
.DIN_Q(6),
.DOUT_Q(6),
.BN_SCALE_Q(6),
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
.op_weight(op_weight[63:0]),
.op_bias(op_bias[15:0]),
.op_dout(op_dout_72_0));

vector_muladd #(.CPF(4),
.RELU(1),
.BN(0),
.DIN_Q(6),
.DOUT_Q(6),
.BN_SCALE_Q(6),
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
.op_weight(op_weight[127:64]),
.op_bias(op_bias[31:16]),
.op_dout(op_dout_72_1));

vector_muladd #(.CPF(4),
.RELU(1),
.BN(0),
.DIN_Q(6),
.DOUT_Q(6),
.BN_SCALE_Q(6),
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
.op_weight(op_weight[191:128]),
.op_bias(op_bias[47:32]),
.op_dout(op_dout_72_2));

vector_muladd #(.CPF(4),
.RELU(1),
.BN(0),
.DIN_Q(6),
.DOUT_Q(6),
.BN_SCALE_Q(6),
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
.op_weight(op_weight[255:192]),
.op_bias(op_bias[63:48]),
.op_dout(op_dout_72_3));

vector_muladd #(.CPF(4),
.RELU(1),
.BN(0),
.DIN_Q(6),
.DOUT_Q(6),
.BN_SCALE_Q(6),
.BN_BIAS_Q(6),
.MID_Q(6),
.BIAS_DW(16),
.Q(13),
.DIN_DW(16), 
.DOUT_DW(16), 
.DATA_CHANNEL(1), 
.ACC_WIDTH(40), 
.WW(16))
u_vector_muladd_72_4(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_72), 
.op_weight(op_weight[319:256]),
.op_bias(op_bias[79:64]),
.op_dout(op_dout_72_4));

vector_muladd #(.CPF(4),
.RELU(1),
.BN(0),
.DIN_Q(6),
.DOUT_Q(6),
.BN_SCALE_Q(6),
.BN_BIAS_Q(6),
.MID_Q(6),
.BIAS_DW(16),
.Q(13),
.DIN_DW(16), 
.DOUT_DW(16), 
.DATA_CHANNEL(1), 
.ACC_WIDTH(40), 
.WW(16))
u_vector_muladd_72_5(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_72), 
.op_weight(op_weight[383:320]),
.op_bias(op_bias[95:80]),
.op_dout(op_dout_72_5));

vector_muladd #(.CPF(4),
.RELU(1),
.BN(0),
.DIN_Q(6),
.DOUT_Q(6),
.BN_SCALE_Q(6),
.BN_BIAS_Q(6),
.MID_Q(6),
.BIAS_DW(16),
.Q(13),
.DIN_DW(16), 
.DOUT_DW(16), 
.DATA_CHANNEL(1), 
.ACC_WIDTH(40), 
.WW(16))
u_vector_muladd_72_6(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_72), 
.op_weight(op_weight[447:384]),
.op_bias(op_bias[111:96]),
.op_dout(op_dout_72_6));

vector_muladd #(.CPF(4),
.RELU(1),
.BN(0),
.DIN_Q(6),
.DOUT_Q(6),
.BN_SCALE_Q(6),
.BN_BIAS_Q(6),
.MID_Q(6),
.BIAS_DW(16),
.Q(13),
.DIN_DW(16), 
.DOUT_DW(16), 
.DATA_CHANNEL(1), 
.ACC_WIDTH(40), 
.WW(16))
u_vector_muladd_72_7(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_72), 
.op_weight(op_weight[511:448]),
.op_bias(op_bias[127:112]),
.op_dout(op_dout_72_7));

vector_muladd #(.CPF(4),
.RELU(1),
.BN(0),
.DIN_Q(6),
.DOUT_Q(6),
.BN_SCALE_Q(6),
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
.op_weight(op_weight[63:0]),
.op_bias(op_bias[15:0]),
.op_dout(op_dout_73_0));

vector_muladd #(.CPF(4),
.RELU(1),
.BN(0),
.DIN_Q(6),
.DOUT_Q(6),
.BN_SCALE_Q(6),
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
.op_weight(op_weight[127:64]),
.op_bias(op_bias[31:16]),
.op_dout(op_dout_73_1));

vector_muladd #(.CPF(4),
.RELU(1),
.BN(0),
.DIN_Q(6),
.DOUT_Q(6),
.BN_SCALE_Q(6),
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
.op_weight(op_weight[191:128]),
.op_bias(op_bias[47:32]),
.op_dout(op_dout_73_2));

vector_muladd #(.CPF(4),
.RELU(1),
.BN(0),
.DIN_Q(6),
.DOUT_Q(6),
.BN_SCALE_Q(6),
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
.op_weight(op_weight[255:192]),
.op_bias(op_bias[63:48]),
.op_dout(op_dout_73_3));

vector_muladd #(.CPF(4),
.RELU(1),
.BN(0),
.DIN_Q(6),
.DOUT_Q(6),
.BN_SCALE_Q(6),
.BN_BIAS_Q(6),
.MID_Q(6),
.BIAS_DW(16),
.Q(13),
.DIN_DW(16), 
.DOUT_DW(16), 
.DATA_CHANNEL(1), 
.ACC_WIDTH(40), 
.WW(16))
u_vector_muladd_73_4(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_73), 
.op_weight(op_weight[319:256]),
.op_bias(op_bias[79:64]),
.op_dout(op_dout_73_4));

vector_muladd #(.CPF(4),
.RELU(1),
.BN(0),
.DIN_Q(6),
.DOUT_Q(6),
.BN_SCALE_Q(6),
.BN_BIAS_Q(6),
.MID_Q(6),
.BIAS_DW(16),
.Q(13),
.DIN_DW(16), 
.DOUT_DW(16), 
.DATA_CHANNEL(1), 
.ACC_WIDTH(40), 
.WW(16))
u_vector_muladd_73_5(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_73), 
.op_weight(op_weight[383:320]),
.op_bias(op_bias[95:80]),
.op_dout(op_dout_73_5));

vector_muladd #(.CPF(4),
.RELU(1),
.BN(0),
.DIN_Q(6),
.DOUT_Q(6),
.BN_SCALE_Q(6),
.BN_BIAS_Q(6),
.MID_Q(6),
.BIAS_DW(16),
.Q(13),
.DIN_DW(16), 
.DOUT_DW(16), 
.DATA_CHANNEL(1), 
.ACC_WIDTH(40), 
.WW(16))
u_vector_muladd_73_6(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_73), 
.op_weight(op_weight[447:384]),
.op_bias(op_bias[111:96]),
.op_dout(op_dout_73_6));

vector_muladd #(.CPF(4),
.RELU(1),
.BN(0),
.DIN_Q(6),
.DOUT_Q(6),
.BN_SCALE_Q(6),
.BN_BIAS_Q(6),
.MID_Q(6),
.BIAS_DW(16),
.Q(13),
.DIN_DW(16), 
.DOUT_DW(16), 
.DATA_CHANNEL(1), 
.ACC_WIDTH(40), 
.WW(16))
u_vector_muladd_73_7(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_73), 
.op_weight(op_weight[511:448]),
.op_bias(op_bias[127:112]),
.op_dout(op_dout_73_7));

vector_muladd #(.CPF(4),
.RELU(1),
.BN(0),
.DIN_Q(6),
.DOUT_Q(6),
.BN_SCALE_Q(6),
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
.op_weight(op_weight[63:0]),
.op_bias(op_bias[15:0]),
.op_dout(op_dout_74_0));

vector_muladd #(.CPF(4),
.RELU(1),
.BN(0),
.DIN_Q(6),
.DOUT_Q(6),
.BN_SCALE_Q(6),
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
.op_weight(op_weight[127:64]),
.op_bias(op_bias[31:16]),
.op_dout(op_dout_74_1));

vector_muladd #(.CPF(4),
.RELU(1),
.BN(0),
.DIN_Q(6),
.DOUT_Q(6),
.BN_SCALE_Q(6),
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
.op_weight(op_weight[191:128]),
.op_bias(op_bias[47:32]),
.op_dout(op_dout_74_2));

vector_muladd #(.CPF(4),
.RELU(1),
.BN(0),
.DIN_Q(6),
.DOUT_Q(6),
.BN_SCALE_Q(6),
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
.op_weight(op_weight[255:192]),
.op_bias(op_bias[63:48]),
.op_dout(op_dout_74_3));

vector_muladd #(.CPF(4),
.RELU(1),
.BN(0),
.DIN_Q(6),
.DOUT_Q(6),
.BN_SCALE_Q(6),
.BN_BIAS_Q(6),
.MID_Q(6),
.BIAS_DW(16),
.Q(13),
.DIN_DW(16), 
.DOUT_DW(16), 
.DATA_CHANNEL(1), 
.ACC_WIDTH(40), 
.WW(16))
u_vector_muladd_74_4(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_74), 
.op_weight(op_weight[319:256]),
.op_bias(op_bias[79:64]),
.op_dout(op_dout_74_4));

vector_muladd #(.CPF(4),
.RELU(1),
.BN(0),
.DIN_Q(6),
.DOUT_Q(6),
.BN_SCALE_Q(6),
.BN_BIAS_Q(6),
.MID_Q(6),
.BIAS_DW(16),
.Q(13),
.DIN_DW(16), 
.DOUT_DW(16), 
.DATA_CHANNEL(1), 
.ACC_WIDTH(40), 
.WW(16))
u_vector_muladd_74_5(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_74), 
.op_weight(op_weight[383:320]),
.op_bias(op_bias[95:80]),
.op_dout(op_dout_74_5));

vector_muladd #(.CPF(4),
.RELU(1),
.BN(0),
.DIN_Q(6),
.DOUT_Q(6),
.BN_SCALE_Q(6),
.BN_BIAS_Q(6),
.MID_Q(6),
.BIAS_DW(16),
.Q(13),
.DIN_DW(16), 
.DOUT_DW(16), 
.DATA_CHANNEL(1), 
.ACC_WIDTH(40), 
.WW(16))
u_vector_muladd_74_6(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_74), 
.op_weight(op_weight[447:384]),
.op_bias(op_bias[111:96]),
.op_dout(op_dout_74_6));

vector_muladd #(.CPF(4),
.RELU(1),
.BN(0),
.DIN_Q(6),
.DOUT_Q(6),
.BN_SCALE_Q(6),
.BN_BIAS_Q(6),
.MID_Q(6),
.BIAS_DW(16),
.Q(13),
.DIN_DW(16), 
.DOUT_DW(16), 
.DATA_CHANNEL(1), 
.ACC_WIDTH(40), 
.WW(16))
u_vector_muladd_74_7(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_74), 
.op_weight(op_weight[511:448]),
.op_bias(op_bias[127:112]),
.op_dout(op_dout_74_7));

vector_muladd #(.CPF(4),
.RELU(1),
.BN(0),
.DIN_Q(6),
.DOUT_Q(6),
.BN_SCALE_Q(6),
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
.op_weight(op_weight[63:0]),
.op_bias(op_bias[15:0]),
.op_dout(op_dout_75_0));

vector_muladd #(.CPF(4),
.RELU(1),
.BN(0),
.DIN_Q(6),
.DOUT_Q(6),
.BN_SCALE_Q(6),
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
.op_weight(op_weight[127:64]),
.op_bias(op_bias[31:16]),
.op_dout(op_dout_75_1));

vector_muladd #(.CPF(4),
.RELU(1),
.BN(0),
.DIN_Q(6),
.DOUT_Q(6),
.BN_SCALE_Q(6),
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
.op_weight(op_weight[191:128]),
.op_bias(op_bias[47:32]),
.op_dout(op_dout_75_2));

vector_muladd #(.CPF(4),
.RELU(1),
.BN(0),
.DIN_Q(6),
.DOUT_Q(6),
.BN_SCALE_Q(6),
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
.op_weight(op_weight[255:192]),
.op_bias(op_bias[63:48]),
.op_dout(op_dout_75_3));

vector_muladd #(.CPF(4),
.RELU(1),
.BN(0),
.DIN_Q(6),
.DOUT_Q(6),
.BN_SCALE_Q(6),
.BN_BIAS_Q(6),
.MID_Q(6),
.BIAS_DW(16),
.Q(13),
.DIN_DW(16), 
.DOUT_DW(16), 
.DATA_CHANNEL(1), 
.ACC_WIDTH(40), 
.WW(16))
u_vector_muladd_75_4(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_75), 
.op_weight(op_weight[319:256]),
.op_bias(op_bias[79:64]),
.op_dout(op_dout_75_4));

vector_muladd #(.CPF(4),
.RELU(1),
.BN(0),
.DIN_Q(6),
.DOUT_Q(6),
.BN_SCALE_Q(6),
.BN_BIAS_Q(6),
.MID_Q(6),
.BIAS_DW(16),
.Q(13),
.DIN_DW(16), 
.DOUT_DW(16), 
.DATA_CHANNEL(1), 
.ACC_WIDTH(40), 
.WW(16))
u_vector_muladd_75_5(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_75), 
.op_weight(op_weight[383:320]),
.op_bias(op_bias[95:80]),
.op_dout(op_dout_75_5));

vector_muladd #(.CPF(4),
.RELU(1),
.BN(0),
.DIN_Q(6),
.DOUT_Q(6),
.BN_SCALE_Q(6),
.BN_BIAS_Q(6),
.MID_Q(6),
.BIAS_DW(16),
.Q(13),
.DIN_DW(16), 
.DOUT_DW(16), 
.DATA_CHANNEL(1), 
.ACC_WIDTH(40), 
.WW(16))
u_vector_muladd_75_6(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_75), 
.op_weight(op_weight[447:384]),
.op_bias(op_bias[111:96]),
.op_dout(op_dout_75_6));

vector_muladd #(.CPF(4),
.RELU(1),
.BN(0),
.DIN_Q(6),
.DOUT_Q(6),
.BN_SCALE_Q(6),
.BN_BIAS_Q(6),
.MID_Q(6),
.BIAS_DW(16),
.Q(13),
.DIN_DW(16), 
.DOUT_DW(16), 
.DATA_CHANNEL(1), 
.ACC_WIDTH(40), 
.WW(16))
u_vector_muladd_75_7(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_75), 
.op_weight(op_weight[511:448]),
.op_bias(op_bias[127:112]),
.op_dout(op_dout_75_7));

vector_muladd #(.CPF(4),
.RELU(1),
.BN(0),
.DIN_Q(6),
.DOUT_Q(6),
.BN_SCALE_Q(6),
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
.op_weight(op_weight[63:0]),
.op_bias(op_bias[15:0]),
.op_dout(op_dout_76_0));

vector_muladd #(.CPF(4),
.RELU(1),
.BN(0),
.DIN_Q(6),
.DOUT_Q(6),
.BN_SCALE_Q(6),
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
.op_weight(op_weight[127:64]),
.op_bias(op_bias[31:16]),
.op_dout(op_dout_76_1));

vector_muladd #(.CPF(4),
.RELU(1),
.BN(0),
.DIN_Q(6),
.DOUT_Q(6),
.BN_SCALE_Q(6),
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
.op_weight(op_weight[191:128]),
.op_bias(op_bias[47:32]),
.op_dout(op_dout_76_2));

vector_muladd #(.CPF(4),
.RELU(1),
.BN(0),
.DIN_Q(6),
.DOUT_Q(6),
.BN_SCALE_Q(6),
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
.op_weight(op_weight[255:192]),
.op_bias(op_bias[63:48]),
.op_dout(op_dout_76_3));

vector_muladd #(.CPF(4),
.RELU(1),
.BN(0),
.DIN_Q(6),
.DOUT_Q(6),
.BN_SCALE_Q(6),
.BN_BIAS_Q(6),
.MID_Q(6),
.BIAS_DW(16),
.Q(13),
.DIN_DW(16), 
.DOUT_DW(16), 
.DATA_CHANNEL(1), 
.ACC_WIDTH(40), 
.WW(16))
u_vector_muladd_76_4(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_76), 
.op_weight(op_weight[319:256]),
.op_bias(op_bias[79:64]),
.op_dout(op_dout_76_4));

vector_muladd #(.CPF(4),
.RELU(1),
.BN(0),
.DIN_Q(6),
.DOUT_Q(6),
.BN_SCALE_Q(6),
.BN_BIAS_Q(6),
.MID_Q(6),
.BIAS_DW(16),
.Q(13),
.DIN_DW(16), 
.DOUT_DW(16), 
.DATA_CHANNEL(1), 
.ACC_WIDTH(40), 
.WW(16))
u_vector_muladd_76_5(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_76), 
.op_weight(op_weight[383:320]),
.op_bias(op_bias[95:80]),
.op_dout(op_dout_76_5));

vector_muladd #(.CPF(4),
.RELU(1),
.BN(0),
.DIN_Q(6),
.DOUT_Q(6),
.BN_SCALE_Q(6),
.BN_BIAS_Q(6),
.MID_Q(6),
.BIAS_DW(16),
.Q(13),
.DIN_DW(16), 
.DOUT_DW(16), 
.DATA_CHANNEL(1), 
.ACC_WIDTH(40), 
.WW(16))
u_vector_muladd_76_6(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_76), 
.op_weight(op_weight[447:384]),
.op_bias(op_bias[111:96]),
.op_dout(op_dout_76_6));

vector_muladd #(.CPF(4),
.RELU(1),
.BN(0),
.DIN_Q(6),
.DOUT_Q(6),
.BN_SCALE_Q(6),
.BN_BIAS_Q(6),
.MID_Q(6),
.BIAS_DW(16),
.Q(13),
.DIN_DW(16), 
.DOUT_DW(16), 
.DATA_CHANNEL(1), 
.ACC_WIDTH(40), 
.WW(16))
u_vector_muladd_76_7(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_76), 
.op_weight(op_weight[511:448]),
.op_bias(op_bias[127:112]),
.op_dout(op_dout_76_7));

vector_muladd #(.CPF(4),
.RELU(1),
.BN(0),
.DIN_Q(6),
.DOUT_Q(6),
.BN_SCALE_Q(6),
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
.op_weight(op_weight[63:0]),
.op_bias(op_bias[15:0]),
.op_dout(op_dout_77_0));

vector_muladd #(.CPF(4),
.RELU(1),
.BN(0),
.DIN_Q(6),
.DOUT_Q(6),
.BN_SCALE_Q(6),
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
.op_weight(op_weight[127:64]),
.op_bias(op_bias[31:16]),
.op_dout(op_dout_77_1));

vector_muladd #(.CPF(4),
.RELU(1),
.BN(0),
.DIN_Q(6),
.DOUT_Q(6),
.BN_SCALE_Q(6),
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
.op_weight(op_weight[191:128]),
.op_bias(op_bias[47:32]),
.op_dout(op_dout_77_2));

vector_muladd #(.CPF(4),
.RELU(1),
.BN(0),
.DIN_Q(6),
.DOUT_Q(6),
.BN_SCALE_Q(6),
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
.op_weight(op_weight[255:192]),
.op_bias(op_bias[63:48]),
.op_dout(op_dout_77_3));

vector_muladd #(.CPF(4),
.RELU(1),
.BN(0),
.DIN_Q(6),
.DOUT_Q(6),
.BN_SCALE_Q(6),
.BN_BIAS_Q(6),
.MID_Q(6),
.BIAS_DW(16),
.Q(13),
.DIN_DW(16), 
.DOUT_DW(16), 
.DATA_CHANNEL(1), 
.ACC_WIDTH(40), 
.WW(16))
u_vector_muladd_77_4(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_77), 
.op_weight(op_weight[319:256]),
.op_bias(op_bias[79:64]),
.op_dout(op_dout_77_4));

vector_muladd #(.CPF(4),
.RELU(1),
.BN(0),
.DIN_Q(6),
.DOUT_Q(6),
.BN_SCALE_Q(6),
.BN_BIAS_Q(6),
.MID_Q(6),
.BIAS_DW(16),
.Q(13),
.DIN_DW(16), 
.DOUT_DW(16), 
.DATA_CHANNEL(1), 
.ACC_WIDTH(40), 
.WW(16))
u_vector_muladd_77_5(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_77), 
.op_weight(op_weight[383:320]),
.op_bias(op_bias[95:80]),
.op_dout(op_dout_77_5));

vector_muladd #(.CPF(4),
.RELU(1),
.BN(0),
.DIN_Q(6),
.DOUT_Q(6),
.BN_SCALE_Q(6),
.BN_BIAS_Q(6),
.MID_Q(6),
.BIAS_DW(16),
.Q(13),
.DIN_DW(16), 
.DOUT_DW(16), 
.DATA_CHANNEL(1), 
.ACC_WIDTH(40), 
.WW(16))
u_vector_muladd_77_6(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_77), 
.op_weight(op_weight[447:384]),
.op_bias(op_bias[111:96]),
.op_dout(op_dout_77_6));

vector_muladd #(.CPF(4),
.RELU(1),
.BN(0),
.DIN_Q(6),
.DOUT_Q(6),
.BN_SCALE_Q(6),
.BN_BIAS_Q(6),
.MID_Q(6),
.BIAS_DW(16),
.Q(13),
.DIN_DW(16), 
.DOUT_DW(16), 
.DATA_CHANNEL(1), 
.ACC_WIDTH(40), 
.WW(16))
u_vector_muladd_77_7(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_77), 
.op_weight(op_weight[511:448]),
.op_bias(op_bias[127:112]),
.op_dout(op_dout_77_7));

vector_muladd #(.CPF(4),
.RELU(1),
.BN(0),
.DIN_Q(6),
.DOUT_Q(6),
.BN_SCALE_Q(6),
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
.op_weight(op_weight[63:0]),
.op_bias(op_bias[15:0]),
.op_dout(op_dout_78_0));

vector_muladd #(.CPF(4),
.RELU(1),
.BN(0),
.DIN_Q(6),
.DOUT_Q(6),
.BN_SCALE_Q(6),
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
.op_weight(op_weight[127:64]),
.op_bias(op_bias[31:16]),
.op_dout(op_dout_78_1));

vector_muladd #(.CPF(4),
.RELU(1),
.BN(0),
.DIN_Q(6),
.DOUT_Q(6),
.BN_SCALE_Q(6),
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
.op_weight(op_weight[191:128]),
.op_bias(op_bias[47:32]),
.op_dout(op_dout_78_2));

vector_muladd #(.CPF(4),
.RELU(1),
.BN(0),
.DIN_Q(6),
.DOUT_Q(6),
.BN_SCALE_Q(6),
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
.op_weight(op_weight[255:192]),
.op_bias(op_bias[63:48]),
.op_dout(op_dout_78_3));

vector_muladd #(.CPF(4),
.RELU(1),
.BN(0),
.DIN_Q(6),
.DOUT_Q(6),
.BN_SCALE_Q(6),
.BN_BIAS_Q(6),
.MID_Q(6),
.BIAS_DW(16),
.Q(13),
.DIN_DW(16), 
.DOUT_DW(16), 
.DATA_CHANNEL(1), 
.ACC_WIDTH(40), 
.WW(16))
u_vector_muladd_78_4(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_78), 
.op_weight(op_weight[319:256]),
.op_bias(op_bias[79:64]),
.op_dout(op_dout_78_4));

vector_muladd #(.CPF(4),
.RELU(1),
.BN(0),
.DIN_Q(6),
.DOUT_Q(6),
.BN_SCALE_Q(6),
.BN_BIAS_Q(6),
.MID_Q(6),
.BIAS_DW(16),
.Q(13),
.DIN_DW(16), 
.DOUT_DW(16), 
.DATA_CHANNEL(1), 
.ACC_WIDTH(40), 
.WW(16))
u_vector_muladd_78_5(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_78), 
.op_weight(op_weight[383:320]),
.op_bias(op_bias[95:80]),
.op_dout(op_dout_78_5));

vector_muladd #(.CPF(4),
.RELU(1),
.BN(0),
.DIN_Q(6),
.DOUT_Q(6),
.BN_SCALE_Q(6),
.BN_BIAS_Q(6),
.MID_Q(6),
.BIAS_DW(16),
.Q(13),
.DIN_DW(16), 
.DOUT_DW(16), 
.DATA_CHANNEL(1), 
.ACC_WIDTH(40), 
.WW(16))
u_vector_muladd_78_6(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_78), 
.op_weight(op_weight[447:384]),
.op_bias(op_bias[111:96]),
.op_dout(op_dout_78_6));

vector_muladd #(.CPF(4),
.RELU(1),
.BN(0),
.DIN_Q(6),
.DOUT_Q(6),
.BN_SCALE_Q(6),
.BN_BIAS_Q(6),
.MID_Q(6),
.BIAS_DW(16),
.Q(13),
.DIN_DW(16), 
.DOUT_DW(16), 
.DATA_CHANNEL(1), 
.ACC_WIDTH(40), 
.WW(16))
u_vector_muladd_78_7(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_78), 
.op_weight(op_weight[511:448]),
.op_bias(op_bias[127:112]),
.op_dout(op_dout_78_7));

vector_muladd #(.CPF(4),
.RELU(1),
.BN(0),
.DIN_Q(6),
.DOUT_Q(6),
.BN_SCALE_Q(6),
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
.op_weight(op_weight[63:0]),
.op_bias(op_bias[15:0]),
.op_dout(op_dout_79_0));

vector_muladd #(.CPF(4),
.RELU(1),
.BN(0),
.DIN_Q(6),
.DOUT_Q(6),
.BN_SCALE_Q(6),
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
.op_weight(op_weight[127:64]),
.op_bias(op_bias[31:16]),
.op_dout(op_dout_79_1));

vector_muladd #(.CPF(4),
.RELU(1),
.BN(0),
.DIN_Q(6),
.DOUT_Q(6),
.BN_SCALE_Q(6),
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
.op_weight(op_weight[191:128]),
.op_bias(op_bias[47:32]),
.op_dout(op_dout_79_2));

vector_muladd #(.CPF(4),
.RELU(1),
.BN(0),
.DIN_Q(6),
.DOUT_Q(6),
.BN_SCALE_Q(6),
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
.op_weight(op_weight[255:192]),
.op_bias(op_bias[63:48]),
.op_dout(op_dout_79_3));

vector_muladd #(.CPF(4),
.RELU(1),
.BN(0),
.DIN_Q(6),
.DOUT_Q(6),
.BN_SCALE_Q(6),
.BN_BIAS_Q(6),
.MID_Q(6),
.BIAS_DW(16),
.Q(13),
.DIN_DW(16), 
.DOUT_DW(16), 
.DATA_CHANNEL(1), 
.ACC_WIDTH(40), 
.WW(16))
u_vector_muladd_79_4(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_79), 
.op_weight(op_weight[319:256]),
.op_bias(op_bias[79:64]),
.op_dout(op_dout_79_4));

vector_muladd #(.CPF(4),
.RELU(1),
.BN(0),
.DIN_Q(6),
.DOUT_Q(6),
.BN_SCALE_Q(6),
.BN_BIAS_Q(6),
.MID_Q(6),
.BIAS_DW(16),
.Q(13),
.DIN_DW(16), 
.DOUT_DW(16), 
.DATA_CHANNEL(1), 
.ACC_WIDTH(40), 
.WW(16))
u_vector_muladd_79_5(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_79), 
.op_weight(op_weight[383:320]),
.op_bias(op_bias[95:80]),
.op_dout(op_dout_79_5));

vector_muladd #(.CPF(4),
.RELU(1),
.BN(0),
.DIN_Q(6),
.DOUT_Q(6),
.BN_SCALE_Q(6),
.BN_BIAS_Q(6),
.MID_Q(6),
.BIAS_DW(16),
.Q(13),
.DIN_DW(16), 
.DOUT_DW(16), 
.DATA_CHANNEL(1), 
.ACC_WIDTH(40), 
.WW(16))
u_vector_muladd_79_6(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_79), 
.op_weight(op_weight[447:384]),
.op_bias(op_bias[111:96]),
.op_dout(op_dout_79_6));

vector_muladd #(.CPF(4),
.RELU(1),
.BN(0),
.DIN_Q(6),
.DOUT_Q(6),
.BN_SCALE_Q(6),
.BN_BIAS_Q(6),
.MID_Q(6),
.BIAS_DW(16),
.Q(13),
.DIN_DW(16), 
.DOUT_DW(16), 
.DATA_CHANNEL(1), 
.ACC_WIDTH(40), 
.WW(16))
u_vector_muladd_79_7(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_79), 
.op_weight(op_weight[511:448]),
.op_bias(op_bias[127:112]),
.op_dout(op_dout_79_7));

vector_muladd #(.CPF(4),
.RELU(1),
.BN(0),
.DIN_Q(6),
.DOUT_Q(6),
.BN_SCALE_Q(6),
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
.op_weight(op_weight[63:0]),
.op_bias(op_bias[15:0]),
.op_dout(op_dout_80_0));

vector_muladd #(.CPF(4),
.RELU(1),
.BN(0),
.DIN_Q(6),
.DOUT_Q(6),
.BN_SCALE_Q(6),
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
.op_weight(op_weight[127:64]),
.op_bias(op_bias[31:16]),
.op_dout(op_dout_80_1));

vector_muladd #(.CPF(4),
.RELU(1),
.BN(0),
.DIN_Q(6),
.DOUT_Q(6),
.BN_SCALE_Q(6),
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
.op_weight(op_weight[191:128]),
.op_bias(op_bias[47:32]),
.op_dout(op_dout_80_2));

vector_muladd #(.CPF(4),
.RELU(1),
.BN(0),
.DIN_Q(6),
.DOUT_Q(6),
.BN_SCALE_Q(6),
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
.op_weight(op_weight[255:192]),
.op_bias(op_bias[63:48]),
.op_dout(op_dout_80_3));

vector_muladd #(.CPF(4),
.RELU(1),
.BN(0),
.DIN_Q(6),
.DOUT_Q(6),
.BN_SCALE_Q(6),
.BN_BIAS_Q(6),
.MID_Q(6),
.BIAS_DW(16),
.Q(13),
.DIN_DW(16), 
.DOUT_DW(16), 
.DATA_CHANNEL(1), 
.ACC_WIDTH(40), 
.WW(16))
u_vector_muladd_80_4(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_80), 
.op_weight(op_weight[319:256]),
.op_bias(op_bias[79:64]),
.op_dout(op_dout_80_4));

vector_muladd #(.CPF(4),
.RELU(1),
.BN(0),
.DIN_Q(6),
.DOUT_Q(6),
.BN_SCALE_Q(6),
.BN_BIAS_Q(6),
.MID_Q(6),
.BIAS_DW(16),
.Q(13),
.DIN_DW(16), 
.DOUT_DW(16), 
.DATA_CHANNEL(1), 
.ACC_WIDTH(40), 
.WW(16))
u_vector_muladd_80_5(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_80), 
.op_weight(op_weight[383:320]),
.op_bias(op_bias[95:80]),
.op_dout(op_dout_80_5));

vector_muladd #(.CPF(4),
.RELU(1),
.BN(0),
.DIN_Q(6),
.DOUT_Q(6),
.BN_SCALE_Q(6),
.BN_BIAS_Q(6),
.MID_Q(6),
.BIAS_DW(16),
.Q(13),
.DIN_DW(16), 
.DOUT_DW(16), 
.DATA_CHANNEL(1), 
.ACC_WIDTH(40), 
.WW(16))
u_vector_muladd_80_6(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_80), 
.op_weight(op_weight[447:384]),
.op_bias(op_bias[111:96]),
.op_dout(op_dout_80_6));

vector_muladd #(.CPF(4),
.RELU(1),
.BN(0),
.DIN_Q(6),
.DOUT_Q(6),
.BN_SCALE_Q(6),
.BN_BIAS_Q(6),
.MID_Q(6),
.BIAS_DW(16),
.Q(13),
.DIN_DW(16), 
.DOUT_DW(16), 
.DATA_CHANNEL(1), 
.ACC_WIDTH(40), 
.WW(16))
u_vector_muladd_80_7(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_80), 
.op_weight(op_weight[511:448]),
.op_bias(op_bias[127:112]),
.op_dout(op_dout_80_7));

vector_muladd #(.CPF(4),
.RELU(1),
.BN(0),
.DIN_Q(6),
.DOUT_Q(6),
.BN_SCALE_Q(6),
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
.op_weight(op_weight[63:0]),
.op_bias(op_bias[15:0]),
.op_dout(op_dout_81_0));

vector_muladd #(.CPF(4),
.RELU(1),
.BN(0),
.DIN_Q(6),
.DOUT_Q(6),
.BN_SCALE_Q(6),
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
.op_weight(op_weight[127:64]),
.op_bias(op_bias[31:16]),
.op_dout(op_dout_81_1));

vector_muladd #(.CPF(4),
.RELU(1),
.BN(0),
.DIN_Q(6),
.DOUT_Q(6),
.BN_SCALE_Q(6),
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
.op_weight(op_weight[191:128]),
.op_bias(op_bias[47:32]),
.op_dout(op_dout_81_2));

vector_muladd #(.CPF(4),
.RELU(1),
.BN(0),
.DIN_Q(6),
.DOUT_Q(6),
.BN_SCALE_Q(6),
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
.op_weight(op_weight[255:192]),
.op_bias(op_bias[63:48]),
.op_dout(op_dout_81_3));

vector_muladd #(.CPF(4),
.RELU(1),
.BN(0),
.DIN_Q(6),
.DOUT_Q(6),
.BN_SCALE_Q(6),
.BN_BIAS_Q(6),
.MID_Q(6),
.BIAS_DW(16),
.Q(13),
.DIN_DW(16), 
.DOUT_DW(16), 
.DATA_CHANNEL(1), 
.ACC_WIDTH(40), 
.WW(16))
u_vector_muladd_81_4(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_81), 
.op_weight(op_weight[319:256]),
.op_bias(op_bias[79:64]),
.op_dout(op_dout_81_4));

vector_muladd #(.CPF(4),
.RELU(1),
.BN(0),
.DIN_Q(6),
.DOUT_Q(6),
.BN_SCALE_Q(6),
.BN_BIAS_Q(6),
.MID_Q(6),
.BIAS_DW(16),
.Q(13),
.DIN_DW(16), 
.DOUT_DW(16), 
.DATA_CHANNEL(1), 
.ACC_WIDTH(40), 
.WW(16))
u_vector_muladd_81_5(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_81), 
.op_weight(op_weight[383:320]),
.op_bias(op_bias[95:80]),
.op_dout(op_dout_81_5));

vector_muladd #(.CPF(4),
.RELU(1),
.BN(0),
.DIN_Q(6),
.DOUT_Q(6),
.BN_SCALE_Q(6),
.BN_BIAS_Q(6),
.MID_Q(6),
.BIAS_DW(16),
.Q(13),
.DIN_DW(16), 
.DOUT_DW(16), 
.DATA_CHANNEL(1), 
.ACC_WIDTH(40), 
.WW(16))
u_vector_muladd_81_6(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_81), 
.op_weight(op_weight[447:384]),
.op_bias(op_bias[111:96]),
.op_dout(op_dout_81_6));

vector_muladd #(.CPF(4),
.RELU(1),
.BN(0),
.DIN_Q(6),
.DOUT_Q(6),
.BN_SCALE_Q(6),
.BN_BIAS_Q(6),
.MID_Q(6),
.BIAS_DW(16),
.Q(13),
.DIN_DW(16), 
.DOUT_DW(16), 
.DATA_CHANNEL(1), 
.ACC_WIDTH(40), 
.WW(16))
u_vector_muladd_81_7(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_81), 
.op_weight(op_weight[511:448]),
.op_bias(op_bias[127:112]),
.op_dout(op_dout_81_7));

vector_muladd #(.CPF(4),
.RELU(1),
.BN(0),
.DIN_Q(6),
.DOUT_Q(6),
.BN_SCALE_Q(6),
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
.op_weight(op_weight[63:0]),
.op_bias(op_bias[15:0]),
.op_dout(op_dout_82_0));

vector_muladd #(.CPF(4),
.RELU(1),
.BN(0),
.DIN_Q(6),
.DOUT_Q(6),
.BN_SCALE_Q(6),
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
.op_weight(op_weight[127:64]),
.op_bias(op_bias[31:16]),
.op_dout(op_dout_82_1));

vector_muladd #(.CPF(4),
.RELU(1),
.BN(0),
.DIN_Q(6),
.DOUT_Q(6),
.BN_SCALE_Q(6),
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
.op_weight(op_weight[191:128]),
.op_bias(op_bias[47:32]),
.op_dout(op_dout_82_2));

vector_muladd #(.CPF(4),
.RELU(1),
.BN(0),
.DIN_Q(6),
.DOUT_Q(6),
.BN_SCALE_Q(6),
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
.op_weight(op_weight[255:192]),
.op_bias(op_bias[63:48]),
.op_dout(op_dout_82_3));

vector_muladd #(.CPF(4),
.RELU(1),
.BN(0),
.DIN_Q(6),
.DOUT_Q(6),
.BN_SCALE_Q(6),
.BN_BIAS_Q(6),
.MID_Q(6),
.BIAS_DW(16),
.Q(13),
.DIN_DW(16), 
.DOUT_DW(16), 
.DATA_CHANNEL(1), 
.ACC_WIDTH(40), 
.WW(16))
u_vector_muladd_82_4(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_82), 
.op_weight(op_weight[319:256]),
.op_bias(op_bias[79:64]),
.op_dout(op_dout_82_4));

vector_muladd #(.CPF(4),
.RELU(1),
.BN(0),
.DIN_Q(6),
.DOUT_Q(6),
.BN_SCALE_Q(6),
.BN_BIAS_Q(6),
.MID_Q(6),
.BIAS_DW(16),
.Q(13),
.DIN_DW(16), 
.DOUT_DW(16), 
.DATA_CHANNEL(1), 
.ACC_WIDTH(40), 
.WW(16))
u_vector_muladd_82_5(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_82), 
.op_weight(op_weight[383:320]),
.op_bias(op_bias[95:80]),
.op_dout(op_dout_82_5));

vector_muladd #(.CPF(4),
.RELU(1),
.BN(0),
.DIN_Q(6),
.DOUT_Q(6),
.BN_SCALE_Q(6),
.BN_BIAS_Q(6),
.MID_Q(6),
.BIAS_DW(16),
.Q(13),
.DIN_DW(16), 
.DOUT_DW(16), 
.DATA_CHANNEL(1), 
.ACC_WIDTH(40), 
.WW(16))
u_vector_muladd_82_6(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_82), 
.op_weight(op_weight[447:384]),
.op_bias(op_bias[111:96]),
.op_dout(op_dout_82_6));

vector_muladd #(.CPF(4),
.RELU(1),
.BN(0),
.DIN_Q(6),
.DOUT_Q(6),
.BN_SCALE_Q(6),
.BN_BIAS_Q(6),
.MID_Q(6),
.BIAS_DW(16),
.Q(13),
.DIN_DW(16), 
.DOUT_DW(16), 
.DATA_CHANNEL(1), 
.ACC_WIDTH(40), 
.WW(16))
u_vector_muladd_82_7(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_82), 
.op_weight(op_weight[511:448]),
.op_bias(op_bias[127:112]),
.op_dout(op_dout_82_7));

vector_muladd #(.CPF(4),
.RELU(1),
.BN(0),
.DIN_Q(6),
.DOUT_Q(6),
.BN_SCALE_Q(6),
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
.op_weight(op_weight[63:0]),
.op_bias(op_bias[15:0]),
.op_dout(op_dout_83_0));

vector_muladd #(.CPF(4),
.RELU(1),
.BN(0),
.DIN_Q(6),
.DOUT_Q(6),
.BN_SCALE_Q(6),
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
.op_weight(op_weight[127:64]),
.op_bias(op_bias[31:16]),
.op_dout(op_dout_83_1));

vector_muladd #(.CPF(4),
.RELU(1),
.BN(0),
.DIN_Q(6),
.DOUT_Q(6),
.BN_SCALE_Q(6),
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
.op_weight(op_weight[191:128]),
.op_bias(op_bias[47:32]),
.op_dout(op_dout_83_2));

vector_muladd #(.CPF(4),
.RELU(1),
.BN(0),
.DIN_Q(6),
.DOUT_Q(6),
.BN_SCALE_Q(6),
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
.op_weight(op_weight[255:192]),
.op_bias(op_bias[63:48]),
.op_dout(op_dout_83_3));

vector_muladd #(.CPF(4),
.RELU(1),
.BN(0),
.DIN_Q(6),
.DOUT_Q(6),
.BN_SCALE_Q(6),
.BN_BIAS_Q(6),
.MID_Q(6),
.BIAS_DW(16),
.Q(13),
.DIN_DW(16), 
.DOUT_DW(16), 
.DATA_CHANNEL(1), 
.ACC_WIDTH(40), 
.WW(16))
u_vector_muladd_83_4(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_83), 
.op_weight(op_weight[319:256]),
.op_bias(op_bias[79:64]),
.op_dout(op_dout_83_4));

vector_muladd #(.CPF(4),
.RELU(1),
.BN(0),
.DIN_Q(6),
.DOUT_Q(6),
.BN_SCALE_Q(6),
.BN_BIAS_Q(6),
.MID_Q(6),
.BIAS_DW(16),
.Q(13),
.DIN_DW(16), 
.DOUT_DW(16), 
.DATA_CHANNEL(1), 
.ACC_WIDTH(40), 
.WW(16))
u_vector_muladd_83_5(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_83), 
.op_weight(op_weight[383:320]),
.op_bias(op_bias[95:80]),
.op_dout(op_dout_83_5));

vector_muladd #(.CPF(4),
.RELU(1),
.BN(0),
.DIN_Q(6),
.DOUT_Q(6),
.BN_SCALE_Q(6),
.BN_BIAS_Q(6),
.MID_Q(6),
.BIAS_DW(16),
.Q(13),
.DIN_DW(16), 
.DOUT_DW(16), 
.DATA_CHANNEL(1), 
.ACC_WIDTH(40), 
.WW(16))
u_vector_muladd_83_6(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_83), 
.op_weight(op_weight[447:384]),
.op_bias(op_bias[111:96]),
.op_dout(op_dout_83_6));

vector_muladd #(.CPF(4),
.RELU(1),
.BN(0),
.DIN_Q(6),
.DOUT_Q(6),
.BN_SCALE_Q(6),
.BN_BIAS_Q(6),
.MID_Q(6),
.BIAS_DW(16),
.Q(13),
.DIN_DW(16), 
.DOUT_DW(16), 
.DATA_CHANNEL(1), 
.ACC_WIDTH(40), 
.WW(16))
u_vector_muladd_83_7(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_83), 
.op_weight(op_weight[511:448]),
.op_bias(op_bias[127:112]),
.op_dout(op_dout_83_7));

vector_muladd #(.CPF(4),
.RELU(1),
.BN(0),
.DIN_Q(6),
.DOUT_Q(6),
.BN_SCALE_Q(6),
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
.op_weight(op_weight[63:0]),
.op_bias(op_bias[15:0]),
.op_dout(op_dout_84_0));

vector_muladd #(.CPF(4),
.RELU(1),
.BN(0),
.DIN_Q(6),
.DOUT_Q(6),
.BN_SCALE_Q(6),
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
.op_weight(op_weight[127:64]),
.op_bias(op_bias[31:16]),
.op_dout(op_dout_84_1));

vector_muladd #(.CPF(4),
.RELU(1),
.BN(0),
.DIN_Q(6),
.DOUT_Q(6),
.BN_SCALE_Q(6),
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
.op_weight(op_weight[191:128]),
.op_bias(op_bias[47:32]),
.op_dout(op_dout_84_2));

vector_muladd #(.CPF(4),
.RELU(1),
.BN(0),
.DIN_Q(6),
.DOUT_Q(6),
.BN_SCALE_Q(6),
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
.op_weight(op_weight[255:192]),
.op_bias(op_bias[63:48]),
.op_dout(op_dout_84_3));

vector_muladd #(.CPF(4),
.RELU(1),
.BN(0),
.DIN_Q(6),
.DOUT_Q(6),
.BN_SCALE_Q(6),
.BN_BIAS_Q(6),
.MID_Q(6),
.BIAS_DW(16),
.Q(13),
.DIN_DW(16), 
.DOUT_DW(16), 
.DATA_CHANNEL(1), 
.ACC_WIDTH(40), 
.WW(16))
u_vector_muladd_84_4(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_84), 
.op_weight(op_weight[319:256]),
.op_bias(op_bias[79:64]),
.op_dout(op_dout_84_4));

vector_muladd #(.CPF(4),
.RELU(1),
.BN(0),
.DIN_Q(6),
.DOUT_Q(6),
.BN_SCALE_Q(6),
.BN_BIAS_Q(6),
.MID_Q(6),
.BIAS_DW(16),
.Q(13),
.DIN_DW(16), 
.DOUT_DW(16), 
.DATA_CHANNEL(1), 
.ACC_WIDTH(40), 
.WW(16))
u_vector_muladd_84_5(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_84), 
.op_weight(op_weight[383:320]),
.op_bias(op_bias[95:80]),
.op_dout(op_dout_84_5));

vector_muladd #(.CPF(4),
.RELU(1),
.BN(0),
.DIN_Q(6),
.DOUT_Q(6),
.BN_SCALE_Q(6),
.BN_BIAS_Q(6),
.MID_Q(6),
.BIAS_DW(16),
.Q(13),
.DIN_DW(16), 
.DOUT_DW(16), 
.DATA_CHANNEL(1), 
.ACC_WIDTH(40), 
.WW(16))
u_vector_muladd_84_6(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_84), 
.op_weight(op_weight[447:384]),
.op_bias(op_bias[111:96]),
.op_dout(op_dout_84_6));

vector_muladd #(.CPF(4),
.RELU(1),
.BN(0),
.DIN_Q(6),
.DOUT_Q(6),
.BN_SCALE_Q(6),
.BN_BIAS_Q(6),
.MID_Q(6),
.BIAS_DW(16),
.Q(13),
.DIN_DW(16), 
.DOUT_DW(16), 
.DATA_CHANNEL(1), 
.ACC_WIDTH(40), 
.WW(16))
u_vector_muladd_84_7(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_84), 
.op_weight(op_weight[511:448]),
.op_bias(op_bias[127:112]),
.op_dout(op_dout_84_7));

vector_muladd #(.CPF(4),
.RELU(1),
.BN(0),
.DIN_Q(6),
.DOUT_Q(6),
.BN_SCALE_Q(6),
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
.op_weight(op_weight[63:0]),
.op_bias(op_bias[15:0]),
.op_dout(op_dout_85_0));

vector_muladd #(.CPF(4),
.RELU(1),
.BN(0),
.DIN_Q(6),
.DOUT_Q(6),
.BN_SCALE_Q(6),
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
.op_weight(op_weight[127:64]),
.op_bias(op_bias[31:16]),
.op_dout(op_dout_85_1));

vector_muladd #(.CPF(4),
.RELU(1),
.BN(0),
.DIN_Q(6),
.DOUT_Q(6),
.BN_SCALE_Q(6),
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
.op_weight(op_weight[191:128]),
.op_bias(op_bias[47:32]),
.op_dout(op_dout_85_2));

vector_muladd #(.CPF(4),
.RELU(1),
.BN(0),
.DIN_Q(6),
.DOUT_Q(6),
.BN_SCALE_Q(6),
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
.op_weight(op_weight[255:192]),
.op_bias(op_bias[63:48]),
.op_dout(op_dout_85_3));

vector_muladd #(.CPF(4),
.RELU(1),
.BN(0),
.DIN_Q(6),
.DOUT_Q(6),
.BN_SCALE_Q(6),
.BN_BIAS_Q(6),
.MID_Q(6),
.BIAS_DW(16),
.Q(13),
.DIN_DW(16), 
.DOUT_DW(16), 
.DATA_CHANNEL(1), 
.ACC_WIDTH(40), 
.WW(16))
u_vector_muladd_85_4(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_85), 
.op_weight(op_weight[319:256]),
.op_bias(op_bias[79:64]),
.op_dout(op_dout_85_4));

vector_muladd #(.CPF(4),
.RELU(1),
.BN(0),
.DIN_Q(6),
.DOUT_Q(6),
.BN_SCALE_Q(6),
.BN_BIAS_Q(6),
.MID_Q(6),
.BIAS_DW(16),
.Q(13),
.DIN_DW(16), 
.DOUT_DW(16), 
.DATA_CHANNEL(1), 
.ACC_WIDTH(40), 
.WW(16))
u_vector_muladd_85_5(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_85), 
.op_weight(op_weight[383:320]),
.op_bias(op_bias[95:80]),
.op_dout(op_dout_85_5));

vector_muladd #(.CPF(4),
.RELU(1),
.BN(0),
.DIN_Q(6),
.DOUT_Q(6),
.BN_SCALE_Q(6),
.BN_BIAS_Q(6),
.MID_Q(6),
.BIAS_DW(16),
.Q(13),
.DIN_DW(16), 
.DOUT_DW(16), 
.DATA_CHANNEL(1), 
.ACC_WIDTH(40), 
.WW(16))
u_vector_muladd_85_6(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_85), 
.op_weight(op_weight[447:384]),
.op_bias(op_bias[111:96]),
.op_dout(op_dout_85_6));

vector_muladd #(.CPF(4),
.RELU(1),
.BN(0),
.DIN_Q(6),
.DOUT_Q(6),
.BN_SCALE_Q(6),
.BN_BIAS_Q(6),
.MID_Q(6),
.BIAS_DW(16),
.Q(13),
.DIN_DW(16), 
.DOUT_DW(16), 
.DATA_CHANNEL(1), 
.ACC_WIDTH(40), 
.WW(16))
u_vector_muladd_85_7(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_85), 
.op_weight(op_weight[511:448]),
.op_bias(op_bias[127:112]),
.op_dout(op_dout_85_7));

vector_muladd #(.CPF(4),
.RELU(1),
.BN(0),
.DIN_Q(6),
.DOUT_Q(6),
.BN_SCALE_Q(6),
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
.op_weight(op_weight[63:0]),
.op_bias(op_bias[15:0]),
.op_dout(op_dout_86_0));

vector_muladd #(.CPF(4),
.RELU(1),
.BN(0),
.DIN_Q(6),
.DOUT_Q(6),
.BN_SCALE_Q(6),
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
.op_weight(op_weight[127:64]),
.op_bias(op_bias[31:16]),
.op_dout(op_dout_86_1));

vector_muladd #(.CPF(4),
.RELU(1),
.BN(0),
.DIN_Q(6),
.DOUT_Q(6),
.BN_SCALE_Q(6),
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
.op_weight(op_weight[191:128]),
.op_bias(op_bias[47:32]),
.op_dout(op_dout_86_2));

vector_muladd #(.CPF(4),
.RELU(1),
.BN(0),
.DIN_Q(6),
.DOUT_Q(6),
.BN_SCALE_Q(6),
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
.op_weight(op_weight[255:192]),
.op_bias(op_bias[63:48]),
.op_dout(op_dout_86_3));

vector_muladd #(.CPF(4),
.RELU(1),
.BN(0),
.DIN_Q(6),
.DOUT_Q(6),
.BN_SCALE_Q(6),
.BN_BIAS_Q(6),
.MID_Q(6),
.BIAS_DW(16),
.Q(13),
.DIN_DW(16), 
.DOUT_DW(16), 
.DATA_CHANNEL(1), 
.ACC_WIDTH(40), 
.WW(16))
u_vector_muladd_86_4(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_86), 
.op_weight(op_weight[319:256]),
.op_bias(op_bias[79:64]),
.op_dout(op_dout_86_4));

vector_muladd #(.CPF(4),
.RELU(1),
.BN(0),
.DIN_Q(6),
.DOUT_Q(6),
.BN_SCALE_Q(6),
.BN_BIAS_Q(6),
.MID_Q(6),
.BIAS_DW(16),
.Q(13),
.DIN_DW(16), 
.DOUT_DW(16), 
.DATA_CHANNEL(1), 
.ACC_WIDTH(40), 
.WW(16))
u_vector_muladd_86_5(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_86), 
.op_weight(op_weight[383:320]),
.op_bias(op_bias[95:80]),
.op_dout(op_dout_86_5));

vector_muladd #(.CPF(4),
.RELU(1),
.BN(0),
.DIN_Q(6),
.DOUT_Q(6),
.BN_SCALE_Q(6),
.BN_BIAS_Q(6),
.MID_Q(6),
.BIAS_DW(16),
.Q(13),
.DIN_DW(16), 
.DOUT_DW(16), 
.DATA_CHANNEL(1), 
.ACC_WIDTH(40), 
.WW(16))
u_vector_muladd_86_6(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_86), 
.op_weight(op_weight[447:384]),
.op_bias(op_bias[111:96]),
.op_dout(op_dout_86_6));

vector_muladd #(.CPF(4),
.RELU(1),
.BN(0),
.DIN_Q(6),
.DOUT_Q(6),
.BN_SCALE_Q(6),
.BN_BIAS_Q(6),
.MID_Q(6),
.BIAS_DW(16),
.Q(13),
.DIN_DW(16), 
.DOUT_DW(16), 
.DATA_CHANNEL(1), 
.ACC_WIDTH(40), 
.WW(16))
u_vector_muladd_86_7(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_86), 
.op_weight(op_weight[511:448]),
.op_bias(op_bias[127:112]),
.op_dout(op_dout_86_7));

vector_muladd #(.CPF(4),
.RELU(1),
.BN(0),
.DIN_Q(6),
.DOUT_Q(6),
.BN_SCALE_Q(6),
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
.op_weight(op_weight[63:0]),
.op_bias(op_bias[15:0]),
.op_dout(op_dout_87_0));

vector_muladd #(.CPF(4),
.RELU(1),
.BN(0),
.DIN_Q(6),
.DOUT_Q(6),
.BN_SCALE_Q(6),
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
.op_weight(op_weight[127:64]),
.op_bias(op_bias[31:16]),
.op_dout(op_dout_87_1));

vector_muladd #(.CPF(4),
.RELU(1),
.BN(0),
.DIN_Q(6),
.DOUT_Q(6),
.BN_SCALE_Q(6),
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
.op_weight(op_weight[191:128]),
.op_bias(op_bias[47:32]),
.op_dout(op_dout_87_2));

vector_muladd #(.CPF(4),
.RELU(1),
.BN(0),
.DIN_Q(6),
.DOUT_Q(6),
.BN_SCALE_Q(6),
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
.op_weight(op_weight[255:192]),
.op_bias(op_bias[63:48]),
.op_dout(op_dout_87_3));

vector_muladd #(.CPF(4),
.RELU(1),
.BN(0),
.DIN_Q(6),
.DOUT_Q(6),
.BN_SCALE_Q(6),
.BN_BIAS_Q(6),
.MID_Q(6),
.BIAS_DW(16),
.Q(13),
.DIN_DW(16), 
.DOUT_DW(16), 
.DATA_CHANNEL(1), 
.ACC_WIDTH(40), 
.WW(16))
u_vector_muladd_87_4(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_87), 
.op_weight(op_weight[319:256]),
.op_bias(op_bias[79:64]),
.op_dout(op_dout_87_4));

vector_muladd #(.CPF(4),
.RELU(1),
.BN(0),
.DIN_Q(6),
.DOUT_Q(6),
.BN_SCALE_Q(6),
.BN_BIAS_Q(6),
.MID_Q(6),
.BIAS_DW(16),
.Q(13),
.DIN_DW(16), 
.DOUT_DW(16), 
.DATA_CHANNEL(1), 
.ACC_WIDTH(40), 
.WW(16))
u_vector_muladd_87_5(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_87), 
.op_weight(op_weight[383:320]),
.op_bias(op_bias[95:80]),
.op_dout(op_dout_87_5));

vector_muladd #(.CPF(4),
.RELU(1),
.BN(0),
.DIN_Q(6),
.DOUT_Q(6),
.BN_SCALE_Q(6),
.BN_BIAS_Q(6),
.MID_Q(6),
.BIAS_DW(16),
.Q(13),
.DIN_DW(16), 
.DOUT_DW(16), 
.DATA_CHANNEL(1), 
.ACC_WIDTH(40), 
.WW(16))
u_vector_muladd_87_6(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_87), 
.op_weight(op_weight[447:384]),
.op_bias(op_bias[111:96]),
.op_dout(op_dout_87_6));

vector_muladd #(.CPF(4),
.RELU(1),
.BN(0),
.DIN_Q(6),
.DOUT_Q(6),
.BN_SCALE_Q(6),
.BN_BIAS_Q(6),
.MID_Q(6),
.BIAS_DW(16),
.Q(13),
.DIN_DW(16), 
.DOUT_DW(16), 
.DATA_CHANNEL(1), 
.ACC_WIDTH(40), 
.WW(16))
u_vector_muladd_87_7(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_87), 
.op_weight(op_weight[511:448]),
.op_bias(op_bias[127:112]),
.op_dout(op_dout_87_7));

vector_muladd #(.CPF(4),
.RELU(1),
.BN(0),
.DIN_Q(6),
.DOUT_Q(6),
.BN_SCALE_Q(6),
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
.op_weight(op_weight[63:0]),
.op_bias(op_bias[15:0]),
.op_dout(op_dout_88_0));

vector_muladd #(.CPF(4),
.RELU(1),
.BN(0),
.DIN_Q(6),
.DOUT_Q(6),
.BN_SCALE_Q(6),
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
.op_weight(op_weight[127:64]),
.op_bias(op_bias[31:16]),
.op_dout(op_dout_88_1));

vector_muladd #(.CPF(4),
.RELU(1),
.BN(0),
.DIN_Q(6),
.DOUT_Q(6),
.BN_SCALE_Q(6),
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
.op_weight(op_weight[191:128]),
.op_bias(op_bias[47:32]),
.op_dout(op_dout_88_2));

vector_muladd #(.CPF(4),
.RELU(1),
.BN(0),
.DIN_Q(6),
.DOUT_Q(6),
.BN_SCALE_Q(6),
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
.op_weight(op_weight[255:192]),
.op_bias(op_bias[63:48]),
.op_dout(op_dout_88_3));

vector_muladd #(.CPF(4),
.RELU(1),
.BN(0),
.DIN_Q(6),
.DOUT_Q(6),
.BN_SCALE_Q(6),
.BN_BIAS_Q(6),
.MID_Q(6),
.BIAS_DW(16),
.Q(13),
.DIN_DW(16), 
.DOUT_DW(16), 
.DATA_CHANNEL(1), 
.ACC_WIDTH(40), 
.WW(16))
u_vector_muladd_88_4(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_88), 
.op_weight(op_weight[319:256]),
.op_bias(op_bias[79:64]),
.op_dout(op_dout_88_4));

vector_muladd #(.CPF(4),
.RELU(1),
.BN(0),
.DIN_Q(6),
.DOUT_Q(6),
.BN_SCALE_Q(6),
.BN_BIAS_Q(6),
.MID_Q(6),
.BIAS_DW(16),
.Q(13),
.DIN_DW(16), 
.DOUT_DW(16), 
.DATA_CHANNEL(1), 
.ACC_WIDTH(40), 
.WW(16))
u_vector_muladd_88_5(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_88), 
.op_weight(op_weight[383:320]),
.op_bias(op_bias[95:80]),
.op_dout(op_dout_88_5));

vector_muladd #(.CPF(4),
.RELU(1),
.BN(0),
.DIN_Q(6),
.DOUT_Q(6),
.BN_SCALE_Q(6),
.BN_BIAS_Q(6),
.MID_Q(6),
.BIAS_DW(16),
.Q(13),
.DIN_DW(16), 
.DOUT_DW(16), 
.DATA_CHANNEL(1), 
.ACC_WIDTH(40), 
.WW(16))
u_vector_muladd_88_6(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_88), 
.op_weight(op_weight[447:384]),
.op_bias(op_bias[111:96]),
.op_dout(op_dout_88_6));

vector_muladd #(.CPF(4),
.RELU(1),
.BN(0),
.DIN_Q(6),
.DOUT_Q(6),
.BN_SCALE_Q(6),
.BN_BIAS_Q(6),
.MID_Q(6),
.BIAS_DW(16),
.Q(13),
.DIN_DW(16), 
.DOUT_DW(16), 
.DATA_CHANNEL(1), 
.ACC_WIDTH(40), 
.WW(16))
u_vector_muladd_88_7(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_88), 
.op_weight(op_weight[511:448]),
.op_bias(op_bias[127:112]),
.op_dout(op_dout_88_7));

vector_muladd #(.CPF(4),
.RELU(1),
.BN(0),
.DIN_Q(6),
.DOUT_Q(6),
.BN_SCALE_Q(6),
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
.op_weight(op_weight[63:0]),
.op_bias(op_bias[15:0]),
.op_dout(op_dout_89_0));

vector_muladd #(.CPF(4),
.RELU(1),
.BN(0),
.DIN_Q(6),
.DOUT_Q(6),
.BN_SCALE_Q(6),
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
.op_weight(op_weight[127:64]),
.op_bias(op_bias[31:16]),
.op_dout(op_dout_89_1));

vector_muladd #(.CPF(4),
.RELU(1),
.BN(0),
.DIN_Q(6),
.DOUT_Q(6),
.BN_SCALE_Q(6),
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
.op_weight(op_weight[191:128]),
.op_bias(op_bias[47:32]),
.op_dout(op_dout_89_2));

vector_muladd #(.CPF(4),
.RELU(1),
.BN(0),
.DIN_Q(6),
.DOUT_Q(6),
.BN_SCALE_Q(6),
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
.op_weight(op_weight[255:192]),
.op_bias(op_bias[63:48]),
.op_dout(op_dout_89_3));

vector_muladd #(.CPF(4),
.RELU(1),
.BN(0),
.DIN_Q(6),
.DOUT_Q(6),
.BN_SCALE_Q(6),
.BN_BIAS_Q(6),
.MID_Q(6),
.BIAS_DW(16),
.Q(13),
.DIN_DW(16), 
.DOUT_DW(16), 
.DATA_CHANNEL(1), 
.ACC_WIDTH(40), 
.WW(16))
u_vector_muladd_89_4(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_89), 
.op_weight(op_weight[319:256]),
.op_bias(op_bias[79:64]),
.op_dout(op_dout_89_4));

vector_muladd #(.CPF(4),
.RELU(1),
.BN(0),
.DIN_Q(6),
.DOUT_Q(6),
.BN_SCALE_Q(6),
.BN_BIAS_Q(6),
.MID_Q(6),
.BIAS_DW(16),
.Q(13),
.DIN_DW(16), 
.DOUT_DW(16), 
.DATA_CHANNEL(1), 
.ACC_WIDTH(40), 
.WW(16))
u_vector_muladd_89_5(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_89), 
.op_weight(op_weight[383:320]),
.op_bias(op_bias[95:80]),
.op_dout(op_dout_89_5));

vector_muladd #(.CPF(4),
.RELU(1),
.BN(0),
.DIN_Q(6),
.DOUT_Q(6),
.BN_SCALE_Q(6),
.BN_BIAS_Q(6),
.MID_Q(6),
.BIAS_DW(16),
.Q(13),
.DIN_DW(16), 
.DOUT_DW(16), 
.DATA_CHANNEL(1), 
.ACC_WIDTH(40), 
.WW(16))
u_vector_muladd_89_6(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_89), 
.op_weight(op_weight[447:384]),
.op_bias(op_bias[111:96]),
.op_dout(op_dout_89_6));

vector_muladd #(.CPF(4),
.RELU(1),
.BN(0),
.DIN_Q(6),
.DOUT_Q(6),
.BN_SCALE_Q(6),
.BN_BIAS_Q(6),
.MID_Q(6),
.BIAS_DW(16),
.Q(13),
.DIN_DW(16), 
.DOUT_DW(16), 
.DATA_CHANNEL(1), 
.ACC_WIDTH(40), 
.WW(16))
u_vector_muladd_89_7(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_89), 
.op_weight(op_weight[511:448]),
.op_bias(op_bias[127:112]),
.op_dout(op_dout_89_7));

vector_muladd #(.CPF(4),
.RELU(1),
.BN(0),
.DIN_Q(6),
.DOUT_Q(6),
.BN_SCALE_Q(6),
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
.op_weight(op_weight[63:0]),
.op_bias(op_bias[15:0]),
.op_dout(op_dout_90_0));

vector_muladd #(.CPF(4),
.RELU(1),
.BN(0),
.DIN_Q(6),
.DOUT_Q(6),
.BN_SCALE_Q(6),
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
.op_weight(op_weight[127:64]),
.op_bias(op_bias[31:16]),
.op_dout(op_dout_90_1));

vector_muladd #(.CPF(4),
.RELU(1),
.BN(0),
.DIN_Q(6),
.DOUT_Q(6),
.BN_SCALE_Q(6),
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
.op_weight(op_weight[191:128]),
.op_bias(op_bias[47:32]),
.op_dout(op_dout_90_2));

vector_muladd #(.CPF(4),
.RELU(1),
.BN(0),
.DIN_Q(6),
.DOUT_Q(6),
.BN_SCALE_Q(6),
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
.op_weight(op_weight[255:192]),
.op_bias(op_bias[63:48]),
.op_dout(op_dout_90_3));

vector_muladd #(.CPF(4),
.RELU(1),
.BN(0),
.DIN_Q(6),
.DOUT_Q(6),
.BN_SCALE_Q(6),
.BN_BIAS_Q(6),
.MID_Q(6),
.BIAS_DW(16),
.Q(13),
.DIN_DW(16), 
.DOUT_DW(16), 
.DATA_CHANNEL(1), 
.ACC_WIDTH(40), 
.WW(16))
u_vector_muladd_90_4(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_90), 
.op_weight(op_weight[319:256]),
.op_bias(op_bias[79:64]),
.op_dout(op_dout_90_4));

vector_muladd #(.CPF(4),
.RELU(1),
.BN(0),
.DIN_Q(6),
.DOUT_Q(6),
.BN_SCALE_Q(6),
.BN_BIAS_Q(6),
.MID_Q(6),
.BIAS_DW(16),
.Q(13),
.DIN_DW(16), 
.DOUT_DW(16), 
.DATA_CHANNEL(1), 
.ACC_WIDTH(40), 
.WW(16))
u_vector_muladd_90_5(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_90), 
.op_weight(op_weight[383:320]),
.op_bias(op_bias[95:80]),
.op_dout(op_dout_90_5));

vector_muladd #(.CPF(4),
.RELU(1),
.BN(0),
.DIN_Q(6),
.DOUT_Q(6),
.BN_SCALE_Q(6),
.BN_BIAS_Q(6),
.MID_Q(6),
.BIAS_DW(16),
.Q(13),
.DIN_DW(16), 
.DOUT_DW(16), 
.DATA_CHANNEL(1), 
.ACC_WIDTH(40), 
.WW(16))
u_vector_muladd_90_6(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_90), 
.op_weight(op_weight[447:384]),
.op_bias(op_bias[111:96]),
.op_dout(op_dout_90_6));

vector_muladd #(.CPF(4),
.RELU(1),
.BN(0),
.DIN_Q(6),
.DOUT_Q(6),
.BN_SCALE_Q(6),
.BN_BIAS_Q(6),
.MID_Q(6),
.BIAS_DW(16),
.Q(13),
.DIN_DW(16), 
.DOUT_DW(16), 
.DATA_CHANNEL(1), 
.ACC_WIDTH(40), 
.WW(16))
u_vector_muladd_90_7(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_90), 
.op_weight(op_weight[511:448]),
.op_bias(op_bias[127:112]),
.op_dout(op_dout_90_7));

vector_muladd #(.CPF(4),
.RELU(1),
.BN(0),
.DIN_Q(6),
.DOUT_Q(6),
.BN_SCALE_Q(6),
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
.op_weight(op_weight[63:0]),
.op_bias(op_bias[15:0]),
.op_dout(op_dout_91_0));

vector_muladd #(.CPF(4),
.RELU(1),
.BN(0),
.DIN_Q(6),
.DOUT_Q(6),
.BN_SCALE_Q(6),
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
.op_weight(op_weight[127:64]),
.op_bias(op_bias[31:16]),
.op_dout(op_dout_91_1));

vector_muladd #(.CPF(4),
.RELU(1),
.BN(0),
.DIN_Q(6),
.DOUT_Q(6),
.BN_SCALE_Q(6),
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
.op_weight(op_weight[191:128]),
.op_bias(op_bias[47:32]),
.op_dout(op_dout_91_2));

vector_muladd #(.CPF(4),
.RELU(1),
.BN(0),
.DIN_Q(6),
.DOUT_Q(6),
.BN_SCALE_Q(6),
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
.op_weight(op_weight[255:192]),
.op_bias(op_bias[63:48]),
.op_dout(op_dout_91_3));

vector_muladd #(.CPF(4),
.RELU(1),
.BN(0),
.DIN_Q(6),
.DOUT_Q(6),
.BN_SCALE_Q(6),
.BN_BIAS_Q(6),
.MID_Q(6),
.BIAS_DW(16),
.Q(13),
.DIN_DW(16), 
.DOUT_DW(16), 
.DATA_CHANNEL(1), 
.ACC_WIDTH(40), 
.WW(16))
u_vector_muladd_91_4(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_91), 
.op_weight(op_weight[319:256]),
.op_bias(op_bias[79:64]),
.op_dout(op_dout_91_4));

vector_muladd #(.CPF(4),
.RELU(1),
.BN(0),
.DIN_Q(6),
.DOUT_Q(6),
.BN_SCALE_Q(6),
.BN_BIAS_Q(6),
.MID_Q(6),
.BIAS_DW(16),
.Q(13),
.DIN_DW(16), 
.DOUT_DW(16), 
.DATA_CHANNEL(1), 
.ACC_WIDTH(40), 
.WW(16))
u_vector_muladd_91_5(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_91), 
.op_weight(op_weight[383:320]),
.op_bias(op_bias[95:80]),
.op_dout(op_dout_91_5));

vector_muladd #(.CPF(4),
.RELU(1),
.BN(0),
.DIN_Q(6),
.DOUT_Q(6),
.BN_SCALE_Q(6),
.BN_BIAS_Q(6),
.MID_Q(6),
.BIAS_DW(16),
.Q(13),
.DIN_DW(16), 
.DOUT_DW(16), 
.DATA_CHANNEL(1), 
.ACC_WIDTH(40), 
.WW(16))
u_vector_muladd_91_6(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_91), 
.op_weight(op_weight[447:384]),
.op_bias(op_bias[111:96]),
.op_dout(op_dout_91_6));

vector_muladd #(.CPF(4),
.RELU(1),
.BN(0),
.DIN_Q(6),
.DOUT_Q(6),
.BN_SCALE_Q(6),
.BN_BIAS_Q(6),
.MID_Q(6),
.BIAS_DW(16),
.Q(13),
.DIN_DW(16), 
.DOUT_DW(16), 
.DATA_CHANNEL(1), 
.ACC_WIDTH(40), 
.WW(16))
u_vector_muladd_91_7(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_91), 
.op_weight(op_weight[511:448]),
.op_bias(op_bias[127:112]),
.op_dout(op_dout_91_7));

vector_muladd #(.CPF(4),
.RELU(1),
.BN(0),
.DIN_Q(6),
.DOUT_Q(6),
.BN_SCALE_Q(6),
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
.op_weight(op_weight[63:0]),
.op_bias(op_bias[15:0]),
.op_dout(op_dout_92_0));

vector_muladd #(.CPF(4),
.RELU(1),
.BN(0),
.DIN_Q(6),
.DOUT_Q(6),
.BN_SCALE_Q(6),
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
.op_weight(op_weight[127:64]),
.op_bias(op_bias[31:16]),
.op_dout(op_dout_92_1));

vector_muladd #(.CPF(4),
.RELU(1),
.BN(0),
.DIN_Q(6),
.DOUT_Q(6),
.BN_SCALE_Q(6),
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
.op_weight(op_weight[191:128]),
.op_bias(op_bias[47:32]),
.op_dout(op_dout_92_2));

vector_muladd #(.CPF(4),
.RELU(1),
.BN(0),
.DIN_Q(6),
.DOUT_Q(6),
.BN_SCALE_Q(6),
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
.op_weight(op_weight[255:192]),
.op_bias(op_bias[63:48]),
.op_dout(op_dout_92_3));

vector_muladd #(.CPF(4),
.RELU(1),
.BN(0),
.DIN_Q(6),
.DOUT_Q(6),
.BN_SCALE_Q(6),
.BN_BIAS_Q(6),
.MID_Q(6),
.BIAS_DW(16),
.Q(13),
.DIN_DW(16), 
.DOUT_DW(16), 
.DATA_CHANNEL(1), 
.ACC_WIDTH(40), 
.WW(16))
u_vector_muladd_92_4(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_92), 
.op_weight(op_weight[319:256]),
.op_bias(op_bias[79:64]),
.op_dout(op_dout_92_4));

vector_muladd #(.CPF(4),
.RELU(1),
.BN(0),
.DIN_Q(6),
.DOUT_Q(6),
.BN_SCALE_Q(6),
.BN_BIAS_Q(6),
.MID_Q(6),
.BIAS_DW(16),
.Q(13),
.DIN_DW(16), 
.DOUT_DW(16), 
.DATA_CHANNEL(1), 
.ACC_WIDTH(40), 
.WW(16))
u_vector_muladd_92_5(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_92), 
.op_weight(op_weight[383:320]),
.op_bias(op_bias[95:80]),
.op_dout(op_dout_92_5));

vector_muladd #(.CPF(4),
.RELU(1),
.BN(0),
.DIN_Q(6),
.DOUT_Q(6),
.BN_SCALE_Q(6),
.BN_BIAS_Q(6),
.MID_Q(6),
.BIAS_DW(16),
.Q(13),
.DIN_DW(16), 
.DOUT_DW(16), 
.DATA_CHANNEL(1), 
.ACC_WIDTH(40), 
.WW(16))
u_vector_muladd_92_6(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_92), 
.op_weight(op_weight[447:384]),
.op_bias(op_bias[111:96]),
.op_dout(op_dout_92_6));

vector_muladd #(.CPF(4),
.RELU(1),
.BN(0),
.DIN_Q(6),
.DOUT_Q(6),
.BN_SCALE_Q(6),
.BN_BIAS_Q(6),
.MID_Q(6),
.BIAS_DW(16),
.Q(13),
.DIN_DW(16), 
.DOUT_DW(16), 
.DATA_CHANNEL(1), 
.ACC_WIDTH(40), 
.WW(16))
u_vector_muladd_92_7(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_92), 
.op_weight(op_weight[511:448]),
.op_bias(op_bias[127:112]),
.op_dout(op_dout_92_7));

assign blob_dout = {op_dout_92_7,op_dout_92_6,op_dout_92_5,op_dout_92_4,op_dout_92_3,op_dout_92_2,op_dout_92_1,op_dout_92_0,op_dout_91_7,op_dout_91_6,op_dout_91_5,op_dout_91_4,op_dout_91_3,op_dout_91_2,op_dout_91_1,op_dout_91_0,op_dout_90_7,op_dout_90_6,op_dout_90_5,op_dout_90_4,op_dout_90_3,op_dout_90_2,op_dout_90_1,op_dout_90_0,op_dout_89_7,op_dout_89_6,op_dout_89_5,op_dout_89_4,op_dout_89_3,op_dout_89_2,op_dout_89_1,op_dout_89_0,op_dout_88_7,op_dout_88_6,op_dout_88_5,op_dout_88_4,op_dout_88_3,op_dout_88_2,op_dout_88_1,op_dout_88_0,op_dout_87_7,op_dout_87_6,op_dout_87_5,op_dout_87_4,op_dout_87_3,op_dout_87_2,op_dout_87_1,op_dout_87_0,op_dout_86_7,op_dout_86_6,op_dout_86_5,op_dout_86_4,op_dout_86_3,op_dout_86_2,op_dout_86_1,op_dout_86_0,op_dout_85_7,op_dout_85_6,op_dout_85_5,op_dout_85_4,op_dout_85_3,op_dout_85_2,op_dout_85_1,op_dout_85_0,op_dout_84_7,op_dout_84_6,op_dout_84_5,op_dout_84_4,op_dout_84_3,op_dout_84_2,op_dout_84_1,op_dout_84_0,op_dout_83_7,op_dout_83_6,op_dout_83_5,op_dout_83_4,op_dout_83_3,op_dout_83_2,op_dout_83_1,op_dout_83_0,op_dout_82_7,op_dout_82_6,op_dout_82_5,op_dout_82_4,op_dout_82_3,op_dout_82_2,op_dout_82_1,op_dout_82_0,op_dout_81_7,op_dout_81_6,op_dout_81_5,op_dout_81_4,op_dout_81_3,op_dout_81_2,op_dout_81_1,op_dout_81_0,op_dout_80_7,op_dout_80_6,op_dout_80_5,op_dout_80_4,op_dout_80_3,op_dout_80_2,op_dout_80_1,op_dout_80_0,op_dout_79_7,op_dout_79_6,op_dout_79_5,op_dout_79_4,op_dout_79_3,op_dout_79_2,op_dout_79_1,op_dout_79_0,op_dout_78_7,op_dout_78_6,op_dout_78_5,op_dout_78_4,op_dout_78_3,op_dout_78_2,op_dout_78_1,op_dout_78_0,op_dout_77_7,op_dout_77_6,op_dout_77_5,op_dout_77_4,op_dout_77_3,op_dout_77_2,op_dout_77_1,op_dout_77_0,op_dout_76_7,op_dout_76_6,op_dout_76_5,op_dout_76_4,op_dout_76_3,op_dout_76_2,op_dout_76_1,op_dout_76_0,op_dout_75_7,op_dout_75_6,op_dout_75_5,op_dout_75_4,op_dout_75_3,op_dout_75_2,op_dout_75_1,op_dout_75_0,op_dout_74_7,op_dout_74_6,op_dout_74_5,op_dout_74_4,op_dout_74_3,op_dout_74_2,op_dout_74_1,op_dout_74_0,op_dout_73_7,op_dout_73_6,op_dout_73_5,op_dout_73_4,op_dout_73_3,op_dout_73_2,op_dout_73_1,op_dout_73_0,op_dout_72_7,op_dout_72_6,op_dout_72_5,op_dout_72_4,op_dout_72_3,op_dout_72_2,op_dout_72_1,op_dout_72_0,op_dout_71_7,op_dout_71_6,op_dout_71_5,op_dout_71_4,op_dout_71_3,op_dout_71_2,op_dout_71_1,op_dout_71_0,op_dout_70_7,op_dout_70_6,op_dout_70_5,op_dout_70_4,op_dout_70_3,op_dout_70_2,op_dout_70_1,op_dout_70_0,op_dout_69_7,op_dout_69_6,op_dout_69_5,op_dout_69_4,op_dout_69_3,op_dout_69_2,op_dout_69_1,op_dout_69_0,op_dout_68_7,op_dout_68_6,op_dout_68_5,op_dout_68_4,op_dout_68_3,op_dout_68_2,op_dout_68_1,op_dout_68_0,op_dout_67_7,op_dout_67_6,op_dout_67_5,op_dout_67_4,op_dout_67_3,op_dout_67_2,op_dout_67_1,op_dout_67_0,op_dout_66_7,op_dout_66_6,op_dout_66_5,op_dout_66_4,op_dout_66_3,op_dout_66_2,op_dout_66_1,op_dout_66_0,op_dout_65_7,op_dout_65_6,op_dout_65_5,op_dout_65_4,op_dout_65_3,op_dout_65_2,op_dout_65_1,op_dout_65_0,op_dout_64_7,op_dout_64_6,op_dout_64_5,op_dout_64_4,op_dout_64_3,op_dout_64_2,op_dout_64_1,op_dout_64_0,op_dout_63_7,op_dout_63_6,op_dout_63_5,op_dout_63_4,op_dout_63_3,op_dout_63_2,op_dout_63_1,op_dout_63_0,op_dout_62_7,op_dout_62_6,op_dout_62_5,op_dout_62_4,op_dout_62_3,op_dout_62_2,op_dout_62_1,op_dout_62_0,op_dout_61_7,op_dout_61_6,op_dout_61_5,op_dout_61_4,op_dout_61_3,op_dout_61_2,op_dout_61_1,op_dout_61_0,op_dout_60_7,op_dout_60_6,op_dout_60_5,op_dout_60_4,op_dout_60_3,op_dout_60_2,op_dout_60_1,op_dout_60_0,op_dout_59_7,op_dout_59_6,op_dout_59_5,op_dout_59_4,op_dout_59_3,op_dout_59_2,op_dout_59_1,op_dout_59_0,op_dout_58_7,op_dout_58_6,op_dout_58_5,op_dout_58_4,op_dout_58_3,op_dout_58_2,op_dout_58_1,op_dout_58_0,op_dout_57_7,op_dout_57_6,op_dout_57_5,op_dout_57_4,op_dout_57_3,op_dout_57_2,op_dout_57_1,op_dout_57_0,op_dout_56_7,op_dout_56_6,op_dout_56_5,op_dout_56_4,op_dout_56_3,op_dout_56_2,op_dout_56_1,op_dout_56_0,op_dout_55_7,op_dout_55_6,op_dout_55_5,op_dout_55_4,op_dout_55_3,op_dout_55_2,op_dout_55_1,op_dout_55_0,op_dout_54_7,op_dout_54_6,op_dout_54_5,op_dout_54_4,op_dout_54_3,op_dout_54_2,op_dout_54_1,op_dout_54_0,op_dout_53_7,op_dout_53_6,op_dout_53_5,op_dout_53_4,op_dout_53_3,op_dout_53_2,op_dout_53_1,op_dout_53_0,op_dout_52_7,op_dout_52_6,op_dout_52_5,op_dout_52_4,op_dout_52_3,op_dout_52_2,op_dout_52_1,op_dout_52_0,op_dout_51_7,op_dout_51_6,op_dout_51_5,op_dout_51_4,op_dout_51_3,op_dout_51_2,op_dout_51_1,op_dout_51_0,op_dout_50_7,op_dout_50_6,op_dout_50_5,op_dout_50_4,op_dout_50_3,op_dout_50_2,op_dout_50_1,op_dout_50_0,op_dout_49_7,op_dout_49_6,op_dout_49_5,op_dout_49_4,op_dout_49_3,op_dout_49_2,op_dout_49_1,op_dout_49_0,op_dout_48_7,op_dout_48_6,op_dout_48_5,op_dout_48_4,op_dout_48_3,op_dout_48_2,op_dout_48_1,op_dout_48_0,op_dout_47_7,op_dout_47_6,op_dout_47_5,op_dout_47_4,op_dout_47_3,op_dout_47_2,op_dout_47_1,op_dout_47_0,op_dout_46_7,op_dout_46_6,op_dout_46_5,op_dout_46_4,op_dout_46_3,op_dout_46_2,op_dout_46_1,op_dout_46_0,op_dout_45_7,op_dout_45_6,op_dout_45_5,op_dout_45_4,op_dout_45_3,op_dout_45_2,op_dout_45_1,op_dout_45_0,op_dout_44_7,op_dout_44_6,op_dout_44_5,op_dout_44_4,op_dout_44_3,op_dout_44_2,op_dout_44_1,op_dout_44_0,op_dout_43_7,op_dout_43_6,op_dout_43_5,op_dout_43_4,op_dout_43_3,op_dout_43_2,op_dout_43_1,op_dout_43_0,op_dout_42_7,op_dout_42_6,op_dout_42_5,op_dout_42_4,op_dout_42_3,op_dout_42_2,op_dout_42_1,op_dout_42_0,op_dout_41_7,op_dout_41_6,op_dout_41_5,op_dout_41_4,op_dout_41_3,op_dout_41_2,op_dout_41_1,op_dout_41_0,op_dout_40_7,op_dout_40_6,op_dout_40_5,op_dout_40_4,op_dout_40_3,op_dout_40_2,op_dout_40_1,op_dout_40_0,op_dout_39_7,op_dout_39_6,op_dout_39_5,op_dout_39_4,op_dout_39_3,op_dout_39_2,op_dout_39_1,op_dout_39_0,op_dout_38_7,op_dout_38_6,op_dout_38_5,op_dout_38_4,op_dout_38_3,op_dout_38_2,op_dout_38_1,op_dout_38_0,op_dout_37_7,op_dout_37_6,op_dout_37_5,op_dout_37_4,op_dout_37_3,op_dout_37_2,op_dout_37_1,op_dout_37_0,op_dout_36_7,op_dout_36_6,op_dout_36_5,op_dout_36_4,op_dout_36_3,op_dout_36_2,op_dout_36_1,op_dout_36_0,op_dout_35_7,op_dout_35_6,op_dout_35_5,op_dout_35_4,op_dout_35_3,op_dout_35_2,op_dout_35_1,op_dout_35_0,op_dout_34_7,op_dout_34_6,op_dout_34_5,op_dout_34_4,op_dout_34_3,op_dout_34_2,op_dout_34_1,op_dout_34_0,op_dout_33_7,op_dout_33_6,op_dout_33_5,op_dout_33_4,op_dout_33_3,op_dout_33_2,op_dout_33_1,op_dout_33_0,op_dout_32_7,op_dout_32_6,op_dout_32_5,op_dout_32_4,op_dout_32_3,op_dout_32_2,op_dout_32_1,op_dout_32_0,op_dout_31_7,op_dout_31_6,op_dout_31_5,op_dout_31_4,op_dout_31_3,op_dout_31_2,op_dout_31_1,op_dout_31_0,op_dout_30_7,op_dout_30_6,op_dout_30_5,op_dout_30_4,op_dout_30_3,op_dout_30_2,op_dout_30_1,op_dout_30_0,op_dout_29_7,op_dout_29_6,op_dout_29_5,op_dout_29_4,op_dout_29_3,op_dout_29_2,op_dout_29_1,op_dout_29_0,op_dout_28_7,op_dout_28_6,op_dout_28_5,op_dout_28_4,op_dout_28_3,op_dout_28_2,op_dout_28_1,op_dout_28_0,op_dout_27_7,op_dout_27_6,op_dout_27_5,op_dout_27_4,op_dout_27_3,op_dout_27_2,op_dout_27_1,op_dout_27_0,op_dout_26_7,op_dout_26_6,op_dout_26_5,op_dout_26_4,op_dout_26_3,op_dout_26_2,op_dout_26_1,op_dout_26_0,op_dout_25_7,op_dout_25_6,op_dout_25_5,op_dout_25_4,op_dout_25_3,op_dout_25_2,op_dout_25_1,op_dout_25_0,op_dout_24_7,op_dout_24_6,op_dout_24_5,op_dout_24_4,op_dout_24_3,op_dout_24_2,op_dout_24_1,op_dout_24_0,op_dout_23_7,op_dout_23_6,op_dout_23_5,op_dout_23_4,op_dout_23_3,op_dout_23_2,op_dout_23_1,op_dout_23_0,op_dout_22_7,op_dout_22_6,op_dout_22_5,op_dout_22_4,op_dout_22_3,op_dout_22_2,op_dout_22_1,op_dout_22_0,op_dout_21_7,op_dout_21_6,op_dout_21_5,op_dout_21_4,op_dout_21_3,op_dout_21_2,op_dout_21_1,op_dout_21_0,op_dout_20_7,op_dout_20_6,op_dout_20_5,op_dout_20_4,op_dout_20_3,op_dout_20_2,op_dout_20_1,op_dout_20_0,op_dout_19_7,op_dout_19_6,op_dout_19_5,op_dout_19_4,op_dout_19_3,op_dout_19_2,op_dout_19_1,op_dout_19_0,op_dout_18_7,op_dout_18_6,op_dout_18_5,op_dout_18_4,op_dout_18_3,op_dout_18_2,op_dout_18_1,op_dout_18_0,op_dout_17_7,op_dout_17_6,op_dout_17_5,op_dout_17_4,op_dout_17_3,op_dout_17_2,op_dout_17_1,op_dout_17_0,op_dout_16_7,op_dout_16_6,op_dout_16_5,op_dout_16_4,op_dout_16_3,op_dout_16_2,op_dout_16_1,op_dout_16_0,op_dout_15_7,op_dout_15_6,op_dout_15_5,op_dout_15_4,op_dout_15_3,op_dout_15_2,op_dout_15_1,op_dout_15_0,op_dout_14_7,op_dout_14_6,op_dout_14_5,op_dout_14_4,op_dout_14_3,op_dout_14_2,op_dout_14_1,op_dout_14_0,op_dout_13_7,op_dout_13_6,op_dout_13_5,op_dout_13_4,op_dout_13_3,op_dout_13_2,op_dout_13_1,op_dout_13_0,op_dout_12_7,op_dout_12_6,op_dout_12_5,op_dout_12_4,op_dout_12_3,op_dout_12_2,op_dout_12_1,op_dout_12_0,op_dout_11_7,op_dout_11_6,op_dout_11_5,op_dout_11_4,op_dout_11_3,op_dout_11_2,op_dout_11_1,op_dout_11_0,op_dout_10_7,op_dout_10_6,op_dout_10_5,op_dout_10_4,op_dout_10_3,op_dout_10_2,op_dout_10_1,op_dout_10_0,op_dout_9_7,op_dout_9_6,op_dout_9_5,op_dout_9_4,op_dout_9_3,op_dout_9_2,op_dout_9_1,op_dout_9_0,op_dout_8_7,op_dout_8_6,op_dout_8_5,op_dout_8_4,op_dout_8_3,op_dout_8_2,op_dout_8_1,op_dout_8_0,op_dout_7_7,op_dout_7_6,op_dout_7_5,op_dout_7_4,op_dout_7_3,op_dout_7_2,op_dout_7_1,op_dout_7_0,op_dout_6_7,op_dout_6_6,op_dout_6_5,op_dout_6_4,op_dout_6_3,op_dout_6_2,op_dout_6_1,op_dout_6_0,op_dout_5_7,op_dout_5_6,op_dout_5_5,op_dout_5_4,op_dout_5_3,op_dout_5_2,op_dout_5_1,op_dout_5_0,op_dout_4_7,op_dout_4_6,op_dout_4_5,op_dout_4_4,op_dout_4_3,op_dout_4_2,op_dout_4_1,op_dout_4_0,op_dout_3_7,op_dout_3_6,op_dout_3_5,op_dout_3_4,op_dout_3_3,op_dout_3_2,op_dout_3_1,op_dout_3_0,op_dout_2_7,op_dout_2_6,op_dout_2_5,op_dout_2_4,op_dout_2_3,op_dout_2_2,op_dout_2_1,op_dout_2_0,op_dout_1_7,op_dout_1_6,op_dout_1_5,op_dout_1_4,op_dout_1_3,op_dout_1_2,op_dout_1_1,op_dout_1_0,op_dout_0_7,op_dout_0_6,op_dout_0_5,op_dout_0_4,op_dout_0_3,op_dout_0_2,op_dout_0_1,op_dout_0_0};

endmodule
