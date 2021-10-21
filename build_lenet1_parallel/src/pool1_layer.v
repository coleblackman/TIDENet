module pool1_layer(
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
output[5951:0]	blob_dout;
input	blob_din_eop;
input[5951:0]	blob_din;


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
wire[15:0]	op_dout_41_3;
wire[63:0]	op_data_90;
wire[15:0]	op_dout_41_0;
wire[15:0]	op_dout_76_1;
wire[15:0]	op_dout_76_0;
wire[15:0]	op_dout_76_3;
wire[15:0]	op_dout_76_2;
wire[15:0]	op_dout_74_3;
wire[15:0]	op_dout_74_2;
wire[15:0]	op_dout_74_1;
wire[15:0]	op_dout_74_0;
wire[63:0]	op_data_4;
wire[63:0]	op_data_5;
wire[63:0]	op_data_6;
wire[63:0]	op_data_7;
wire[15:0]	op_dout_18_1;
wire[63:0]	op_data_1;
wire[63:0]	op_data_2;
wire[63:0]	op_data_3;
wire[63:0]	op_data_8;
wire[63:0]	op_data_9;
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
wire[63:0]	op_data_34;
wire[63:0]	op_data_35;
wire[63:0]	op_data_36;
wire[63:0]	op_data_37;
wire[63:0]	op_data_38;
wire[63:0]	op_data_39;
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
wire[63:0]	op_data_69;
wire[63:0]	op_data_68;
wire[63:0]	op_data_63;
wire[15:0]	op_dout_45_2;
wire[63:0]	op_data_61;
wire[63:0]	op_data_60;
wire[63:0]	op_data_67;
wire[63:0]	op_data_66;
wire[63:0]	op_data_65;
wire[63:0]	op_data_64;
wire[15:0]	op_dout_82_0;
wire[15:0]	op_dout_82_1;
wire[15:0]	op_dout_82_2;
wire[15:0]	op_dout_82_3;
wire[6:0]	rm_rd_addr;
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
wire[63:0]	op_data_92;
wire[15:0]	op_dout_41_2;
wire[15:0]	op_dout_41_1;
wire[63:0]	op_data_91;
wire[15:0]	op_dout_61_1;
wire[15:0]	op_dout_61_0;
wire[15:0]	op_dout_61_3;
wire[15:0]	op_dout_61_2;
wire[15:0]	op_dout_63_3;
wire[15:0]	op_dout_63_2;
wire[15:0]	op_dout_63_1;
wire[15:0]	op_dout_63_0;
wire[63:0]	op_data_0;
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
wire[15:0]	op_dout_42_0;
wire[15:0]	op_dout_42_1;
wire[15:0]	op_dout_42_2;
wire[15:0]	op_dout_42_3;
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
wire[15:0]	op_dout_68_3;
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
wire[15:0]	op_dout_62_1;
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
wire[63:0]	op_data_85;
wire[63:0]	op_data_84;
wire[63:0]	op_data_87;
wire[63:0]	op_data_86;
wire[63:0]	op_data_81;
wire[63:0]	op_data_80;
wire[63:0]	op_data_83;
wire[63:0]	op_data_82;
wire[15:0]	op_dout_37_0;
wire[63:0]	op_data_88;
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
wire[15:0]	op_dout_35_2;
wire[15:0]	op_dout_35_3;
wire[15:0]	op_dout_35_0;
wire[15:0]	op_dout_35_1;
wire[5951:0]	blob_dout_fifo;
wire[15:0]	op_dout_92_0;
wire[15:0]	op_dout_39_2;
wire[15:0]	op_dout_39_3;
wire[15:0]	op_dout_39_0;
wire[15:0]	op_dout_39_1;
wire[15:0]	op_dout_32_1;
wire[15:0]	op_dout_24_0;
wire[15:0]	op_dout_56_2;
wire	blob_dout_en_fifo;
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
wire[63:0]	op_data_41;
wire[63:0]	op_data_40;
wire[63:0]	op_data_43;
wire[63:0]	op_data_42;
wire[63:0]	op_data_45;
wire[63:0]	op_data_44;
wire[63:0]	op_data_47;
wire[63:0]	op_data_46;
wire[63:0]	op_data_49;
wire[63:0]	op_data_89;
wire[15:0]	op_dout_37_1;
wire[15:0]	op_dout_58_1;
wire[15:0]	op_dout_13_3;
wire[15:0]	op_dout_13_0;
wire[15:0]	op_dout_58_2;
wire	blob_dout_eop_fifo;
wire[15:0]	op_dout_55_0;
wire[15:0]	op_dout_55_1;
wire[15:0]	op_dout_55_2;
wire[15:0]	op_dout_55_3;
wire[15:0]	op_dout_45_3;
wire[15:0]	op_dout_26_0;
wire[63:0]	op_data_62;
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
wire[63:0]	op_data_31;
wire[15:0]	op_dout_51_0;
wire[15:0]	op_dout_51_1;
wire[15:0]	op_dout_51_2;
wire[15:0]	op_dout_51_3;
wire[63:0]	op_data_32;
wire[63:0]	op_data_33;
wire[15:0]	op_dout_53_2;
wire[15:0]	op_dout_53_3;
wire[15:0]	op_dout_53_0;
wire[15:0]	op_dout_53_1;
wire[15:0]	op_dout_73_0;
wire[15:0]	op_dout_73_1;
wire[15:0]	op_dout_73_2;
wire[15:0]	op_dout_73_3;
wire[15:0]	op_dout_84_0;
wire[15:0]	op_dout_71_2;
wire[15:0]	op_dout_71_3;
wire[15:0]	op_dout_71_0;
wire[15:0]	op_dout_71_1;
wire[15:0]	op_dout_2_1;
wire[15:0]	op_dout_2_0;
wire[15:0]	op_dout_2_3;
wire[15:0]	op_dout_2_2;
wire[63:0]	op_data_48;
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
wire[63:0]	op_data_30;
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


controller_v2_a #(
.DB_W_IN (24),
.DB_H_IN (24),
.DB_C_IN (4),
.DB_W_OUT (12),
.DB_H_OUT (12),
.DB_C_OUT (4),
.WB_W (2),
.WB_H (2),
.WB_K (4),
.RM_WR_ADDR_WIDTH (7),
.RM_WR_NUM_PER_CHANNEL (1),
.RM_WR_STRIDE (1),
.RM_RING_LENGTH (4),
.RM_RD_PHY_ADDR_JUMP (2),
.RM_RD_ADDR_WIDTH (7),
.KPF (4),
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

pool1_rm_ram u_pool1_rm_ram_0(
.clka(clk),
.wea(rm_wr_en),
.addra(rm_wr_addr),
.dina(blob_din[63:0]),
.clkb(clk),
.addrb(rm_rd_addr),
.doutb(op_data_0));

pool1_rm_ram u_pool1_rm_ram_1(
.clka(clk),
.wea(rm_wr_en),
.addra(rm_wr_addr),
.dina(blob_din[127:64]),
.clkb(clk),
.addrb(rm_rd_addr),
.doutb(op_data_1));

pool1_rm_ram u_pool1_rm_ram_2(
.clka(clk),
.wea(rm_wr_en),
.addra(rm_wr_addr),
.dina(blob_din[191:128]),
.clkb(clk),
.addrb(rm_rd_addr),
.doutb(op_data_2));

pool1_rm_ram u_pool1_rm_ram_3(
.clka(clk),
.wea(rm_wr_en),
.addra(rm_wr_addr),
.dina(blob_din[255:192]),
.clkb(clk),
.addrb(rm_rd_addr),
.doutb(op_data_3));

pool1_rm_ram u_pool1_rm_ram_4(
.clka(clk),
.wea(rm_wr_en),
.addra(rm_wr_addr),
.dina(blob_din[319:256]),
.clkb(clk),
.addrb(rm_rd_addr),
.doutb(op_data_4));

pool1_rm_ram u_pool1_rm_ram_5(
.clka(clk),
.wea(rm_wr_en),
.addra(rm_wr_addr),
.dina(blob_din[383:320]),
.clkb(clk),
.addrb(rm_rd_addr),
.doutb(op_data_5));

pool1_rm_ram u_pool1_rm_ram_6(
.clka(clk),
.wea(rm_wr_en),
.addra(rm_wr_addr),
.dina(blob_din[447:384]),
.clkb(clk),
.addrb(rm_rd_addr),
.doutb(op_data_6));

pool1_rm_ram u_pool1_rm_ram_7(
.clka(clk),
.wea(rm_wr_en),
.addra(rm_wr_addr),
.dina(blob_din[511:448]),
.clkb(clk),
.addrb(rm_rd_addr),
.doutb(op_data_7));

pool1_rm_ram u_pool1_rm_ram_8(
.clka(clk),
.wea(rm_wr_en),
.addra(rm_wr_addr),
.dina(blob_din[575:512]),
.clkb(clk),
.addrb(rm_rd_addr),
.doutb(op_data_8));

pool1_rm_ram u_pool1_rm_ram_9(
.clka(clk),
.wea(rm_wr_en),
.addra(rm_wr_addr),
.dina(blob_din[639:576]),
.clkb(clk),
.addrb(rm_rd_addr),
.doutb(op_data_9));

pool1_rm_ram u_pool1_rm_ram_10(
.clka(clk),
.wea(rm_wr_en),
.addra(rm_wr_addr),
.dina(blob_din[703:640]),
.clkb(clk),
.addrb(rm_rd_addr),
.doutb(op_data_10));

pool1_rm_ram u_pool1_rm_ram_11(
.clka(clk),
.wea(rm_wr_en),
.addra(rm_wr_addr),
.dina(blob_din[767:704]),
.clkb(clk),
.addrb(rm_rd_addr),
.doutb(op_data_11));

pool1_rm_ram u_pool1_rm_ram_12(
.clka(clk),
.wea(rm_wr_en),
.addra(rm_wr_addr),
.dina(blob_din[831:768]),
.clkb(clk),
.addrb(rm_rd_addr),
.doutb(op_data_12));

pool1_rm_ram u_pool1_rm_ram_13(
.clka(clk),
.wea(rm_wr_en),
.addra(rm_wr_addr),
.dina(blob_din[895:832]),
.clkb(clk),
.addrb(rm_rd_addr),
.doutb(op_data_13));

pool1_rm_ram u_pool1_rm_ram_14(
.clka(clk),
.wea(rm_wr_en),
.addra(rm_wr_addr),
.dina(blob_din[959:896]),
.clkb(clk),
.addrb(rm_rd_addr),
.doutb(op_data_14));

pool1_rm_ram u_pool1_rm_ram_15(
.clka(clk),
.wea(rm_wr_en),
.addra(rm_wr_addr),
.dina(blob_din[1023:960]),
.clkb(clk),
.addrb(rm_rd_addr),
.doutb(op_data_15));

pool1_rm_ram u_pool1_rm_ram_16(
.clka(clk),
.wea(rm_wr_en),
.addra(rm_wr_addr),
.dina(blob_din[1087:1024]),
.clkb(clk),
.addrb(rm_rd_addr),
.doutb(op_data_16));

pool1_rm_ram u_pool1_rm_ram_17(
.clka(clk),
.wea(rm_wr_en),
.addra(rm_wr_addr),
.dina(blob_din[1151:1088]),
.clkb(clk),
.addrb(rm_rd_addr),
.doutb(op_data_17));

pool1_rm_ram u_pool1_rm_ram_18(
.clka(clk),
.wea(rm_wr_en),
.addra(rm_wr_addr),
.dina(blob_din[1215:1152]),
.clkb(clk),
.addrb(rm_rd_addr),
.doutb(op_data_18));

pool1_rm_ram u_pool1_rm_ram_19(
.clka(clk),
.wea(rm_wr_en),
.addra(rm_wr_addr),
.dina(blob_din[1279:1216]),
.clkb(clk),
.addrb(rm_rd_addr),
.doutb(op_data_19));

pool1_rm_ram u_pool1_rm_ram_20(
.clka(clk),
.wea(rm_wr_en),
.addra(rm_wr_addr),
.dina(blob_din[1343:1280]),
.clkb(clk),
.addrb(rm_rd_addr),
.doutb(op_data_20));

pool1_rm_ram u_pool1_rm_ram_21(
.clka(clk),
.wea(rm_wr_en),
.addra(rm_wr_addr),
.dina(blob_din[1407:1344]),
.clkb(clk),
.addrb(rm_rd_addr),
.doutb(op_data_21));

pool1_rm_ram u_pool1_rm_ram_22(
.clka(clk),
.wea(rm_wr_en),
.addra(rm_wr_addr),
.dina(blob_din[1471:1408]),
.clkb(clk),
.addrb(rm_rd_addr),
.doutb(op_data_22));

pool1_rm_ram u_pool1_rm_ram_23(
.clka(clk),
.wea(rm_wr_en),
.addra(rm_wr_addr),
.dina(blob_din[1535:1472]),
.clkb(clk),
.addrb(rm_rd_addr),
.doutb(op_data_23));

pool1_rm_ram u_pool1_rm_ram_24(
.clka(clk),
.wea(rm_wr_en),
.addra(rm_wr_addr),
.dina(blob_din[1599:1536]),
.clkb(clk),
.addrb(rm_rd_addr),
.doutb(op_data_24));

pool1_rm_ram u_pool1_rm_ram_25(
.clka(clk),
.wea(rm_wr_en),
.addra(rm_wr_addr),
.dina(blob_din[1663:1600]),
.clkb(clk),
.addrb(rm_rd_addr),
.doutb(op_data_25));

pool1_rm_ram u_pool1_rm_ram_26(
.clka(clk),
.wea(rm_wr_en),
.addra(rm_wr_addr),
.dina(blob_din[1727:1664]),
.clkb(clk),
.addrb(rm_rd_addr),
.doutb(op_data_26));

pool1_rm_ram u_pool1_rm_ram_27(
.clka(clk),
.wea(rm_wr_en),
.addra(rm_wr_addr),
.dina(blob_din[1791:1728]),
.clkb(clk),
.addrb(rm_rd_addr),
.doutb(op_data_27));

pool1_rm_ram u_pool1_rm_ram_28(
.clka(clk),
.wea(rm_wr_en),
.addra(rm_wr_addr),
.dina(blob_din[1855:1792]),
.clkb(clk),
.addrb(rm_rd_addr),
.doutb(op_data_28));

pool1_rm_ram u_pool1_rm_ram_29(
.clka(clk),
.wea(rm_wr_en),
.addra(rm_wr_addr),
.dina(blob_din[1919:1856]),
.clkb(clk),
.addrb(rm_rd_addr),
.doutb(op_data_29));

pool1_rm_ram u_pool1_rm_ram_30(
.clka(clk),
.wea(rm_wr_en),
.addra(rm_wr_addr),
.dina(blob_din[1983:1920]),
.clkb(clk),
.addrb(rm_rd_addr),
.doutb(op_data_30));

pool1_rm_ram u_pool1_rm_ram_31(
.clka(clk),
.wea(rm_wr_en),
.addra(rm_wr_addr),
.dina(blob_din[2047:1984]),
.clkb(clk),
.addrb(rm_rd_addr),
.doutb(op_data_31));

pool1_rm_ram u_pool1_rm_ram_32(
.clka(clk),
.wea(rm_wr_en),
.addra(rm_wr_addr),
.dina(blob_din[2111:2048]),
.clkb(clk),
.addrb(rm_rd_addr),
.doutb(op_data_32));

pool1_rm_ram u_pool1_rm_ram_33(
.clka(clk),
.wea(rm_wr_en),
.addra(rm_wr_addr),
.dina(blob_din[2175:2112]),
.clkb(clk),
.addrb(rm_rd_addr),
.doutb(op_data_33));

pool1_rm_ram u_pool1_rm_ram_34(
.clka(clk),
.wea(rm_wr_en),
.addra(rm_wr_addr),
.dina(blob_din[2239:2176]),
.clkb(clk),
.addrb(rm_rd_addr),
.doutb(op_data_34));

pool1_rm_ram u_pool1_rm_ram_35(
.clka(clk),
.wea(rm_wr_en),
.addra(rm_wr_addr),
.dina(blob_din[2303:2240]),
.clkb(clk),
.addrb(rm_rd_addr),
.doutb(op_data_35));

pool1_rm_ram u_pool1_rm_ram_36(
.clka(clk),
.wea(rm_wr_en),
.addra(rm_wr_addr),
.dina(blob_din[2367:2304]),
.clkb(clk),
.addrb(rm_rd_addr),
.doutb(op_data_36));

pool1_rm_ram u_pool1_rm_ram_37(
.clka(clk),
.wea(rm_wr_en),
.addra(rm_wr_addr),
.dina(blob_din[2431:2368]),
.clkb(clk),
.addrb(rm_rd_addr),
.doutb(op_data_37));

pool1_rm_ram u_pool1_rm_ram_38(
.clka(clk),
.wea(rm_wr_en),
.addra(rm_wr_addr),
.dina(blob_din[2495:2432]),
.clkb(clk),
.addrb(rm_rd_addr),
.doutb(op_data_38));

pool1_rm_ram u_pool1_rm_ram_39(
.clka(clk),
.wea(rm_wr_en),
.addra(rm_wr_addr),
.dina(blob_din[2559:2496]),
.clkb(clk),
.addrb(rm_rd_addr),
.doutb(op_data_39));

pool1_rm_ram u_pool1_rm_ram_40(
.clka(clk),
.wea(rm_wr_en),
.addra(rm_wr_addr),
.dina(blob_din[2623:2560]),
.clkb(clk),
.addrb(rm_rd_addr),
.doutb(op_data_40));

pool1_rm_ram u_pool1_rm_ram_41(
.clka(clk),
.wea(rm_wr_en),
.addra(rm_wr_addr),
.dina(blob_din[2687:2624]),
.clkb(clk),
.addrb(rm_rd_addr),
.doutb(op_data_41));

pool1_rm_ram u_pool1_rm_ram_42(
.clka(clk),
.wea(rm_wr_en),
.addra(rm_wr_addr),
.dina(blob_din[2751:2688]),
.clkb(clk),
.addrb(rm_rd_addr),
.doutb(op_data_42));

pool1_rm_ram u_pool1_rm_ram_43(
.clka(clk),
.wea(rm_wr_en),
.addra(rm_wr_addr),
.dina(blob_din[2815:2752]),
.clkb(clk),
.addrb(rm_rd_addr),
.doutb(op_data_43));

pool1_rm_ram u_pool1_rm_ram_44(
.clka(clk),
.wea(rm_wr_en),
.addra(rm_wr_addr),
.dina(blob_din[2879:2816]),
.clkb(clk),
.addrb(rm_rd_addr),
.doutb(op_data_44));

pool1_rm_ram u_pool1_rm_ram_45(
.clka(clk),
.wea(rm_wr_en),
.addra(rm_wr_addr),
.dina(blob_din[2943:2880]),
.clkb(clk),
.addrb(rm_rd_addr),
.doutb(op_data_45));

pool1_rm_ram u_pool1_rm_ram_46(
.clka(clk),
.wea(rm_wr_en),
.addra(rm_wr_addr),
.dina(blob_din[3007:2944]),
.clkb(clk),
.addrb(rm_rd_addr),
.doutb(op_data_46));

pool1_rm_ram u_pool1_rm_ram_47(
.clka(clk),
.wea(rm_wr_en),
.addra(rm_wr_addr),
.dina(blob_din[3071:3008]),
.clkb(clk),
.addrb(rm_rd_addr),
.doutb(op_data_47));

pool1_rm_ram u_pool1_rm_ram_48(
.clka(clk),
.wea(rm_wr_en),
.addra(rm_wr_addr),
.dina(blob_din[3135:3072]),
.clkb(clk),
.addrb(rm_rd_addr),
.doutb(op_data_48));

pool1_rm_ram u_pool1_rm_ram_49(
.clka(clk),
.wea(rm_wr_en),
.addra(rm_wr_addr),
.dina(blob_din[3199:3136]),
.clkb(clk),
.addrb(rm_rd_addr),
.doutb(op_data_49));

pool1_rm_ram u_pool1_rm_ram_50(
.clka(clk),
.wea(rm_wr_en),
.addra(rm_wr_addr),
.dina(blob_din[3263:3200]),
.clkb(clk),
.addrb(rm_rd_addr),
.doutb(op_data_50));

pool1_rm_ram u_pool1_rm_ram_51(
.clka(clk),
.wea(rm_wr_en),
.addra(rm_wr_addr),
.dina(blob_din[3327:3264]),
.clkb(clk),
.addrb(rm_rd_addr),
.doutb(op_data_51));

pool1_rm_ram u_pool1_rm_ram_52(
.clka(clk),
.wea(rm_wr_en),
.addra(rm_wr_addr),
.dina(blob_din[3391:3328]),
.clkb(clk),
.addrb(rm_rd_addr),
.doutb(op_data_52));

pool1_rm_ram u_pool1_rm_ram_53(
.clka(clk),
.wea(rm_wr_en),
.addra(rm_wr_addr),
.dina(blob_din[3455:3392]),
.clkb(clk),
.addrb(rm_rd_addr),
.doutb(op_data_53));

pool1_rm_ram u_pool1_rm_ram_54(
.clka(clk),
.wea(rm_wr_en),
.addra(rm_wr_addr),
.dina(blob_din[3519:3456]),
.clkb(clk),
.addrb(rm_rd_addr),
.doutb(op_data_54));

pool1_rm_ram u_pool1_rm_ram_55(
.clka(clk),
.wea(rm_wr_en),
.addra(rm_wr_addr),
.dina(blob_din[3583:3520]),
.clkb(clk),
.addrb(rm_rd_addr),
.doutb(op_data_55));

pool1_rm_ram u_pool1_rm_ram_56(
.clka(clk),
.wea(rm_wr_en),
.addra(rm_wr_addr),
.dina(blob_din[3647:3584]),
.clkb(clk),
.addrb(rm_rd_addr),
.doutb(op_data_56));

pool1_rm_ram u_pool1_rm_ram_57(
.clka(clk),
.wea(rm_wr_en),
.addra(rm_wr_addr),
.dina(blob_din[3711:3648]),
.clkb(clk),
.addrb(rm_rd_addr),
.doutb(op_data_57));

pool1_rm_ram u_pool1_rm_ram_58(
.clka(clk),
.wea(rm_wr_en),
.addra(rm_wr_addr),
.dina(blob_din[3775:3712]),
.clkb(clk),
.addrb(rm_rd_addr),
.doutb(op_data_58));

pool1_rm_ram u_pool1_rm_ram_59(
.clka(clk),
.wea(rm_wr_en),
.addra(rm_wr_addr),
.dina(blob_din[3839:3776]),
.clkb(clk),
.addrb(rm_rd_addr),
.doutb(op_data_59));

pool1_rm_ram u_pool1_rm_ram_60(
.clka(clk),
.wea(rm_wr_en),
.addra(rm_wr_addr),
.dina(blob_din[3903:3840]),
.clkb(clk),
.addrb(rm_rd_addr),
.doutb(op_data_60));

pool1_rm_ram u_pool1_rm_ram_61(
.clka(clk),
.wea(rm_wr_en),
.addra(rm_wr_addr),
.dina(blob_din[3967:3904]),
.clkb(clk),
.addrb(rm_rd_addr),
.doutb(op_data_61));

pool1_rm_ram u_pool1_rm_ram_62(
.clka(clk),
.wea(rm_wr_en),
.addra(rm_wr_addr),
.dina(blob_din[4031:3968]),
.clkb(clk),
.addrb(rm_rd_addr),
.doutb(op_data_62));

pool1_rm_ram u_pool1_rm_ram_63(
.clka(clk),
.wea(rm_wr_en),
.addra(rm_wr_addr),
.dina(blob_din[4095:4032]),
.clkb(clk),
.addrb(rm_rd_addr),
.doutb(op_data_63));

pool1_rm_ram u_pool1_rm_ram_64(
.clka(clk),
.wea(rm_wr_en),
.addra(rm_wr_addr),
.dina(blob_din[4159:4096]),
.clkb(clk),
.addrb(rm_rd_addr),
.doutb(op_data_64));

pool1_rm_ram u_pool1_rm_ram_65(
.clka(clk),
.wea(rm_wr_en),
.addra(rm_wr_addr),
.dina(blob_din[4223:4160]),
.clkb(clk),
.addrb(rm_rd_addr),
.doutb(op_data_65));

pool1_rm_ram u_pool1_rm_ram_66(
.clka(clk),
.wea(rm_wr_en),
.addra(rm_wr_addr),
.dina(blob_din[4287:4224]),
.clkb(clk),
.addrb(rm_rd_addr),
.doutb(op_data_66));

pool1_rm_ram u_pool1_rm_ram_67(
.clka(clk),
.wea(rm_wr_en),
.addra(rm_wr_addr),
.dina(blob_din[4351:4288]),
.clkb(clk),
.addrb(rm_rd_addr),
.doutb(op_data_67));

pool1_rm_ram u_pool1_rm_ram_68(
.clka(clk),
.wea(rm_wr_en),
.addra(rm_wr_addr),
.dina(blob_din[4415:4352]),
.clkb(clk),
.addrb(rm_rd_addr),
.doutb(op_data_68));

pool1_rm_ram u_pool1_rm_ram_69(
.clka(clk),
.wea(rm_wr_en),
.addra(rm_wr_addr),
.dina(blob_din[4479:4416]),
.clkb(clk),
.addrb(rm_rd_addr),
.doutb(op_data_69));

pool1_rm_ram u_pool1_rm_ram_70(
.clka(clk),
.wea(rm_wr_en),
.addra(rm_wr_addr),
.dina(blob_din[4543:4480]),
.clkb(clk),
.addrb(rm_rd_addr),
.doutb(op_data_70));

pool1_rm_ram u_pool1_rm_ram_71(
.clka(clk),
.wea(rm_wr_en),
.addra(rm_wr_addr),
.dina(blob_din[4607:4544]),
.clkb(clk),
.addrb(rm_rd_addr),
.doutb(op_data_71));

pool1_rm_ram u_pool1_rm_ram_72(
.clka(clk),
.wea(rm_wr_en),
.addra(rm_wr_addr),
.dina(blob_din[4671:4608]),
.clkb(clk),
.addrb(rm_rd_addr),
.doutb(op_data_72));

pool1_rm_ram u_pool1_rm_ram_73(
.clka(clk),
.wea(rm_wr_en),
.addra(rm_wr_addr),
.dina(blob_din[4735:4672]),
.clkb(clk),
.addrb(rm_rd_addr),
.doutb(op_data_73));

pool1_rm_ram u_pool1_rm_ram_74(
.clka(clk),
.wea(rm_wr_en),
.addra(rm_wr_addr),
.dina(blob_din[4799:4736]),
.clkb(clk),
.addrb(rm_rd_addr),
.doutb(op_data_74));

pool1_rm_ram u_pool1_rm_ram_75(
.clka(clk),
.wea(rm_wr_en),
.addra(rm_wr_addr),
.dina(blob_din[4863:4800]),
.clkb(clk),
.addrb(rm_rd_addr),
.doutb(op_data_75));

pool1_rm_ram u_pool1_rm_ram_76(
.clka(clk),
.wea(rm_wr_en),
.addra(rm_wr_addr),
.dina(blob_din[4927:4864]),
.clkb(clk),
.addrb(rm_rd_addr),
.doutb(op_data_76));

pool1_rm_ram u_pool1_rm_ram_77(
.clka(clk),
.wea(rm_wr_en),
.addra(rm_wr_addr),
.dina(blob_din[4991:4928]),
.clkb(clk),
.addrb(rm_rd_addr),
.doutb(op_data_77));

pool1_rm_ram u_pool1_rm_ram_78(
.clka(clk),
.wea(rm_wr_en),
.addra(rm_wr_addr),
.dina(blob_din[5055:4992]),
.clkb(clk),
.addrb(rm_rd_addr),
.doutb(op_data_78));

pool1_rm_ram u_pool1_rm_ram_79(
.clka(clk),
.wea(rm_wr_en),
.addra(rm_wr_addr),
.dina(blob_din[5119:5056]),
.clkb(clk),
.addrb(rm_rd_addr),
.doutb(op_data_79));

pool1_rm_ram u_pool1_rm_ram_80(
.clka(clk),
.wea(rm_wr_en),
.addra(rm_wr_addr),
.dina(blob_din[5183:5120]),
.clkb(clk),
.addrb(rm_rd_addr),
.doutb(op_data_80));

pool1_rm_ram u_pool1_rm_ram_81(
.clka(clk),
.wea(rm_wr_en),
.addra(rm_wr_addr),
.dina(blob_din[5247:5184]),
.clkb(clk),
.addrb(rm_rd_addr),
.doutb(op_data_81));

pool1_rm_ram u_pool1_rm_ram_82(
.clka(clk),
.wea(rm_wr_en),
.addra(rm_wr_addr),
.dina(blob_din[5311:5248]),
.clkb(clk),
.addrb(rm_rd_addr),
.doutb(op_data_82));

pool1_rm_ram u_pool1_rm_ram_83(
.clka(clk),
.wea(rm_wr_en),
.addra(rm_wr_addr),
.dina(blob_din[5375:5312]),
.clkb(clk),
.addrb(rm_rd_addr),
.doutb(op_data_83));

pool1_rm_ram u_pool1_rm_ram_84(
.clka(clk),
.wea(rm_wr_en),
.addra(rm_wr_addr),
.dina(blob_din[5439:5376]),
.clkb(clk),
.addrb(rm_rd_addr),
.doutb(op_data_84));

pool1_rm_ram u_pool1_rm_ram_85(
.clka(clk),
.wea(rm_wr_en),
.addra(rm_wr_addr),
.dina(blob_din[5503:5440]),
.clkb(clk),
.addrb(rm_rd_addr),
.doutb(op_data_85));

pool1_rm_ram u_pool1_rm_ram_86(
.clka(clk),
.wea(rm_wr_en),
.addra(rm_wr_addr),
.dina(blob_din[5567:5504]),
.clkb(clk),
.addrb(rm_rd_addr),
.doutb(op_data_86));

pool1_rm_ram u_pool1_rm_ram_87(
.clka(clk),
.wea(rm_wr_en),
.addra(rm_wr_addr),
.dina(blob_din[5631:5568]),
.clkb(clk),
.addrb(rm_rd_addr),
.doutb(op_data_87));

pool1_rm_ram u_pool1_rm_ram_88(
.clka(clk),
.wea(rm_wr_en),
.addra(rm_wr_addr),
.dina(blob_din[5695:5632]),
.clkb(clk),
.addrb(rm_rd_addr),
.doutb(op_data_88));

pool1_rm_ram u_pool1_rm_ram_89(
.clka(clk),
.wea(rm_wr_en),
.addra(rm_wr_addr),
.dina(blob_din[5759:5696]),
.clkb(clk),
.addrb(rm_rd_addr),
.doutb(op_data_89));

pool1_rm_ram u_pool1_rm_ram_90(
.clka(clk),
.wea(rm_wr_en),
.addra(rm_wr_addr),
.dina(blob_din[5823:5760]),
.clkb(clk),
.addrb(rm_rd_addr),
.doutb(op_data_90));

pool1_rm_ram u_pool1_rm_ram_91(
.clka(clk),
.wea(rm_wr_en),
.addra(rm_wr_addr),
.dina(blob_din[5887:5824]),
.clkb(clk),
.addrb(rm_rd_addr),
.doutb(op_data_91));

pool1_rm_ram u_pool1_rm_ram_92(
.clka(clk),
.wea(rm_wr_en),
.addra(rm_wr_addr),
.dina(blob_din[5951:5888]),
.clkb(clk),
.addrb(rm_rd_addr),
.doutb(op_data_92));

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
u_vector_max_1_0(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_1[15:0]),
.op_dout(op_dout_1_0));

