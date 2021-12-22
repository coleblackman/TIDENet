// Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2017.4.1 (lin64) Build 2117270 Tue Jan 30 15:31:13 MST 2018
// Date        : Tue Nov 16 10:34:02 2021
// Host        : boldrock running 64-bit Ubuntu 18.04.6 LTS
// Command     : write_verilog -force -mode synth_stub -rename_top conv2_bm_ram -prefix
//               conv2_bm_ram_ conv2_bm_ram_stub.v
// Design      : conv2_bm_ram
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7vx485tffg1761-2
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "blk_mem_gen_v8_4_1,Vivado 2017.4.1" *)
module conv2_bm_ram(clka, addra, douta)
/* synthesis syn_black_box black_box_pad_pin="clka,addra[2:0],douta[15:0]" */;
  input clka;
  input [2:0]addra;
  output [15:0]douta;
endmodule
