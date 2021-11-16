// Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2017.4.1 (lin64) Build 2117270 Tue Jan 30 15:31:13 MST 2018
// Date        : Thu Nov 11 21:49:35 2021
// Host        : boldrock running 64-bit Ubuntu 18.04.6 LTS
// Command     : write_verilog -force -mode funcsim -rename_top mul16x16_signed -prefix
//               mul16x16_signed_ mul16_signed_sim_netlist.v
// Design      : mul16_signed
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7vx485tffg1761-2
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "mul16_signed,mult_gen_v12_0_13,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "mult_gen_v12_0_13,Vivado 2017.4.1" *) 
(* NotValidForBitStream *)
module mul16x16_signed
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

  (* C_A_TYPE = "0" *) 
  (* C_A_WIDTH = "16" *) 
  (* C_B_TYPE = "0" *) 
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
  mul16x16_signed_mult_gen_v12_0_13 U0
       (.A(A),
        .B(B),
        .CE(1'b1),
        .CLK(CLK),
        .P(P),
        .PCASC(NLW_U0_PCASC_UNCONNECTED[47:0]),
        .SCLR(1'b0),
        .ZERO_DETECT(NLW_U0_ZERO_DETECT_UNCONNECTED[1:0]));
endmodule

(* C_A_TYPE = "0" *) (* C_A_WIDTH = "16" *) (* C_B_TYPE = "0" *) 
(* C_B_VALUE = "10000001" *) (* C_B_WIDTH = "16" *) (* C_CCM_IMP = "0" *) 
(* C_CE_OVERRIDES_SCLR = "0" *) (* C_HAS_CE = "0" *) (* C_HAS_SCLR = "0" *) 
(* C_HAS_ZERO_DETECT = "0" *) (* C_LATENCY = "1" *) (* C_MODEL_TYPE = "0" *) 
(* C_MULT_TYPE = "1" *) (* C_OPTIMIZE_GOAL = "1" *) (* C_OUT_HIGH = "31" *) 
(* C_OUT_LOW = "0" *) (* C_ROUND_OUTPUT = "0" *) (* C_ROUND_PT = "0" *) 
(* C_VERBOSITY = "0" *) (* C_XDEVICEFAMILY = "virtex7" *) (* downgradeipidentifiedwarnings = "yes" *) 
module mul16x16_signed_mult_gen_v12_0_13
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
  (* C_A_TYPE = "0" *) 
  (* C_A_WIDTH = "16" *) 
  (* C_B_TYPE = "0" *) 
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
  mul16x16_signed_mult_gen_v12_0_13_viv i_mult
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
YRfvnhcoEi1U134g6r/ODNKDKUj9Nkqsr72Z/WJWmIj/BfPMPudRS3ULTrArs2LTS2eTCE27iC31
7MbWrhT30jREqTKRCaA8Dah0eShdje4x7dSxPHekwoPZtWlj/JquobTtri4PVw+Wyd5WrIgA8kjW
4moe8SF2Ms8AVh7Wm+m8diSTOnm0AXCAN1YkB3sVBH2OByFoh2i/gDDnSoa8ovHOPC39BEH4NlLL
tEa4zHFKUn4mtRjRooeyNcFydOCr09ulzeIKbUR8afu6NREr2BThh6+1nOGEcF/E4wO5E6gd0S3E
0Z5fi8vJbntaWaFwDHd+G/m730xT1Ri41A+bnw==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
3aMVmJuq1dn25Wzv0w1Mh6p/TQmb+cUqU/NJp/2lFeXCcBOC47BBlW0S/lLW0I5SJuGTzL4x0n9/
oNC0R7CE1tc42Y+7GiW2g/5AuvXPp7Yxn7tBrx3c8crp2k3zpAj0+DdR/7DLhFSFMh6eAoWO0WBO
oXwYEAbEIjc3O8NcDp1jKPol20PMJasodjXEPGSpk7s0y/F5544g/Hq1/95Ev8pH6P/47Jvx5Rd3
ZhTx+jAkMaC6ZxJ9M1EKanclCl1WTBXD+tWCUNzol8jFB9XVELEdL6947j6WqI4DyKxMS1B01JFS
OAT/Ir7PndMYiEvifE154/G3ho97h07s8P/hbg==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 7248)
`pragma protect data_block
zKRBgnfUIjRCcgqGPCwQhUTpO28K6SBji56XrAFxaHHI15APCtkSPFqzr3wFTRygjmGnJHL5jbGI
AeHmeMumNnXsoBYTGHoxTk8U8c3RyeHo585IwovG7NgbyNv0LxQGcoAZiatkM+HhidDAk+G8PxEY
a37vJY8PyL675Qu3Yp+Jhyp0Z/EOL4gtS3GXq42O+T7CZ6B/be2PJTFrWdc90O7HQmr/L1Dij1Kq
eP6n9WJ9tRB6hitwu+HX0vTazlirpDUp1unAAftvHMISML/aCyClKtS5xBlI813C/7g6nf6fXi7t
2cFrmlzGQL8yut/J3uxDLwp9F7bHj18MjTg1Fww/skG9LpOTf87DD83Hha5nDiAD2i9kd4ed4kXZ
R0PQ4GJoWj5NG2gaYnbjLaMc8HyYayzwaTwOPwwU5LzNws/PWy3BWMBzJj2l6meiqBbtREGM3lND
MZRn7n/3YegLd5nmgpQnU73Pbk5jFPEMS4fRenOp3rCxe/Gxym4jnGsPfUyeLhbbDozhA6YglUrd
y4QUbxiB5J+kydIgBkyB5ODO5wckkPhybZMRkOwztQwtdRFgsSDO99tVcsErnuhdhvpVooszZVz3
23mLvTgENU/f1M1ESk1mj4HJzLQy7JN7Q0Q4q7Q4TFzvA4BFFnbuQ/3ZgPEP7mqERw0hLt1kAXHI
PJBINgA49WqcG10Kccy1BpNwpPuISOz+h5X6ZBPgizGQQPGcxVLfiTuONamHJkFUp9caeXXzKxbc
lNLXC0SlmpYYZMUWrPfkQf4EK0RSB1TcMlzdRfjlIsBbmwQw0/fw2J9NylbMl3nmA5wTvfw7PEX8
L453wCXCua9TIOQRNvWFYQYK3xcGYRSnO3AwetsJFnW1ercKPkB7ugfP6fa/cAfAHLVhHUpf48eM
8AuCDhN9ElkyfVWe8ZjCyaqGwObp1Hen56NPckMJdse8gdkt66e7gLg3M/+I5LwmW5E1Ak1q863l
gTDCGMTTT9yxZSHGZSG2uNWyxf3B8WfLMQX1FWNx0z4tW59r8yW3kyr2uHSwfiQE0HQgUyrfZJzB
UzKgviTOZkwiIQTLA/g060hW5cfZfPc13mPOcXcaOIeu41qPoLvD0w/ErM1IiEfoFK0pWv3DnXrl
iTgOB1pYCZUiFo7hXt7x77kAXxKwFNbLtfQi46RxZ1aB6aMj0uu2wL6sbRvD+/lTgrLfeLTeM3Ao
ukQuS3BFdclYB8nNOM2XJK5Yu66KzIyT1b6c5jef99P2ir8p4DVpNcb6Fnh/4nwQsJglqMlzFxue
cUvxKpN4lQX8tnCa0ISML8oqzXEkal1X3DeuhqTngC4jWmn7Q0zUw2dBxMfjjvBPEosc/TaoJb7q
gyfIfhFiFIe0sKejgYvb1sCC/5I1lVXgIaDD3kBHkxeAewpGofbqTmpLVobzf6kezEC0X2FjM/+j
FgyaIGcAXMSoZ1mwEp4DTLFjGi+2VN3sekSc4LXp8VQPH/YtgXTqP3LHF+hO/+d9hpqJ/fQncEuJ
Zv7m5fAwkA/MBLvyB7kou3x5LTb8VtCJGcgaQ+5BMi/U3S+I/7z4mXwEWYFox8kCpgyv7LSlTb9U
Y4ySPEmN+4CZLbd7VZOq5FwsuLdqQS8XjhkSEyc2p83OaTnaulimpLhyccnw3TlIjmE1/G2B2Tmz
yXXvIHwaMI+NMsX9MG+JMKpUFoNeIdfD2O92obtV4I9gygTuwM+lmqrOPogdu/u5KsR+hR2KgQig
YtrVYmRyt0kiCf6j6Lr0KtxP3KTEG8CVZu1NsrXaQpSomaRGM5I9OxnmghXDqPU/JqdbyfRkMKEr
7nJjZdztr/tLwPeFkUfU844hIDzC4sAq38YvCiY7z2ZgRKovUE0vxcP7+gqs66+auNb9yU+u/zjJ
u+8HWp+wOrazyofXFVpU6tl9Jcw4ELDUcFs5FswRa4rApTN0a998RsYk1anv1Rn3VA37bR44E97s
/sW5/iDcRCutamAUKJyccpc3OY5dnLEWedweFj54wv0yK5/xZevFspgXicStw2HYFWA6AqWz1ko7
lDR57MwUg41kdJrcFgrWm5isRCiieE1r4oPGOgwb/bM1/JgWFp60Z9lNIzx9ERPnXL6aJH7VuV18
1CpT9m10QOulMbvR0cVXf1sdOVdGDCUA+cJeX36v40OaKcdraEqKIgVqKp4S9HhgUVw1J1yoRSjY
kDKnxvOKjsRv+rvHUVqK3anHdfyuRidpcILTW77ZPs6GXNdVQuvF0J29TwoTwUlBFLe0w7dnzGrj
d1BzIHvShYVea27p4ul8FqfC+o9o1dV12FcpKlXAxj00woSiTDJfrXQgf2KfpEdrcNxbFgmX3Sa6
NP+2LQqYDWHoCHLxSMe37sx/x1W9iCNDNXlEPWhNrhGOkhoivlAuOMQfV3SDPZKhOZsfmzQ62bQH
8EySwN5nMyntVW4HZOVifIryXQChRpmKfaaYZ5y4Lhg1IOdoqy5HaFa7ADowZ3yDfn68GCMaxjFS
HvpXz524L509AdnYPwu9brPdshpnxU50Srz5QOBkv34QyISznFafMk7lO//4sXdBuKEHHOlpDZB4
/TdEJGqTVchJ+tPI+EbMxs1VnjCwbPhIsqME4r7onJUU3K442jsg+VHP9JBAqSwlz2zoYjIegLGy
tQSGB+6ypsllqZtbVfMjR/o6j4PMm7XOfbLS/5ysxz92I89f6IVZrytbk1nTQ2Mq+AwDmLcw+K++
3J3pTW6jFr7REP0oD5MDSTcgMUkx07cVcUMIOouhcEG66bf+Eb91lBs/q9QhgIAqpGXiqfeDtkcR
RqB6aYMFNYwXEfNeE5Y5fpA7zeUU1aGpWp4jAsPSUUfeY+xOX15+2SNZI0fwROUroB8SjxREIpQn
vXftkXnwc/CVmYNINIbL5+wLi9VNgykqQ2XhzDJb/dSxl5KBvltwzbhGt8cRBhqRv1d3Dq0qrLVS
M69O9jefq6BhCNSAd7/WrfwdWqDOJIxT5eJZDIez0qbD0BYNoW/1kgZgzVveER+svuu4Q6Odn1z4
rpVR6J9hhFLXfTjUTV/sOVZBd6Xj6+lhFwaCeCgmvdwKVM5udDccbABDPjUIN3728KDNkfFTv6gR
SiwFSPrVDoibhChZK5rQusuFNwTtwe/YAaEyxzPsCrUUCKoP/rty8O+cejVGunF6lz5S1CmxRhTf
e7nIcPa5aM+vnjtf84G8dnvR9uRGiQyFjbPstU9y9+KIuA0AvFtyqnD1SKPrti4evmaChwBvHS2Q
ehsdFk/6fzDfWFUKjG7uY+rG6Rao2L2T7yBqGk+C4FUggxkKmwNS+MPNgj3lrkQE4A8v1Wlr9dZy
/qhY9W7OeVYhRYN03QXPNa68xu8NrCFe6R1KJvQA+ymaqnD47mAkYFhYIjuXxzTtpB3F2W6c/HIX
+CyZ+3PoTJp1/31IyG5N+vFNC3jsgqcXzcwDIhKucWsceYe6kBaYA0v1AQLa8nAuBTGzB6sGVou1
rIUNtkZlucovb0f1pK5ubx7ehuDMNySJQMFX/9fmYeddSO279tan/AjHX6Wldr/RYt7xDnx7qqlP
YxVk6BpBlzGyWgz01ctbwvTKH76O/EZqinwzeZ81HXx9mFYLFd2N7i0vcHvKHl3eIoGMIIu4Xk59
bD2iQoLmnFQ4s9DJxLkA9h59Jsx0nX1+7OMmOPdKgvI/GaefjXS5PVzxsJRISBZuiRFMQv+RfSA2
hbf9A5ucK4Ct6635zOV7spmv9KOLrAsp9cS2Btmg+Bz7PGq1OoQxnywOmZnYQrYFTJzM4Hr1RLBY
27pq+NSHFRWuAkbEkAf3RHhln/vu4G/XIF7Ekft+dxE9qii/L2mUqDew7aGGBADDoEzZCAiU7n8x
+bcPIy4FF158y753BoIjRqgi37PKmsjjhhk35uCxgWtBOGaYd+jAavzsAXFFLGvLNcEwE/xXY1T2
u4+LfwXWcD2sxf+TpBkknbDLnAdSRzdpFVU29g8c2kzA41PNLDgnWefH/B0N8ceGE/GmY1D5T2rB
p1Q+JCBCCa9AKraBuRmYR7mR8FsldZhXYzO/NE8mSLrxq2D6VEW/SP+LlOBCMPqACZ2XLvnqhCHm
d8XzktY1VD31nJ8mBuGTk0IVMtED0jSX5O48qJv6jUkXtepGyw+UqW/Vh19gtvVxkD2Ees43qHtO
OL1SEty7VSPKgWGnzd22+TH9m/RPXpzwWs3Dkv4Mj/qAOuYKBc85iEKtpHR3x8OzqRYkGRC7Fmrs
J+S+FSFfMrV2Ce3AsToNvtgNU+L3qHgIHjMq2j7h1AVOEww1cbGGIce2I65kNR/FNbFcarkpbICx
8iTSnTI5qkJ7iN44GeaCH+kiM/ep+EoQBlxCk2uzEPW6eTLJmhJuP3WXrx110efuT0qiCj91eFHT
CfMya5rJRGtWFvjZwlmLdbdtqlf1YAiqUYM154k/tQAtOAmMk/BhDWbaEstWTrE7JxHkL61lEAPk
B8+ECBOpstJDgRT0E1y8sUwmyn53c4H4YY5qrYhbeMR18+weBWkX7mGVEoaCzZgkc8yMlE8W+F/o
YDpcqTkf7mQYGsTyV5Bj7eVqBHbAI9ZykS3BkyjgxQtSl3Ad6F4cVBeDbHK+Phcxh+1OBkcVqptf
LY/4FsHX+pX+/u1TnyGB14QQ6/7EI42swksDVTUaWo3cmDfUglUytpzK3YSMioEcurh9YOzEmfK7
r0uM9nPeCkcsIvF5gcMAH23qkekcYZspknpLzt2u2Qn7EkhASdwd92DN1vjz7Z0ugTxcKMddCC4D
F5/6RYOsayurJZwhVNUjnGYJwdQKzRu2htFp88630wMSFoiO9t4Z725IlGbBvxe6mr4N8TpiWAm+
J2bo8QwDGzTA+l69u0qjCWiEHgEPTD+NC9Mu85Rurr45ZQyuLp5cc5bCu3yC4BjdpPvsI4IxPDdq
oxODT7hmRI5psRA5emb9AmThPjvtDNyIUDdTex0vU1V8jEkBwluA5XUt7Y8asYAEVtvs5235AB+n
/ltRI+1H7rasKM4B8asCTOUTfphgLl/KPn+wuUTui8MBIjiEn5vlcD5PZ33gCRGLA8u1XFJt12aA
1BkCDiRP9DTqap07dd7V23MkWYVM432yDLgQz907XLtZxLB9aW6x/e2DCEw+q9PpbGjtOinqL5jI
cRz8DssUQuueUcm92/bPmSNbILyqXw4VHDOldRQMbdFVYwaX2MUGJ3qq1V1QEAvjq2b4EK99JjhO
6mzGlGeQLTYV+8xzgR9PTJ+TH2em9lGZp7/KZOfFAhhMgwqEO2XibYuKfzi75/fpPCSOY/emusds
UFLICTJda/BuwMmAX29a71ToG3IMflSZSi8RzMQG17CE5KOBLJ8/WiYDWTIxznU2jPm8THC+5aFA
Po3UOg75+c/ViBupoUFDnCtlNi3J5Sd0aDbr+oQFOBLlQTYxMhbBfS9LzeabCcpO4gFQk8F9s6ic
RWvrkOwxVgE6xjCKesF8nO3/rns8jo4l+TnPws88oRIRNbHcyHc6szm1+hQRrNtp6ELDnLenmdIf
I96tDsCk7uyx1XuLwT7ZZvlLpPV9OgVgO9i6vSG0fANtoo9UeAdG9qXY1gl79v87eFF914wxJxSL
D0K3AJzu1LSQpozsvQgiLeRSjRQVFjVVt4WzwxYCub2hciX/bC5VFN9oxR+g/F+sWYVvIZwtN2TI
EiFU3WC/96atGs2+5VjphHWgERQBYJ4vh/RzyWQlhmhA47y5Lep5cL4RWdq/8RrAC0TKD2UjuoP3
MCwx63jgFv6ph9Q4eNfIPH38KLMsd5o19jE2VNvq03T9lTG6h8c+YJPdZy71meFikM2no5u9UWuC
MVPlrfqbiJ5TJeXgrb0EDoHXtZbXejDnbSYFNdumcF+FdmNiJ74F9uVUj8gCG/rocSKe0gViVdet
v3mYiKRJ7ObLAa/PVo3sh7YTULllGZ+2VFRGVcxrrgMSRsfRVwIH2NnpQzvGl3vClT8uGa9NgiqG
gZ3Yc3mIvLSjy93seVHrQRttM8Y0YIayYbLEbVg2RVO5L+A1KLHQtXb7Ba82HWXUCHIxWBNrko8A
MPnIcyEKEmK7ckp+alj6vfMVW7L8CbT01vE+JQH9gwelR8q7kvOwGq0qrF3ECRtlQGnwYrWzGrmK
gxE7/tAs8///Mr4WrvUjdlLdz7KPBCpM09E2kq10D4eDlkxWcMfLt4JICGsGajtyVVgYvov3AEjD
VWN/kVlNwQoha9ai31gJWF9SLRQ46I5eSH7D+pli8G0ofVAXzjkTqsKeyA1gbS7dyGgysjgcTsS0
iW2L6FSfCxO3SPp5r+e9ncC8ZMVeiSgO2IcI6VD6KvLoOr8zUnn84/c2oZBLgcmw8UjN+wK4gf77
cZo9EI4aSKDFL3LEI76gbcooeOqKs8Mw9Ytr8hi2S8GjxtaidWX+sb7y8fzhI0L2xDXisAU3zB+G
0JS4kCy9InxVH7Cmpdt9UPEqxEq2Cy4CNvS0/a1pRJkhVn7IgKyYXkIeym4myf10wcmFsn3vFx+Q
VFdIk5iJAxVv3au6zTUwBydnjSvwCu540G0v1n/sKkd+RF6x7YsWnvIjJ3nZDpJah86nVT1/Dn1V
Q/VL8XKjTw0QlH7h09GPUy+ptj9OBdvpwBKqfGaWgbzj/e4/4SGsAMyE/WWALZ/2dDcJ8ur6+I1i
yNfxwGYt4sFPemvh+8wL6772csQmPVehfd9+cTWpj3ZaEpb+KDzxNanLk63IqzWUNQOAvGtfm93G
MPqrZ2pjPzwfCUY6XZdqu5SQPrcI//43zFmDJZGqYv4BSBQ5SlYqN/pSbdAh9nFSkjtl9y1ukG2m
WbvO1DXpC75aMOW6+fjUYIk0ofmv+yo1NYYRmsTRHAOWZUOFHlbWGw93ZHsk2SvhKpbYi70INa0w
OwMi+wxcQ5vZ6k2M1HYVpqz/ySHKtzPSa7iHOTpImh6e0aG1s6rWwLunyLmk3SR7g/wdpPgf3Md/
IEADlvhFfNYHvP92KGWyIFzIiHz/HsCm5CJxqXefAtLeVzp6NKzO1u2vt7DQTvsZb0NB5Sj5Eb1r
7KojDgvxAuSkum49CDadcDYdAXiRc94Lw5OJlVoRjw40ZLufhHLJZfJCcYCYo3XX0m5wPtSeiv+b
vTJx2KU3Gq6ODIS+EzL1ubMBjA5T0N8EqEwlkSD7gtbpxMutJaactD6/i0Fm5tjBwvzKHcInxLOC
70qn4F7O9NDzrRwAaW8BMhFeIbFv3NTmkI7lzx0Opplg8HGE2m5XRMJon99XV1SHGssiFL49IWTd
Etr0Eg+QAA8m0F6+pH9Fx+BIfB8q3T+ViK8TVtfI5MHQF2LBqhSZUATvJdIC0AAYQXZ1nV4jkego
Cs5+q8ku2lAOujy0xPZW0bYThQ3Cm0iZESddPuOo8t/X9EHQqw+PVO/OnnI6Agk7I/wZciWi3cjH
PC0ixgLUpyYBd5gD/7ZZ3LojbCRNFuYNZvZ+cOFRnWRLQEeCrnB45hFFf7QO46UCRK5RR2RiKXCx
gCQvE31jlAnYBe4cZE8XR9nr1HcU+KUOy9evEYSI/U6BF9g/Y11K0bHe25v13x1xk776LNI4gHM8
YhvPnELskY7JdzX6Xi9LJMPQpzEWb57QyEs+gl/sQncF7ImtQBMpj2UFxSvhlBId8y7iLEpEOte/
wX0sD7CVXmiK1GcAXb4BwMO5M5+4LDUrccp9PPMPV80tQK7nwMA7iSs0AZSYXkXSwYPg3YjtWChb
MA05MykfEGgyvTK8uq5ImAn5S9VaaSYxZAM9ykUTizT8s1XR5izxfYntIulW2TquVysw4G4VELoV
c4HGtyUpfp+HHirLthjbJIZWwGtOU4uvVwiuDU8svnyeKA8IwZU4OnEQghopMtmWoIAx+xLmUDIi
U3/g45nrnjZbrKksHdOmId4VU17HkygHGH0+d/n1nC3Rou78dAK1LGwNRruRKc13dzpGcEUr/fI5
ZBonsmyzNSeGX6Mkg1Z0mInJ8d73AgABZHu/6kEkOQ1q8EPxIwF92tX/0O51eov9sQTjFGQUSPBh
RFCinnAwpj1RVXMdcYALPSdNA2uCSZbNBmx3Zzs/HbvbiVMKm5oJj/LR6zdYGvuHI+NpAId7nRHz
pu970bV5c08Q+laOnYCmcz90BIg+wrFp/tHEp3/Px421GZycwCaDodkRuxWTVntbLwOMCTwOdiXo
H0nZhdbWdKgHOb0EJRF7S2IIeGLrP5+fchJ70z+2OYX9ZBZNFkRBC3/kGUFnTWdifPhnrs9Mbb1r
Qw0OTA/gOeHxPbx0I6pTcECOu/lwr6HSpZgP4IcmoPpu2FVEugPib3eVNeHHr6poLCDtEcVMu6gn
+xrfiIuJ7wil+fsylyrJjpxSUA2imgYTZdRvvDBlY8PbhgtWe2dJWKFKKKEAigkQu5UJ4xAbPA/A
n+UzyJ4he/q03yU3VdblrsAt8s2HAlpqQQ0DelOp4+VdR2smFckMajACIB6rShjKUDHUuFIFePwr
l7sVj3wEM3SXUsJTZZE5Xe0h2Je6Swvp0wFxFDzNRGI1/3jhjCj0c3fQybWf7fj+OhUjJ0MkJ6JR
6x3qvfnCUjl047XjxgMM8jEPqfZJBqd3ADm90GbjyCAB1GNSEcdc2o0z0Km7WlWpBrHOGZvkSTQG
ekpnc4fn/wa0zdNUZmAtoahvNL8GorNHWeelGiE3u1ioXabgf8CvvRv25uj/nMH03p4vtey5fR1G
tZDMhsuFnLxwqHzl6yoZ2Cpu6Y8iMEk/O6Cyb8QBihoWVr6E7TE3vjWeIG9cV2rq4lpikiBdXND3
C5fADURYI68NTpzliUCosS+vIgXat1qhkbq80yTDljEa5bc7wxtAzCgKiPP68G133vedmJOOaE3a
tgFR5LRfP5ZcP4iLXUNOoxguMN66YLG4mV8qQccSWDb3SE/1/g8g6vXiX6iS5k9pzHpPKs1F5wqb
19l1rt9oUGWtX+F7J43aYdt6/+QWylZym+gpEDeME3bCy6QoqWTqEdN8rIxJMKnHDs4Qxk32wZFm
GdnPkmpbnSEMIooLOdUG5+es5D3TwFqNLoKxZIpvwa6auhVOeNRITLWu03JXlGwq4GQJze8DcPdi
wwl/6u+Cl1ovcAkonyLVRub3XS7RbqvNnK7Pk/VOu7bbfkS/PKAjUfYpei46OE1F1Y0qjJL+EI2f
/oWtr/H7gGazapQJLOuRB1uVOjY3X8WpZD0g9Diu2LOVVEQvNmHOFoT7QOV379Zy7J8J7Op6tWFd
zmCg3pn+XBf93XJmD77TfVKPPClq+TLmYvvjp+S8AvCdL/8gdg5KFUtN53pCoFcjItbBIyLWc61n
9SkO+jdtqlXmRipb8LOoWrVMYcL9FeF/JyFfe/aN8O1t3UNBA2reCB5ggfOeVbFWreVHii8bXHMf
dXy6y/nluzXpb8GIi+sfHi2jVFswVtHsErieJDrERezTy90MtI9MGnApVZN2nH0wK1CF203TBYVS
Z0FF1HNBwPIIhP7EtnT1Ql0YSDzyT1D1GCIPuTsvyQ0ib7tlXujEW7JKjg==
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