vector_max #(.RELU(0),
.DIN_W(16),
.Q(13))
u_vector_max_1_1(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_1[31:16]),
.op_dout(op_dout_1_1));

vector_max #(.RELU(0),
.DIN_W(16),
.Q(13))
u_vector_max_1_2(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_1[47:32]),
.op_dout(op_dout_1_2));

vector_max #(.RELU(0),
.DIN_W(16),
.Q(13))
u_vector_max_1_3(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_1[63:48]),
.op_dout(op_dout_1_3));

vector_max #(.RELU(0),
.DIN_W(16),
.Q(13))
u_vector_max_2_0(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_2[15:0]),
.op_dout(op_dout_2_0));

vector_max #(.RELU(0),
.DIN_W(16),
.Q(13))
u_vector_max_2_1(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_2[31:16]),
.op_dout(op_dout_2_1));

vector_max #(.RELU(0),
.DIN_W(16),
.Q(13))
u_vector_max_2_2(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_2[47:32]),
.op_dout(op_dout_2_2));

vector_max #(.RELU(0),
.DIN_W(16),
.Q(13))
u_vector_max_2_3(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_2[63:48]),
.op_dout(op_dout_2_3));

vector_max #(.RELU(0),
.DIN_W(16),
.Q(13))
u_vector_max_3_0(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_3[15:0]),
.op_dout(op_dout_3_0));

