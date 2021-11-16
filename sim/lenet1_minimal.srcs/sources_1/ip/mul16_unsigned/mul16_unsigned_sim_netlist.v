// Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2017.4.1 (lin64) Build 2117270 Tue Jan 30 15:31:13 MST 2018
// Date        : Thu Nov 11 21:51:15 2021
// Host        : boldrock running 64-bit Ubuntu 18.04.6 LTS
// Command     : write_verilog -force -mode funcsim
//               /home/mm4uz/Desktop/research/tidenet/try6/TIDENet/accdnn/build/ips_prj/ips_prj.srcs/sources_1/ip/mul16_unsigned/mul16_unsigned_sim_netlist.v
// Design      : mul16_unsigned
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7vx485tffg1761-2
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "mul16_unsigned,mult_gen_v12_0_13,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "mult_gen_v12_0_13,Vivado 2017.4.1" *) 
(* NotValidForBitStream *)
module mul16_unsigned
   (CLK,
    A,
    B,
    P);
  (* x_interface_info = "xilinx.com:signal:clock:1.0 clk_intf CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME clk_intf, ASSOCIATED_BUSIF p_intf:b_intf:a_intf, ASSOCIATED_RESET sclr, ASSOCIATED_CLKEN ce, FREQ_HZ 10000000, PHASE 0.000" *) input CLK;
  (* x_interface_info = "xilinx.com:signal:data:1.0 a_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME a_intf, LAYERED_METADATA undef" *) input [15:0]A;
  (* x_interface_info = "xilinx.com:signal:data:1.0 b_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME b_intf, LAYERED_METADATA undef" *) input [15:0]B;
  (* x_interface_info = "xilinx.com:signal:data:1.0 p_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME p_intf, LAYERED_METADATA undef" *) output [31:0]P;

  wire [15:0]A;
  wire [15:0]B;
  wire CLK;
  wire [31:0]P;
  wire [47:0]NLW_U0_PCASC_UNCONNECTED;
  wire [1:0]NLW_U0_ZERO_DETECT_UNCONNECTED;

  (* C_A_TYPE = "1" *) 
  (* C_A_WIDTH = "16" *) 
  (* C_B_TYPE = "1" *) 
  (* C_B_VALUE = "10000001" *) 
  (* C_B_WIDTH = "16" *) 
  (* C_CCM_IMP = "0" *) 
  (* C_CE_OVERRIDES_SCLR = "0" *) 
  (* C_HAS_CE = "0" *) 
  (* C_HAS_SCLR = "0" *) 
  (* C_HAS_ZERO_DETECT = "0" *) 
  (* C_LATENCY = "1" *) 
  (* C_MODEL_TYPE = "0" *) 
  (* C_MULT_TYPE = "1" *) 
  (* C_OPTIMIZE_GOAL = "1" *) 
  (* C_OUT_HIGH = "31" *) 
  (* C_OUT_LOW = "0" *) 
  (* C_ROUND_OUTPUT = "0" *) 
  (* C_ROUND_PT = "0" *) 
  (* C_VERBOSITY = "0" *) 
  (* C_XDEVICEFAMILY = "virtex7" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  mul16_unsigned_mult_gen_v12_0_13 U0
       (.A(A),
        .B(B),
        .CE(1'b1),
        .CLK(CLK),
        .P(P),
        .PCASC(NLW_U0_PCASC_UNCONNECTED[47:0]),
        .SCLR(1'b0),
        .ZERO_DETECT(NLW_U0_ZERO_DETECT_UNCONNECTED[1:0]));
endmodule

(* C_A_TYPE = "1" *) (* C_A_WIDTH = "16" *) (* C_B_TYPE = "1" *) 
(* C_B_VALUE = "10000001" *) (* C_B_WIDTH = "16" *) (* C_CCM_IMP = "0" *) 
(* C_CE_OVERRIDES_SCLR = "0" *) (* C_HAS_CE = "0" *) (* C_HAS_SCLR = "0" *) 
(* C_HAS_ZERO_DETECT = "0" *) (* C_LATENCY = "1" *) (* C_MODEL_TYPE = "0" *) 
(* C_MULT_TYPE = "1" *) (* C_OPTIMIZE_GOAL = "1" *) (* C_OUT_HIGH = "31" *) 
(* C_OUT_LOW = "0" *) (* C_ROUND_OUTPUT = "0" *) (* C_ROUND_PT = "0" *) 
(* C_VERBOSITY = "0" *) (* C_XDEVICEFAMILY = "virtex7" *) (* ORIG_REF_NAME = "mult_gen_v12_0_13" *) 
(* downgradeipidentifiedwarnings = "yes" *) 
module mul16_unsigned_mult_gen_v12_0_13
   (CLK,
    A,
    B,
    CE,
    SCLR,
    ZERO_DETECT,
    P,
    PCASC);
  input CLK;
  input [15:0]A;
  input [15:0]B;
  input CE;
  input SCLR;
  output [1:0]ZERO_DETECT;
  output [31:0]P;
  output [47:0]PCASC;

  wire \<const0> ;
  wire [15:0]A;
  wire [15:0]B;
  wire CLK;
  wire [31:0]P;
  wire [47:0]NLW_i_mult_PCASC_UNCONNECTED;
  wire [1:0]NLW_i_mult_ZERO_DETECT_UNCONNECTED;

  assign PCASC[47] = \<const0> ;
  assign PCASC[46] = \<const0> ;
  assign PCASC[45] = \<const0> ;
  assign PCASC[44] = \<const0> ;
  assign PCASC[43] = \<const0> ;
  assign PCASC[42] = \<const0> ;
  assign PCASC[41] = \<const0> ;
  assign PCASC[40] = \<const0> ;
  assign PCASC[39] = \<const0> ;
  assign PCASC[38] = \<const0> ;
  assign PCASC[37] = \<const0> ;
  assign PCASC[36] = \<const0> ;
  assign PCASC[35] = \<const0> ;
  assign PCASC[34] = \<const0> ;
  assign PCASC[33] = \<const0> ;
  assign PCASC[32] = \<const0> ;
  assign PCASC[31] = \<const0> ;
  assign PCASC[30] = \<const0> ;
  assign PCASC[29] = \<const0> ;
  assign PCASC[28] = \<const0> ;
  assign PCASC[27] = \<const0> ;
  assign PCASC[26] = \<const0> ;
  assign PCASC[25] = \<const0> ;
  assign PCASC[24] = \<const0> ;
  assign PCASC[23] = \<const0> ;
  assign PCASC[22] = \<const0> ;
  assign PCASC[21] = \<const0> ;
  assign PCASC[20] = \<const0> ;
  assign PCASC[19] = \<const0> ;
  assign PCASC[18] = \<const0> ;
  assign PCASC[17] = \<const0> ;
  assign PCASC[16] = \<const0> ;
  assign PCASC[15] = \<const0> ;
  assign PCASC[14] = \<const0> ;
  assign PCASC[13] = \<const0> ;
  assign PCASC[12] = \<const0> ;
  assign PCASC[11] = \<const0> ;
  assign PCASC[10] = \<const0> ;
  assign PCASC[9] = \<const0> ;
  assign PCASC[8] = \<const0> ;
  assign PCASC[7] = \<const0> ;
  assign PCASC[6] = \<const0> ;
  assign PCASC[5] = \<const0> ;
  assign PCASC[4] = \<const0> ;
  assign PCASC[3] = \<const0> ;
  assign PCASC[2] = \<const0> ;
  assign PCASC[1] = \<const0> ;
  assign PCASC[0] = \<const0> ;
  assign ZERO_DETECT[1] = \<const0> ;
  assign ZERO_DETECT[0] = \<const0> ;
  GND GND
       (.G(\<const0> ));
  (* C_A_TYPE = "1" *) 
  (* C_A_WIDTH = "16" *) 
  (* C_B_TYPE = "1" *) 
  (* C_B_VALUE = "10000001" *) 
  (* C_B_WIDTH = "16" *) 
  (* C_CCM_IMP = "0" *) 
  (* C_CE_OVERRIDES_SCLR = "0" *) 
  (* C_HAS_CE = "0" *) 
  (* C_HAS_SCLR = "0" *) 
  (* C_HAS_ZERO_DETECT = "0" *) 
  (* C_LATENCY = "1" *) 
  (* C_MODEL_TYPE = "0" *) 
  (* C_MULT_TYPE = "1" *) 
  (* C_OPTIMIZE_GOAL = "1" *) 
  (* C_OUT_HIGH = "31" *) 
  (* C_OUT_LOW = "0" *) 
  (* C_ROUND_OUTPUT = "0" *) 
  (* C_ROUND_PT = "0" *) 
  (* C_VERBOSITY = "0" *) 
  (* C_XDEVICEFAMILY = "virtex7" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  mul16_unsigned_mult_gen_v12_0_13_viv i_mult
       (.A(A),
        .B(B),
        .CE(1'b0),
        .CLK(CLK),
        .P(P),
        .PCASC(NLW_i_mult_PCASC_UNCONNECTED[47:0]),
        .SCLR(1'b0),
        .ZERO_DETECT(NLW_i_mult_ZERO_DETECT_UNCONNECTED[1:0]));
endmodule
`pragma protect begin_protected
`pragma protect version = 1
`pragma protect encrypt_agent = "XILINX"
`pragma protect encrypt_agent_info = "Xilinx Encryption Tool 2015"
`pragma protect key_keyowner="Cadence Design Systems.", key_keyname="cds_rsa_key", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=64)
`pragma protect key_block
eThA4urGySHz67tBZHTx4tTp5mTo5DCRQfp+yRzcr2whoH4DIeVibo6x5of6iYBABK/MkSBB+B+H
6UAn/P5YAg==

`pragma protect key_keyowner="Synopsys", key_keyname="SNPS-VCS-RSA-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
snMFkYPMv9V6A3+iFtG7oTRSl3WGGhMc9D8j1ugpsuSLiA2Pje8/UBQUWcKNgi36vMIFClm04c/s
irbuPFknEhoJFPLTFvHNIYDDpTc/zSRSYh64zwdLSWJq8KJpVDb7t/RGYJR24edP/F+cpX1FBOkk
u5xPbUQBgvE81oAW6Vc=

`pragma protect key_keyowner="Aldec", key_keyname="ALDEC15_001", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
RgOlCHqXzvXwQsA5I/LtBs9g7c6c0zVLfSY85YSnPWeKKiiUCefF+uOTsUUUOPRJHQH/2JFLot6I
KN66WAK5AG1acq/TnIhm7kcfBhAtuMDqfJmzboDn/hOFlW/pGETTzEgGyqML86b/3Qv9/f6WzLZw
YpWcY7lvAprtM/aqt+Ej49i6Zpp0fZae9Wz7TZnG87OMzjrEEpE9TBAEmcWqMUG9pbTESrkotct1
AaXMmP91wkuOdNe3eXyW7WuGidjdhrxA8JqL0aKgFij86V1VUsSOkHsZ8lDi/+0NoSu+plsguYZG
4DD4Fc5Eef8GWXJlvHqhXVHxpytVD5r2VB3aFQ==

`pragma protect key_keyowner="ATRENTA", key_keyname="ATR-SG-2015-RSA-3", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
le/1KL2Kir0qq3QcBG1RWBhxaDbWEkj8/k5hyPIo+Y31Ou5MZe5sKugCbLsyBCAxTRslfntg+BdR
6THUA3CltiLpc18R1vv7fFNgBU43i+ynX0ENrrdAEo32bLswKxtqKYEXZ0wvg9QsPfVYA3XQTCjB
nPKukZDwSKLU605KtPfGFeqog8pfrWEe9w6cEshhnhrTuGC5QXqgEJKuLR4AvikVc9W8Q9dPcRNp
QSjC2mi7DNnQBlcR0JoLdoigEO2yqIWIiYL55WaXma3jt2eJbTTbfyRtEDQxLkAn6gPN6uOmYnLU
GmuLwdjmwZQZZPsG8PPZ0fMhHrKjStIpmD3uNA==

`pragma protect key_keyowner="Xilinx", key_keyname="xilinxt_2017_05", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
ZNGRmUPX7BBXtKiJcv3ct09nQEaXPV67ls18JqsJeE30/JEe6JC9VLKY8oDe8U6FcVMBD/CIcRan
NKuWqxyDaFdif5ZYMcWtOHrCitIlwNmpl2mkatXNgSaRNSSebFSGyy+NeRGsUBbzcJk7x4zl/g/z
z4Y5zEMbf0v34IQOqA3EBYIcvbq5KBYyFmuHUcV9KExYa/1sBdIhd1Q3QafXF4BaIQrRjQRWOeyU
CwWELIXqSN5zLC/YUHFZ4I245dNbO5AgS+pWIAIj7razFBT5XpaVrVulxmW6/6fxVF2RArbW+lo7
H5ucVUWNvG8TrSha9sVMEty2FyutpMVtysav8g==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VELOCE-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
C5XA4YnAJ3khS6SlIoopor91q1/ea33YXI2DNXmXOyYrQWz2LJjAZsHefs7nfRe1ySlhdk/thpxC
zhvlzx5bt/0lmomYtSlwRSSL1sHwGugg+WXQaAWnjjya6q8S/lIfPxao26u88QS7DLqvAJI1tfOV
tBa2W+O/Q7evPFRzzOs=

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VERIF-SIM-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
ra6N9gcp+jtEzd26qhq96k/trdhW10hFmj31ofzQLSu445HchyJ58i6PaJ4B2yUq9nFhiGLC76Fr
HkUbk+dsGN8NMhHdUlsoMFoSEwAMVzjQJbk1i4abYKb2hhKFlzxi9iJIaxt5AAkqWXGvGNBSjIOA
Kjtwc8EcbZs5NNH+9QrcW1AoJB24rw5joAA1tjYHM++XXH3oq6KAadKDYE9lKi4nGFgM0wTrIQBI
zVAHYIZ07XY7ZOikL7+cP4rcs+HlJiMjix8HFkdD9CV47+c9JeAA60gf8BwlCN7glzoT3ApW/MwB
v34K9AVEERPxE5hEbJa0M1TuZI+A95Wev2qahw==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-PREC-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
nASa8wwL0Bg9Y3Pih86tvgcD0bZjhMD1WYLZe1BqGESwGaLHCVQPLr4EX0s6hXyvo4q4abYT+1lo
fnKM5Nh3pzrEGYkWsHaTzxajjmkZkMkOWP6/SQ3cBmtoyNty6dLvjK+ynfsy2/vSvQ3Ej4kkGbvp
WtAhEkgpKK7m/+uhzYxMSOiPDw936QD/Kl0zepqKVL0f2MHHSsFHUT7evhQulMnf5pLCbBX4WhAu
L1mpukWdxsaNudkN5HNvV6LyX9nSAQbLkOe0z+P910rAhj72f6Df5JuOHa17G1JBliMGNu/n9Aqo
2vmbVL01ZxBPO/Lnl2B5j5WpPDk+YIFE0mgp9A==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
ObZ8J1DGIUdAkifRCKAXEKSmiv74AvMTtyKKZnJUBUwzMQrX6zNi2m92PtFkvNRr0eQzWejP3xgh
BVK1JNDBxl7hz7Cia9TKBv0/AvY1KERjASZQqy/yNwEcpmsXNauF+RXf20NOgH/Je6AsVRPZqSrE
Uqm7QVbTmssgHOVuA4Vo9Kyp4t8KUpQ3oGqTzh8sWFuSTjI7DOMKkohfVaJKsixI+x6BvdBOB2K1
Y5OJOncw57QxMZxjuKq/XDWkVI1MXurBQbgxWtkL70061Xvsz/MucRI3/vlHOXyLsgGqvByKK9Vn
7xUDHcdmTBzymh0jm6v3nXhlS3Q8y7Hun3c7TA==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 7232)
`pragma protect data_block
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
`pragma protect end_protected
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

endmodule
`endif
