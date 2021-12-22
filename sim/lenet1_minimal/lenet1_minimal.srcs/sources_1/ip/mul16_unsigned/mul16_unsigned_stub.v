// Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2017.4.1 (lin64) Build 2117270 Tue Jan 30 15:31:13 MST 2018
// Date        : Thu Nov 11 21:51:15 2021
// Host        : boldrock running 64-bit Ubuntu 18.04.6 LTS
// Command     : write_verilog -force -mode synth_stub
//               /home/mm4uz/Desktop/research/tidenet/try6/TIDENet/accdnn/build/ips_prj/ips_prj.srcs/sources_1/ip/mul16_unsigned/mul16_unsigned_stub.v
// Design      : mul16_unsigned
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7vx485tffg1761-2
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "mult_gen_v12_0_13,Vivado 2017.4.1" *)
module mul16_unsigned(CLK, A, B, P)
/* synthesis syn_black_box black_box_pad_pin="CLK,A[15:0],B[15:0],P[31:0]" */;
  input CLK;
  input [15:0]A;
  input [15:0]B;
  output [31:0]P;
endmodule