vector_max #(.RELU(0),
.DIN_W(16),
.Q(13))
u_vector_max_3_1(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_3[31:16]),
.op_dout(op_dout_3_1));

vector_max #(.RELU(0),
.DIN_W(16),
.Q(13))
u_vector_max_3_2(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_3[47:32]),
.op_dout(op_dout_3_2));

vector_max #(.RELU(0),
.DIN_W(16),
.Q(13))
u_vector_max_3_3(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_3[63:48]),
.op_dout(op_dout_3_3));

vector_max #(.RELU(0),
.DIN_W(16),
.Q(13))
u_vector_max_4_0(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_4[15:0]),
.op_dout(op_dout_4_0));

vector_max #(.RELU(0),
.DIN_W(16),
.Q(13))
u_vector_max_4_1(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_4[31:16]),
.op_dout(op_dout_4_1));

vector_max #(.RELU(0),
.DIN_W(16),
.Q(13))
u_vector_max_4_2(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_4[47:32]),
.op_dout(op_dout_4_2));

vector_max #(.RELU(0),
.DIN_W(16),
.Q(13))
u_vector_max_4_3(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_4[63:48]),
.op_dout(op_dout_4_3));

vector_max #(.RELU(0),
.DIN_W(16),
.Q(13))
u_vector_max_5_0(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_5[15:0]),
.op_dout(op_dout_5_0));

vector_max #(.RELU(0),
.DIN_W(16),
.Q(13))
u_vector_max_5_1(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_5[31:16]),
.op_dout(op_dout_5_1));

vector_max #(.RELU(0),
.DIN_W(16),
.Q(13))
u_vector_max_5_2(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_5[47:32]),
.op_dout(op_dout_5_2));

vector_max #(.RELU(0),
.DIN_W(16),
.Q(13))
u_vector_max_5_3(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_5[63:48]),
.op_dout(op_dout_5_3));

vector_max #(.RELU(0),
.DIN_W(16),
.Q(13))
u_vector_max_6_0(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_6[15:0]),
.op_dout(op_dout_6_0));

vector_max #(.RELU(0),
.DIN_W(16),
.Q(13))
u_vector_max_6_1(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_6[31:16]),
.op_dout(op_dout_6_1));

vector_max #(.RELU(0),
.DIN_W(16),
.Q(13))
u_vector_max_6_2(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_6[47:32]),
.op_dout(op_dout_6_2));

vector_max #(.RELU(0),
.DIN_W(16),
.Q(13))
u_vector_max_6_3(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_6[63:48]),
.op_dout(op_dout_6_3));

vector_max #(.RELU(0),
.DIN_W(16),
.Q(13))
u_vector_max_7_0(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_7[15:0]),
.op_dout(op_dout_7_0));

vector_max #(.RELU(0),
.DIN_W(16),
.Q(13))
u_vector_max_7_1(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_7[31:16]),
.op_dout(op_dout_7_1));

vector_max #(.RELU(0),
.DIN_W(16),
.Q(13))
u_vector_max_7_2(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_7[47:32]),
.op_dout(op_dout_7_2));

vector_max #(.RELU(0),
.DIN_W(16),
.Q(13))
u_vector_max_7_3(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_7[63:48]),
.op_dout(op_dout_7_3));

vector_max #(.RELU(0),
.DIN_W(16),
.Q(13))
u_vector_max_8_0(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_8[15:0]),
.op_dout(op_dout_8_0));

vector_max #(.RELU(0),
.DIN_W(16),
.Q(13))
u_vector_max_8_1(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_8[31:16]),
.op_dout(op_dout_8_1));

vector_max #(.RELU(0),
.DIN_W(16),
.Q(13))
u_vector_max_8_2(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_8[47:32]),
.op_dout(op_dout_8_2));

vector_max #(.RELU(0),
.DIN_W(16),
.Q(13))
u_vector_max_8_3(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_8[63:48]),
.op_dout(op_dout_8_3));

vector_max #(.RELU(0),
.DIN_W(16),
.Q(13))
u_vector_max_9_0(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_9[15:0]),
.op_dout(op_dout_9_0));

vector_max #(.RELU(0),
.DIN_W(16),
.Q(13))
u_vector_max_9_1(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_9[31:16]),
.op_dout(op_dout_9_1));

vector_max #(.RELU(0),
.DIN_W(16),
.Q(13))
u_vector_max_9_2(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_9[47:32]),
.op_dout(op_dout_9_2));

vector_max #(.RELU(0),
.DIN_W(16),
.Q(13))
u_vector_max_9_3(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_9[63:48]),
.op_dout(op_dout_9_3));

vector_max #(.RELU(0),
.DIN_W(16),
.Q(13))
u_vector_max_10_0(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_10[15:0]),
.op_dout(op_dout_10_0));

vector_max #(.RELU(0),
.DIN_W(16),
.Q(13))
u_vector_max_10_1(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_10[31:16]),
.op_dout(op_dout_10_1));

