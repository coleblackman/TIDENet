// Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2017.4.1 (lin64) Build 2117270 Tue Jan 30 15:31:13 MST 2018
// Date        : Thu Nov 11 13:54:02 2021
// Host        : boldrock running 64-bit Ubuntu 18.04.6 LTS
// Command     : write_verilog -force -mode synth_stub -rename_top ip1_rm_ram -prefix
//               ip1_rm_ram_ pool2_rm_ram_stub.v
// Design      : pool2_rm_ram
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7vx485tffg1761-2
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "blk_mem_gen_v8_4_1,Vivado 2017.4.1" *)
module ip1_rm_ram(clka, wea, addra, dina, clkb, addrb, doutb)
/* synthesis syn_black_box black_box_pad_pin="clka,wea[0:0],addra[7:0],dina[15:0],clkb,addrb[7:0],doutb[15:0]" */;
  input clka;
  input [0:0]wea;
  input [7:0]addra;
  input [15:0]dina;
  input clkb;
  input [7:0]addrb;
  output [15:0]doutb;
endmodule