vector_max #(.RELU(0),
.DIN_W(16),
.Q(13))
u_vector_max_10_2(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_10[47:32]),
.op_dout(op_dout_10_2));

vector_max #(.RELU(0),
.DIN_W(16),
.Q(13))
u_vector_max_10_3(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_10[63:48]),
.op_dout(op_dout_10_3));

vector_max #(.RELU(0),
.DIN_W(16),
.Q(13))
u_vector_max_11_0(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_11[15:0]),
.op_dout(op_dout_11_0));

vector_max #(.RELU(0),
.DIN_W(16),
.Q(13))
u_vector_max_11_1(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_11[31:16]),
.op_dout(op_dout_11_1));

vector_max #(.RELU(0),
.DIN_W(16),
.Q(13))
u_vector_max_11_2(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_11[47:32]),
.op_dout(op_dout_11_2));

vector_max #(.RELU(0),
.DIN_W(16),
.Q(13))
u_vector_max_11_3(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_11[63:48]),
.op_dout(op_dout_11_3));

vector_max #(.RELU(0),
.DIN_W(16),
.Q(13))
u_vector_max_12_0(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_12[15:0]),
.op_dout(op_dout_12_0));

vector_max #(.RELU(0),
.DIN_W(16),
.Q(13))
u_vector_max_12_1(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_12[31:16]),
.op_dout(op_dout_12_1));

vector_max #(.RELU(0),
.DIN_W(16),
.Q(13))
u_vector_max_12_2(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_12[47:32]),
.op_dout(op_dout_12_2));

vector_max #(.RELU(0),
.DIN_W(16),
.Q(13))
u_vector_max_12_3(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_12[63:48]),
.op_dout(op_dout_12_3));

vector_max #(.RELU(0),
.DIN_W(16),
.Q(13))
u_vector_max_13_0(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_13[15:0]),
.op_dout(op_dout_13_0));

vector_max #(.RELU(0),
.DIN_W(16),
.Q(13))
u_vector_max_13_1(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_13[31:16]),
.op_dout(op_dout_13_1));

vector_max #(.RELU(0),
.DIN_W(16),
.Q(13))
u_vector_max_13_2(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_13[47:32]),
.op_dout(op_dout_13_2));

vector_max #(.RELU(0),
.DIN_W(16),
.Q(13))
u_vector_max_13_3(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_13[63:48]),
.op_dout(op_dout_13_3));

vector_max #(.RELU(0),
.DIN_W(16),
.Q(13))
u_vector_max_14_0(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_14[15:0]),
.op_dout(op_dout_14_0));

vector_max #(.RELU(0),
.DIN_W(16),
.Q(13))
u_vector_max_14_1(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_14[31:16]),
.op_dout(op_dout_14_1));

vector_max #(.RELU(0),
.DIN_W(16),
.Q(13))
u_vector_max_14_2(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_14[47:32]),
.op_dout(op_dout_14_2));

vector_max #(.RELU(0),
.DIN_W(16),
.Q(13))
u_vector_max_14_3(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_14[63:48]),
.op_dout(op_dout_14_3));

vector_max #(.RELU(0),
.DIN_W(16),
.Q(13))
u_vector_max_15_0(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_15[15:0]),
.op_dout(op_dout_15_0));

vector_max #(.RELU(0),
.DIN_W(16),
.Q(13))
u_vector_max_15_1(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_15[31:16]),
.op_dout(op_dout_15_1));

vector_max #(.RELU(0),
.DIN_W(16),
.Q(13))
u_vector_max_15_2(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_15[47:32]),
.op_dout(op_dout_15_2));

vector_max #(.RELU(0),
.DIN_W(16),
.Q(13))
u_vector_max_15_3(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_15[63:48]),
.op_dout(op_dout_15_3));

vector_max #(.RELU(0),
.DIN_W(16),
.Q(13))
u_vector_max_16_0(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_16[15:0]),
.op_dout(op_dout_16_0));

vector_max #(.RELU(0),
.DIN_W(16),
.Q(13))
u_vector_max_16_1(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_16[31:16]),
.op_dout(op_dout_16_1));

vector_max #(.RELU(0),
.DIN_W(16),
.Q(13))
u_vector_max_16_2(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_16[47:32]),
.op_dout(op_dout_16_2));

vector_max #(.RELU(0),
.DIN_W(16),
.Q(13))
u_vector_max_16_3(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_16[63:48]),
.op_dout(op_dout_16_3));

vector_max #(.RELU(0),
.DIN_W(16),
.Q(13))
u_vector_max_17_0(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_17[15:0]),
.op_dout(op_dout_17_0));

vector_max #(.RELU(0),
.DIN_W(16),
.Q(13))
u_vector_max_17_1(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_17[31:16]),
.op_dout(op_dout_17_1));

vector_max #(.RELU(0),
.DIN_W(16),
.Q(13))
u_vector_max_17_2(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_17[47:32]),
.op_dout(op_dout_17_2));

vector_max #(.RELU(0),
.DIN_W(16),
.Q(13))
u_vector_max_17_3(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_17[63:48]),
.op_dout(op_dout_17_3));

vector_max #(.RELU(0),
.DIN_W(16),
.Q(13))
u_vector_max_18_0(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_18[15:0]),
.op_dout(op_dout_18_0));

vector_max #(.RELU(0),
.DIN_W(16),
.Q(13))
u_vector_max_18_1(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_18[31:16]),
.op_dout(op_dout_18_1));

vector_max #(.RELU(0),
.DIN_W(16),
.Q(13))
u_vector_max_18_2(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_18[47:32]),
.op_dout(op_dout_18_2));

vector_max #(.RELU(0),
.DIN_W(16),
.Q(13))
u_vector_max_18_3(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_18[63:48]),
.op_dout(op_dout_18_3));

vector_max #(.RELU(0),
.DIN_W(16),
.Q(13))
u_vector_max_19_0(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_19[15:0]),
.op_dout(op_dout_19_0));

vector_max #(.RELU(0),
.DIN_W(16),
.Q(13))
u_vector_max_19_1(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_19[31:16]),
.op_dout(op_dout_19_1));

vector_max #(.RELU(0),
.DIN_W(16),
.Q(13))
u_vector_max_19_2(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_19[47:32]),
.op_dout(op_dout_19_2));

vector_max #(.RELU(0),
.DIN_W(16),
.Q(13))
u_vector_max_19_3(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_19[63:48]),
.op_dout(op_dout_19_3));

vector_max #(.RELU(0),
.DIN_W(16),
.Q(13))
u_vector_max_20_0(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_20[15:0]),
.op_dout(op_dout_20_0));

vector_max #(.RELU(0),
.DIN_W(16),
.Q(13))
u_vector_max_20_1(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_20[31:16]),
.op_dout(op_dout_20_1));

vector_max #(.RELU(0),
.DIN_W(16),
.Q(13))
u_vector_max_20_2(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_20[47:32]),
.op_dout(op_dout_20_2));

vector_max #(.RELU(0),
.DIN_W(16),
.Q(13))
u_vector_max_20_3(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_20[63:48]),
.op_dout(op_dout_20_3));

vector_max #(.RELU(0),
.DIN_W(16),
.Q(13))
u_vector_max_21_0(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_21[15:0]),
.op_dout(op_dout_21_0));

vector_max #(.RELU(0),
.DIN_W(16),
.Q(13))
u_vector_max_21_1(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_21[31:16]),
.op_dout(op_dout_21_1));

vector_max #(.RELU(0),
.DIN_W(16),
.Q(13))
u_vector_max_21_2(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_21[47:32]),
.op_dout(op_dout_21_2));

vector_max #(.RELU(0),
.DIN_W(16),
.Q(13))
u_vector_max_21_3(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_21[63:48]),
.op_dout(op_dout_21_3));

vector_max #(.RELU(0),
.DIN_W(16),
.Q(13))
u_vector_max_22_0(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_22[15:0]),
.op_dout(op_dout_22_0));

vector_max #(.RELU(0),
.DIN_W(16),
.Q(13))
u_vector_max_22_1(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_22[31:16]),
.op_dout(op_dout_22_1));

vector_max #(.RELU(0),
.DIN_W(16),
.Q(13))
u_vector_max_22_2(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_22[47:32]),
.op_dout(op_dout_22_2));

vector_max #(.RELU(0),
.DIN_W(16),
.Q(13))
u_vector_max_22_3(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_22[63:48]),
.op_dout(op_dout_22_3));

vector_max #(.RELU(0),
.DIN_W(16),
.Q(13))
u_vector_max_23_0(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_23[15:0]),
.op_dout(op_dout_23_0));

vector_max #(.RELU(0),
.DIN_W(16),
.Q(13))
u_vector_max_23_1(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_23[31:16]),
.op_dout(op_dout_23_1));

vector_max #(.RELU(0),
.DIN_W(16),
.Q(13))
u_vector_max_23_2(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_23[47:32]),
.op_dout(op_dout_23_2));

vector_max #(.RELU(0),
.DIN_W(16),
.Q(13))
u_vector_max_23_3(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_23[63:48]),
.op_dout(op_dout_23_3));

vector_max #(.RELU(0),
.DIN_W(16),
.Q(13))
u_vector_max_24_0(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_24[15:0]),
.op_dout(op_dout_24_0));

vector_max #(.RELU(0),
.DIN_W(16),
.Q(13))
u_vector_max_24_1(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_24[31:16]),
.op_dout(op_dout_24_1));

vector_max #(.RELU(0),
.DIN_W(16),
.Q(13))
u_vector_max_24_2(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_24[47:32]),
.op_dout(op_dout_24_2));

vector_max #(.RELU(0),
.DIN_W(16),
.Q(13))
u_vector_max_24_3(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_24[63:48]),
.op_dout(op_dout_24_3));

vector_max #(.RELU(0),
.DIN_W(16),
.Q(13))
u_vector_max_25_0(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_25[15:0]),
.op_dout(op_dout_25_0));

vector_max #(.RELU(0),
.DIN_W(16),
.Q(13))
u_vector_max_25_1(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_25[31:16]),
.op_dout(op_dout_25_1));

vector_max #(.RELU(0),
.DIN_W(16),
.Q(13))
u_vector_max_25_2(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_25[47:32]),
.op_dout(op_dout_25_2));

vector_max #(.RELU(0),
.DIN_W(16),
.Q(13))
u_vector_max_25_3(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_25[63:48]),
.op_dout(op_dout_25_3));

vector_max #(.RELU(0),
.DIN_W(16),
.Q(13))
u_vector_max_26_0(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_26[15:0]),
.op_dout(op_dout_26_0));

vector_max #(.RELU(0),
.DIN_W(16),
.Q(13))
u_vector_max_26_1(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_26[31:16]),
.op_dout(op_dout_26_1));

vector_max #(.RELU(0),
.DIN_W(16),
.Q(13))
u_vector_max_26_2(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_26[47:32]),
.op_dout(op_dout_26_2));

vector_max #(.RELU(0),
.DIN_W(16),
.Q(13))
u_vector_max_26_3(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_26[63:48]),
.op_dout(op_dout_26_3));

vector_max #(.RELU(0),
.DIN_W(16),
.Q(13))
u_vector_max_27_0(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_27[15:0]),
.op_dout(op_dout_27_0));

vector_max #(.RELU(0),
.DIN_W(16),
.Q(13))
u_vector_max_27_1(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_27[31:16]),
.op_dout(op_dout_27_1));

vector_max #(.RELU(0),
.DIN_W(16),
.Q(13))
u_vector_max_27_2(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_27[47:32]),
.op_dout(op_dout_27_2));

vector_max #(.RELU(0),
.DIN_W(16),
.Q(13))
u_vector_max_27_3(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_27[63:48]),
.op_dout(op_dout_27_3));

vector_max #(.RELU(0),
.DIN_W(16),
.Q(13))
u_vector_max_28_0(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_28[15:0]),
.op_dout(op_dout_28_0));

vector_max #(.RELU(0),
.DIN_W(16),
.Q(13))
u_vector_max_28_1(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_28[31:16]),
.op_dout(op_dout_28_1));

vector_max #(.RELU(0),
.DIN_W(16),
.Q(13))
u_vector_max_28_2(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_28[47:32]),
.op_dout(op_dout_28_2));

vector_max #(.RELU(0),
.DIN_W(16),
.Q(13))
u_vector_max_28_3(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_28[63:48]),
.op_dout(op_dout_28_3));

vector_max #(.RELU(0),
.DIN_W(16),
.Q(13))
u_vector_max_29_0(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_29[15:0]),
.op_dout(op_dout_29_0));

vector_max #(.RELU(0),
.DIN_W(16),
.Q(13))
u_vector_max_29_1(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_29[31:16]),
.op_dout(op_dout_29_1));

vector_max #(.RELU(0),
.DIN_W(16),
.Q(13))
u_vector_max_29_2(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_29[47:32]),
.op_dout(op_dout_29_2));

vector_max #(.RELU(0),
.DIN_W(16),
.Q(13))
u_vector_max_29_3(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_29[63:48]),
.op_dout(op_dout_29_3));

vector_max #(.RELU(0),
.DIN_W(16),
.Q(13))
u_vector_max_30_0(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_30[15:0]),
.op_dout(op_dout_30_0));

vector_max #(.RELU(0),
.DIN_W(16),
.Q(13))
u_vector_max_30_1(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_30[31:16]),
.op_dout(op_dout_30_1));

vector_max #(.RELU(0),
.DIN_W(16),
.Q(13))
u_vector_max_30_2(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_30[47:32]),
.op_dout(op_dout_30_2));

vector_max #(.RELU(0),
.DIN_W(16),
.Q(13))
u_vector_max_30_3(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_30[63:48]),
.op_dout(op_dout_30_3));

vector_max #(.RELU(0),
.DIN_W(16),
.Q(13))
u_vector_max_31_0(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_31[15:0]),
.op_dout(op_dout_31_0));

vector_max #(.RELU(0),
.DIN_W(16),
.Q(13))
u_vector_max_31_1(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_31[31:16]),
.op_dout(op_dout_31_1));

vector_max #(.RELU(0),
.DIN_W(16),
.Q(13))
u_vector_max_31_2(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_31[47:32]),
.op_dout(op_dout_31_2));

vector_max #(.RELU(0),
.DIN_W(16),
.Q(13))
u_vector_max_31_3(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_31[63:48]),
.op_dout(op_dout_31_3));

vector_max #(.RELU(0),
.DIN_W(16),
.Q(13))
u_vector_max_32_0(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_32[15:0]),
.op_dout(op_dout_32_0));

vector_max #(.RELU(0),
.DIN_W(16),
.Q(13))
u_vector_max_32_1(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_32[31:16]),
.op_dout(op_dout_32_1));

vector_max #(.RELU(0),
.DIN_W(16),
.Q(13))
u_vector_max_32_2(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_32[47:32]),
.op_dout(op_dout_32_2));

vector_max #(.RELU(0),
.DIN_W(16),
.Q(13))
u_vector_max_32_3(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_32[63:48]),
.op_dout(op_dout_32_3));

vector_max #(.RELU(0),
.DIN_W(16),
.Q(13))
u_vector_max_33_0(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_33[15:0]),
.op_dout(op_dout_33_0));

vector_max #(.RELU(0),
.DIN_W(16),
.Q(13))
u_vector_max_33_1(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_33[31:16]),
.op_dout(op_dout_33_1));

vector_max #(.RELU(0),
.DIN_W(16),
.Q(13))
u_vector_max_33_2(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_33[47:32]),
.op_dout(op_dout_33_2));

vector_max #(.RELU(0),
.DIN_W(16),
.Q(13))
u_vector_max_33_3(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_33[63:48]),
.op_dout(op_dout_33_3));

vector_max #(.RELU(0),
.DIN_W(16),
.Q(13))
u_vector_max_34_0(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_34[15:0]),
.op_dout(op_dout_34_0));

vector_max #(.RELU(0),
.DIN_W(16),
.Q(13))
u_vector_max_34_1(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_34[31:16]),
.op_dout(op_dout_34_1));

vector_max #(.RELU(0),
.DIN_W(16),
.Q(13))
u_vector_max_34_2(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_34[47:32]),
.op_dout(op_dout_34_2));

vector_max #(.RELU(0),
.DIN_W(16),
.Q(13))
u_vector_max_34_3(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_34[63:48]),
.op_dout(op_dout_34_3));

vector_max #(.RELU(0),
.DIN_W(16),
.Q(13))
u_vector_max_35_0(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_35[15:0]),
.op_dout(op_dout_35_0));

vector_max #(.RELU(0),
.DIN_W(16),
.Q(13))
u_vector_max_35_1(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_35[31:16]),
.op_dout(op_dout_35_1));

vector_max #(.RELU(0),
.DIN_W(16),
.Q(13))
u_vector_max_35_2(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_35[47:32]),
.op_dout(op_dout_35_2));

vector_max #(.RELU(0),
.DIN_W(16),
.Q(13))
u_vector_max_35_3(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_35[63:48]),
.op_dout(op_dout_35_3));

vector_max #(.RELU(0),
.DIN_W(16),
.Q(13))
u_vector_max_36_0(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_36[15:0]),
.op_dout(op_dout_36_0));

vector_max #(.RELU(0),
.DIN_W(16),
.Q(13))
u_vector_max_36_1(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_36[31:16]),
.op_dout(op_dout_36_1));

vector_max #(.RELU(0),
.DIN_W(16),
.Q(13))
u_vector_max_36_2(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_36[47:32]),
.op_dout(op_dout_36_2));

vector_max #(.RELU(0),
.DIN_W(16),
.Q(13))
u_vector_max_36_3(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_36[63:48]),
.op_dout(op_dout_36_3));

vector_max #(.RELU(0),
.DIN_W(16),
.Q(13))
u_vector_max_37_0(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_37[15:0]),
.op_dout(op_dout_37_0));

vector_max #(.RELU(0),
.DIN_W(16),
.Q(13))
u_vector_max_37_1(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_37[31:16]),
.op_dout(op_dout_37_1));

vector_max #(.RELU(0),
.DIN_W(16),
.Q(13))
u_vector_max_37_2(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_37[47:32]),
.op_dout(op_dout_37_2));

vector_max #(.RELU(0),
.DIN_W(16),
.Q(13))
u_vector_max_37_3(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_37[63:48]),
.op_dout(op_dout_37_3));

vector_max #(.RELU(0),
.DIN_W(16),
.Q(13))
u_vector_max_38_0(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_38[15:0]),
.op_dout(op_dout_38_0));

vector_max #(.RELU(0),
.DIN_W(16),
.Q(13))
u_vector_max_38_1(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_38[31:16]),
.op_dout(op_dout_38_1));

vector_max #(.RELU(0),
.DIN_W(16),
.Q(13))
u_vector_max_38_2(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_38[47:32]),
.op_dout(op_dout_38_2));

vector_max #(.RELU(0),
.DIN_W(16),
.Q(13))
u_vector_max_38_3(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_38[63:48]),
.op_dout(op_dout_38_3));

vector_max #(.RELU(0),
.DIN_W(16),
.Q(13))
u_vector_max_39_0(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_39[15:0]),
.op_dout(op_dout_39_0));

vector_max #(.RELU(0),
.DIN_W(16),
.Q(13))
u_vector_max_39_1(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_39[31:16]),
.op_dout(op_dout_39_1));

vector_max #(.RELU(0),
.DIN_W(16),
.Q(13))
u_vector_max_39_2(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_39[47:32]),
.op_dout(op_dout_39_2));

vector_max #(.RELU(0),
.DIN_W(16),
.Q(13))
u_vector_max_39_3(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_39[63:48]),
.op_dout(op_dout_39_3));

vector_max #(.RELU(0),
.DIN_W(16),
.Q(13))
u_vector_max_40_0(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_40[15:0]),
.op_dout(op_dout_40_0));

vector_max #(.RELU(0),
.DIN_W(16),
.Q(13))
u_vector_max_40_1(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_40[31:16]),
.op_dout(op_dout_40_1));

vector_max #(.RELU(0),
.DIN_W(16),
.Q(13))
u_vector_max_40_2(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_40[47:32]),
.op_dout(op_dout_40_2));

vector_max #(.RELU(0),
.DIN_W(16),
.Q(13))
u_vector_max_40_3(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_40[63:48]),
.op_dout(op_dout_40_3));

vector_max #(.RELU(0),
.DIN_W(16),
.Q(13))
u_vector_max_41_0(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_41[15:0]),
.op_dout(op_dout_41_0));

vector_max #(.RELU(0),
.DIN_W(16),
.Q(13))
u_vector_max_41_1(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_41[31:16]),
.op_dout(op_dout_41_1));

vector_max #(.RELU(0),
.DIN_W(16),
.Q(13))
u_vector_max_41_2(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_41[47:32]),
.op_dout(op_dout_41_2));

vector_max #(.RELU(0),
.DIN_W(16),
.Q(13))
u_vector_max_41_3(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_41[63:48]),
.op_dout(op_dout_41_3));

vector_max #(.RELU(0),
.DIN_W(16),
.Q(13))
u_vector_max_42_0(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_42[15:0]),
.op_dout(op_dout_42_0));

vector_max #(.RELU(0),
.DIN_W(16),
.Q(13))
u_vector_max_42_1(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_42[31:16]),
.op_dout(op_dout_42_1));

vector_max #(.RELU(0),
.DIN_W(16),
.Q(13))
u_vector_max_42_2(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_42[47:32]),
.op_dout(op_dout_42_2));

vector_max #(.RELU(0),
.DIN_W(16),
.Q(13))
u_vector_max_42_3(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_42[63:48]),
.op_dout(op_dout_42_3));

vector_max #(.RELU(0),
.DIN_W(16),
.Q(13))
u_vector_max_43_0(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_43[15:0]),
.op_dout(op_dout_43_0));

vector_max #(.RELU(0),
.DIN_W(16),
.Q(13))
u_vector_max_43_1(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_43[31:16]),
.op_dout(op_dout_43_1));

vector_max #(.RELU(0),
.DIN_W(16),
.Q(13))
u_vector_max_43_2(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_43[47:32]),
.op_dout(op_dout_43_2));

vector_max #(.RELU(0),
.DIN_W(16),
.Q(13))
u_vector_max_43_3(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_43[63:48]),
.op_dout(op_dout_43_3));

vector_max #(.RELU(0),
.DIN_W(16),
.Q(13))
u_vector_max_44_0(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_44[15:0]),
.op_dout(op_dout_44_0));

vector_max #(.RELU(0),
.DIN_W(16),
.Q(13))
u_vector_max_44_1(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_44[31:16]),
.op_dout(op_dout_44_1));

vector_max #(.RELU(0),
.DIN_W(16),
.Q(13))
u_vector_max_44_2(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_44[47:32]),
.op_dout(op_dout_44_2));

vector_max #(.RELU(0),
.DIN_W(16),
.Q(13))
u_vector_max_44_3(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_44[63:48]),
.op_dout(op_dout_44_3));

vector_max #(.RELU(0),
.DIN_W(16),
.Q(13))
u_vector_max_45_0(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_45[15:0]),
.op_dout(op_dout_45_0));

vector_max #(.RELU(0),
.DIN_W(16),
.Q(13))
u_vector_max_45_1(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_45[31:16]),
.op_dout(op_dout_45_1));

vector_max #(.RELU(0),
.DIN_W(16),
.Q(13))
u_vector_max_45_2(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_45[47:32]),
.op_dout(op_dout_45_2));

vector_max #(.RELU(0),
.DIN_W(16),
.Q(13))
u_vector_max_45_3(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_45[63:48]),
.op_dout(op_dout_45_3));

vector_max #(.RELU(0),
.DIN_W(16),
.Q(13))
u_vector_max_46_0(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_46[15:0]),
.op_dout(op_dout_46_0));

vector_max #(.RELU(0),
.DIN_W(16),
.Q(13))
u_vector_max_46_1(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_46[31:16]),
.op_dout(op_dout_46_1));

vector_max #(.RELU(0),
.DIN_W(16),
.Q(13))
u_vector_max_46_2(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_46[47:32]),
.op_dout(op_dout_46_2));

vector_max #(.RELU(0),
.DIN_W(16),
.Q(13))
u_vector_max_46_3(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_46[63:48]),
.op_dout(op_dout_46_3));

vector_max #(.RELU(0),
.DIN_W(16),
.Q(13))
u_vector_max_47_0(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_47[15:0]),
.op_dout(op_dout_47_0));

vector_max #(.RELU(0),
.DIN_W(16),
.Q(13))
u_vector_max_47_1(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_47[31:16]),
.op_dout(op_dout_47_1));

vector_max #(.RELU(0),
.DIN_W(16),
.Q(13))
u_vector_max_47_2(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_47[47:32]),
.op_dout(op_dout_47_2));

vector_max #(.RELU(0),
.DIN_W(16),
.Q(13))
u_vector_max_47_3(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_47[63:48]),
.op_dout(op_dout_47_3));

vector_max #(.RELU(0),
.DIN_W(16),
.Q(13))
u_vector_max_48_0(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_48[15:0]),
.op_dout(op_dout_48_0));

vector_max #(.RELU(0),
.DIN_W(16),
.Q(13))
u_vector_max_48_1(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_48[31:16]),
.op_dout(op_dout_48_1));

vector_max #(.RELU(0),
.DIN_W(16),
.Q(13))
u_vector_max_48_2(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_48[47:32]),
.op_dout(op_dout_48_2));

vector_max #(.RELU(0),
.DIN_W(16),
.Q(13))
u_vector_max_48_3(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_48[63:48]),
.op_dout(op_dout_48_3));

vector_max #(.RELU(0),
.DIN_W(16),
.Q(13))
u_vector_max_49_0(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_49[15:0]),
.op_dout(op_dout_49_0));

vector_max #(.RELU(0),
.DIN_W(16),
.Q(13))
u_vector_max_49_1(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_49[31:16]),
.op_dout(op_dout_49_1));

vector_max #(.RELU(0),
.DIN_W(16),
.Q(13))
u_vector_max_49_2(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_49[47:32]),
.op_dout(op_dout_49_2));

vector_max #(.RELU(0),
.DIN_W(16),
.Q(13))
u_vector_max_49_3(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_49[63:48]),
.op_dout(op_dout_49_3));

vector_max #(.RELU(0),
.DIN_W(16),
.Q(13))
u_vector_max_50_0(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_50[15:0]),
.op_dout(op_dout_50_0));

vector_max #(.RELU(0),
.DIN_W(16),
.Q(13))
u_vector_max_50_1(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_50[31:16]),
.op_dout(op_dout_50_1));

vector_max #(.RELU(0),
.DIN_W(16),
.Q(13))
u_vector_max_50_2(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_50[47:32]),
.op_dout(op_dout_50_2));

vector_max #(.RELU(0),
.DIN_W(16),
.Q(13))
u_vector_max_50_3(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_50[63:48]),
.op_dout(op_dout_50_3));

vector_max #(.RELU(0),
.DIN_W(16),
.Q(13))
u_vector_max_51_0(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_51[15:0]),
.op_dout(op_dout_51_0));

vector_max #(.RELU(0),
.DIN_W(16),
.Q(13))
u_vector_max_51_1(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_51[31:16]),
.op_dout(op_dout_51_1));

vector_max #(.RELU(0),
.DIN_W(16),
.Q(13))
u_vector_max_51_2(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_51[47:32]),
.op_dout(op_dout_51_2));

vector_max #(.RELU(0),
.DIN_W(16),
.Q(13))
u_vector_max_51_3(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_51[63:48]),
.op_dout(op_dout_51_3));

vector_max #(.RELU(0),
.DIN_W(16),
.Q(13))
u_vector_max_52_0(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_52[15:0]),
.op_dout(op_dout_52_0));

vector_max #(.RELU(0),
.DIN_W(16),
.Q(13))
u_vector_max_52_1(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_52[31:16]),
.op_dout(op_dout_52_1));

vector_max #(.RELU(0),
.DIN_W(16),
.Q(13))
u_vector_max_52_2(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_52[47:32]),
.op_dout(op_dout_52_2));

vector_max #(.RELU(0),
.DIN_W(16),
.Q(13))
u_vector_max_52_3(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_52[63:48]),
.op_dout(op_dout_52_3));

vector_max #(.RELU(0),
.DIN_W(16),
.Q(13))
u_vector_max_53_0(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_53[15:0]),
.op_dout(op_dout_53_0));

vector_max #(.RELU(0),
.DIN_W(16),
.Q(13))
u_vector_max_53_1(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_53[31:16]),
.op_dout(op_dout_53_1));

vector_max #(.RELU(0),
.DIN_W(16),
.Q(13))
u_vector_max_53_2(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_53[47:32]),
.op_dout(op_dout_53_2));

vector_max #(.RELU(0),
.DIN_W(16),
.Q(13))
u_vector_max_53_3(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_53[63:48]),
.op_dout(op_dout_53_3));

vector_max #(.RELU(0),
.DIN_W(16),
.Q(13))
u_vector_max_54_0(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_54[15:0]),
.op_dout(op_dout_54_0));

vector_max #(.RELU(0),
.DIN_W(16),
.Q(13))
u_vector_max_54_1(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_54[31:16]),
.op_dout(op_dout_54_1));

vector_max #(.RELU(0),
.DIN_W(16),
.Q(13))
u_vector_max_54_2(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_54[47:32]),
.op_dout(op_dout_54_2));

vector_max #(.RELU(0),
.DIN_W(16),
.Q(13))
u_vector_max_54_3(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_54[63:48]),
.op_dout(op_dout_54_3));

vector_max #(.RELU(0),
.DIN_W(16),
.Q(13))
u_vector_max_55_0(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_55[15:0]),
.op_dout(op_dout_55_0));

vector_max #(.RELU(0),
.DIN_W(16),
.Q(13))
u_vector_max_55_1(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_55[31:16]),
.op_dout(op_dout_55_1));

vector_max #(.RELU(0),
.DIN_W(16),
.Q(13))
u_vector_max_55_2(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_55[47:32]),
.op_dout(op_dout_55_2));

vector_max #(.RELU(0),
.DIN_W(16),
.Q(13))
u_vector_max_55_3(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_55[63:48]),
.op_dout(op_dout_55_3));

vector_max #(.RELU(0),
.DIN_W(16),
.Q(13))
u_vector_max_56_0(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_56[15:0]),
.op_dout(op_dout_56_0));

vector_max #(.RELU(0),
.DIN_W(16),
.Q(13))
u_vector_max_56_1(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_56[31:16]),
.op_dout(op_dout_56_1));

vector_max #(.RELU(0),
.DIN_W(16),
.Q(13))
u_vector_max_56_2(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_56[47:32]),
.op_dout(op_dout_56_2));

vector_max #(.RELU(0),
.DIN_W(16),
.Q(13))
u_vector_max_56_3(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_56[63:48]),
.op_dout(op_dout_56_3));

vector_max #(.RELU(0),
.DIN_W(16),
.Q(13))
u_vector_max_57_0(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_57[15:0]),
.op_dout(op_dout_57_0));

vector_max #(.RELU(0),
.DIN_W(16),
.Q(13))
u_vector_max_57_1(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_57[31:16]),
.op_dout(op_dout_57_1));

vector_max #(.RELU(0),
.DIN_W(16),
.Q(13))
u_vector_max_57_2(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_57[47:32]),
.op_dout(op_dout_57_2));

vector_max #(.RELU(0),
.DIN_W(16),
.Q(13))
u_vector_max_57_3(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_57[63:48]),
.op_dout(op_dout_57_3));

vector_max #(.RELU(0),
.DIN_W(16),
.Q(13))
u_vector_max_58_0(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_58[15:0]),
.op_dout(op_dout_58_0));

vector_max #(.RELU(0),
.DIN_W(16),
.Q(13))
u_vector_max_58_1(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_58[31:16]),
.op_dout(op_dout_58_1));

vector_max #(.RELU(0),
.DIN_W(16),
.Q(13))
u_vector_max_58_2(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_58[47:32]),
.op_dout(op_dout_58_2));

vector_max #(.RELU(0),
.DIN_W(16),
.Q(13))
u_vector_max_58_3(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_58[63:48]),
.op_dout(op_dout_58_3));

vector_max #(.RELU(0),
.DIN_W(16),
.Q(13))
u_vector_max_59_0(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_59[15:0]),
.op_dout(op_dout_59_0));

vector_max #(.RELU(0),
.DIN_W(16),
.Q(13))
u_vector_max_59_1(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_59[31:16]),
.op_dout(op_dout_59_1));

vector_max #(.RELU(0),
.DIN_W(16),
.Q(13))
u_vector_max_59_2(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_59[47:32]),
.op_dout(op_dout_59_2));

vector_max #(.RELU(0),
.DIN_W(16),
.Q(13))
u_vector_max_59_3(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_59[63:48]),
.op_dout(op_dout_59_3));

vector_max #(.RELU(0),
.DIN_W(16),
.Q(13))
u_vector_max_60_0(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_60[15:0]),
.op_dout(op_dout_60_0));

vector_max #(.RELU(0),
.DIN_W(16),
.Q(13))
u_vector_max_60_1(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_60[31:16]),
.op_dout(op_dout_60_1));

vector_max #(.RELU(0),
.DIN_W(16),
.Q(13))
u_vector_max_60_2(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_60[47:32]),
.op_dout(op_dout_60_2));

vector_max #(.RELU(0),
.DIN_W(16),
.Q(13))
u_vector_max_60_3(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_60[63:48]),
.op_dout(op_dout_60_3));

vector_max #(.RELU(0),
.DIN_W(16),
.Q(13))
u_vector_max_61_0(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_61[15:0]),
.op_dout(op_dout_61_0));

vector_max #(.RELU(0),
.DIN_W(16),
.Q(13))
u_vector_max_61_1(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_61[31:16]),
.op_dout(op_dout_61_1));

vector_max #(.RELU(0),
.DIN_W(16),
.Q(13))
u_vector_max_61_2(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_61[47:32]),
.op_dout(op_dout_61_2));

vector_max #(.RELU(0),
.DIN_W(16),
.Q(13))
u_vector_max_61_3(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_61[63:48]),
.op_dout(op_dout_61_3));

vector_max #(.RELU(0),
.DIN_W(16),
.Q(13))
u_vector_max_62_0(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_62[15:0]),
.op_dout(op_dout_62_0));

vector_max #(.RELU(0),
.DIN_W(16),
.Q(13))
u_vector_max_62_1(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_62[31:16]),
.op_dout(op_dout_62_1));

vector_max #(.RELU(0),
.DIN_W(16),
.Q(13))
u_vector_max_62_2(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_62[47:32]),
.op_dout(op_dout_62_2));

vector_max #(.RELU(0),
.DIN_W(16),
.Q(13))
u_vector_max_62_3(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_62[63:48]),
.op_dout(op_dout_62_3));

vector_max #(.RELU(0),
.DIN_W(16),
.Q(13))
u_vector_max_63_0(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_63[15:0]),
.op_dout(op_dout_63_0));

vector_max #(.RELU(0),
.DIN_W(16),
.Q(13))
u_vector_max_63_1(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_63[31:16]),
.op_dout(op_dout_63_1));

vector_max #(.RELU(0),
.DIN_W(16),
.Q(13))
u_vector_max_63_2(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_63[47:32]),
.op_dout(op_dout_63_2));

vector_max #(.RELU(0),
.DIN_W(16),
.Q(13))
u_vector_max_63_3(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_63[63:48]),
.op_dout(op_dout_63_3));

vector_max #(.RELU(0),
.DIN_W(16),
.Q(13))
u_vector_max_64_0(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_64[15:0]),
.op_dout(op_dout_64_0));

vector_max #(.RELU(0),
.DIN_W(16),
.Q(13))
u_vector_max_64_1(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_64[31:16]),
.op_dout(op_dout_64_1));

vector_max #(.RELU(0),
.DIN_W(16),
.Q(13))
u_vector_max_64_2(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_64[47:32]),
.op_dout(op_dout_64_2));

vector_max #(.RELU(0),
.DIN_W(16),
.Q(13))
u_vector_max_64_3(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_64[63:48]),
.op_dout(op_dout_64_3));

vector_max #(.RELU(0),
.DIN_W(16),
.Q(13))
u_vector_max_65_0(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_65[15:0]),
.op_dout(op_dout_65_0));

vector_max #(.RELU(0),
.DIN_W(16),
.Q(13))
u_vector_max_65_1(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_65[31:16]),
.op_dout(op_dout_65_1));

vector_max #(.RELU(0),
.DIN_W(16),
.Q(13))
u_vector_max_65_2(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_65[47:32]),
.op_dout(op_dout_65_2));

vector_max #(.RELU(0),
.DIN_W(16),
.Q(13))
u_vector_max_65_3(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_65[63:48]),
.op_dout(op_dout_65_3));

vector_max #(.RELU(0),
.DIN_W(16),
.Q(13))
u_vector_max_66_0(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_66[15:0]),
.op_dout(op_dout_66_0));

vector_max #(.RELU(0),
.DIN_W(16),
.Q(13))
u_vector_max_66_1(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_66[31:16]),
.op_dout(op_dout_66_1));

vector_max #(.RELU(0),
.DIN_W(16),
.Q(13))
u_vector_max_66_2(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_66[47:32]),
.op_dout(op_dout_66_2));

vector_max #(.RELU(0),
.DIN_W(16),
.Q(13))
u_vector_max_66_3(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_66[63:48]),
.op_dout(op_dout_66_3));

vector_max #(.RELU(0),
.DIN_W(16),
.Q(13))
u_vector_max_67_0(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_67[15:0]),
.op_dout(op_dout_67_0));

vector_max #(.RELU(0),
.DIN_W(16),
.Q(13))
u_vector_max_67_1(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_67[31:16]),
.op_dout(op_dout_67_1));

vector_max #(.RELU(0),
.DIN_W(16),
.Q(13))
u_vector_max_67_2(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_67[47:32]),
.op_dout(op_dout_67_2));

vector_max #(.RELU(0),
.DIN_W(16),
.Q(13))
u_vector_max_67_3(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_67[63:48]),
.op_dout(op_dout_67_3));

vector_max #(.RELU(0),
.DIN_W(16),
.Q(13))
u_vector_max_68_0(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_68[15:0]),
.op_dout(op_dout_68_0));

vector_max #(.RELU(0),
.DIN_W(16),
.Q(13))
u_vector_max_68_1(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_68[31:16]),
.op_dout(op_dout_68_1));

vector_max #(.RELU(0),
.DIN_W(16),
.Q(13))
u_vector_max_68_2(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_68[47:32]),
.op_dout(op_dout_68_2));

vector_max #(.RELU(0),
.DIN_W(16),
.Q(13))
u_vector_max_68_3(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_68[63:48]),
.op_dout(op_dout_68_3));

vector_max #(.RELU(0),
.DIN_W(16),
.Q(13))
u_vector_max_69_0(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_69[15:0]),
.op_dout(op_dout_69_0));

vector_max #(.RELU(0),
.DIN_W(16),
.Q(13))
u_vector_max_69_1(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_69[31:16]),
.op_dout(op_dout_69_1));

vector_max #(.RELU(0),
.DIN_W(16),
.Q(13))
u_vector_max_69_2(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_69[47:32]),
.op_dout(op_dout_69_2));

vector_max #(.RELU(0),
.DIN_W(16),
.Q(13))
u_vector_max_69_3(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_69[63:48]),
.op_dout(op_dout_69_3));

vector_max #(.RELU(0),
.DIN_W(16),
.Q(13))
u_vector_max_70_0(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_70[15:0]),
.op_dout(op_dout_70_0));

vector_max #(.RELU(0),
.DIN_W(16),
.Q(13))
u_vector_max_70_1(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_70[31:16]),
.op_dout(op_dout_70_1));

vector_max #(.RELU(0),
.DIN_W(16),
.Q(13))
u_vector_max_70_2(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_70[47:32]),
.op_dout(op_dout_70_2));

vector_max #(.RELU(0),
.DIN_W(16),
.Q(13))
u_vector_max_70_3(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_70[63:48]),
.op_dout(op_dout_70_3));

vector_max #(.RELU(0),
.DIN_W(16),
.Q(13))
u_vector_max_71_0(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_71[15:0]),
.op_dout(op_dout_71_0));

vector_max #(.RELU(0),
.DIN_W(16),
.Q(13))
u_vector_max_71_1(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_71[31:16]),
.op_dout(op_dout_71_1));

vector_max #(.RELU(0),
.DIN_W(16),
.Q(13))
u_vector_max_71_2(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_71[47:32]),
.op_dout(op_dout_71_2));

vector_max #(.RELU(0),
.DIN_W(16),
.Q(13))
u_vector_max_71_3(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_71[63:48]),
.op_dout(op_dout_71_3));

vector_max #(.RELU(0),
.DIN_W(16),
.Q(13))
u_vector_max_72_0(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_72[15:0]),
.op_dout(op_dout_72_0));

vector_max #(.RELU(0),
.DIN_W(16),
.Q(13))
u_vector_max_72_1(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_72[31:16]),
.op_dout(op_dout_72_1));

vector_max #(.RELU(0),
.DIN_W(16),
.Q(13))
u_vector_max_72_2(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_72[47:32]),
.op_dout(op_dout_72_2));

vector_max #(.RELU(0),
.DIN_W(16),
.Q(13))
u_vector_max_72_3(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_72[63:48]),
.op_dout(op_dout_72_3));

vector_max #(.RELU(0),
.DIN_W(16),
.Q(13))
u_vector_max_73_0(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_73[15:0]),
.op_dout(op_dout_73_0));

vector_max #(.RELU(0),
.DIN_W(16),
.Q(13))
u_vector_max_73_1(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_73[31:16]),
.op_dout(op_dout_73_1));

vector_max #(.RELU(0),
.DIN_W(16),
.Q(13))
u_vector_max_73_2(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_73[47:32]),
.op_dout(op_dout_73_2));

vector_max #(.RELU(0),
.DIN_W(16),
.Q(13))
u_vector_max_73_3(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_73[63:48]),
.op_dout(op_dout_73_3));

vector_max #(.RELU(0),
.DIN_W(16),
.Q(13))
u_vector_max_74_0(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_74[15:0]),
.op_dout(op_dout_74_0));

vector_max #(.RELU(0),
.DIN_W(16),
.Q(13))
u_vector_max_74_1(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_74[31:16]),
.op_dout(op_dout_74_1));

vector_max #(.RELU(0),
.DIN_W(16),
.Q(13))
u_vector_max_74_2(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_74[47:32]),
.op_dout(op_dout_74_2));

vector_max #(.RELU(0),
.DIN_W(16),
.Q(13))
u_vector_max_74_3(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_74[63:48]),
.op_dout(op_dout_74_3));

vector_max #(.RELU(0),
.DIN_W(16),
.Q(13))
u_vector_max_75_0(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_75[15:0]),
.op_dout(op_dout_75_0));

vector_max #(.RELU(0),
.DIN_W(16),
.Q(13))
u_vector_max_75_1(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_75[31:16]),
.op_dout(op_dout_75_1));

vector_max #(.RELU(0),
.DIN_W(16),
.Q(13))
u_vector_max_75_2(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_75[47:32]),
.op_dout(op_dout_75_2));

vector_max #(.RELU(0),
.DIN_W(16),
.Q(13))
u_vector_max_75_3(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_75[63:48]),
.op_dout(op_dout_75_3));

vector_max #(.RELU(0),
.DIN_W(16),
.Q(13))
u_vector_max_76_0(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_76[15:0]),
.op_dout(op_dout_76_0));

vector_max #(.RELU(0),
.DIN_W(16),
.Q(13))
u_vector_max_76_1(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_76[31:16]),
.op_dout(op_dout_76_1));

vector_max #(.RELU(0),
.DIN_W(16),
.Q(13))
u_vector_max_76_2(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_76[47:32]),
.op_dout(op_dout_76_2));

vector_max #(.RELU(0),
.DIN_W(16),
.Q(13))
u_vector_max_76_3(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_76[63:48]),
.op_dout(op_dout_76_3));

vector_max #(.RELU(0),
.DIN_W(16),
.Q(13))
u_vector_max_77_0(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_77[15:0]),
.op_dout(op_dout_77_0));

vector_max #(.RELU(0),
.DIN_W(16),
.Q(13))
u_vector_max_77_1(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_77[31:16]),
.op_dout(op_dout_77_1));

vector_max #(.RELU(0),
.DIN_W(16),
.Q(13))
u_vector_max_77_2(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_77[47:32]),
.op_dout(op_dout_77_2));

vector_max #(.RELU(0),
.DIN_W(16),
.Q(13))
u_vector_max_77_3(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_77[63:48]),
.op_dout(op_dout_77_3));

vector_max #(.RELU(0),
.DIN_W(16),
.Q(13))
u_vector_max_78_0(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_78[15:0]),
.op_dout(op_dout_78_0));

vector_max #(.RELU(0),
.DIN_W(16),
.Q(13))
u_vector_max_78_1(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_78[31:16]),
.op_dout(op_dout_78_1));

vector_max #(.RELU(0),
.DIN_W(16),
.Q(13))
u_vector_max_78_2(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_78[47:32]),
.op_dout(op_dout_78_2));

vector_max #(.RELU(0),
.DIN_W(16),
.Q(13))
u_vector_max_78_3(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_78[63:48]),
.op_dout(op_dout_78_3));

vector_max #(.RELU(0),
.DIN_W(16),
.Q(13))
u_vector_max_79_0(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_79[15:0]),
.op_dout(op_dout_79_0));

vector_max #(.RELU(0),
.DIN_W(16),
.Q(13))
u_vector_max_79_1(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_79[31:16]),
.op_dout(op_dout_79_1));

vector_max #(.RELU(0),
.DIN_W(16),
.Q(13))
u_vector_max_79_2(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_79[47:32]),
.op_dout(op_dout_79_2));

vector_max #(.RELU(0),
.DIN_W(16),
.Q(13))
u_vector_max_79_3(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_79[63:48]),
.op_dout(op_dout_79_3));

vector_max #(.RELU(0),
.DIN_W(16),
.Q(13))
u_vector_max_80_0(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_80[15:0]),
.op_dout(op_dout_80_0));

vector_max #(.RELU(0),
.DIN_W(16),
.Q(13))
u_vector_max_80_1(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_80[31:16]),
.op_dout(op_dout_80_1));

vector_max #(.RELU(0),
.DIN_W(16),
.Q(13))
u_vector_max_80_2(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_80[47:32]),
.op_dout(op_dout_80_2));

vector_max #(.RELU(0),
.DIN_W(16),
.Q(13))
u_vector_max_80_3(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_80[63:48]),
.op_dout(op_dout_80_3));

vector_max #(.RELU(0),
.DIN_W(16),
.Q(13))
u_vector_max_81_0(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_81[15:0]),
.op_dout(op_dout_81_0));

vector_max #(.RELU(0),
.DIN_W(16),
.Q(13))
u_vector_max_81_1(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_81[31:16]),
.op_dout(op_dout_81_1));

vector_max #(.RELU(0),
.DIN_W(16),
.Q(13))
u_vector_max_81_2(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_81[47:32]),
.op_dout(op_dout_81_2));

vector_max #(.RELU(0),
.DIN_W(16),
.Q(13))
u_vector_max_81_3(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_81[63:48]),
.op_dout(op_dout_81_3));

vector_max #(.RELU(0),
.DIN_W(16),
.Q(13))
u_vector_max_82_0(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_82[15:0]),
.op_dout(op_dout_82_0));

vector_max #(.RELU(0),
.DIN_W(16),
.Q(13))
u_vector_max_82_1(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_82[31:16]),
.op_dout(op_dout_82_1));

vector_max #(.RELU(0),
.DIN_W(16),
.Q(13))
u_vector_max_82_2(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_82[47:32]),
.op_dout(op_dout_82_2));

vector_max #(.RELU(0),
.DIN_W(16),
.Q(13))
u_vector_max_82_3(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_82[63:48]),
.op_dout(op_dout_82_3));

vector_max #(.RELU(0),
.DIN_W(16),
.Q(13))
u_vector_max_83_0(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_83[15:0]),
.op_dout(op_dout_83_0));

vector_max #(.RELU(0),
.DIN_W(16),
.Q(13))
u_vector_max_83_1(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_83[31:16]),
.op_dout(op_dout_83_1));

vector_max #(.RELU(0),
.DIN_W(16),
.Q(13))
u_vector_max_83_2(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_83[47:32]),
.op_dout(op_dout_83_2));

vector_max #(.RELU(0),
.DIN_W(16),
.Q(13))
u_vector_max_83_3(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_83[63:48]),
.op_dout(op_dout_83_3));

vector_max #(.RELU(0),
.DIN_W(16),
.Q(13))
u_vector_max_84_0(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_84[15:0]),
.op_dout(op_dout_84_0));

vector_max #(.RELU(0),
.DIN_W(16),
.Q(13))
u_vector_max_84_1(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_84[31:16]),
.op_dout(op_dout_84_1));

vector_max #(.RELU(0),
.DIN_W(16),
.Q(13))
u_vector_max_84_2(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_84[47:32]),
.op_dout(op_dout_84_2));

vector_max #(.RELU(0),
.DIN_W(16),
.Q(13))
u_vector_max_84_3(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_84[63:48]),
.op_dout(op_dout_84_3));

vector_max #(.RELU(0),
.DIN_W(16),
.Q(13))
u_vector_max_85_0(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_85[15:0]),
.op_dout(op_dout_85_0));

vector_max #(.RELU(0),
.DIN_W(16),
.Q(13))
u_vector_max_85_1(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_85[31:16]),
.op_dout(op_dout_85_1));

vector_max #(.RELU(0),
.DIN_W(16),
.Q(13))
u_vector_max_85_2(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_85[47:32]),
.op_dout(op_dout_85_2));

vector_max #(.RELU(0),
.DIN_W(16),
.Q(13))
u_vector_max_85_3(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_85[63:48]),
.op_dout(op_dout_85_3));

vector_max #(.RELU(0),
.DIN_W(16),
.Q(13))
u_vector_max_86_0(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_86[15:0]),
.op_dout(op_dout_86_0));

vector_max #(.RELU(0),
.DIN_W(16),
.Q(13))
u_vector_max_86_1(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_86[31:16]),
.op_dout(op_dout_86_1));

vector_max #(.RELU(0),
.DIN_W(16),
.Q(13))
u_vector_max_86_2(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_86[47:32]),
.op_dout(op_dout_86_2));

vector_max #(.RELU(0),
.DIN_W(16),
.Q(13))
u_vector_max_86_3(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_86[63:48]),
.op_dout(op_dout_86_3));

vector_max #(.RELU(0),
.DIN_W(16),
.Q(13))
u_vector_max_87_0(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_87[15:0]),
.op_dout(op_dout_87_0));

vector_max #(.RELU(0),
.DIN_W(16),
.Q(13))
u_vector_max_87_1(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_87[31:16]),
.op_dout(op_dout_87_1));

vector_max #(.RELU(0),
.DIN_W(16),
.Q(13))
u_vector_max_87_2(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_87[47:32]),
.op_dout(op_dout_87_2));

vector_max #(.RELU(0),
.DIN_W(16),
.Q(13))
u_vector_max_87_3(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_87[63:48]),
.op_dout(op_dout_87_3));

vector_max #(.RELU(0),
.DIN_W(16),
.Q(13))
u_vector_max_88_0(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_88[15:0]),
.op_dout(op_dout_88_0));

vector_max #(.RELU(0),
.DIN_W(16),
.Q(13))
u_vector_max_88_1(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_88[31:16]),
.op_dout(op_dout_88_1));

vector_max #(.RELU(0),
.DIN_W(16),
.Q(13))
u_vector_max_88_2(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_88[47:32]),
.op_dout(op_dout_88_2));

vector_max #(.RELU(0),
.DIN_W(16),
.Q(13))
u_vector_max_88_3(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_88[63:48]),
.op_dout(op_dout_88_3));

vector_max #(.RELU(0),
.DIN_W(16),
.Q(13))
u_vector_max_89_0(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_89[15:0]),
.op_dout(op_dout_89_0));

vector_max #(.RELU(0),
.DIN_W(16),
.Q(13))
u_vector_max_89_1(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_89[31:16]),
.op_dout(op_dout_89_1));

vector_max #(.RELU(0),
.DIN_W(16),
.Q(13))
u_vector_max_89_2(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_89[47:32]),
.op_dout(op_dout_89_2));

vector_max #(.RELU(0),
.DIN_W(16),
.Q(13))
u_vector_max_89_3(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_89[63:48]),
.op_dout(op_dout_89_3));

vector_max #(.RELU(0),
.DIN_W(16),
.Q(13))
u_vector_max_90_0(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_90[15:0]),
.op_dout(op_dout_90_0));

vector_max #(.RELU(0),
.DIN_W(16),
.Q(13))
u_vector_max_90_1(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_90[31:16]),
.op_dout(op_dout_90_1));

vector_max #(.RELU(0),
.DIN_W(16),
.Q(13))
u_vector_max_90_2(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_90[47:32]),
.op_dout(op_dout_90_2));

vector_max #(.RELU(0),
.DIN_W(16),
.Q(13))
u_vector_max_90_3(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_90[63:48]),
.op_dout(op_dout_90_3));

vector_max #(.RELU(0),
.DIN_W(16),
.Q(13))
u_vector_max_91_0(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_91[15:0]),
.op_dout(op_dout_91_0));

vector_max #(.RELU(0),
.DIN_W(16),
.Q(13))
u_vector_max_91_1(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_91[31:16]),
.op_dout(op_dout_91_1));

vector_max #(.RELU(0),
.DIN_W(16),
.Q(13))
u_vector_max_91_2(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_91[47:32]),
.op_dout(op_dout_91_2));

vector_max #(.RELU(0),
.DIN_W(16),
.Q(13))
u_vector_max_91_3(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_91[63:48]),
.op_dout(op_dout_91_3));

vector_max #(.RELU(0),
.DIN_W(16),
.Q(13))
u_vector_max_92_0(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_92[15:0]),
.op_dout(op_dout_92_0));

vector_max #(.RELU(0),
.DIN_W(16),
.Q(13))
u_vector_max_92_1(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_92[31:16]),
.op_dout(op_dout_92_1));

vector_max #(.RELU(0),
.DIN_W(16),
.Q(13))
u_vector_max_92_2(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_92[47:32]),
.op_dout(op_dout_92_2));

vector_max #(.RELU(0),
.DIN_W(16),
.Q(13))
u_vector_max_92_3(
.clk(clk),
.rst(rst),
.op_din_en(op_din_en),
.op_din_eop(op_din_eop),
.op_din(op_data_92[63:48]),
.op_dout(op_dout_92_3));

assign blob_dout_fifo = {op_dout_92_3,op_dout_92_2,op_dout_92_1,op_dout_92_0,op_dout_91_3,op_dout_91_2,op_dout_91_1,op_dout_91_0,op_dout_90_3,op_dout_90_2,op_dout_90_1,op_dout_90_0,op_dout_89_3,op_dout_89_2,op_dout_89_1,op_dout_89_0,op_dout_88_3,op_dout_88_2,op_dout_88_1,op_dout_88_0,op_dout_87_3,op_dout_87_2,op_dout_87_1,op_dout_87_0,op_dout_86_3,op_dout_86_2,op_dout_86_1,op_dout_86_0,op_dout_85_3,op_dout_85_2,op_dout_85_1,op_dout_85_0,op_dout_84_3,op_dout_84_2,op_dout_84_1,op_dout_84_0,op_dout_83_3,op_dout_83_2,op_dout_83_1,op_dout_83_0,op_dout_82_3,op_dout_82_2,op_dout_82_1,op_dout_82_0,op_dout_81_3,op_dout_81_2,op_dout_81_1,op_dout_81_0,op_dout_80_3,op_dout_80_2,op_dout_80_1,op_dout_80_0,op_dout_79_3,op_dout_79_2,op_dout_79_1,op_dout_79_0,op_dout_78_3,op_dout_78_2,op_dout_78_1,op_dout_78_0,op_dout_77_3,op_dout_77_2,op_dout_77_1,op_dout_77_0,op_dout_76_3,op_dout_76_2,op_dout_76_1,op_dout_76_0,op_dout_75_3,op_dout_75_2,op_dout_75_1,op_dout_75_0,op_dout_74_3,op_dout_74_2,op_dout_74_1,op_dout_74_0,op_dout_73_3,op_dout_73_2,op_dout_73_1,op_dout_73_0,op_dout_72_3,op_dout_72_2,op_dout_72_1,op_dout_72_0,op_dout_71_3,op_dout_71_2,op_dout_71_1,op_dout_71_0,op_dout_70_3,op_dout_70_2,op_dout_70_1,op_dout_70_0,op_dout_69_3,op_dout_69_2,op_dout_69_1,op_dout_69_0,op_dout_68_3,op_dout_68_2,op_dout_68_1,op_dout_68_0,op_dout_67_3,op_dout_67_2,op_dout_67_1,op_dout_67_0,op_dout_66_3,op_dout_66_2,op_dout_66_1,op_dout_66_0,op_dout_65_3,op_dout_65_2,op_dout_65_1,op_dout_65_0,op_dout_64_3,op_dout_64_2,op_dout_64_1,op_dout_64_0,op_dout_63_3,op_dout_63_2,op_dout_63_1,op_dout_63_0,op_dout_62_3,op_dout_62_2,op_dout_62_1,op_dout_62_0,op_dout_61_3,op_dout_61_2,op_dout_61_1,op_dout_61_0,op_dout_60_3,op_dout_60_2,op_dout_60_1,op_dout_60_0,op_dout_59_3,op_dout_59_2,op_dout_59_1,op_dout_59_0,op_dout_58_3,op_dout_58_2,op_dout_58_1,op_dout_58_0,op_dout_57_3,op_dout_57_2,op_dout_57_1,op_dout_57_0,op_dout_56_3,op_dout_56_2,op_dout_56_1,op_dout_56_0,op_dout_55_3,op_dout_55_2,op_dout_55_1,op_dout_55_0,op_dout_54_3,op_dout_54_2,op_dout_54_1,op_dout_54_0,op_dout_53_3,op_dout_53_2,op_dout_53_1,op_dout_53_0,op_dout_52_3,op_dout_52_2,op_dout_52_1,op_dout_52_0,op_dout_51_3,op_dout_51_2,op_dout_51_1,op_dout_51_0,op_dout_50_3,op_dout_50_2,op_dout_50_1,op_dout_50_0,op_dout_49_3,op_dout_49_2,op_dout_49_1,op_dout_49_0,op_dout_48_3,op_dout_48_2,op_dout_48_1,op_dout_48_0,op_dout_47_3,op_dout_47_2,op_dout_47_1,op_dout_47_0,op_dout_46_3,op_dout_46_2,op_dout_46_1,op_dout_46_0,op_dout_45_3,op_dout_45_2,op_dout_45_1,op_dout_45_0,op_dout_44_3,op_dout_44_2,op_dout_44_1,op_dout_44_0,op_dout_43_3,op_dout_43_2,op_dout_43_1,op_dout_43_0,op_dout_42_3,op_dout_42_2,op_dout_42_1,op_dout_42_0,op_dout_41_3,op_dout_41_2,op_dout_41_1,op_dout_41_0,op_dout_40_3,op_dout_40_2,op_dout_40_1,op_dout_40_0,op_dout_39_3,op_dout_39_2,op_dout_39_1,op_dout_39_0,op_dout_38_3,op_dout_38_2,op_dout_38_1,op_dout_38_0,op_dout_37_3,op_dout_37_2,op_dout_37_1,op_dout_37_0,op_dout_36_3,op_dout_36_2,op_dout_36_1,op_dout_36_0,op_dout_35_3,op_dout_35_2,op_dout_35_1,op_dout_35_0,op_dout_34_3,op_dout_34_2,op_dout_34_1,op_dout_34_0,op_dout_33_3,op_dout_33_2,op_dout_33_1,op_dout_33_0,op_dout_32_3,op_dout_32_2,op_dout_32_1,op_dout_32_0,op_dout_31_3,op_dout_31_2,op_dout_31_1,op_dout_31_0,op_dout_30_3,op_dout_30_2,op_dout_30_1,op_dout_30_0,op_dout_29_3,op_dout_29_2,op_dout_29_1,op_dout_29_0,op_dout_28_3,op_dout_28_2,op_dout_28_1,op_dout_28_0,op_dout_27_3,op_dout_27_2,op_dout_27_1,op_dout_27_0,op_dout_26_3,op_dout_26_2,op_dout_26_1,op_dout_26_0,op_dout_25_3,op_dout_25_2,op_dout_25_1,op_dout_25_0,op_dout_24_3,op_dout_24_2,op_dout_24_1,op_dout_24_0,op_dout_23_3,op_dout_23_2,op_dout_23_1,op_dout_23_0,op_dout_22_3,op_dout_22_2,op_dout_22_1,op_dout_22_0,op_dout_21_3,op_dout_21_2,op_dout_21_1,op_dout_21_0,op_dout_20_3,op_dout_20_2,op_dout_20_1,op_dout_20_0,op_dout_19_3,op_dout_19_2,op_dout_19_1,op_dout_19_0,op_dout_18_3,op_dout_18_2,op_dout_18_1,op_dout_18_0,op_dout_17_3,op_dout_17_2,op_dout_17_1,op_dout_17_0,op_dout_16_3,op_dout_16_2,op_dout_16_1,op_dout_16_0,op_dout_15_3,op_dout_15_2,op_dout_15_1,op_dout_15_0,op_dout_14_3,op_dout_14_2,op_dout_14_1,op_dout_14_0,op_dout_13_3,op_dout_13_2,op_dout_13_1,op_dout_13_0,op_dout_12_3,op_dout_12_2,op_dout_12_1,op_dout_12_0,op_dout_11_3,op_dout_11_2,op_dout_11_1,op_dout_11_0,op_dout_10_3,op_dout_10_2,op_dout_10_1,op_dout_10_0,op_dout_9_3,op_dout_9_2,op_dout_9_1,op_dout_9_0,op_dout_8_3,op_dout_8_2,op_dout_8_1,op_dout_8_0,op_dout_7_3,op_dout_7_2,op_dout_7_1,op_dout_7_0,op_dout_6_3,op_dout_6_2,op_dout_6_1,op_dout_6_0,op_dout_5_3,op_dout_5_2,op_dout_5_1,op_dout_5_0,op_dout_4_3,op_dout_4_2,op_dout_4_1,op_dout_4_0,op_dout_3_3,op_dout_3_2,op_dout_3_1,op_dout_3_0,op_dout_2_3,op_dout_2_2,op_dout_2_1,op_dout_2_0,op_dout_1_3,op_dout_1_2,op_dout_1_1,op_dout_1_0,op_dout_0_3,op_dout_0_2,op_dout_0_1,op_dout_0_0};

wire empty_fifo;
wire blob_dout_eop_tmp;
assign blob_dout_en = blob_dout_rdy & (~empty_fifo);
assign blob_dout_eop = blob_dout_en & blob_dout_eop_tmp;
interlayer_sync_fifo #(
.aw(1),
.dw(5953),
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
